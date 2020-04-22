#include <ros/ros.h>
#include <rov_canbus_pkg/joystick.h>
#include <rov_canbus_pkg/rc_servo.h>
#include <rov_canbus_pkg/m_setup_camera.h>
#include <rov_canbus_pkg/my_sensors.h>
#include <rov_canbus_pkg/imu_data.h>
#include <rov_canbus_pkg/camera.h>
#include <rov_canbus_pkg/my_pid.h>
#include <rov_canbus_pkg/my_robot_arm.h>
#include <std_msgs/Empty.h>
#include <std_msgs/Bool.h>
#include <std_msgs/UInt8.h>
#include <std_msgs/Float32.h>
#include <socketcan_interface/socketcan.h>
#include <socketcan_interface/threading.h>
#include <socketcan_interface/string.h>
#include <socketcan_interface/interface.h>

#define GREEN_1	0
#define GREEN_2	1
#define YELLOW_1	2
#define YELLOW_2	3
#define YELLOW_3	4

#define UPRES_Coeff_a1	15.53f
#define UPRES_Coeff_a2	-49.15f
#define UPRES_Coeff_a3	36.38f

ros::WallTimer Heading_timer, Depth_timer;
ros::Publisher  sensors_data_pub;
float coeff_P = 0.0, coeff_I = 0.0, coeff_D = 0.0;
bool Update_Sample_FirstTime = true, Mode_AutoorManual = false;

uint8_t Count_Control_Motor = 0x00;
uint8_t ROS_CANBUS_Data[8];
uint8_t ROS_CANBUS_Data_NoChecksum[8];
uint8_t Camera_Zoom_State = 0x00;
uint8_t Camera_Bright_State = 0x00;
uint8_t Camera_Focus_State = 0x00;

rov_canbus_pkg::my_pid ROV_Heading_PID, ROV_Depth_PID;
float ROV_Heading_SP = 0.0, ROV_Depth_SP = 0.0, HeadingError = 0.0, DepthError = 0.0, preHeadingError = 0.0, preDepthError = 0.0; 

struct Coefficient_PID
{
	float P;
	float I;
	float D;	
}Heading_coeff, Depth_coeff;

struct SampleTimeCtr
{
	float prev_sample_time;
	float current_sample_time;
	float Sample_Time;
}Heading_Ctr, Depth_Ctr;
union CANBUS_Data
{
	float Value;
	
	struct
	{
		unsigned a1:8;
		unsigned a2:8;
		unsigned a3:8;
		unsigned a4:8;
	}byte;
}ROV_CANBUS_Duty, ROV_CANBUS_RC_Servo, ROV_IMU_Roll, ROV_IMU_Pitch, ROV_IMU_Yaw, ROV_Depth_Sensor;

can::ThreadedSocketCANInterface driver;
rov_canbus_pkg::my_sensors _sensors_data;

uint8_t ROS_Checksum(uint8_t *data, int start, int count)
{
	int value = 0;
	
	for(int i = start; i < (count + start); i++)
	{
		value += data[i];
	}
	value = ~value;
	value++;
	return (uint8_t)value;
}

can::Frame ROS_toframe(const uint32_t& _id, const uint8_t& _buffer_size, const uint8_t* _data)
{
	can::Header header = can::Header(_id & can::Header::ID_MASK, _id & can::Header::EXTENDED_MASK, _id & can::Header::RTR_MASK, _id & can::Header::ERROR_MASK);
	can::Frame frame(header);
	for(int i = 0; i <  _buffer_size; i++)
	{
		frame.data[i] = _data[i];
	}
	frame.dlc =  _buffer_size;
	return frame;
}

float UPRES_CvtDepth(float _adc_depth)
{
	float cvtADC2Volt = 0.0, depth_data = 0.0;
	cvtADC2Volt = _adc_depth*3.281/4095.0;
	depth_data = UPRES_Coeff_a1*cvtADC2Volt*cvtADC2Volt + UPRES_Coeff_a2*cvtADC2Volt + UPRES_Coeff_a3;
	return depth_data;
}

