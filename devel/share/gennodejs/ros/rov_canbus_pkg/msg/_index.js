
"use strict";

let joystick = require('./joystick.js');
let rc_servo = require('./rc_servo.js');
let my_sensors = require('./my_sensors.js');
let my_thruster = require('./my_thruster.js');
let m_setup_camera = require('./m_setup_camera.js');
let my_robot_arm = require('./my_robot_arm.js');
let my_pid = require('./my_pid.js');
let imu_data = require('./imu_data.js');
let camera = require('./camera.js');

module.exports = {
  joystick: joystick,
  rc_servo: rc_servo,
  my_sensors: my_sensors,
  my_thruster: my_thruster,
  m_setup_camera: m_setup_camera,
  my_robot_arm: my_robot_arm,
  my_pid: my_pid,
  imu_data: imu_data,
  camera: camera,
};
