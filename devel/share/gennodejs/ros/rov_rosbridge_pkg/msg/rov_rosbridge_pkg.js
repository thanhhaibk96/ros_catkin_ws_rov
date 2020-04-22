// Auto-generated. Do not edit!

// (in-package rov_rosbridge_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class rov_rosbridge_pkg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bldc = null;
      this.green_1 = null;
      this.green_2 = null;
      this.yellow_1 = null;
      this.yellow_2 = null;
      this.yellow_3 = null;
    }
    else {
      if (initObj.hasOwnProperty('bldc')) {
        this.bldc = initObj.bldc
      }
      else {
        this.bldc = 0.0;
      }
      if (initObj.hasOwnProperty('green_1')) {
        this.green_1 = initObj.green_1
      }
      else {
        this.green_1 = 0.0;
      }
      if (initObj.hasOwnProperty('green_2')) {
        this.green_2 = initObj.green_2
      }
      else {
        this.green_2 = 0.0;
      }
      if (initObj.hasOwnProperty('yellow_1')) {
        this.yellow_1 = initObj.yellow_1
      }
      else {
        this.yellow_1 = 0.0;
      }
      if (initObj.hasOwnProperty('yellow_2')) {
        this.yellow_2 = initObj.yellow_2
      }
      else {
        this.yellow_2 = 0.0;
      }
      if (initObj.hasOwnProperty('yellow_3')) {
        this.yellow_3 = initObj.yellow_3
      }
      else {
        this.yellow_3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rov_rosbridge_pkg
    // Serialize message field [bldc]
    bufferOffset = _serializer.float64(obj.bldc, buffer, bufferOffset);
    // Serialize message field [green_1]
    bufferOffset = _serializer.float64(obj.green_1, buffer, bufferOffset);
    // Serialize message field [green_2]
    bufferOffset = _serializer.float64(obj.green_2, buffer, bufferOffset);
    // Serialize message field [yellow_1]
    bufferOffset = _serializer.float64(obj.yellow_1, buffer, bufferOffset);
    // Serialize message field [yellow_2]
    bufferOffset = _serializer.float64(obj.yellow_2, buffer, bufferOffset);
    // Serialize message field [yellow_3]
    bufferOffset = _serializer.float64(obj.yellow_3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rov_rosbridge_pkg
    let len;
    let data = new rov_rosbridge_pkg(null);
    // Deserialize message field [bldc]
    data.bldc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [green_1]
    data.green_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [green_2]
    data.green_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yellow_1]
    data.yellow_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yellow_2]
    data.yellow_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yellow_3]
    data.yellow_3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_rosbridge_pkg/rov_rosbridge_pkg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9367b8cc652373d45d2d90195a1cf1bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 bldc
    float64 green_1
    float64 green_2
    float64 yellow_1
    float64 yellow_2
    float64 yellow_3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rov_rosbridge_pkg(null);
    if (msg.bldc !== undefined) {
      resolved.bldc = msg.bldc;
    }
    else {
      resolved.bldc = 0.0
    }

    if (msg.green_1 !== undefined) {
      resolved.green_1 = msg.green_1;
    }
    else {
      resolved.green_1 = 0.0
    }

    if (msg.green_2 !== undefined) {
      resolved.green_2 = msg.green_2;
    }
    else {
      resolved.green_2 = 0.0
    }

    if (msg.yellow_1 !== undefined) {
      resolved.yellow_1 = msg.yellow_1;
    }
    else {
      resolved.yellow_1 = 0.0
    }

    if (msg.yellow_2 !== undefined) {
      resolved.yellow_2 = msg.yellow_2;
    }
    else {
      resolved.yellow_2 = 0.0
    }

    if (msg.yellow_3 !== undefined) {
      resolved.yellow_3 = msg.yellow_3;
    }
    else {
      resolved.yellow_3 = 0.0
    }

    return resolved;
    }
};

module.exports = rov_rosbridge_pkg;
