;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::my_sensors)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'my_sensors (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::MY_SENSORS")
  (make-package "ROV_CANBUS_PKG::MY_SENSORS"))

(in-package "ROS")
;;//! \htmlinclude my_sensors.msg.html


(defclass rov_canbus_pkg::my_sensors
  :super ros::object
  :slots (_imu _depth ))

(defmethod rov_canbus_pkg::my_sensors
  (:init
   (&key
    ((:imu __imu) (instance rov_canbus_pkg::imu_data :init))
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _imu __imu)
   (setq _depth (float __depth))
   self)
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; rov_canbus_pkg/imu_data _imu
    (send _imu :serialization-length)
    ;; float32 _depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rov_canbus_pkg/imu_data _imu
       (send _imu :serialize s)
     ;; float32 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rov_canbus_pkg/imu_data _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;; float32 _depth
     (setq _depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rov_canbus_pkg::my_sensors :md5sum-) "e69800ec6584751e8ef4cbb24d578d8c")
(setf (get rov_canbus_pkg::my_sensors :datatype-) "rov_canbus_pkg/my_sensors")
(setf (get rov_canbus_pkg::my_sensors :definition-)
      "imu_data imu
float32 depth
================================================================================
MSG: rov_canbus_pkg/imu_data
float32 roll
float32 pitch
float32 yaw
")



(provide :rov_canbus_pkg/my_sensors "e69800ec6584751e8ef4cbb24d578d8c")


