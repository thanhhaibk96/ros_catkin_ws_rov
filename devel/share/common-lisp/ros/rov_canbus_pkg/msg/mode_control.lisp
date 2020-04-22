; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude mode_control.msg.html

(cl:defclass <mode_control> (roslisp-msg-protocol:ros-message)
  ((manual
    :reader manual
    :initarg :manual
    :type cl:boolean
    :initform cl:nil)
   (auto
    :reader auto
    :initarg :auto
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass mode_control (<mode_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mode_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mode_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<mode_control> is deprecated: use rov_canbus_pkg-msg:mode_control instead.")))

(cl:ensure-generic-function 'manual-val :lambda-list '(m))
(cl:defmethod manual-val ((m <mode_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:manual-val is deprecated.  Use rov_canbus_pkg-msg:manual instead.")
  (manual m))

(cl:ensure-generic-function 'auto-val :lambda-list '(m))
(cl:defmethod auto-val ((m <mode_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:auto-val is deprecated.  Use rov_canbus_pkg-msg:auto instead.")
  (auto m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mode_control>) ostream)
  "Serializes a message object of type '<mode_control>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mode_control>) istream)
  "Deserializes a message object of type '<mode_control>"
    (cl:setf (cl:slot-value msg 'manual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mode_control>)))
  "Returns string type for a message object of type '<mode_control>"
  "rov_canbus_pkg/mode_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mode_control)))
  "Returns string type for a message object of type 'mode_control"
  "rov_canbus_pkg/mode_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mode_control>)))
  "Returns md5sum for a message object of type '<mode_control>"
  "2f01efd757ee8c9f69cd0dba342421f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mode_control)))
  "Returns md5sum for a message object of type 'mode_control"
  "2f01efd757ee8c9f69cd0dba342421f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mode_control>)))
  "Returns full string definition for message of type '<mode_control>"
  (cl:format cl:nil "bool manual~%bool auto~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mode_control)))
  "Returns full string definition for message of type 'mode_control"
  (cl:format cl:nil "bool manual~%bool auto~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mode_control>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mode_control>))
  "Converts a ROS message object to a list"
  (cl:list 'mode_control
    (cl:cons ':manual (manual msg))
    (cl:cons ':auto (auto msg))
))
