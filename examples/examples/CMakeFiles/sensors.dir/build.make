# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/workspace/raisimLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/workspace/raisimLib/examples

# Include any dependencies generated for this target.
include examples/CMakeFiles/sensors.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/sensors.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/sensors.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/sensors.dir/flags.make

examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.o: examples/CMakeFiles/sensors.dir/flags.make
examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.o: src/server/sensors.cpp
examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.o: examples/CMakeFiles/sensors.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/workspace/raisimLib/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.o"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.o -MF CMakeFiles/sensors.dir/src/server/sensors.cpp.o.d -o CMakeFiles/sensors.dir/src/server/sensors.cpp.o -c /home/user/workspace/raisimLib/examples/src/server/sensors.cpp

examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensors.dir/src/server/sensors.cpp.i"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/workspace/raisimLib/examples/src/server/sensors.cpp > CMakeFiles/sensors.dir/src/server/sensors.cpp.i

examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensors.dir/src/server/sensors.cpp.s"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/workspace/raisimLib/examples/src/server/sensors.cpp -o CMakeFiles/sensors.dir/src/server/sensors.cpp.s

# Object files for target sensors
sensors_OBJECTS = \
"CMakeFiles/sensors.dir/src/server/sensors.cpp.o"

# External object files for target sensors
sensors_EXTERNAL_OBJECTS =

examples/sensors: examples/CMakeFiles/sensors.dir/src/server/sensors.cpp.o
examples/sensors: examples/CMakeFiles/sensors.dir/build.make
examples/sensors: ../raisim/linux/lib/libraisim.so
examples/sensors: ../raisim/linux/lib/libraisimPng.so
examples/sensors: ../raisim/linux/lib/libraisimZ.so
examples/sensors: ../raisim/linux/lib/libraisimODE.so
examples/sensors: ../raisim/linux/lib/libraisimMine.so
examples/sensors: examples/CMakeFiles/sensors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/workspace/raisimLib/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sensors"
	cd /home/user/workspace/raisimLib/examples/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sensors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/sensors.dir/build: examples/sensors
.PHONY : examples/CMakeFiles/sensors.dir/build

examples/CMakeFiles/sensors.dir/clean:
	cd /home/user/workspace/raisimLib/examples/examples && $(CMAKE_COMMAND) -P CMakeFiles/sensors.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/sensors.dir/clean

examples/CMakeFiles/sensors.dir/depend:
	cd /home/user/workspace/raisimLib/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/workspace/raisimLib /home/user/workspace/raisimLib/examples /home/user/workspace/raisimLib/examples /home/user/workspace/raisimLib/examples/examples /home/user/workspace/raisimLib/examples/examples/CMakeFiles/sensors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/sensors.dir/depend
