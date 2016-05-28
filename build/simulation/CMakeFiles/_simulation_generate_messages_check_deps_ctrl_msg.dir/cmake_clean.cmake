FILE(REMOVE_RECURSE
  "CAR_MODEL_automoc.cpp"
  "DASH_automoc.cpp"
  "FWD_KIN_automoc.cpp"
  "RAY_CAST_automoc.cpp"
  "dashboard_node_automoc.cpp"
  "scan_node_automoc.cpp"
  "simulation_node_automoc.cpp"
  "usrange_node_automoc.cpp"
  "CMakeFiles/_simulation_generate_messages_check_deps_ctrl_msg"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/_simulation_generate_messages_check_deps_ctrl_msg.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
