; Auto-generated. Do not edit!


(cl:in-package rov_canbus_pkg-msg)


;//! \htmlinclude joystick.msg.html

(cl:defclass <joystick> (roslisp-msg-protocol:ros-message)
  ((thruster
    :reader thruster
    :initarg :thruster
    :type rov_canbus_pkg-msg:my_thruster
    :initform (cl:make-instance 'rov_canbus_pkg-msg:my_thruster)))
)

(cl:defclass joystick (<joystick>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joystick>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joystick)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rov_canbus_pkg-msg:<joystick> is deprecated: use rov_canbus_pkg-msg:joystick instead.")))

(cl:ensure-generic-function 'thruster-val :lambda-list '(m))
(cl:defmethod thruster-val ((m <joystick>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rov_canbus_pkg-msg:thruster-val is deprecated.  Use rov_canbus_pkg-msg:thruster instead.")
  (thruster m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joystick>) ostream)
  "Serializes a message object of type '<joystick>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'thruster) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joystick>) istream)
  "Deserializes a message object of type '<joystick>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'thruster) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joystick>)))
  "Returns string type for a message object of type '<joystick>"
  "rov_canbus_pkg/joystick")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joystick)))
  "Returns string type for a message object of type 'joystick"
  "rov_canbus_pkg/joystick")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joystick>)))
  "Returns md5sum for a message object of type '<joystick>"
  "e64b1b8f03464111f861d5d5c0e8e7e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joystick)))
  "Returns md5sum for a message object of type 'joystick"
  "e64b1b8f03464111f861d5d5c0e8e7e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joystick>)))
  "Returns full string definition for message of type '<joystick>"
  (cl:format cl:nil "my_thruster thruster~%================================================================================~%MSG: rov_canbus_pkg/my_thruster~%float32 bldc~%float32 green_1~%float32 green_2~%float32 yellow_1~%float32 yellow_2~%float32 yellow_3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joystick)))
  "Returns full string definition for message of type 'joystick"
  (cl:format cl:nil "my_thruster thruster~%================================================================================~%MSG: rov_canbus_pkg/my_thruster~%float32 bldc~%float32 green_1~%float32 green_2~%float32 yellow_1~%float32 yellow_2~%float32 yellow_3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joystick>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'thruster))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joystick>))
  "Converts a ROS message object to a list"
  (cl:list 'joystick
    (cl:cons ':thruster (thruster msg))
))
