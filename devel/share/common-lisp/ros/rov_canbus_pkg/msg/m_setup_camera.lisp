; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude m_setup_camera.msg.html

(cl:defclass <m_setup_camera> (roslisp-msg-protocol:ros-message)
  ((camera_zoom
    :reader camera_zoom
    :initarg :camera_zoom
    :type cl:fixnum
    :initform 0)
   (camera_focus
    :reader camera_focus
    :initarg :camera_focus
    :type cl:fixnum
    :initform 0)
   (camera_bright
    :reader camera_bright
    :initarg :camera_bright
    :type cl:fixnum
    :initform 0))
)

(cl:defclass m_setup_camera (<m_setup_camera>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <m_setup_camera>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'm_setup_camera)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<m_setup_camera> is deprecated: use rov_canbus_pkg-msg:m_setup_camera instead.")))

(cl:ensure-generic-function 'camera_zoom-val :lambda-list '(m))
(cl:defmethod camera_zoom-val ((m <m_setup_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:camera_zoom-val is deprecated.  Use rov_canbus_pkg-msg:camera_zoom instead.")
  (camera_zoom m))

(cl:ensure-generic-function 'camera_focus-val :lambda-list '(m))
(cl:defmethod camera_focus-val ((m <m_setup_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:camera_focus-val is deprecated.  Use rov_canbus_pkg-msg:camera_focus instead.")
  (camera_focus m))

(cl:ensure-generic-function 'camera_bright-val :lambda-list '(m))
(cl:defmethod camera_bright-val ((m <m_setup_camera>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:camera_bright-val is deprecated.  Use rov_canbus_pkg-msg:camera_bright instead.")
  (camera_bright m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <m_setup_camera>) ostream)
  "Serializes a message object of type '<m_setup_camera>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_zoom)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_focus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_bright)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <m_setup_camera>) istream)
  "Deserializes a message object of type '<m_setup_camera>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_zoom)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_focus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_bright)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<m_setup_camera>)))
  "Returns string type for a message object of type '<m_setup_camera>"
  "rov_canbus_pkg/m_setup_camera")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'm_setup_camera)))
  "Returns string type for a message object of type 'm_setup_camera"
  "rov_canbus_pkg/m_setup_camera")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<m_setup_camera>)))
  "Returns md5sum for a message object of type '<m_setup_camera>"
  "6554d73da328aadf658777e841366a86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'm_setup_camera)))
  "Returns md5sum for a message object of type 'm_setup_camera"
  "6554d73da328aadf658777e841366a86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<m_setup_camera>)))
  "Returns full string definition for message of type '<m_setup_camera>"
  (cl:format cl:nil "uint8 camera_zoom~%uint8 camera_focus~%uint8 camera_bright~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'm_setup_camera)))
  "Returns full string definition for message of type 'm_setup_camera"
  (cl:format cl:nil "uint8 camera_zoom~%uint8 camera_focus~%uint8 camera_bright~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <m_setup_camera>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <m_setup_camera>))
  "Converts a ROS message object to a list"
  (cl:list 'm_setup_camera
    (cl:cons ':camera_zoom (camera_zoom msg))
    (cl:cons ':camera_focus (camera_focus msg))
    (cl:cons ':camera_bright (camera_bright msg))
))
