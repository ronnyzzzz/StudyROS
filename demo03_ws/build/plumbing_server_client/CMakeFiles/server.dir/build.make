# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build

# Include any dependencies generated for this target.
include plumbing_server_client/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include plumbing_server_client/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include plumbing_server_client/CMakeFiles/server.dir/flags.make

plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o: plumbing_server_client/CMakeFiles/server.dir/flags.make
plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o: /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/src/plumbing_server_client/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o"
	cd /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/plumbing_server_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/src/plumbing_server_client/src/server.cpp

plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	cd /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/plumbing_server_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/src/plumbing_server_client/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	cd /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/plumbing_server_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/src/plumbing_server_client/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.requires:

.PHONY : plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.requires

plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.provides: plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.requires
	$(MAKE) -f plumbing_server_client/CMakeFiles/server.dir/build.make plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.provides.build
.PHONY : plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.provides

plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.provides.build: plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o


# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: plumbing_server_client/CMakeFiles/server.dir/build.make
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/libroscpp.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/librosconsole.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/librostime.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /opt/ros/melodic/lib/libcpp_common.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server: plumbing_server_client/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server"
	cd /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/plumbing_server_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plumbing_server_client/CMakeFiles/server.dir/build: /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/devel/lib/plumbing_server_client/server

.PHONY : plumbing_server_client/CMakeFiles/server.dir/build

plumbing_server_client/CMakeFiles/server.dir/requires: plumbing_server_client/CMakeFiles/server.dir/src/server.cpp.o.requires

.PHONY : plumbing_server_client/CMakeFiles/server.dir/requires

plumbing_server_client/CMakeFiles/server.dir/clean:
	cd /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/plumbing_server_client && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : plumbing_server_client/CMakeFiles/server.dir/clean

plumbing_server_client/CMakeFiles/server.dir/depend:
	cd /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/src /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/src/plumbing_server_client /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/plumbing_server_client /home/ronnyz/Documents/ROS/ROS-demo/demo03_ws/build/plumbing_server_client/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plumbing_server_client/CMakeFiles/server.dir/depend

