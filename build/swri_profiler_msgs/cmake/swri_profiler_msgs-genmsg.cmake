# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "swri_profiler_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iswri_profiler_msgs:/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(swri_profiler_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg" NAME_WE)
add_custom_target(_swri_profiler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swri_profiler_msgs" "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg" ""
)

get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg" NAME_WE)
add_custom_target(_swri_profiler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swri_profiler_msgs" "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg" ""
)

get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg" NAME_WE)
add_custom_target(_swri_profiler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swri_profiler_msgs" "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg" "swri_profiler_msgs/ProfileIndex:std_msgs/Header"
)

get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg" NAME_WE)
add_custom_target(_swri_profiler_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swri_profiler_msgs" "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg" "std_msgs/Header:swri_profiler_msgs/ProfileData"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_cpp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_cpp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_cpp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_profiler_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(swri_profiler_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_profiler_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(swri_profiler_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(swri_profiler_msgs_generate_messages swri_profiler_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_cpp _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_cpp _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_cpp _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_cpp _swri_profiler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swri_profiler_msgs_gencpp)
add_dependencies(swri_profiler_msgs_gencpp swri_profiler_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_profiler_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_lisp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_lisp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_lisp(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_profiler_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(swri_profiler_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_profiler_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(swri_profiler_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(swri_profiler_msgs_generate_messages swri_profiler_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_lisp _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_lisp _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_lisp _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_lisp _swri_profiler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swri_profiler_msgs_genlisp)
add_dependencies(swri_profiler_msgs_genlisp swri_profiler_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_profiler_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_py(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_py(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs
)
_generate_msg_py(swri_profiler_msgs
  "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(swri_profiler_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(swri_profiler_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(swri_profiler_msgs_generate_messages swri_profiler_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndex.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_py _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileData.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_py _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileIndexArray.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_py _swri_profiler_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sebastian/catkin_ws/src/swri_profiler_msgs/msg/ProfileDataArray.msg" NAME_WE)
add_dependencies(swri_profiler_msgs_generate_messages_py _swri_profiler_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swri_profiler_msgs_genpy)
add_dependencies(swri_profiler_msgs_genpy swri_profiler_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swri_profiler_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_profiler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swri_profiler_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(swri_profiler_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_profiler_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swri_profiler_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(swri_profiler_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swri_profiler_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(swri_profiler_msgs_generate_messages_py std_msgs_generate_messages_py)