void CANBUS_Received(const can::Frame &f){
    // handle all frames
    //LOG("321: " << can::tostring(f, true)); // lowercase: true
	for(uint8_t i = 0; i < 8; i++) ROS_CANBUS_Data_NoChecksum[i] = f.data[i];
	
	if(ROS_CANBUS_Data_NoChecksum[0] == 'I'&&ROS_Checksum(ROS_CANBUS_Data_NoChecksum,0,6) == ROS_CANBUS_Data_NoChecksum[6])
	{
		switch(f.data[1])
		{
			case 'R':
			{
				ROV_IMU_Roll.byte.a1 = f.data[2];
				ROV_IMU_Roll.byte.a2 = f.data[3];
				ROV_IMU_Roll.byte.a3 = f.data[4];
				ROV_IMU_Roll.byte.a4 = f.data[5];
				_sensors_data.imu.roll = ROV_IMU_Roll.Value;
				break;
			}
			case 'P':
			{
				ROV_IMU_Pitch.byte.a1 = f.data[2];
				ROV_IMU_Pitch.byte.a2 = f.data[3];
				ROV_IMU_Pitch.byte.a3 = f.data[4];
				ROV_IMU_Pitch.byte.a4 = f.data[5];
				_sensors_data.imu.pitch = ROV_IMU_Pitch.Value;
				break;
			}
			case 'Y':
			{
				ROV_IMU_Yaw.byte.a1 = f.data[2];
				ROV_IMU_Yaw.byte.a2 = f.data[3];
				ROV_IMU_Yaw.byte.a3 = f.data[4];
				ROV_IMU_Yaw.byte.a4 = f.data[5];
				_sensors_data.imu.yaw = ROV_IMU_Yaw.Value;
				break;
			}
		}
	}
	
	if(ROS_CANBUS_Data_NoChecksum[0] == 'P' && ROS_CANBUS_Data_NoChecksum[1] == 'R' && ROS_Checksum(ROS_CANBUS_Data_NoChecksum,0,6) == ROS_CANBUS_Data_NoChecksum[6])
	{
		ROV_Depth_Sensor.byte.a1 = f.data[2];
		ROV_Depth_Sensor.byte.a2 = f.data[3];
		ROV_Depth_Sensor.byte.a3 = f.data[4];
		ROV_Depth_Sensor.byte.a4 = f.data[5];
		_sensors_data.depth = UPRES_CvtDepth(ROV_Depth_Sensor.Value);
	}	

	sensors_data_pub.publish(_sensors_data);
}

