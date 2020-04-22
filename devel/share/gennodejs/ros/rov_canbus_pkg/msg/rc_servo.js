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

class rc_servo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rc_servo = null;
    }
    else {
      if (initObj.hasOwnProperty('rc_servo')) {
        this.rc_servo = initObj.rc_servo
      }
      else {
        this.rc_servo = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rc_servo
    // Serialize message field [rc_servo]
    bufferOffset = _serializer.float32(obj.rc_servo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rc_servo
    let len;
    let data = new rc_servo(null);
    // Deserialize message field [rc_servo]
    data.rc_servo = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_canbus_pkg/rc_servo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13e2266f041bc10419d9aec8eec4fdb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 rc_servo
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rc_servo(null);
    if (msg.rc_servo !== undefined) {
      resolved.rc_servo = msg.rc_servo;
    }
    else {
      resolved.rc_servo = 0.0
    }

    return resolved;
    }
};

module.exports = rc_servo;
