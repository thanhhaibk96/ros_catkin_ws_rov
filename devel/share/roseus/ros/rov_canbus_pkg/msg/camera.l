;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::camera)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'camera (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::CAMERA")
  (make-package "ROV_CANBUS_PKG::CAMERA"))

(in-package "ROS")
;;//! \htmlinclude camera.msg.html


(defclass rov_canbus_pkg::camera
  :super ros::object
  :slots (_camera ))

(defmethod rov_canbus_pkg::camera
  (:init
   (&key
    ((:camera __camera) (instance rov_canbus_pkg::m_setup_camera :init))
    )
   (send-super :init)
   (setq _camera __camera)
   self)
  (:camera
   (&rest __camera)
   (if (keywordp (car __camera))
       (send* _camera __camera)
     (progn
       (if __camera (setq _camera (car __camera)))
       _camera)))
  (:serialization-length
   ()
   (+
    ;; rov_canbus_pkg/m_setup_camera _camera
    (send _camera :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rov_canbus_pkg/m_setup_camera _camera
       (send _camera :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rov_canbus_pkg/m_setup_camera _camera
     (send _camera :deserialize buf ptr-) (incf ptr- (send _camera :serialization-length))
   ;;
   self)
  )

(setf (get rov_canbus_pkg::camera :md5sum-) "cdec6a66e2e4b31d3db7162f12cb9ca5")
(setf (get rov_canbus_pkg::camera :datatype-) "rov_canbus_pkg/camera")
(setf (get rov_canbus_pkg::camera :definition-)
      "m_setup_camera camera
================================================================================
MSG: rov_canbus_pkg/m_setup_camera
uint8 camera_zoom
uint8 camera_focus
uint8 camera_bright
")



(provide :rov_canbus_pkg/camera "cdec6a66e2e4b31d3db7162f12cb9ca5")


