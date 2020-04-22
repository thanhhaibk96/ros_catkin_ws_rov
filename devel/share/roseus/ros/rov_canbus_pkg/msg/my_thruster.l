;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::my_thruster)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'my_thruster (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::MY_THRUSTER")
  (make-package "ROV_CANBUS_PKG::MY_THRUSTER"))

(in-package "ROS")
;;//! \htmlinclude my_thruster.msg.html


(defclass rov_canbus_pkg::my_thruster
  :super ros::object
  :slots (_bldc _green_1 _green_2 _yellow_1 _yellow_2 _yellow_3 ))

(defmethod rov_canbus_pkg::my_thruster
  (:init
   (&key
    ((:bldc __bldc) 0.0)
    ((:green_1 __green_1) 0.0)
    ((:green_2 __green_2) 0.0)
    ((:yellow_1 __yellow_1) 0.0)
    ((:yellow_2 __yellow_2) 0.0)
    ((:yellow_3 __yellow_3) 0.0)
    )
   (send-super :init)
   (setq _bldc (float __bldc))
   (setq _green_1 (float __green_1))
   (setq _green_2 (float __green_2))
   (setq _yellow_1 (float __yellow_1))
   (setq _yellow_2 (float __yellow_2))
   (setq _yellow_3 (float __yellow_3))
   self)
  (:bldc
   (&optional __bldc)
   (if __bldc (setq _bldc __bldc)) _bldc)
  (:green_1
   (&optional __green_1)
   (if __green_1 (setq _green_1 __green_1)) _green_1)
  (:green_2
   (&optional __green_2)
   (if __green_2 (setq _green_2 __green_2)) _green_2)
  (:yellow_1
   (&optional __yellow_1)
   (if __yellow_1 (setq _yellow_1 __yellow_1)) _yellow_1)
  (:yellow_2
   (&optional __yellow_2)
   (if __yellow_2 (setq _yellow_2 __yellow_2)) _yellow_2)
  (:yellow_3
   (&optional __yellow_3)
   (if __yellow_3 (setq _yellow_3 __yellow_3)) _yellow_3)
  (:serialization-length
   ()
   (+
    ;; float32 _bldc
    4
    ;; float32 _green_1
    4
    ;; float32 _green_2
    4
    ;; float32 _yellow_1
    4
    ;; float32 _yellow_2
    4
    ;; float32 _yellow_3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _bldc
       (sys::poke _bldc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _green_1
       (sys::poke _green_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _green_2
       (sys::poke _green_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yellow_1
       (sys::poke _yellow_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yellow_2
       (sys::poke _yellow_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yellow_3
       (sys::poke _yellow_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _bldc
     (setq _bldc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _green_1
     (setq _green_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _green_2
     (setq _green_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yellow_1
     (setq _yellow_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yellow_2
     (setq _yellow_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yellow_3
     (setq _yellow_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rov_canbus_pkg::my_thruster :md5sum-) "d76c367caf77424d8ee54f064371f169")
(setf (get rov_canbus_pkg::my_thruster :datatype-) "rov_canbus_pkg/my_thruster")
(setf (get rov_canbus_pkg::my_thruster :definition-)
      "float32 bldc
float32 green_1
float32 green_2
float32 yellow_1
float32 yellow_2
float32 yellow_3
")



(provide :rov_canbus_pkg/my_thruster "d76c367caf77424d8ee54f064371f169")


