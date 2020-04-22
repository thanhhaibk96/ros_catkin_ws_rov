;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::rc_servo)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'rc_servo (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::RC_SERVO")
  (make-package "ROV_CANBUS_PKG::RC_SERVO"))

(in-package "ROS")
;;//! \htmlinclude rc_servo.msg.html


(defclass rov_canbus_pkg::rc_servo
  :super ros::object
  :slots (_rc_servo ))

(defmethod rov_canbus_pkg::rc_servo
  (:init
   (&key
    ((:rc_servo __rc_servo) 0.0)
    )
   (send-super :init)
   (setq _rc_servo (float __rc_servo))
   self)
  (:rc_servo
   (&optional __rc_servo)
   (if __rc_servo (setq _rc_servo __rc_servo)) _rc_servo)
  (:serialization-length
   ()
   (+
    ;; float32 _rc_servo
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _rc_servo
       (sys::poke _rc_servo (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _rc_servo
     (setq _rc_servo (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rov_canbus_pkg::rc_servo :md5sum-) "13e2266f041bc10419d9aec8eec4fdb8")
(setf (get rov_canbus_pkg::rc_servo :datatype-) "rov_canbus_pkg/rc_servo")
(setf (get rov_canbus_pkg::rc_servo :definition-)
      "float32 rc_servo
")



(provide :rov_canbus_pkg/rc_servo "13e2266f041bc10419d9aec8eec4fdb8")


