// Auto-generated. Do not edit!

// (in-package rov_canbus_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let m_setup_camera = require('./m_setup_camera.js');

//-----------------------------------------------------------

class camera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera = null;
    }
    else {
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = new m_setup_camera();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type camera
    // Serialize message field [camera]
    bufferOffset = m_setup_camera.serialize(obj.camera, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type camera
    let len;
    let data = new camera(null);
    // Deserialize message field [camera]
    data.camera = m_setup_camera.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rov_canbus_pkg/camera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdec6a66e2e4b31d3db7162f12cb9ca5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    m_setup_camera camera
    ================================================================================
    MSG: rov_canbus_pkg/m_setup_camera
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
    const resolved = new camera(null);
    if (msg.camera !== undefined) {
      resolved.camera = m_setup_camera.Resolve(msg.camera)
    }
    else {
      resolved.camera = new m_setup_camera()
    }

    return resolved;
    }
};

module.exports = camera;
