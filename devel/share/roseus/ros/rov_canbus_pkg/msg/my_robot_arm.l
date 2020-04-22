;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::my_robot_arm)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'my_robot_arm (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::MY_ROBOT_ARM")
  (make-package "ROV_CANBUS_PKG::MY_ROBOT_ARM"))

(in-package "ROS")
;;//! \htmlinclude my_robot_arm.msg.html


(defclass rov_canbus_pkg::my_robot_arm
  :super ros::object
  :slots (_robot_arm_open _robot_arm_close _robot_arm_stop ))

(defmethod rov_canbus_pkg::my_robot_arm
  (:init
   (&key
    ((:robot_arm_open __robot_arm_open) 0)
    ((:robot_arm_close __robot_arm_close) 0)
    ((:robot_arm_stop __robot_arm_stop) 0)
    )
   (send-super :init)
   (setq _robot_arm_open (round __robot_arm_open))
   (setq _robot_arm_close (round __robot_arm_close))
   (setq _robot_arm_stop (round __robot_arm_stop))
   self)
  (:robot_arm_open
   (&optional __robot_arm_open)
   (if __robot_arm_open (setq _robot_arm_open __robot_arm_open)) _robot_arm_open)
  (:robot_arm_close
   (&optional __robot_arm_close)
   (if __robot_arm_close (setq _robot_arm_close __robot_arm_close)) _robot_arm_close)
  (:robot_arm_stop
   (&optional __robot_arm_stop)
   (if __robot_arm_stop (setq _robot_arm_stop __robot_arm_stop)) _robot_arm_stop)
  (:serialization-length
   ()
   (+
    ;; uint8 _robot_arm_open
    1
    ;; uint8 _robot_arm_close
    1
    ;; uint8 _robot_arm_stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _robot_arm_open
       (write-byte _robot_arm_open s)
     ;; uint8 _robot_arm_close
       (write-byte _robot_arm_close s)
     ;; uint8 _robot_arm_stop
       (write-byte _robot_arm_stop s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _robot_arm_open
     (setq _robot_arm_open (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _robot_arm_close
     (setq _robot_arm_close (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _robot_arm_stop
     (setq _robot_arm_stop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rov_canbus_pkg::my_robot_arm :md5sum-) "cc441effc562f63bdb89f9392fe90557")
(setf (get rov_canbus_pkg::my_robot_arm :datatype-) "rov_canbus_pkg/my_robot_arm")
(setf (get rov_canbus_pkg::my_robot_arm :definition-)
      "uint8 robot_arm_open
uint8 robot_arm_close
uint8 robot_arm_stop
")



(provide :rov_canbus_pkg/my_robot_arm "cc441effc562f63bdb89f9392fe90557")


