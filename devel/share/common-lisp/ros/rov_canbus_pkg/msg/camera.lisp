; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude camera.msg.html

(cl:defclass <camera> (roslisp-msg-protocol:ros-message)
  ((camera
    :reader camera
    :initarg :camera
    :type rov_canbus_pkg-msg:m_setup_camera
    :initform (cl:make-instance 'rov_canbus_pkg-msg:m_setup_camera)))
)

(cl:defclass camera (<camera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <camera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'camera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<camera> is deprecated: use rov_canbus_pkg-msg:camera instead.")))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:camera-val is deprecated.  Use rov_canbus_pkg-msg:camera instead.")
  (camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <camera>) ostream)
  "Serializes a message object of type '<camera>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <camera>) istream)
  "Deserializes a message object of type '<camera>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<camera>)))
  "Returns string type for a message object of type '<camera>"
  "rov_canbus_pkg/camera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'camera)))
  "Returns string type for a message object of type 'camera"
  "rov_canbus_pkg/camera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<camera>)))
  "Returns md5sum for a message object of type '<camera>"
  "cdec6a66e2e4b31d3db7162f12cb9ca5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'camera)))
  "Returns md5sum for a message object of type 'camera"
  "cdec6a66e2e4b31d3db7162f12cb9ca5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<camera>)))
  "Returns full string definition for message of type '<camera>"
  (cl:format cl:nil "m_setup_camera camera~%================================================================================~%MSG: rov_canbus_pkg/m_setup_camera~%uint8 camera_zoom~%uint8 camera_focus~%uint8 camera_bright~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'camera)))
  "Returns full string definition for message of type 'camera"
  (cl:format cl:nil "m_setup_camera camera~%================================================================================~%MSG: rov_canbus_pkg/m_setup_camera~%uint8 camera_zoom~%uint8 camera_focus~%uint8 camera_bright~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <camera>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <camera>))
  "Converts a ROS message object to a list"
  (cl:list 'camera
    (cl:cons ':camera (camera msg))
))