void ROS_Control_Motor(const uint8_t& _motor, const uint8_t& _direction, const float& _duty)
{
	if(_motor == GREEN_1)
	{
		ROV_CANBUS_Duty.Value = _duty;
		ROS_CANBUS_Data[0] = 0x80;
		ROS_CANBUS_Data[1] = _direction;
		ROS_CANBUS_Data[2] = ROV_CANBUS_Duty.byte.a1;
		ROS_CANBUS_Data[3] = ROV_CANBUS_Duty.byte.a2;
		ROS_CANBUS_Data[4] = ROV_CANBUS_Duty.byte.a3;
		ROS_CANBUS_Data[5] = ROV_CANBUS_Duty.byte.a4;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x002,8,ROS_CANBUS_Data));
	}
	else if(_motor == GREEN_2)
	{
		ROV_CANBUS_Duty.Value = _duty;
		ROS_CANBUS_Data[0] = 0x81;
		ROS_CANBUS_Data[1] = _direction;
		ROS_CANBUS_Data[2] = ROV_CANBUS_Duty.byte.a1;
		ROS_CANBUS_Data[3] = ROV_CANBUS_Duty.byte.a2;
		ROS_CANBUS_Data[4] = ROV_CANBUS_Duty.byte.a3;
		ROS_CANBUS_Data[5] = ROV_CANBUS_Duty.byte.a4;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x002,8,ROS_CANBUS_Data));
	}
	else if(_motor == YELLOW_1)
	{
		ROV_CANBUS_Duty.Value = _duty;
		ROS_CANBUS_Data[0] = 0x82;
		ROS_CANBUS_Data[1] = _direction;
		ROS_CANBUS_Data[2] = ROV_CANBUS_Duty.byte.a1;
		ROS_CANBUS_Data[3] = ROV_CANBUS_Duty.byte.a2;
		ROS_CANBUS_Data[4] = ROV_CANBUS_Duty.byte.a3;
		ROS_CANBUS_Data[5] = ROV_CANBUS_Duty.byte.a4;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x002,8,ROS_CANBUS_Data));
	}
	else if(_motor == YELLOW_2)
	{
		ROV_CANBUS_Duty.Value = _duty;
		ROS_CANBUS_Data[0] = 0x83;
		ROS_CANBUS_Data[1] = _direction;
		ROS_CANBUS_Data[2] = ROV_CANBUS_Duty.byte.a1;
		ROS_CANBUS_Data[3] = ROV_CANBUS_Duty.byte.a2;
		ROS_CANBUS_Data[4] = ROV_CANBUS_Duty.byte.a3;
		ROS_CANBUS_Data[5] = ROV_CANBUS_Duty.byte.a4;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x002,8,ROS_CANBUS_Data));
	}
	else if(_motor == YELLOW_3)
	{
		ROV_CANBUS_Duty.Value = _duty;
		ROS_CANBUS_Data[0] = 0x84;
		ROS_CANBUS_Data[1] = _direction;
		ROS_CANBUS_Data[2] = ROV_CANBUS_Duty.byte.a1;
		ROS_CANBUS_Data[3] = ROV_CANBUS_Duty.byte.a2;
		ROS_CANBUS_Data[4] = ROV_CANBUS_Duty.byte.a3;
		ROS_CANBUS_Data[5] = ROV_CANBUS_Duty.byte.a4;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x002,8,ROS_CANBUS_Data));
	}
}
void ROS_RC_Servo_callback(const rov_canbus_pkg::rc_servo::ConstPtr& rc_servo)
{
	//ROS_INFO_STREAM("Data receive: " << rc_servo->rc_servo + 90.0);
	ROV_CANBUS_RC_Servo.Value = rc_servo->rc_servo + 90.0;
	ROS_CANBUS_Data[0] = 'R';
	ROS_CANBUS_Data[1] = 'C';
	ROS_CANBUS_Data[2] = ROV_CANBUS_RC_Servo.byte.a1;
	ROS_CANBUS_Data[3] = ROV_CANBUS_RC_Servo.byte.a2;
	ROS_CANBUS_Data[4] = ROV_CANBUS_RC_Servo.byte.a3;
	ROS_CANBUS_Data[5] = ROV_CANBUS_RC_Servo.byte.a4;
	ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
	ROS_CANBUS_Data[7] = 0x0A;
	driver.send(ROS_toframe(0x001,8,ROS_CANBUS_Data));
}

void ROS_Light_callback(const std_msgs::Bool::ConstPtr& light)
{
	if(light->data == true)
	{
		ROS_CANBUS_Data[0] = 'L';
		ROS_CANBUS_Data[1] = 'I';
		ROS_CANBUS_Data[2] = 0x01;
		ROS_CANBUS_Data[3] = 0x00;
		ROS_CANBUS_Data[4] = 0x00;
		ROS_CANBUS_Data[5] = 0x00;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x001,8,ROS_CANBUS_Data));
	}
	else if(light->data ==  false)
	{
		ROS_CANBUS_Data[0] = 'L';
		ROS_CANBUS_Data[1] = 'I';
		ROS_CANBUS_Data[2] = 0x00;
		ROS_CANBUS_Data[3] = 0x00;
		ROS_CANBUS_Data[4] = 0x00;
		ROS_CANBUS_Data[5] = 0x00;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x001,8,ROS_CANBUS_Data));
	}
}

void ROS_Solenoid_callback(const std_msgs::Bool::ConstPtr& solenoid)
{
	if(solenoid->data == true)
	{
		ROS_CANBUS_Data[0] = 'S';
		ROS_CANBUS_Data[1] = 'O';
		ROS_CANBUS_Data[2] = 0x01;
		ROS_CANBUS_Data[3] = 0x00;
		ROS_CANBUS_Data[4] = 0x00;
		ROS_CANBUS_Data[5] = 0x00;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x001,8,ROS_CANBUS_Data));
	}
	else if(solenoid->data ==  false)
	{
		ROS_CANBUS_Data[0] = 'S';
		ROS_CANBUS_Data[1] = 'O';
		ROS_CANBUS_Data[2] = 0x00;
		ROS_CANBUS_Data[3] = 0x00;
		ROS_CANBUS_Data[4] = 0x00;
		ROS_CANBUS_Data[5] = 0x00;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x001,8,ROS_CANBUS_Data));
	}
}

