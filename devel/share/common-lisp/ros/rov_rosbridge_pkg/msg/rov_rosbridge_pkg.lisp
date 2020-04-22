; Auto-generated. Do not edit!


(cl:in-package rov_rosbridge_pkg-msg)


;//! \htmlinclude rov_rosbridge_pkg.msg.html

(cl:defclass <rov_rosbridge_pkg> (roslisp-msg-protocol:ros-message)
  ((bldc
    :reader bldc
    :initarg :bldc
    :type cl:float
    :initform 0.0)
   (green_1
    :reader green_1
    :initarg :green_1
    :type cl:float
    :initform 0.0)
   (green_2
    :reader green_2
    :initarg :green_2
    :type cl:float
    :initform 0.0)
   (yellow_1
    :reader yellow_1
    :initarg :yellow_1
    :type cl:float
    :initform 0.0)
   (yellow_2
    :reader yellow_2
    :initarg :yellow_2
    :type cl:float
    :initform 0.0)
   (yellow_3
    :reader yellow_3
    :initarg :yellow_3
    :type cl:float
    :initform 0.0))
)

(cl:defclass rov_rosbridge_pkg (<rov_rosbridge_pkg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rov_rosbridge_pkg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rov_rosbridge_pkg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_rosbridge_pkg-msg:<rov_rosbridge_pkg> is deprecated: use rov_rosbridge_pkg-msg:rov_rosbridge_pkg instead.")))

(cl:ensure-generic-function 'bldc-val :lambda-list '(m))
(cl:defmethod bldc-val ((m <rov_rosbridge_pkg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_rosbridge_pkg-msg:bldc-val is deprecated.  Use rov_rosbridge_pkg-msg:bldc instead.")
  (bldc m))

(cl:ensure-generic-function 'green_1-val :lambda-list '(m))
(cl:defmethod green_1-val ((m <rov_rosbridge_pkg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_rosbridge_pkg-msg:green_1-val is deprecated.  Use rov_rosbridge_pkg-msg:green_1 instead.")
  (green_1 m))

(cl:ensure-generic-function 'green_2-val :lambda-list '(m))
(cl:defmethod green_2-val ((m <rov_rosbridge_pkg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_rosbridge_pkg-msg:green_2-val is deprecated.  Use rov_rosbridge_pkg-msg:green_2 instead.")
  (green_2 m))

(cl:ensure-generic-function 'yellow_1-val :lambda-list '(m))
(cl:defmethod yellow_1-val ((m <rov_rosbridge_pkg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_rosbridge_pkg-msg:yellow_1-val is deprecated.  Use rov_rosbridge_pkg-msg:yellow_1 instead.")
  (yellow_1 m))

(cl:ensure-generic-function 'yellow_2-val :lambda-list '(m))
(cl:defmethod yellow_2-val ((m <rov_rosbridge_pkg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_rosbridge_pkg-msg:yellow_2-val is deprecated.  Use rov_rosbridge_pkg-msg:yellow_2 instead.")
  (yellow_2 m))

(cl:ensure-generic-function 'yellow_3-val :lambda-list '(m))
(cl:defmethod yellow_3-val ((m <rov_rosbridge_pkg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_rosbridge_pkg-msg:yellow_3-val is deprecated.  Use rov_rosbridge_pkg-msg:yellow_3 instead.")
  (yellow_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rov_rosbridge_pkg>) ostream)
  "Serializes a message object of type '<rov_rosbridge_pkg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bldc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'green_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'green_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yellow_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yellow_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yellow_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rov_rosbridge_pkg>) istream)
  "Deserializes a message object of type '<rov_rosbridge_pkg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bldc) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'green_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'green_2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yellow_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yellow_2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yellow_3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rov_rosbridge_pkg>)))
  "Returns string type for a message object of type '<rov_rosbridge_pkg>"
  "rov_rosbridge_pkg/rov_rosbridge_pkg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rov_rosbridge_pkg)))
  "Returns string type for a message object of type 'rov_rosbridge_pkg"
  "rov_rosbridge_pkg/rov_rosbridge_pkg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rov_rosbridge_pkg>)))
  "Returns md5sum for a message object of type '<rov_rosbridge_pkg>"
  "9367b8cc652373d45d2d90195a1cf1bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rov_rosbridge_pkg)))
  "Returns md5sum for a message object of type 'rov_rosbridge_pkg"
  "9367b8cc652373d45d2d90195a1cf1bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rov_rosbridge_pkg>)))
  "Returns full string definition for message of type '<rov_rosbridge_pkg>"
  (cl:format cl:nil "float64 bldc~%float64 green_1~%float64 green_2~%float64 yellow_1~%float64 yellow_2~%float64 yellow_3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rov_rosbridge_pkg)))
  "Returns full string definition for message of type 'rov_rosbridge_pkg"
  (cl:format cl:nil "float64 bldc~%float64 green_1~%float64 green_2~%float64 yellow_1~%float64 yellow_2~%float64 yellow_3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rov_rosbridge_pkg>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rov_rosbridge_pkg>))
  "Converts a ROS message object to a list"
  (cl:list 'rov_rosbridge_pkg
    (cl:cons ':bldc (bldc msg))
    (cl:cons ':green_1 (green_1 msg))
    (cl:cons ':green_2 (green_2 msg))
    (cl:cons ':yellow_1 (yellow_1 msg))
    (cl:cons ':yellow_2 (yellow_2 msg))
    (cl:cons ':yellow_3 (yellow_3 msg))
))
