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

class setup_camera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_zoom = null;
      this.camera_focus = null;
      this.camera_bright = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_zoom')) {
        this.camera_zoom = initObj.camera_zoom
      }
      else {
        this.camera_zoom = 0;
      }
      if (initObj.hasOwnProperty('camera_focus')) {
        this.camera_focus = initObj.camera_focus
      }
      else {
        this.camera_focus = 0;
      }
      if (initObj.hasOwnProperty('camera_bright')) {
        this.camera_bright = initObj.camera_bright
      }
      else {
        this.camera_bright = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setup_camera
    // Serialize message field [camera_zoom]
    bufferOffset = _serializer.uint8(obj.camera_zoom, buffer, bufferOffset);
    // Serialize message field [camera_focus]
    bufferOffset = _serializer.uint8(obj.camera_focus, buffer, bufferOffset);
    // Serialize message field [camera_bright]
    bufferOffset = _serializer.uint8(obj.camera_bright, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setup_camera
    let len;
    let data = new setup_camera(null);
    // Deserialize message field [camera_zoom]
    data.camera_zoom = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [camera_focus]
    data.camera_focus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [camera_bright]
    data.camera_bright = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_canbus_pkg/setup_camera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6554d73da328aadf658777e841366a86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 camera_zoom
    uint8 camera_focus
    uint8 camera_bright
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setup_camera(null);
    if (msg.camera_zoom !== undefined) {
      resolved.camera_zoom = msg.camera_zoom;
    }
    else {
      resolved.camera_zoom = 0
    }

    if (msg.camera_focus !== undefined) {
      resolved.camera_focus = msg.camera_focus;
    }
    else {
      resolved.camera_focus = 0
    }

    if (msg.camera_bright !== undefined) {
      resolved.camera_bright = msg.camera_bright;
    }
    else {
      resolved.camera_bright = 0
    }

    return resolved;
    }
};

module.exports = setup_camera;
