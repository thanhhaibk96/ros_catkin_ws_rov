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

class my_imu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu = null;
    }
    else {
      if (initObj.hasOwnProperty('imu')) {
        this.imu = initObj.imu
      }
      else {
        this.imu = new imu_data();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type my_imu
    // Serialize message field [imu]
    bufferOffset = imu_data.serialize(obj.imu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type my_imu
    let len;
    let data = new my_imu(null);
    // Deserialize message field [imu]
    data.imu = imu_data.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_canbus_pkg/my_imu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c762b552376ee3383331a20cca0537be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    imu_data imu
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
    const resolved = new my_imu(null);
    if (msg.imu !== undefined) {
      resolved.imu = imu_data.Resolve(msg.imu)
    }
    else {
      resolved.imu = new imu_data()
    }

    return resolved;
    }
};

module.exports = my_imu;
