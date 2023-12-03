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
include examples/CMakeFiles/rayDemo2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/rayDemo2.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/rayDemo2.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/rayDemo2.dir/flags.make

examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o: examples/CMakeFiles/rayDemo2.dir/flags.make
examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o: src/server/rayDemo2.cpp
examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o: examples/CMakeFiles/rayDemo2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/workspace/raisimLib/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o -MF CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o.d -o CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o -c /home/user/workspace/raisimLib/examples/src/server/rayDemo2.cpp

examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.i"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/workspace/raisimLib/examples/src/server/rayDemo2.cpp > CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.i

examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.s"
	cd /home/user/workspace/raisimLib/examples/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/workspace/raisimLib/examples/src/server/rayDemo2.cpp -o CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.s

# Object files for target rayDemo2
rayDemo2_OBJECTS = \
"CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o"

# External object files for target rayDemo2
rayDemo2_EXTERNAL_OBJECTS =

examples/rayDemo2: examples/CMakeFiles/rayDemo2.dir/src/server/rayDemo2.cpp.o
examples/rayDemo2: examples/CMakeFiles/rayDemo2.dir/build.make
examples/rayDemo2: ../raisim/linux/lib/libraisim.so
examples/rayDemo2: ../raisim/linux/lib/libraisimPng.so
examples/rayDemo2: ../raisim/linux/lib/libraisimZ.so
examples/rayDemo2: ../raisim/linux/lib/libraisimODE.so
examples/rayDemo2: ../raisim/linux/lib/libraisimMine.so
examples/rayDemo2: examples/CMakeFiles/rayDemo2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/workspace/raisimLib/examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rayDemo2"
	cd /home/user/workspace/raisimLib/examples/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rayDemo2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/rayDemo2.dir/build: examples/rayDemo2
.PHONY : examples/CMakeFiles/rayDemo2.dir/build

examples/CMakeFiles/rayDemo2.dir/clean:
	cd /home/user/workspace/raisimLib/examples/examples && $(CMAKE_COMMAND) -P CMakeFiles/rayDemo2.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/rayDemo2.dir/clean

examples/CMakeFiles/rayDemo2.dir/depend:
	cd /home/user/workspace/raisimLib/examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/workspace/raisimLib /home/user/workspace/raisimLib/examples /home/user/workspace/raisimLib/examples /home/user/workspace/raisimLib/examples/examples /home/user/workspace/raisimLib/examples/examples/CMakeFiles/rayDemo2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/rayDemo2.dir/depend

