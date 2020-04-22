// Auto-generated. Do not edit!

// (in-package rov_canbus_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class pid_controlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu_yaw_sp = null;
      this.imu_yaw_cur = null;
    }
    else {
      if (initObj.hasOwnProperty('imu_yaw_sp')) {
        this.imu_yaw_sp = initObj.imu_yaw_sp
      }
      else {
        this.imu_yaw_sp = 0.0;
      }
      if (initObj.hasOwnProperty('imu_yaw_cur')) {
        this.imu_yaw_cur = initObj.imu_yaw_cur
      }
      else {
        this.imu_yaw_cur = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pid_controlRequest
    // Serialize message field [imu_yaw_sp]
    bufferOffset = _serializer.float32(obj.imu_yaw_sp, buffer, bufferOffset);
    // Serialize message field [imu_yaw_cur]
    bufferOffset = _serializer.float32(obj.imu_yaw_cur, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pid_controlRequest
    let len;
    let data = new pid_controlRequest(null);
    // Deserialize message field [imu_yaw_sp]
    data.imu_yaw_sp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [imu_yaw_cur]
    data.imu_yaw_cur = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rov_canbus_pkg/pid_controlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3a2d326bf6ef9d1e9d82c7dae80c3df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 imu_yaw_sp
    float32 imu_yaw_cur
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pid_controlRequest(null);
    if (msg.imu_yaw_sp !== undefined) {
      resolved.imu_yaw_sp = msg.imu_yaw_sp;
    }
    else {
      resolved.imu_yaw_sp = 0.0
    }

    if (msg.imu_yaw_cur !== undefined) {
      resolved.imu_yaw_cur = msg.imu_yaw_cur;
    }
    else {
      resolved.imu_yaw_cur = 0.0
    }

    return resolved;
    }
};

class pid_controlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.duty_cycle = null;
    }
    else {
      if (initObj.hasOwnProperty('duty_cycle')) {
        this.duty_cycle = initObj.duty_cycle
      }
      else {
        this.duty_cycle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pid_controlResponse
    // Serialize message field [duty_cycle]
    bufferOffset = _serializer.float32(obj.duty_cycle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pid_controlResponse
    let len;
    let data = new pid_controlResponse(null);
    // Deserialize message field [duty_cycle]
    data.duty_cycle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rov_canbus_pkg/pid_controlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b1e8af79e9957aa39f0d7274f652afb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 duty_cycle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pid_controlResponse(null);
    if (msg.duty_cycle !== undefined) {
      resolved.duty_cycle = msg.duty_cycle;
    }
    else {
      resolved.duty_cycle = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: pid_controlRequest,
  Response: pid_controlResponse,
  md5sum() { return 'f44360cec437240487440e29a8817f6f'; },
  datatype() { return 'rov_canbus_pkg/pid_control'; }
};
