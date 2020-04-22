;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::my_pid)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'my_pid (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::MY_PID")
  (make-package "ROV_CANBUS_PKG::MY_PID"))

(in-package "ROS")
;;//! \htmlinclude my_pid.msg.html


(defclass rov_canbus_pkg::my_pid
  :super ros::object
  :slots (_Kp _Ki _Kd ))

(defmethod rov_canbus_pkg::my_pid
  (:init
   (&key
    ((:Kp __Kp) 0.0)
    ((:Ki __Ki) 0.0)
    ((:Kd __Kd) 0.0)
    )
   (send-super :init)
   (setq _Kp (float __Kp))
   (setq _Ki (float __Ki))
   (setq _Kd (float __Kd))
   self)
  (:Kp
   (&optional __Kp)
   (if __Kp (setq _Kp __Kp)) _Kp)
  (:Ki
   (&optional __Ki)
   (if __Ki (setq _Ki __Ki)) _Ki)
  (:Kd
   (&optional __Kd)
   (if __Kd (setq _Kd __Kd)) _Kd)
  (:serialization-length
   ()
   (+
    ;; float32 _Kp
    4
    ;; float32 _Ki
    4
    ;; float32 _Kd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Kp
       (sys::poke _Kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ki
       (sys::poke _Ki (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Kd
       (sys::poke _Kd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Kp
     (setq _Kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ki
     (setq _Ki (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Kd
     (setq _Kd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rov_canbus_pkg::my_pid :md5sum-) "efa8beee6353230a5babb632ca65705b")
(setf (get rov_canbus_pkg::my_pid :datatype-) "rov_canbus_pkg/my_pid")
(setf (get rov_canbus_pkg::my_pid :definition-)
      "float32 Kp
float32 Ki
float32 Kd
")



(provide :rov_canbus_pkg/my_pid "efa8beee6353230a5babb632ca65705b")


