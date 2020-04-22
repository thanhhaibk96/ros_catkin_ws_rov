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

class mode_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.manual = null;
      this.auto = null;
    }
    else {
      if (initObj.hasOwnProperty('manual')) {
        this.manual = initObj.manual
      }
      else {
        this.manual = false;
      }
      if (initObj.hasOwnProperty('auto')) {
        this.auto = initObj.auto
      }
      else {
        this.auto = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mode_control
    // Serialize message field [manual]
    bufferOffset = _serializer.bool(obj.manual, buffer, bufferOffset);
    // Serialize message field [auto]
    bufferOffset = _serializer.bool(obj.auto, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mode_control
    let len;
    let data = new mode_control(null);
    // Deserialize message field [manual]
    data.manual = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auto]
    data.auto = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_canbus_pkg/mode_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f01efd757ee8c9f69cd0dba342421f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool manual
    bool auto
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mode_control(null);
    if (msg.manual !== undefined) {
      resolved.manual = msg.manual;
    }
    else {
      resolved.manual = false
    }

    if (msg.auto !== undefined) {
      resolved.auto = msg.auto;
    }
    else {
      resolved.auto = false
    }

    return resolved;
    }
};

module.exports = mode_control;
