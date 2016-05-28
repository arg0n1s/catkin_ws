FILE(REMOVE_RECURSE
  "CAR_MODEL_automoc.cpp"
  "DASH_automoc.cpp"
  "FWD_KIN_automoc.cpp"
  "RAY_CAST_automoc.cpp"
  "dashboard_node_automoc.cpp"
  "scan_node_automoc.cpp"
  "simulation_node_automoc.cpp"
  "usrange_node_automoc.cpp"
  "CMakeFiles/simulation_generate_messages_py"
  "/home/sebastian/catkin_ws/devel/lib/python2.7/dist-packages/simulation/msg/_ctrl_msg.py"
  "/home/sebastian/catkin_ws/devel/lib/python2.7/dist-packages/simulation/msg/__init__.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/simulation_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
