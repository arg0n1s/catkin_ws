FILE(REMOVE_RECURSE
  "CAR_MODEL_automoc.cpp"
  "DASH_automoc.cpp"
  "FWD_KINEMATICS_automoc.cpp"
  "RANGE_SENSOR_automoc.cpp"
  "dashboard_node_automoc.cpp"
  "measurements_node_automoc.cpp"
  "scan_node_automoc.cpp"
  "simulation_node_automoc.cpp"
  "usrange_node_automoc.cpp"
  "CMakeFiles/simulation_generate_messages_cpp"
  "/home/sebastian/catkin_ws/devel/include/simulation/telemetry_msg.h"
  "/home/sebastian/catkin_ws/devel/include/simulation/ctrl_msg.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/simulation_generate_messages_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
