# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "simulation: 2 messages, 0 services")

set(MSG_I_FLAGS "-Isimulation:/home/sebastian/catkin_ws/src/simulation/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(simulation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg" NAME_WE)
add_custom_target(_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation" "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg" NAME_WE)
add_custom_target(_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "simulation" "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(simulation
  "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation
)
_generate_msg_cpp(simulation
  "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation
)

### Generating Services

### Generating Module File
_generate_module_cpp(simulation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(simulation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(simulation_generate_messages simulation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg" NAME_WE)
add_dependencies(simulation_generate_messages_cpp _simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg" NAME_WE)
add_dependencies(simulation_generate_messages_cpp _simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_gencpp)
add_dependencies(simulation_gencpp simulation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(simulation
  "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation
)
_generate_msg_lisp(simulation
  "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation
)

### Generating Services

### Generating Module File
_generate_module_lisp(simulation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(simulation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(simulation_generate_messages simulation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg" NAME_WE)
add_dependencies(simulation_generate_messages_lisp _simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg" NAME_WE)
add_dependencies(simulation_generate_messages_lisp _simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_genlisp)
add_dependencies(simulation_genlisp simulation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(simulation
  "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation
)
_generate_msg_py(simulation
  "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation
)

### Generating Services

### Generating Module File
_generate_module_py(simulation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(simulation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(simulation_generate_messages simulation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/telemetry_msg.msg" NAME_WE)
add_dependencies(simulation_generate_messages_py _simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/simulation/msg/ctrl_msg.msg" NAME_WE)
add_dependencies(simulation_generate_messages_py _simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(simulation_genpy)
add_dependencies(simulation_genpy simulation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS simulation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/simulation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(simulation_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(simulation_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/simulation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(simulation_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(simulation_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/simulation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(simulation_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(simulation_generate_messages_py geometry_msgs_generate_messages_py)
