; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude my_sensors.msg.html

(cl:defclass <my_sensors> (roslisp-msg-protocol:ros-message)
  ((imu
    :reader imu
    :initarg :imu
    :type rov_canbus_pkg-msg:imu_data
    :initform (cl:make-instance 'rov_canbus_pkg-msg:imu_data))
   (depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0))
)

(cl:defclass my_sensors (<my_sensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_sensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_sensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<my_sensors> is deprecated: use rov_canbus_pkg-msg:my_sensors instead.")))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <my_sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:imu-val is deprecated.  Use rov_canbus_pkg-msg:imu instead.")
  (imu m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <my_sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:depth-val is deprecated.  Use rov_canbus_pkg-msg:depth instead.")
  (depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_sensors>) ostream)
  "Serializes a message object of type '<my_sensors>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_sensors>) istream)
  "Deserializes a message object of type '<my_sensors>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_sensors>)))
  "Returns string type for a message object of type '<my_sensors>"
  "rov_canbus_pkg/my_sensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_sensors)))
  "Returns string type for a message object of type 'my_sensors"
  "rov_canbus_pkg/my_sensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_sensors>)))
  "Returns md5sum for a message object of type '<my_sensors>"
  "e69800ec6584751e8ef4cbb24d578d8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_sensors)))
  "Returns md5sum for a message object of type 'my_sensors"
  "e69800ec6584751e8ef4cbb24d578d8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_sensors>)))
  "Returns full string definition for message of type '<my_sensors>"
  (cl:format cl:nil "imu_data imu~%float32 depth~%================================================================================~%MSG: rov_canbus_pkg/imu_data~%float32 roll~%float32 pitch~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_sensors)))
  "Returns full string definition for message of type 'my_sensors"
  (cl:format cl:nil "imu_data imu~%float32 depth~%================================================================================~%MSG: rov_canbus_pkg/imu_data~%float32 roll~%float32 pitch~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_sensors>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_sensors>))
  "Converts a ROS message object to a list"
  (cl:list 'my_sensors
    (cl:cons ':imu (imu msg))
    (cl:cons ':depth (depth msg))
))
