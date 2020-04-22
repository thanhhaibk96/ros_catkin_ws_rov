; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-srv)


;//! \htmlinclude pid_control-request.msg.html

(cl:defclass <pid_control-request> (roslisp-msg-protocol:ros-message)
  ((imu_yaw_sp
    :reader imu_yaw_sp
    :initarg :imu_yaw_sp
    :type cl:float
    :initform 0.0)
   (imu_yaw_cur
    :reader imu_yaw_cur
    :initarg :imu_yaw_cur
    :type cl:float
    :initform 0.0))
)

(cl:defclass pid_control-request (<pid_control-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pid_control-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pid_control-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-srv:<pid_control-request> is deprecated: use rov_canbus_pkg-srv:pid_control-request instead.")))

(cl:ensure-generic-function 'imu_yaw_sp-val :lambda-list '(m))
(cl:defmethod imu_yaw_sp-val ((m <pid_control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-srv:imu_yaw_sp-val is deprecated.  Use rov_canbus_pkg-srv:imu_yaw_sp instead.")
  (imu_yaw_sp m))

(cl:ensure-generic-function 'imu_yaw_cur-val :lambda-list '(m))
(cl:defmethod imu_yaw_cur-val ((m <pid_control-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-srv:imu_yaw_cur-val is deprecated.  Use rov_canbus_pkg-srv:imu_yaw_cur instead.")
  (imu_yaw_cur m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pid_control-request>) ostream)
  "Serializes a message object of type '<pid_control-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'imu_yaw_sp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'imu_yaw_cur))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pid_control-request>) istream)
  "Deserializes a message object of type '<pid_control-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imu_yaw_sp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imu_yaw_cur) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pid_control-request>)))
  "Returns string type for a service object of type '<pid_control-request>"
  "rov_canbus_pkg/pid_controlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pid_control-request)))
  "Returns string type for a service object of type 'pid_control-request"
  "rov_canbus_pkg/pid_controlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pid_control-request>)))
  "Returns md5sum for a message object of type '<pid_control-request>"
  "f44360cec437240487440e29a8817f6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pid_control-request)))
  "Returns md5sum for a message object of type 'pid_control-request"
  "f44360cec437240487440e29a8817f6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pid_control-request>)))
  "Returns full string definition for message of type '<pid_control-request>"
  (cl:format cl:nil "float32 imu_yaw_sp~%float32 imu_yaw_cur~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pid_control-request)))
  "Returns full string definition for message of type 'pid_control-request"
  (cl:format cl:nil "float32 imu_yaw_sp~%float32 imu_yaw_cur~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pid_control-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pid_control-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pid_control-request
    (cl:cons ':imu_yaw_sp (imu_yaw_sp msg))
    (cl:cons ':imu_yaw_cur (imu_yaw_cur msg))
))
;//! \htmlinclude pid_control-response.msg.html

(cl:defclass <pid_control-response> (roslisp-msg-protocol:ros-message)
  ((duty_cycle
    :reader duty_cycle
    :initarg :duty_cycle
    :type cl:float
    :initform 0.0))
)

(cl:defclass pid_control-response (<pid_control-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pid_control-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pid_control-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-srv:<pid_control-response> is deprecated: use rov_canbus_pkg-srv:pid_control-response instead.")))

(cl:ensure-generic-function 'duty_cycle-val :lambda-list '(m))
(cl:defmethod duty_cycle-val ((m <pid_control-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-srv:duty_cycle-val is deprecated.  Use rov_canbus_pkg-srv:duty_cycle instead.")
  (duty_cycle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pid_control-response>) ostream)
  "Serializes a message object of type '<pid_control-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duty_cycle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pid_control-response>) istream)
  "Deserializes a message object of type '<pid_control-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duty_cycle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pid_control-response>)))
  "Returns string type for a service object of type '<pid_control-response>"
  "rov_canbus_pkg/pid_controlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pid_control-response)))
  "Returns string type for a service object of type 'pid_control-response"
  "rov_canbus_pkg/pid_controlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pid_control-response>)))
  "Returns md5sum for a message object of type '<pid_control-response>"
  "f44360cec437240487440e29a8817f6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pid_control-response)))
  "Returns md5sum for a message object of type 'pid_control-response"
  "f44360cec437240487440e29a8817f6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pid_control-response>)))
  "Returns full string definition for message of type '<pid_control-response>"
  (cl:format cl:nil "float32 duty_cycle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pid_control-response)))
  "Returns full string definition for message of type 'pid_control-response"
  (cl:format cl:nil "float32 duty_cycle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pid_control-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pid_control-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pid_control-response
    (cl:cons ':duty_cycle (duty_cycle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pid_control)))
  'pid_control-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pid_control)))
  'pid_control-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pid_control)))
  "Returns string type for a service object of type '<pid_control>"
  "rov_canbus_pkg/pid_control")