void ROS_Joystick_callback(const rov_canbus_pkg::joystick::ConstPtr& joystick){
    if(Mode_AutoorManual == false)
    {
    	///ROS_INFO_STREAM("Writing to serial port" <<Count_Control_Motor);
		if(Count_Control_Motor == 0x00)
		{
			if(joystick->thruster.green_1 >= 0)
			{
				ROS_Control_Motor(GREEN_1, 'L', joystick->thruster.green_1);
			}
	  		else if(joystick->thruster.green_1 < 0)
			{
				ROS_Control_Motor(GREEN_1, 'R', joystick->thruster.green_1*-1.0);
			}

			if(joystick->thruster.green_2 >= 0)
			{
				ROS_Control_Motor(GREEN_2, 'L', joystick->thruster.green_2);
			}
	  		else if(joystick->thruster.green_2 < 0)
			{
				ROS_Control_Motor(GREEN_2, 'R', joystick->thruster.green_2*-1.0);
			}
		}

		if(Count_Control_Motor == 0x01)
		{
			if(joystick->thruster.yellow_1 >= 0)
			{
				ROS_Control_Motor(YELLOW_1, 'L', joystick->thruster.yellow_1);
			}
	  		else if(joystick->thruster.yellow_1 < 0)
			{
				ROS_Control_Motor(YELLOW_1, 'R', joystick->thruster.yellow_1*-1.0);
			}

			if(joystick->thruster.yellow_2 >= 0)
			{
				ROS_Control_Motor(YELLOW_2, 'L', joystick->thruster.yellow_2);
			}
	  		else if(joystick->thruster.yellow_2 < 0)
			{
				ROS_Control_Motor(YELLOW_2, 'R', joystick->thruster.yellow_2*-1.0);
			}

			if(joystick->thruster.yellow_3 >= 0)
			{
				ROS_Control_Motor(YELLOW_3, 'L', joystick->thruster.yellow_3);
			}
	  		else if(joystick->thruster.yellow_3 < 0)
			{
				ROS_Control_Motor(YELLOW_3, 'R', joystick->thruster.yellow_3*-1.0);
			}
		}

		Count_Control_Motor++;
		if(Count_Control_Motor == 0x02) Count_Control_Motor = 0x00;
    }
    else if (Mode_AutoorManual)
    {

    }
}

void ROS_SetUp_Camera_callback(const rov_canbus_pkg::camera::ConstPtr& camera)
{
	//ROS_INFO_STREAM("Data Receive: " << camera->camera.camera_focus);
	if((Camera_Zoom_State != camera->camera.camera_zoom )|| (Camera_Bright_State !=  camera->camera.camera_bright )||(Camera_Focus_State != camera->camera.camera_focus ))
	{
		ROS_CANBUS_Data[0] = 'C';
		ROS_CANBUS_Data[1] = 'A';
		ROS_CANBUS_Data[2] = 'M';
		ROS_CANBUS_Data[3] =  camera->camera.camera_zoom;

		if(Camera_Bright_State <  camera->camera.camera_bright)
		{
			ROS_CANBUS_Data[4] =  0x02;
		}
		else if(Camera_Bright_State >  camera->camera.camera_bright)
		{
			ROS_CANBUS_Data[4] =  0x03;
		}
		else
		{
			ROS_CANBUS_Data[4] =  0xFF;
		}

		ROS_CANBUS_Data[5] =  camera->camera.camera_focus;
		ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
		ROS_CANBUS_Data[7] = 0x0A;
		driver.send(ROS_toframe(0x001,8,ROS_CANBUS_Data));

		Camera_Zoom_State = camera->camera.camera_zoom;		
		Camera_Bright_State = camera->camera.camera_bright;	
		Camera_Focus_State = camera->camera.camera_focus;
	}
}

