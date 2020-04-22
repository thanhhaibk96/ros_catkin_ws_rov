// Auto-generated. Do not edit!

// (in-package rov_canbus_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let imu_data = require('./imu_data.js');

//-----------------------------------------------------------

class my_sensors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu = null;
      this.depth = null;
    }
    else {
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new imu_data();
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_sensors
    // Serialize message field [imu]
    bufferOffset = imu_data.serialize(obj.imu, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.float32(obj.depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_sensors
    let len;
    let data = new my_sensors(null);
    // Deserialize message field [imu]
    data.imu = imu_data.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_canbus_pkg/my_sensors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e69800ec6584751e8ef4cbb24d578d8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imu_data imu
    float32 depth
    ================================================================================
    MSG: rov_canbus_pkg/imu_data
    float32 roll
    float32 pitch
    float32 yaw
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new my_sensors(null);
    if (msg.imu !== undefined) {
      resolved.imu = imu_data.Resolve(msg.imu)
    }
    else {
      resolved.imu = new imu_data()
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = 0.0
    }

    return resolved;
    }
};

module.exports = my_sensors;
