/***
 * This example expects the serial port has a loopback on it.
 *
 * Alternatively, you could use an Arduino:
 *
 * <pre>
 *  void setup() {
 *    Serial.begin(<insert your baudrate here>);
 *  }
 *
 *  void loop() {
 *    if (Serial.available()) {
 *      Serial.write(Serial.read());
 *    }
 *  }
 * </pre>
 */

#include <ros/ros.h>
#include <serial/serial.h>
#include <std_msgs/String.h>
#include <std_msgs/UInt8MultiArray.h>
#include <std_msgs/Empty.h>
#include <rov_serial_pkg/joystick.h>

serial::Serial ser;

#define BUFFER_DATA_LENGTH 12

ros::WallTimer Control_BLDC_timer;

float BLDC_DutyCycle_Current = 0.0, BLDC_Duty_Cycle_SP = 0.0;
uint8_t _BLDC_Data[BUFFER_DATA_LENGTH] = {(uint8_t)'#', (uint8_t)'P', (uint8_t)'C', 0, 0, 0, 0, 0, 0, 0, 0, (uint8_t)'*' };

union Serial_Data
{
	float Value;
	
	struct
	{
		unsigned a1:8;
		unsigned a2:8;
		unsigned a3:8;
		unsigned a4:8;
	}byte;
}ROV_Serial_Duty, ROV_Serial_SetSpeed;

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

void ROV_run_OpenLoop_BLDC(uint8_t _direction, float _value)
{
	ROV_Serial_Duty.Value = _value; 
	_BLDC_Data[3] = (uint8_t)'O';
	_BLDC_Data[4] = (uint8_t)'L';
	_BLDC_Data[5] = (uint8_t)_direction;
	_BLDC_Data[6] = (uint8_t)ROV_Serial_Duty.byte.a4;
	_BLDC_Data[7] = (uint8_t)ROV_Serial_Duty.byte.a3;
	_BLDC_Data[8] = (uint8_t)ROV_Serial_Duty.byte.a2;
	_BLDC_Data[9] = (uint8_t)ROV_Serial_Duty.byte.a1;
	_BLDC_Data[10] = ROS_Checksum(_BLDC_Data, 0, 10);
	ser.write(_BLDC_Data,BUFFER_DATA_LENGTH);
}

void ROV_run_CloseLoop_BLDC(uint8_t _direction, float _value)
{
	ROV_Serial_SetSpeed.Value = _value; 
	_BLDC_Data[3] = (uint8_t)'C';
	_BLDC_Data[4] = (uint8_t)'P';
	_BLDC_Data[5] = (uint8_t)_direction;
	_BLDC_Data[6] = (uint8_t)ROV_Serial_SetSpeed.byte.a4;
	_BLDC_Data[7] = (uint8_t)ROV_Serial_SetSpeed.byte.a3;
	_BLDC_Data[8] = (uint8_t)ROV_Serial_SetSpeed.byte.a2;
	_BLDC_Data[9] = (uint8_t)ROV_Serial_SetSpeed.byte.a1;
	_BLDC_Data[10] = ROS_Checksum(_BLDC_Data, 0, 10);
	ser.write(_BLDC_Data,BUFFER_DATA_LENGTH);
}

void ROS_Joystick_callback(const rov_serial_pkg::joystick::ConstPtr& joystick)
{	
	if(ser.available())
	{
		BLDC_Duty_Cycle_SP = joystick->thruster.bldc;    
		//ROS_INFO_STREAM("Serial Data" << joystick->thruster.bldc);
        }	
}

void Control_BLDC_timerCallback(const ros::WallTimerEvent& event)
{
	if(BLDC_DutyCycle_Current < BLDC_Duty_Cycle_SP )
	{
		BLDC_DutyCycle_Current += 0.5;
		if(BLDC_DutyCycle_Current >= BLDC_Duty_Cycle_SP) BLDC_DutyCycle_Current = BLDC_Duty_Cycle_SP;
		//ROS_INFO_STREAM("Serial Data" << BLDC_DutyCycle_Current);
	}
	else if(BLDC_DutyCycle_Current > BLDC_Duty_Cycle_SP)
	{
		BLDC_DutyCycle_Current -= 0.5;
		if(BLDC_DutyCycle_Current <= BLDC_Duty_Cycle_SP) BLDC_DutyCycle_Current = BLDC_Duty_Cycle_SP;
		//ROS_INFO_STREAM("Serial Data" << BLDC_DutyCycle_Current);
	}
	if(BLDC_DutyCycle_Current >= 0.0)
	{	
		ROV_run_OpenLoop_BLDC('R',BLDC_DutyCycle_Current*0.4);
	}
	else if(BLDC_DutyCycle_Current < 0.0)
	{
		ROV_run_OpenLoop_BLDC('L',BLDC_DutyCycle_Current*-0.4);
	}
}
	
int main (int argc, char** argv){
    ros::init(argc, argv, "serial_example_node");
    ros::NodeHandle nh;

    ros::Subscriber write_sub = nh.subscribe("/joystick", 1000, ROS_Joystick_callback);
    ros::Publisher read_pub = nh.advertise<std_msgs::String>("read", 1000);
    Control_BLDC_timer = nh.createWallTimer(ros::WallDuration(0.03), Control_BLDC_timerCallback);
    Control_BLDC_timer.start();
    try
    {
        ser.setPort("/dev/ttyUSB-SERIAL");
        ser.setBaudrate(9600);
        serial::Timeout to = serial::Timeout::simpleTimeout(1000);
        ser.setTimeout(to);
        ser.open();
    }
    catch (serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port ");
        return -1;
    }

    if(ser.isOpen()){
        ROS_INFO_STREAM("Serial Port initialized");
	ROV_Serial_Duty.Value = 0.0; 
    }else{
        return -1;
    }

    while(ros::ok())
   {
        ros::spinOnce();
    }
}