void Heading_timerCallback(const ros::WallTimerEvent& event)
{
	if(Mode_AutoorManual)
	{
		float pDuty_Cycle = 0.0;
		Heading_Ctr.prev_sample_time = Heading_Ctr.current_sample_time;	
		Heading_Ctr.current_sample_time = (float)event.current_real.nsec;
		Heading_Ctr.Sample_Time = (Heading_Ctr.current_sample_time - Heading_Ctr.prev_sample_time)/(1.0e+09);
		if(Heading_Ctr.Sample_Time < 0) Heading_Ctr.Sample_Time = Heading_Ctr.Sample_Time + 1.0;
		if(Update_Sample_FirstTime)
		{
			Update_Sample_FirstTime = false;
			Heading_Ctr.Sample_Time = 0.01;
		}
		//ROS_INFO_STREAM("Hello  2   " << event.current_real.nsec<<"    " <<Heading_Ctr.Sample_Time<<"        " << Mode_AutoorManual);
		HeadingError = ROV_Heading_SP - ROV_IMU_Yaw.Value;
		Heading_coeff.P = ROV_Heading_PID.Kp*HeadingError;
		Heading_coeff.I += ROV_Heading_PID.Ki*Heading_Ctr.Sample_Time;
		Heading_coeff.D = ROV_Heading_PID.Kd*(HeadingError - preHeadingError)/Heading_Ctr.Sample_Time;

		pDuty_Cycle = (Heading_coeff.P + Heading_coeff.I + Heading_coeff.D);
		preHeadingError = HeadingError;
		if(pDuty_Cycle > 100.0) pDuty_Cycle = 100.0;
		else if(pDuty_Cycle < -100.0) pDuty_Cycle = -100.0;
		if(pDuty_Cycle >= 0)
		{
			ROS_Control_Motor(GREEN_1, 'L', pDuty_Cycle);
			ROS_Control_Motor(GREEN_2, 'R', pDuty_Cycle);
		}
	  	else if(pDuty_Cycle < 0)
		{
			ROS_Control_Motor(GREEN_1, 'R', pDuty_Cycle*-1.0);
			ROS_Control_Motor(GREEN_2, 'L', pDuty_Cycle*-1.0);
		}
	}
}

/*void Depth_timerCallback(const ros::WallTimerEvent& event)
{
	if(Mode_AutoorManual)
	{
		float pDuty_Cycle = 0.0;
		Depth_Ctr.prev_sample_time = Depth_Ctr.current_sample_time;	
		Depth_Ctr.current_sample_time = (float)event.current_real.nsec;
		Depth_Ctr.Sample_Time = (Depth_Ctr.current_sample_time - Depth_Ctr.prev_sample_time)/(1.0e+09);
		if(Depth_Ctr.Sample_Time < 0) Depth_Ctr.Sample_Time = Depth_Ctr.Sample_Time + 1.0;
		if(Update_Sample_FirstTime)
		{
			Update_Sample_FirstTime = false;
			Depth_Ctr.Sample_Time = 0.01;
		}
		//ROS_INFO_STREAM("Hello 1    " << event.current_real.nsec<<"    " <<Depth_Ctr.Sample_Time <<"        " << Mode_AutoorManual);
		DepthError = ROV_Depth_SP - ROV_IMU_Yaw.Value;
		Depth_coeff.P = ROV_Depth_PID.Kp*DepthError;
		Depth_coeff.I += ROV_Depth_PID.Ki*Depth_Ctr.Sample_Time;
		Depth_coeff.D = ROV_Depth_PID.Kd*(DepthError - preDepthError)/Depth_Ctr.Sample_Time;

		pDuty_Cycle = (Depth_coeff.P + Depth_coeff.I + Depth_coeff.D);
		preDepthError = DepthError;
		if(pDuty_Cycle > 100.0) pDuty_Cycle = 100.0;
		else if(pDuty_Cycle < -100.0) pDuty_Cycle = -100.0;
		if(pDuty_Cycle >= 0)
		{
			ROS_Control_Motor(YELLOW_1, 'L', pDuty_Cycle);
			ROS_Control_Motor(YELLOW_2, 'L', pDuty_Cycle);
			ROS_Control_Motor(YELLOW_3, 'L', pDuty_Cycle);
		}
	  	else if(pDuty_Cycle < 0)
		{
			ROS_Control_Motor(YELLOW_1, 'R', pDuty_Cycle*-1.0);
			ROS_Control_Motor(YELLOW_2, 'R', pDuty_Cycle*-1.0);
			ROS_Control_Motor(YELLOW_3, 'R', pDuty_Cycle*-1.0);
		}
	}
}*/

void ROS_Update_HeadingSP_callback(const std_msgs::Float32::ConstPtr& _sp)
{
	ROV_Heading_SP = _sp -> data;
}

