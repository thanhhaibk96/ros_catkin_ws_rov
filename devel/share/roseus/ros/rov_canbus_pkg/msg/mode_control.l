;; Auto-generated. Do not edit!


(when (boundp 'rov_canbus_pkg::mode_control)
  (if (not (find-package "ROV_CANBUS_PKG"))
    (make-package "ROV_CANBUS_PKG"))
  (shadow 'mode_control (find-package "ROV_CANBUS_PKG")))
(unless (find-package "ROV_CANBUS_PKG::MODE_CONTROL")
  (make-package "ROV_CANBUS_PKG::MODE_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude mode_control.msg.html


(defclass rov_canbus_pkg::mode_control
  :super ros::object
  :slots (_manual _auto ))

(defmethod rov_canbus_pkg::mode_control
  (:init
   (&key
    ((:manual __manual) nil)
    ((:auto __auto) nil)
    )
   (send-super :init)
   (setq _manual __manual)
   (setq _auto __auto)
   self)
  (:manual
   (&optional __manual)
   (if __manual (setq _manual __manual)) _manual)
  (:auto
   (&optional __auto)
   (if __auto (setq _auto __auto)) _auto)
  (:serialization-length
   ()
   (+
    ;; bool _manual
    1
    ;; bool _auto
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _manual
       (if _manual (write-byte -1 s) (write-byte 0 s))
     ;; bool _auto
       (if _auto (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _manual
     (setq _manual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto
     (setq _auto (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rov_canbus_pkg::mode_control :md5sum-) "2f01efd757ee8c9f69cd0dba342421f0")
(setf (get rov_canbus_pkg::mode_control :datatype-) "rov_canbus_pkg/mode_control")
(setf (get rov_canbus_pkg::mode_control :definition-)
      "bool manual
bool auto
")



(provide :rov_canbus_pkg/mode_control "2f01efd757ee8c9f69cd0dba342421f0")


