# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sebastian/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sebastian/catkin_ws/build

# Include any dependencies generated for this target.
include automap/CMakeFiles/FRONTIER.dir/depend.make

# Include the progress variables for this target.
include automap/CMakeFiles/FRONTIER.dir/progress.make

# Include the compile flags for this target's objects.
include automap/CMakeFiles/FRONTIER.dir/flags.make

automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o: automap/CMakeFiles/FRONTIER.dir/flags.make
automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o: /home/sebastian/catkin_ws/src/automap/src/Frontier.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sebastian/catkin_ws/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o"
	cd /home/sebastian/catkin_ws/build/automap && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o -c /home/sebastian/catkin_ws/src/automap/src/Frontier.cpp

automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FRONTIER.dir/src/Frontier.cpp.i"
	cd /home/sebastian/catkin_ws/build/automap && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sebastian/catkin_ws/src/automap/src/Frontier.cpp > CMakeFiles/FRONTIER.dir/src/Frontier.cpp.i

automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FRONTIER.dir/src/Frontier.cpp.s"
	cd /home/sebastian/catkin_ws/build/automap && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sebastian/catkin_ws/src/automap/src/Frontier.cpp -o CMakeFiles/FRONTIER.dir/src/Frontier.cpp.s

automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.requires:
.PHONY : automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.requires

automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.provides: automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.requires
	$(MAKE) -f automap/CMakeFiles/FRONTIER.dir/build.make automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.provides.build
.PHONY : automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.provides

automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.provides.build: automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o

# Object files for target FRONTIER
FRONTIER_OBJECTS = \
"CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o"

# External object files for target FRONTIER
FRONTIER_EXTERNAL_OBJECTS =

/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: automap/CMakeFiles/FRONTIER.dir/build.make
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libtf.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libtf2_ros.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libactionlib.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libtf2.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libcv_bridge.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libimage_transport.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libmessage_filters.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libclass_loader.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libPocoFoundation.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libroscpp.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librosconsole.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/liblog4cxx.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libroslib.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librostime.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libcpp_common.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_common.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_octree.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libOpenNI.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkCommon.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkRendering.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkCharts.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_io.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_kdtree.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_search.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_sample_consensus.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_filters.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_features.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_keypoints.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_segmentation.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_visualization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_outofcore.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_registration.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_recognition.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_surface.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_people.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_tracking.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_apps.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libOpenNI.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkCommon.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkRendering.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkCharts.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /home/sebastian/catkin_ws/devel/lib/libPATH.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libtf.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libtf2_ros.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libactionlib.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libtf2.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libcv_bridge.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libimage_transport.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libmessage_filters.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libtinyxml.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libclass_loader.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libPocoFoundation.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libdl.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libroscpp.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librosconsole.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/liblog4cxx.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libroslib.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/librostime.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /opt/ros/indigo/lib/libcpp_common.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkCharts.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkViews.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkInfovis.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkWidgets.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkHybrid.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkParallel.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkVolumeRendering.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkRendering.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkGraphics.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkImaging.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkIO.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkFiltering.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtkCommon.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libvtksys.so.5.8.0
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_common.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_octree.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libOpenNI.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_io.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_kdtree.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_search.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_sample_consensus.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_filters.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_features.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_keypoints.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_segmentation.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_visualization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_outofcore.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_registration.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_recognition.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_surface.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_people.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_tracking.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_apps.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_common.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_octree.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libOpenNI.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_io.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_kdtree.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_search.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_sample_consensus.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_filters.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_features.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_keypoints.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_segmentation.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_visualization.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_outofcore.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_registration.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_recognition.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/x86_64-linux-gnu/libqhull.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_surface.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_people.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_tracking.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: /usr/lib/libpcl_apps.so
/home/sebastian/catkin_ws/devel/lib/libFRONTIER.so: automap/CMakeFiles/FRONTIER.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library /home/sebastian/catkin_ws/devel/lib/libFRONTIER.so"
	cd /home/sebastian/catkin_ws/build/automap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FRONTIER.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
automap/CMakeFiles/FRONTIER.dir/build: /home/sebastian/catkin_ws/devel/lib/libFRONTIER.so
.PHONY : automap/CMakeFiles/FRONTIER.dir/build

automap/CMakeFiles/FRONTIER.dir/requires: automap/CMakeFiles/FRONTIER.dir/src/Frontier.cpp.o.requires
.PHONY : automap/CMakeFiles/FRONTIER.dir/requires

automap/CMakeFiles/FRONTIER.dir/clean:
	cd /home/sebastian/catkin_ws/build/automap && $(CMAKE_COMMAND) -P CMakeFiles/FRONTIER.dir/cmake_clean.cmake
.PHONY : automap/CMakeFiles/FRONTIER.dir/clean

automap/CMakeFiles/FRONTIER.dir/depend:
	cd /home/sebastian/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebastian/catkin_ws/src /home/sebastian/catkin_ws/src/automap /home/sebastian/catkin_ws/build /home/sebastian/catkin_ws/build/automap /home/sebastian/catkin_ws/build/automap/CMakeFiles/FRONTIER.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : automap/CMakeFiles/FRONTIER.dir/depend

