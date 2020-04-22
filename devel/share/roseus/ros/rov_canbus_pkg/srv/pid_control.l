;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::pid_control)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'pid_control (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::PID_CONTROL")
  (make-package "ROV_CANBUS_PKG::PID_CONTROL"))
(unless (find-package "ROV_CANBUS_PKG::PID_CONTROLREQUEST")
  (make-package "ROV_CANBUS_PKG::PID_CONTROLREQUEST"))
(unless (find-package "ROV_CANBUS_PKG::PID_CONTROLRESPONSE")
  (make-package "ROV_CANBUS_PKG::PID_CONTROLRESPONSE"))

(in-package "ROS")





(defclass rov_canbus_pkg::pid_controlRequest
  :super ros::object
  :slots (_imu_yaw_sp _imu_yaw_cur ))

(defmethod rov_canbus_pkg::pid_controlRequest
  (:init
   (&key
    ((:imu_yaw_sp __imu_yaw_sp) 0.0)
    ((:imu_yaw_cur __imu_yaw_cur) 0.0)
    )
   (send-super :init)
   (setq _imu_yaw_sp (float __imu_yaw_sp))
   (setq _imu_yaw_cur (float __imu_yaw_cur))
   self)
  (:imu_yaw_sp
   (&optional __imu_yaw_sp)
   (if __imu_yaw_sp (setq _imu_yaw_sp __imu_yaw_sp)) _imu_yaw_sp)
  (:imu_yaw_cur
   (&optional __imu_yaw_cur)
   (if __imu_yaw_cur (setq _imu_yaw_cur __imu_yaw_cur)) _imu_yaw_cur)
  (:serialization-length
   ()
   (+
    ;; float32 _imu_yaw_sp
    4
    ;; float32 _imu_yaw_cur
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _imu_yaw_sp
       (sys::poke _imu_yaw_sp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _imu_yaw_cur
       (sys::poke _imu_yaw_cur (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _imu_yaw_sp
     (setq _imu_yaw_sp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _imu_yaw_cur
     (setq _imu_yaw_cur (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rov_canbus_pkg::pid_controlResponse
  :super ros::object
  :slots (_duty_cycle ))

(defmethod rov_canbus_pkg::pid_controlResponse
  (:init
   (&key
    ((:duty_cycle __duty_cycle) 0.0)
    )
   (send-super :init)
   (setq _duty_cycle (float __duty_cycle))
   self)
  (:duty_cycle
   (&optional __duty_cycle)
   (if __duty_cycle (setq _duty_cycle __duty_cycle)) _duty_cycle)
  (:serialization-length
   ()
   (+
    ;; float32 _duty_cycle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _duty_cycle
       (sys::poke _duty_cycle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _duty_cycle
     (setq _duty_cycle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rov_canbus_pkg::pid_control
  :super ros::object
  :slots ())

(setf (get rov_canbus_pkg::pid_control :md5sum-) "f44360cec437240487440e29a8817f6f")
(setf (get rov_canbus_pkg::pid_control :datatype-) "rov_canbus_pkg/pid_control")
(setf (get rov_canbus_pkg::pid_control :request) rov_canbus_pkg::pid_controlRequest)
(setf (get rov_canbus_pkg::pid_control :response) rov_canbus_pkg::pid_controlResponse)

(defmethod rov_canbus_pkg::pid_controlRequest
  (:response () (instance rov_canbus_pkg::pid_controlResponse :init)))

(setf (get rov_canbus_pkg::pid_controlRequest :md5sum-) "f44360cec437240487440e29a8817f6f")
(setf (get rov_canbus_pkg::pid_controlRequest :datatype-) "rov_canbus_pkg/pid_controlRequest")
(setf (get rov_canbus_pkg::pid_controlRequest :definition-)
      "float32 imu_yaw_sp
float32 imu_yaw_cur
---
float32 duty_cycle
")

(setf (get rov_canbus_pkg::pid_controlResponse :md5sum-) "f44360cec437240487440e29a8817f6f")
(setf (get rov_canbus_pkg::pid_controlResponse :datatype-) "rov_canbus_pkg/pid_controlResponse")
(setf (get rov_canbus_pkg::pid_controlResponse :definition-)
      "float32 imu_yaw_sp
float32 imu_yaw_cur
---
float32 duty_cycle
")



(provide :rov_canbus_pkg/pid_control "f44360cec437240487440e29a8817f6f")


