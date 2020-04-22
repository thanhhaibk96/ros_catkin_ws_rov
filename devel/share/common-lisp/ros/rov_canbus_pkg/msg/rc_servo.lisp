; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude rc_servo.msg.html

(cl:defclass <rc_servo> (roslisp-msg-protocol:ros-message)
  ((rc_servo
    :reader rc_servo
    :initarg :rc_servo
    :type cl:float
    :initform 0.0))
)

(cl:defclass rc_servo (<rc_servo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rc_servo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rc_servo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<rc_servo> is deprecated: use rov_canbus_pkg-msg:rc_servo instead.")))

(cl:ensure-generic-function 'rc_servo-val :lambda-list '(m))
(cl:defmethod rc_servo-val ((m <rc_servo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:rc_servo-val is deprecated.  Use rov_canbus_pkg-msg:rc_servo instead.")
  (rc_servo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rc_servo>) ostream)
  "Serializes a message object of type '<rc_servo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rc_servo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rc_servo>) istream)
  "Deserializes a message object of type '<rc_servo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rc_servo) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rc_servo>)))
  "Returns string type for a message object of type '<rc_servo>"
  "rov_canbus_pkg/rc_servo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rc_servo)))
  "Returns string type for a message object of type 'rc_servo"
  "rov_canbus_pkg/rc_servo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rc_servo>)))
  "Returns md5sum for a message object of type '<rc_servo>"
  "13e2266f041bc10419d9aec8eec4fdb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rc_servo)))
  "Returns md5sum for a message object of type 'rc_servo"
  "13e2266f041bc10419d9aec8eec4fdb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rc_servo>)))
  "Returns full string definition for message of type '<rc_servo>"
  (cl:format cl:nil "float32 rc_servo~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rc_servo)))
  "Returns full string definition for message of type 'rc_servo"
  (cl:format cl:nil "float32 rc_servo~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rc_servo>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rc_servo>))
  "Converts a ROS message object to a list"
  (cl:list 'rc_servo
    (cl:cons ':rc_servo (rc_servo msg))
))
