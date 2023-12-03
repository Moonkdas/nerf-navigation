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
include examples/CMakeFiles/balls.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/balls.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/balls.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/balls.dir/flags.make

examples/CMakeFiles/balls.dir/src/server/balls.cpp.o: examples/CMakeFiles/balls.dir/flags.make
examples/CMakeFiles/balls.dir/src/server/balls.cpp.o: src/server/balls.cpp
examples/CMakeFiles/balls.dir/src/server/balls.cpp.o: examples/CMakeFiles/balls.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/workspace/raisimLib/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/balls.dir/src/server/balls.cpp.o"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/balls.dir/src/server/balls.cpp.o -MF CMakeFiles/balls.dir/src/server/balls.cpp.o.d -o CMakeFiles/balls.dir/src/server/balls.cpp.o -c /home/user/workspace/raisimLib/examples/src/server/balls.cpp

examples/CMakeFiles/balls.dir/src/server/balls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/balls.dir/src/server/balls.cpp.i"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/workspace/raisimLib/examples/src/server/balls.cpp > CMakeFiles/balls.dir/src/server/balls.cpp.i

examples/CMakeFiles/balls.dir/src/server/balls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/balls.dir/src/server/balls.cpp.s"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/workspace/raisimLib/examples/src/server/balls.cpp -o CMakeFiles/balls.dir/src/server/balls.cpp.s

# Object files for target balls
balls_OBJECTS = \
"CMakeFiles/balls.dir/src/server/balls.cpp.o"

# External object files for target balls
balls_EXTERNAL_OBJECTS =

examples/balls: examples/CMakeFiles/balls.dir/src/server/balls.cpp.o
examples/balls: examples/CMakeFiles/balls.dir/build.make
examples/balls: ../raisim/linux/lib/libraisim.so
examples/balls: ../raisim/linux/lib/libraisimPng.so
examples/balls: ../raisim/linux/lib/libraisimZ.so
examples/balls: ../raisim/linux/lib/libraisimODE.so
examples/balls: ../raisim/linux/lib/libraisimMine.so
examples/balls: examples/CMakeFiles/balls.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/workspace/raisimLib/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable balls"
	cd /home/user/workspace/raisimLib/examples/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/balls.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/balls.dir/build: examples/balls
.PHONY : examples/CMakeFiles/balls.dir/build

examples/CMakeFiles/balls.dir/clean:
	cd /home/user/workspace/raisimLib/examples/examples && $(CMAKE_COMMAND) -P CMakeFiles/balls.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/balls.dir/clean

examples/CMakeFiles/balls.dir/depend:
	cd /home/user/workspace/raisimLib/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/workspace/raisimLib /home/user/workspace/raisimLib/examples /home/user/workspace/raisimLib/examples /home/user/workspace/raisimLib/examples/examples /home/user/workspace/raisimLib/examples/examples/CMakeFiles/balls.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/balls.dir/depend

