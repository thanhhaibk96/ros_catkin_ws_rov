# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rov_canbus_pkg: 9 messages, 1 services")

set(MSG_I_FLAGS "-Irov_canbus_pkg:/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rov_canbus_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg" ""
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg" ""
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg" "rov_canbus_pkg/m_setup_camera"
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg" ""
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg" ""
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg" "rov_canbus_pkg/my_thruster"
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv" ""
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg" "rov_canbus_pkg/imu_data"
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg" ""
)

get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg" NAME_WE)
add_custom_target(_rov_canbus_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_canbus_pkg" "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Services
_generate_srv_cpp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Module File
_generate_module_cpp(rov_canbus_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rov_canbus_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rov_canbus_pkg_generate_messages rov_canbus_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_cpp _rov_canbus_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_canbus_pkg_gencpp)
add_dependencies(rov_canbus_pkg_gencpp rov_canbus_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_canbus_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Services
_generate_srv_eus(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Module File
_generate_module_eus(rov_canbus_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rov_canbus_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rov_canbus_pkg_generate_messages rov_canbus_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_eus _rov_canbus_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_canbus_pkg_geneus)
add_dependencies(rov_canbus_pkg_geneus rov_canbus_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_canbus_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Services
_generate_srv_lisp(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Module File
_generate_module_lisp(rov_canbus_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rov_canbus_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rov_canbus_pkg_generate_messages rov_canbus_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_lisp _rov_canbus_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_canbus_pkg_genlisp)
add_dependencies(rov_canbus_pkg_genlisp rov_canbus_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_canbus_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Services
_generate_srv_nodejs(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Module File
_generate_module_nodejs(rov_canbus_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rov_canbus_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rov_canbus_pkg_generate_messages rov_canbus_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_nodejs _rov_canbus_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_canbus_pkg_gennodejs)
add_dependencies(rov_canbus_pkg_gennodejs rov_canbus_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_canbus_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)
_generate_msg_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Services
_generate_srv_py(rov_canbus_pkg
  "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
)

### Generating Module File
_generate_module_py(rov_canbus_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rov_canbus_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rov_canbus_pkg_generate_messages rov_canbus_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/rc_servo.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_pid.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/m_setup_camera.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_thruster.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/joystick.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/srv/pid_control.srv" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_sensors.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/imu_data.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg/my_robot_arm.msg" NAME_WE)
add_dependencies(rov_canbus_pkg_generate_messages_py _rov_canbus_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_canbus_pkg_genpy)
add_dependencies(rov_canbus_pkg_genpy rov_canbus_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_canbus_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_canbus_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rov_canbus_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_canbus_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rov_canbus_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_canbus_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rov_canbus_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_canbus_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rov_canbus_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_canbus_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rov_canbus_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
