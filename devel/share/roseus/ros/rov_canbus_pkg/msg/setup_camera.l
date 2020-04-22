;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::setup_camera)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'setup_camera (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::SETUP_CAMERA")
  (make-package "ROV_CANBUS_PKG::SETUP_CAMERA"))

(in-package "ROS")
;;//! \htmlinclude setup_camera.msg.html


(defclass rov_canbus_pkg::setup_camera
  :super ros::object
  :slots (_camera_zoom _camera_focus _camera_bright ))

(defmethod rov_canbus_pkg::setup_camera
  (:init
   (&key
    ((:camera_zoom __camera_zoom) 0)
    ((:camera_focus __camera_focus) 0)
    ((:camera_bright __camera_bright) 0)
    )
   (send-super :init)
   (setq _camera_zoom (round __camera_zoom))
   (setq _camera_focus (round __camera_focus))
   (setq _camera_bright (round __camera_bright))
   self)
  (:camera_zoom
   (&optional __camera_zoom)
   (if __camera_zoom (setq _camera_zoom __camera_zoom)) _camera_zoom)
  (:camera_focus
   (&optional __camera_focus)
   (if __camera_focus (setq _camera_focus __camera_focus)) _camera_focus)
  (:camera_bright
   (&optional __camera_bright)
   (if __camera_bright (setq _camera_bright __camera_bright)) _camera_bright)
  (:serialization-length
   ()
   (+
    ;; uint8 _camera_zoom
    1
    ;; uint8 _camera_focus
    1
    ;; uint8 _camera_bright
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _camera_zoom
       (write-byte _camera_zoom s)
     ;; uint8 _camera_focus
       (write-byte _camera_focus s)
     ;; uint8 _camera_bright
       (write-byte _camera_bright s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _camera_zoom
     (setq _camera_zoom (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _camera_focus
     (setq _camera_focus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _camera_bright
     (setq _camera_bright (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rov_canbus_pkg::setup_camera :md5sum-) "6554d73da328aadf658777e841366a86")
(setf (get rov_canbus_pkg::setup_camera :datatype-) "rov_canbus_pkg/setup_camera")
(setf (get rov_canbus_pkg::setup_camera :definition-)
      "uint8 camera_zoom
uint8 camera_focus
uint8 camera_bright
")



(provide :rov_canbus_pkg/setup_camera "6554d73da328aadf658777e841366a86")


