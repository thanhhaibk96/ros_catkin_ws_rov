;; Auto-generated. Do not edit!


(when (boundp 'rov_rosbridge_pkg::rov_rosbridge_pkg)
  (if (not (find-package "ROV_ROSBRIDGE_PKG"))
    (make-package "ROV_ROSBRIDGE_PKG"))
  (shadow 'rov_rosbridge_pkg (find-package "ROV_ROSBRIDGE_PKG")))
(unless (find-package "ROV_ROSBRIDGE_PKG::ROV_ROSBRIDGE_PKG")
  (make-package "ROV_ROSBRIDGE_PKG::ROV_ROSBRIDGE_PKG"))

(in-package "ROS")
;;//! \htmlinclude rov_rosbridge_pkg.msg.html


(defclass rov_rosbridge_pkg::rov_rosbridge_pkg
  :super ros::object
  :slots (_bldc _green_1 _green_2 _yellow_1 _yellow_2 _yellow_3 ))

(defmethod rov_rosbridge_pkg::rov_rosbridge_pkg
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
    ;; float64 _bldc
    8
    ;; float64 _green_1
    8
    ;; float64 _green_2
    8
    ;; float64 _yellow_1
    8
    ;; float64 _yellow_2
    8
    ;; float64 _yellow_3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _bldc
       (sys::poke _bldc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _green_1
       (sys::poke _green_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _green_2
       (sys::poke _green_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yellow_1
       (sys::poke _yellow_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yellow_2
       (sys::poke _yellow_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yellow_3
       (sys::poke _yellow_3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _bldc
     (setq _bldc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _green_1
     (setq _green_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _green_2
     (setq _green_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yellow_1
     (setq _yellow_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yellow_2
     (setq _yellow_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yellow_3
     (setq _yellow_3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rov_rosbridge_pkg::rov_rosbridge_pkg :md5sum-) "9367b8cc652373d45d2d90195a1cf1bf")
(setf (get rov_rosbridge_pkg::rov_rosbridge_pkg :datatype-) "rov_rosbridge_pkg/rov_rosbridge_pkg")
(setf (get rov_rosbridge_pkg::rov_rosbridge_pkg :definition-)
      "float64 bldc
float64 green_1
float64 green_2
float64 yellow_1
float64 yellow_2
float64 yellow_3
")



(provide :rov_rosbridge_pkg/rov_rosbridge_pkg "9367b8cc652373d45d2d90195a1cf1bf")


