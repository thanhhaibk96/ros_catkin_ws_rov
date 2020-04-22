// Auto-generated. Do not edit!

// (in-package rov_canbus_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class my_robot_arm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_arm_open = null;
      this.robot_arm_close = null;
      this.robot_arm_stop = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_arm_open')) {
        this.robot_arm_open = initObj.robot_arm_open
      }
      else {
        this.robot_arm_open = 0;
      }
      if (initObj.hasOwnProperty('robot_arm_close')) {
        this.robot_arm_close = initObj.robot_arm_close
      }
      else {
        this.robot_arm_close = 0;
      }
      if (initObj.hasOwnProperty('robot_arm_stop')) {
        this.robot_arm_stop = initObj.robot_arm_stop
      }
      else {
        this.robot_arm_stop = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_robot_arm
    // Serialize message field [robot_arm_open]
    bufferOffset = _serializer.uint8(obj.robot_arm_open, buffer, bufferOffset);
    // Serialize message field [robot_arm_close]
    bufferOffset = _serializer.uint8(obj.robot_arm_close, buffer, bufferOffset);
    // Serialize message field [robot_arm_stop]
    bufferOffset = _serializer.uint8(obj.robot_arm_stop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_robot_arm
    let len;
    let data = new my_robot_arm(null);
    // Deserialize message field [robot_arm_open]
    data.robot_arm_open = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [robot_arm_close]
    data.robot_arm_close = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [robot_arm_stop]
    data.robot_arm_stop = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_canbus_pkg/my_robot_arm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc441effc562f63bdb89f9392fe90557';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 robot_arm_open
    uint8 robot_arm_close
    uint8 robot_arm_stop
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my_robot_arm(null);
    if (msg.robot_arm_open !== undefined) {
      resolved.robot_arm_open = msg.robot_arm_open;
    }
    else {
      resolved.robot_arm_open = 0
    }

    if (msg.robot_arm_close !== undefined) {
      resolved.robot_arm_close = msg.robot_arm_close;
    }
    else {
      resolved.robot_arm_close = 0
    }

    if (msg.robot_arm_stop !== undefined) {
      resolved.robot_arm_stop = msg.robot_arm_stop;
    }
    else {
      resolved.robot_arm_stop = 0
    }

    return resolved;
    }
};

module.exports = my_robot_arm;
