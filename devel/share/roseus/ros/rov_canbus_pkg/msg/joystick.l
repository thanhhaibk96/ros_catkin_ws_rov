;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::joystick)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'joystick (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::JOYSTICK")
  (make-package "ROV_CANBUS_PKG::JOYSTICK"))

(in-package "ROS")
;;//! \htmlinclude joystick.msg.html


(defclass rov_canbus_pkg::joystick
  :super ros::object
  :slots (_thruster ))

(defmethod rov_canbus_pkg::joystick
  (:init
   (&key
    ((:thruster __thruster) (instance rov_canbus_pkg::my_thruster :init))
    )
   (send-super :init)
   (setq _thruster __thruster)
   self)
  (:thruster
   (&rest __thruster)
   (if (keywordp (car __thruster))
       (send* _thruster __thruster)
     (progn
       (if __thruster (setq _thruster (car __thruster)))
       _thruster)))
  (:serialization-length
   ()
   (+
    ;; rov_canbus_pkg/my_thruster _thruster
    (send _thruster :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rov_canbus_pkg/my_thruster _thruster
       (send _thruster :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rov_canbus_pkg/my_thruster _thruster
     (send _thruster :deserialize buf ptr-) (incf ptr- (send _thruster :serialization-length))
   ;;
   self)
  )

(setf (get rov_canbus_pkg::joystick :md5sum-) "e64b1b8f03464111f861d5d5c0e8e7e1")
(setf (get rov_canbus_pkg::joystick :datatype-) "rov_canbus_pkg/joystick")
(setf (get rov_canbus_pkg::joystick :definition-)
      "my_thruster thruster
================================================================================
MSG: rov_canbus_pkg/my_thruster
float32 bldc
float32 green_1
float32 green_2
float32 yellow_1
float32 yellow_2
float32 yellow_3
")



(provide :rov_canbus_pkg/joystick "e64b1b8f03464111f861d5d5c0e8e7e1")


