;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::my_imu)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'my_imu (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::MY_IMU")
  (make-package "ROV_CANBUS_PKG::MY_IMU"))

(in-package "ROS")
;;//! \htmlinclude my_imu.msg.html


(defclass rov_canbus_pkg::my_imu
  :super ros::object
  :slots (_imu ))

(defmethod rov_canbus_pkg::my_imu
  (:init
   (&key
    ((:imu __imu) (instance rov_canbus_pkg::imu_data :init))
    )
   (send-super :init)
   (setq _imu __imu)
   self)
  (:imu
   (&rest __imu)
   (if (keywordp (car __imu))
       (send* _imu __imu)
     (progn
       (if __imu (setq _imu (car __imu)))
       _imu)))
  (:serialization-length
   ()
   (+
    ;; rov_canbus_pkg/imu_data _imu
    (send _imu :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rov_canbus_pkg/imu_data _imu
       (send _imu :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rov_canbus_pkg/imu_data _imu
     (send _imu :deserialize buf ptr-) (incf ptr- (send _imu :serialization-length))
   ;;
   self)
  )

(setf (get rov_canbus_pkg::my_imu :md5sum-) "c762b552376ee3383331a20cca0537be")
(setf (get rov_canbus_pkg::my_imu :datatype-) "rov_canbus_pkg/my_imu")
(setf (get rov_canbus_pkg::my_imu :definition-)
      "imu_data imu
================================================================================
MSG: rov_canbus_pkg/imu_data
float32 roll
float32 pitch
float32 yaw
")



(provide :rov_canbus_pkg/my_imu "c762b552376ee3383331a20cca0537be")


