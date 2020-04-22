// Auto-generated. Do not edit!

// (in-package rov_serial_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let my_thruster = require('./my_thruster.js');

//-----------------------------------------------------------

class joystick {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.thruster = null;
    }
    else {
      if (initObj.hasOwnProperty('thruster')) {
        this.thruster = initObj.thruster
      }
      else {
        this.thruster = new my_thruster();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joystick
    // Serialize message field [thruster]
    bufferOffset = my_thruster.serialize(obj.thruster, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joystick
    let len;
    let data = new joystick(null);
    // Deserialize message field [thruster]
    data.thruster = my_thruster.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_serial_pkg/joystick';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e64b1b8f03464111f861d5d5c0e8e7e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    my_thruster thruster
    ================================================================================
    MSG: rov_serial_pkg/my_thruster
    float32 bldc
    float32 green_1
    float32 green_2
    float32 yellow_1
    float32 yellow_2
    float32 yellow_3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joystick(null);
    if (msg.thruster !== undefined) {
      resolved.thruster = my_thruster.Resolve(msg.thruster)
    }
    else {
      resolved.thruster = new my_thruster()
    }

    return resolved;
    }
};

module.exports = joystick;
