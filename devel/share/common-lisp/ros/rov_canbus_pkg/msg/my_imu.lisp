; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude my_imu.msg.html

(cl:defclass <my_imu> (roslisp-msg-protocol:ros-message)
  ((imu
    :reader imu
    :initarg :imu
    :type rov_canbus_pkg-msg:imu_data
    :initform (cl:make-instance 'rov_canbus_pkg-msg:imu_data)))
)

(cl:defclass my_imu (<my_imu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_imu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_imu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<my_imu> is deprecated: use rov_canbus_pkg-msg:my_imu instead.")))

(cl:ensure-generic-function 'imu-val :lambda-list '(m))
(cl:defmethod imu-val ((m <my_imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:imu-val is deprecated.  Use rov_canbus_pkg-msg:imu instead.")
  (imu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_imu>) ostream)
  "Serializes a message object of type '<my_imu>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_imu>) istream)
  "Deserializes a message object of type '<my_imu>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_imu>)))
  "Returns string type for a message object of type '<my_imu>"
  "rov_canbus_pkg/my_imu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_imu)))
  "Returns string type for a message object of type 'my_imu"
  "rov_canbus_pkg/my_imu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_imu>)))
  "Returns md5sum for a message object of type '<my_imu>"
  "c762b552376ee3383331a20cca0537be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_imu)))
  "Returns md5sum for a message object of type 'my_imu"
  "c762b552376ee3383331a20cca0537be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_imu>)))
  "Returns full string definition for message of type '<my_imu>"
  (cl:format cl:nil "imu_data imu~%================================================================================~%MSG: rov_canbus_pkg/imu_data~%float32 roll~%float32 pitch~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_imu)))
  "Returns full string definition for message of type 'my_imu"
  (cl:format cl:nil "imu_data imu~%================================================================================~%MSG: rov_canbus_pkg/imu_data~%float32 roll~%float32 pitch~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_imu>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_imu>))
  "Converts a ROS message object to a list"
  (cl:list 'my_imu
    (cl:cons ':imu (imu msg))
))
