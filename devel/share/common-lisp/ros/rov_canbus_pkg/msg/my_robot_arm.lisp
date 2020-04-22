; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude my_robot_arm.msg.html

(cl:defclass <my_robot_arm> (roslisp-msg-protocol:ros-message)
  ((robot_arm_open
    :reader robot_arm_open
    :initarg :robot_arm_open
    :type cl:fixnum
    :initform 0)
   (robot_arm_close
    :reader robot_arm_close
    :initarg :robot_arm_close
    :type cl:fixnum
    :initform 0)
   (robot_arm_stop
    :reader robot_arm_stop
    :initarg :robot_arm_stop
    :type cl:fixnum
    :initform 0))
)

(cl:defclass my_robot_arm (<my_robot_arm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_robot_arm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_robot_arm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<my_robot_arm> is deprecated: use rov_canbus_pkg-msg:my_robot_arm instead.")))

(cl:ensure-generic-function 'robot_arm_open-val :lambda-list '(m))
(cl:defmethod robot_arm_open-val ((m <my_robot_arm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:robot_arm_open-val is deprecated.  Use rov_canbus_pkg-msg:robot_arm_open instead.")
  (robot_arm_open m))

(cl:ensure-generic-function 'robot_arm_close-val :lambda-list '(m))
(cl:defmethod robot_arm_close-val ((m <my_robot_arm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:robot_arm_close-val is deprecated.  Use rov_canbus_pkg-msg:robot_arm_close instead.")
  (robot_arm_close m))

(cl:ensure-generic-function 'robot_arm_stop-val :lambda-list '(m))
(cl:defmethod robot_arm_stop-val ((m <my_robot_arm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:robot_arm_stop-val is deprecated.  Use rov_canbus_pkg-msg:robot_arm_stop instead.")
  (robot_arm_stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_robot_arm>) ostream)
  "Serializes a message object of type '<my_robot_arm>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_arm_open)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_arm_close)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_arm_stop)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_robot_arm>) istream)
  "Deserializes a message object of type '<my_robot_arm>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_arm_open)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_arm_close)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_arm_stop)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_robot_arm>)))
  "Returns string type for a message object of type '<my_robot_arm>"
  "rov_canbus_pkg/my_robot_arm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_robot_arm)))
  "Returns string type for a message object of type 'my_robot_arm"
  "rov_canbus_pkg/my_robot_arm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_robot_arm>)))
  "Returns md5sum for a message object of type '<my_robot_arm>"
  "cc441effc562f63bdb89f9392fe90557")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_robot_arm)))
  "Returns md5sum for a message object of type 'my_robot_arm"
  "cc441effc562f63bdb89f9392fe90557")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_robot_arm>)))
  "Returns full string definition for message of type '<my_robot_arm>"
  (cl:format cl:nil "uint8 robot_arm_open~%uint8 robot_arm_close~%uint8 robot_arm_stop~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_robot_arm)))
  "Returns full string definition for message of type 'my_robot_arm"
  (cl:format cl:nil "uint8 robot_arm_open~%uint8 robot_arm_close~%uint8 robot_arm_stop~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_robot_arm>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_robot_arm>))
  "Converts a ROS message object to a list"
  (cl:list 'my_robot_arm
    (cl:cons ':robot_arm_open (robot_arm_open msg))
    (cl:cons ':robot_arm_close (robot_arm_close msg))
    (cl:cons ':robot_arm_stop (robot_arm_stop msg))
))
