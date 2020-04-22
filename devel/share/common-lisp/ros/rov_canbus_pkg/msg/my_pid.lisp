; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude my_pid.msg.html

(cl:defclass <my_pid> (roslisp-msg-protocol:ros-message)
  ((Kp
    :reader Kp
    :initarg :Kp
    :type cl:float
    :initform 0.0)
   (Ki
    :reader Ki
    :initarg :Ki
    :type cl:float
    :initform 0.0)
   (Kd
    :reader Kd
    :initarg :Kd
    :type cl:float
    :initform 0.0))
)

(cl:defclass my_pid (<my_pid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_pid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_pid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<my_pid> is deprecated: use rov_canbus_pkg-msg:my_pid instead.")))

(cl:ensure-generic-function 'Kp-val :lambda-list '(m))
(cl:defmethod Kp-val ((m <my_pid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:Kp-val is deprecated.  Use rov_canbus_pkg-msg:Kp instead.")
  (Kp m))

(cl:ensure-generic-function 'Ki-val :lambda-list '(m))
(cl:defmethod Ki-val ((m <my_pid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:Ki-val is deprecated.  Use rov_canbus_pkg-msg:Ki instead.")
  (Ki m))

(cl:ensure-generic-function 'Kd-val :lambda-list '(m))
(cl:defmethod Kd-val ((m <my_pid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:Kd-val is deprecated.  Use rov_canbus_pkg-msg:Kd instead.")
  (Kd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_pid>) ostream)
  "Serializes a message object of type '<my_pid>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Ki))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Kd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_pid>) istream)
  "Deserializes a message object of type '<my_pid>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ki) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Kd) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_pid>)))
  "Returns string type for a message object of type '<my_pid>"
  "rov_canbus_pkg/my_pid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_pid)))
  "Returns string type for a message object of type 'my_pid"
  "rov_canbus_pkg/my_pid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_pid>)))
  "Returns md5sum for a message object of type '<my_pid>"
  "efa8beee6353230a5babb632ca65705b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_pid)))
  "Returns md5sum for a message object of type 'my_pid"
  "efa8beee6353230a5babb632ca65705b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_pid>)))
  "Returns full string definition for message of type '<my_pid>"
  (cl:format cl:nil "float32 Kp~%float32 Ki~%float32 Kd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_pid)))
  "Returns full string definition for message of type 'my_pid"
  (cl:format cl:nil "float32 Kp~%float32 Ki~%float32 Kd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_pid>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_pid>))
  "Converts a ROS message object to a list"
  (cl:list 'my_pid
    (cl:cons ':Kp (Kp msg))
    (cl:cons ':Ki (Ki msg))
    (cl:cons ':Kd (Kd msg))
))
