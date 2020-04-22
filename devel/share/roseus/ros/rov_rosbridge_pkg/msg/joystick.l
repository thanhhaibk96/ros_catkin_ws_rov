;; Auto-generated. Do not edit!


(when (boundp 'rov_rosbridge_pkg::joystick)
  (if (not (find-package "ROV_ROSBRIDGE_PKG"))
    (make-package "ROV_ROSBRIDGE_PKG"))
  (shadow 'joystick (find-package "ROV_ROSBRIDGE_PKG")))
(unless (find-package "ROV_ROSBRIDGE_PKG::JOYSTICK")
  (make-package "ROV_ROSBRIDGE_PKG::JOYSTICK"))

(in-package "ROS")
;;//! \htmlinclude joystick.msg.html


(defclass rov_rosbridge_pkg::joystick
  :super ros::object
  :slots (_thruster ))

(defmethod rov_rosbridge_pkg::joystick
  (:init
   (&key
    ((:thruster __thruster) (instance rov_rosbridge_pkg::my_thruster :init))
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
    ;; rov_rosbridge_pkg/my_thruster _thruster
    (send _thruster :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rov_rosbridge_pkg/my_thruster _thruster
       (send _thruster :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rov_rosbridge_pkg/my_thruster _thruster
     (send _thruster :deserialize buf ptr-) (incf ptr- (send _thruster :serialization-length))
   ;;
   self)
  )

(setf (get rov_rosbridge_pkg::joystick :md5sum-) "366ba66c658c6e322e99dac7f045747d")
(setf (get rov_rosbridge_pkg::joystick :datatype-) "rov_rosbridge_pkg/joystick")
(setf (get rov_rosbridge_pkg::joystick :definition-)
      "my_thruster thruster
================================================================================
MSG: rov_rosbridge_pkg/my_thruster
float64 bldc
float64 green_1
float64 green_2
float64 yellow_1
float64 yellow_2
float64 yellow_3
")



(provide :rov_rosbridge_pkg/joystick "366ba66c658c6e322e99dac7f045747d")