void ROS_Update_HeadingCtr_callback(const rov_canbus_pkg::my_pid::ConstPtr& _pid)
{
	ROV_Heading_PID.Kp = _pid->Kp;
	ROV_Heading_PID.Ki = _pid->Ki;
	ROV_Heading_PID.Kd = _pid->Kd;
}

void ROS_Update_DepthSP_callback(const std_msgs::Float32::ConstPtr& _sp)
{
	ROV_Depth_SP = _sp -> data;
}

void ROS_Update_DepthCtr_callback(const rov_canbus_pkg::my_pid::ConstPtr& _pid)
{
	ROV_Depth_PID.Kp = _pid->Kp;
	ROV_Depth_PID.Ki = _pid->Ki;
	ROV_Depth_PID.Kd = _pid->Kd;
}

void ROS_Update_ModeCtr_callback(const std_msgs::Bool::ConstPtr& _mode)
{
	Mode_AutoorManual = _mode->data;
	if(Mode_AutoorManual) 
	{
		Heading_timer.start();
		//Depth_timer.start();
	}
	else 
	{
		Heading_timer.stop();
		Depth_timer.stop();
		Update_Sample_FirstTime = true;
	}
}

void ROS_Robot_Arm_callback(const rov_canbus_pkg::my_robot_arm::ConstPtr& _robot_arm_state)
{
	ROS_CANBUS_Data[0] = 'A';
	ROS_CANBUS_Data[1] = 'R';
	ROS_CANBUS_Data[2] = 'M';
	ROS_CANBUS_Data[3] = _robot_arm_state->robot_arm_open;
	ROS_CANBUS_Data[4] = _robot_arm_state->robot_arm_close;
	ROS_CANBUS_Data[5] = _robot_arm_state->robot_arm_stop;
	ROS_CANBUS_Data[6] = ROS_Checksum(ROS_CANBUS_Data, 0, 6);
	ROS_CANBUS_Data[7] = 0x0A;
	driver.send(ROS_toframe(0x002,8,ROS_CANBUS_Data));
}

int main (int argc, char** argv){
   ros::init(argc, argv,"canbus_node");
   ros::NodeHandle nh;
   sensors_data_pub = nh.advertise<rov_canbus_pkg::my_sensors>("sensors_data", 1000);
   ros::Subscriber sub_joystick = nh.subscribe("/joystick", 1000, ROS_Joystick_callback);
   ros::Subscriber sub_rc_servo = nh.subscribe("/rc_servo", 1000, ROS_RC_Servo_callback);
   ros::Subscriber sub_light = nh.subscribe("/light", 1000, ROS_Light_callback);
   ros::Subscriber sub_solenoid = nh.subscribe("/solenoid", 1000, ROS_Solenoid_callback);
   ros::Subscriber sub_setup_camera = nh.subscribe("/setup_camera", 1000, ROS_SetUp_Camera_callback);
   //-----------------------------------------PID-Control-----------------------------------------//
   ros::Subscriber sub_heading_sp = nh.subscribe("/heading_sp", 1000, ROS_Update_HeadingSP_callback);
   ros::Subscriber sub_heading_control = nh.subscribe("/heading_control", 1000, ROS_Update_HeadingCtr_callback);
   ros::Subscriber sub_depth_sp = nh.subscribe("/depth_sp", 1000, ROS_Update_DepthSP_callback);
   ros::Subscriber sub_depth_control = nh.subscribe("/depth_control", 1000, ROS_Update_DepthCtr_callback);
   ros::Subscriber sub_mode_control = nh.subscribe("/mode_control", 1000, ROS_Update_ModeCtr_callback);

    Heading_timer = nh.createWallTimer(ros::WallDuration(0.01), Heading_timerCallback);
    //Depth_timer = nh.createWallTimer(ros::WallDuration(0.013), Depth_timerCallback);
    Heading_timer.stop();
    Depth_timer.stop();
    if(!driver.init("slcan0", false)) return 1; // read own messages: false

    can::CommInterface::FrameListener::Ptr one_frame = driver.createMsgListener(can::MsgHeader(0x321), CANBUS_Received); // handle only frames with CAN-ID 0x321

    while(ros::ok())
    {  
        ros::spinOnce();
	//boost::this_thread::sleep_for(boost::chrono::seconds(1));
    }

    driver.shutdown();        
    return 0;
}