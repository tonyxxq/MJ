# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/cmake-3.9.1/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.9.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tony/MJ

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tony/MJ/build

# Include any dependencies generated for this target.
include CMakeFiles/mj2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mj2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mj2.dir/flags.make

CMakeFiles/mj2.dir/main.cpp.o: CMakeFiles/mj2.dir/flags.make
CMakeFiles/mj2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tony/MJ/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mj2.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mj2.dir/main.cpp.o -c /home/tony/MJ/main.cpp

CMakeFiles/mj2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mj2.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tony/MJ/main.cpp > CMakeFiles/mj2.dir/main.cpp.i

CMakeFiles/mj2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mj2.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tony/MJ/main.cpp -o CMakeFiles/mj2.dir/main.cpp.s

CMakeFiles/mj2.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/mj2.dir/main.cpp.o.requires

CMakeFiles/mj2.dir/main.cpp.o.provides: CMakeFiles/mj2.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/mj2.dir/build.make CMakeFiles/mj2.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/mj2.dir/main.cpp.o.provides

CMakeFiles/mj2.dir/main.cpp.o.provides.build: CMakeFiles/mj2.dir/main.cpp.o


# Object files for target mj2
mj2_OBJECTS = \
"CMakeFiles/mj2.dir/main.cpp.o"

# External object files for target mj2
mj2_EXTERNAL_OBJECTS =

mj2: CMakeFiles/mj2.dir/main.cpp.o
mj2: CMakeFiles/mj2.dir/build.make
mj2: CMakeFiles/mj2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tony/MJ/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mj2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mj2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mj2.dir/build: mj2

.PHONY : CMakeFiles/mj2.dir/build

CMakeFiles/mj2.dir/requires: CMakeFiles/mj2.dir/main.cpp.o.requires

.PHONY : CMakeFiles/mj2.dir/requires

CMakeFiles/mj2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mj2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mj2.dir/clean

CMakeFiles/mj2.dir/depend:
	cd /home/tony/MJ/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tony/MJ /home/tony/MJ /home/tony/MJ/build /home/tony/MJ/build /home/tony/MJ/build/CMakeFiles/mj2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mj2.dir/depend

