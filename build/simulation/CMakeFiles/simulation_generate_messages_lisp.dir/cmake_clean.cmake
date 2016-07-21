FILE(REMOVE_RECURSE
  "CAR_MODEL_automoc.cpp"
  "DASH_automoc.cpp"
  "FWD_KINEMATICS_automoc.cpp"
  "RAY_CAST_automoc.cpp"
  "dashboard_node_automoc.cpp"
  "scan_node_automoc.cpp"
  "simulation_node_automoc.cpp"
  "usrange_node_automoc.cpp"
  "CMakeFiles/simulation_generate_messages_lisp"
  "/home/sebastian/catkin_ws/devel/share/common-lisp/ros/simulation/msg/telemetry_msg.lisp"
  "/home/sebastian/catkin_ws/devel/share/common-lisp/ros/simulation/msg/ctrl_msg.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/simulation_generate_messages_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
