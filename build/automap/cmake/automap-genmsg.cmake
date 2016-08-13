# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "automap: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iautomap:/home/sebastian/catkin_ws/src/automap/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(automap_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg" NAME_WE)
add_custom_target(_automap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "automap" "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(automap
  "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automap
)

### Generating Services

### Generating Module File
_generate_module_cpp(automap
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automap
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(automap_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(automap_generate_messages automap_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg" NAME_WE)
add_dependencies(automap_generate_messages_cpp _automap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automap_gencpp)
add_dependencies(automap_gencpp automap_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automap_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(automap
  "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automap
)

### Generating Services

### Generating Module File
_generate_module_lisp(automap
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automap
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(automap_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(automap_generate_messages automap_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg" NAME_WE)
add_dependencies(automap_generate_messages_lisp _automap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automap_genlisp)
add_dependencies(automap_genlisp automap_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automap_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(automap
  "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automap
)

### Generating Services

### Generating Module File
_generate_module_py(automap
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automap
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(automap_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(automap_generate_messages automap_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/automap/msg/automap_ctrl_msg.msg" NAME_WE)
add_dependencies(automap_generate_messages_py _automap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(automap_genpy)
add_dependencies(automap_genpy automap_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS automap_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/automap
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(automap_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/automap
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(automap_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automap)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automap\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/automap
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(automap_generate_messages_py std_msgs_generate_messages_py)
