; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude imu_data.msg.html

(cl:defclass <imu_data> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass imu_data (<imu_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<imu_data> is deprecated: use rov_canbus_pkg-msg:imu_data instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:roll-val is deprecated.  Use rov_canbus_pkg-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:pitch-val is deprecated.  Use rov_canbus_pkg-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <imu_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:yaw-val is deprecated.  Use rov_canbus_pkg-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_data>) ostream)
  "Serializes a message object of type '<imu_data>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_data>) istream)
  "Deserializes a message object of type '<imu_data>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_data>)))
  "Returns string type for a message object of type '<imu_data>"
  "rov_canbus_pkg/imu_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_data)))
  "Returns string type for a message object of type 'imu_data"
  "rov_canbus_pkg/imu_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_data>)))
  "Returns md5sum for a message object of type '<imu_data>"
  "c66f4de7f99199dd8e863fffbef112ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_data)))
  "Returns md5sum for a message object of type 'imu_data"
  "c66f4de7f99199dd8e863fffbef112ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_data>)))
  "Returns full string definition for message of type '<imu_data>"
  (cl:format cl:nil "float32 roll~%float32 pitch~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_data)))
  "Returns full string definition for message of type 'imu_data"
  (cl:format cl:nil "float32 roll~%float32 pitch~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_data>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_data>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_data
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
))
