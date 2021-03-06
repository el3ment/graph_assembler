# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /graph_assembler/assemblers/spades/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /graph_assembler/assemblers/spades/build_spades

# Include any dependencies generated for this target.
include modules/stages/CMakeFiles/stages.dir/depend.make

# Include the progress variables for this target.
include modules/stages/CMakeFiles/stages.dir/progress.make

# Include the compile flags for this target's objects.
include modules/stages/CMakeFiles/stages.dir/flags.make

modules/stages/CMakeFiles/stages.dir/construction.cpp.o: modules/stages/CMakeFiles/stages.dir/flags.make
modules/stages/CMakeFiles/stages.dir/construction.cpp.o: /graph_assembler/assemblers/spades/src/modules/stages/construction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/graph_assembler/assemblers/spades/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object modules/stages/CMakeFiles/stages.dir/construction.cpp.o"
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stages.dir/construction.cpp.o -c /graph_assembler/assemblers/spades/src/modules/stages/construction.cpp

modules/stages/CMakeFiles/stages.dir/construction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stages.dir/construction.cpp.i"
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /graph_assembler/assemblers/spades/src/modules/stages/construction.cpp > CMakeFiles/stages.dir/construction.cpp.i

modules/stages/CMakeFiles/stages.dir/construction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stages.dir/construction.cpp.s"
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /graph_assembler/assemblers/spades/src/modules/stages/construction.cpp -o CMakeFiles/stages.dir/construction.cpp.s

modules/stages/CMakeFiles/stages.dir/construction.cpp.o.requires:

.PHONY : modules/stages/CMakeFiles/stages.dir/construction.cpp.o.requires

modules/stages/CMakeFiles/stages.dir/construction.cpp.o.provides: modules/stages/CMakeFiles/stages.dir/construction.cpp.o.requires
	$(MAKE) -f modules/stages/CMakeFiles/stages.dir/build.make modules/stages/CMakeFiles/stages.dir/construction.cpp.o.provides.build
.PHONY : modules/stages/CMakeFiles/stages.dir/construction.cpp.o.provides

modules/stages/CMakeFiles/stages.dir/construction.cpp.o.provides.build: modules/stages/CMakeFiles/stages.dir/construction.cpp.o


modules/stages/CMakeFiles/stages.dir/simplification.cpp.o: modules/stages/CMakeFiles/stages.dir/flags.make
modules/stages/CMakeFiles/stages.dir/simplification.cpp.o: /graph_assembler/assemblers/spades/src/modules/stages/simplification.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/graph_assembler/assemblers/spades/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object modules/stages/CMakeFiles/stages.dir/simplification.cpp.o"
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stages.dir/simplification.cpp.o -c /graph_assembler/assemblers/spades/src/modules/stages/simplification.cpp

modules/stages/CMakeFiles/stages.dir/simplification.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stages.dir/simplification.cpp.i"
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /graph_assembler/assemblers/spades/src/modules/stages/simplification.cpp > CMakeFiles/stages.dir/simplification.cpp.i

modules/stages/CMakeFiles/stages.dir/simplification.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stages.dir/simplification.cpp.s"
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /graph_assembler/assemblers/spades/src/modules/stages/simplification.cpp -o CMakeFiles/stages.dir/simplification.cpp.s

modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.requires:

.PHONY : modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.requires

modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.provides: modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.requires
	$(MAKE) -f modules/stages/CMakeFiles/stages.dir/build.make modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.provides.build
.PHONY : modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.provides

modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.provides.build: modules/stages/CMakeFiles/stages.dir/simplification.cpp.o


# Object files for target stages
stages_OBJECTS = \
"CMakeFiles/stages.dir/construction.cpp.o" \
"CMakeFiles/stages.dir/simplification.cpp.o"

# External object files for target stages
stages_EXTERNAL_OBJECTS =

modules/stages/libstages.a: modules/stages/CMakeFiles/stages.dir/construction.cpp.o
modules/stages/libstages.a: modules/stages/CMakeFiles/stages.dir/simplification.cpp.o
modules/stages/libstages.a: modules/stages/CMakeFiles/stages.dir/build.make
modules/stages/libstages.a: modules/stages/CMakeFiles/stages.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/graph_assembler/assemblers/spades/build_spades/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libstages.a"
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && $(CMAKE_COMMAND) -P CMakeFiles/stages.dir/cmake_clean_target.cmake
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stages.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/stages/CMakeFiles/stages.dir/build: modules/stages/libstages.a

.PHONY : modules/stages/CMakeFiles/stages.dir/build

modules/stages/CMakeFiles/stages.dir/requires: modules/stages/CMakeFiles/stages.dir/construction.cpp.o.requires
modules/stages/CMakeFiles/stages.dir/requires: modules/stages/CMakeFiles/stages.dir/simplification.cpp.o.requires

.PHONY : modules/stages/CMakeFiles/stages.dir/requires

modules/stages/CMakeFiles/stages.dir/clean:
	cd /graph_assembler/assemblers/spades/build_spades/modules/stages && $(CMAKE_COMMAND) -P CMakeFiles/stages.dir/cmake_clean.cmake
.PHONY : modules/stages/CMakeFiles/stages.dir/clean

modules/stages/CMakeFiles/stages.dir/depend:
	cd /graph_assembler/assemblers/spades/build_spades && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /graph_assembler/assemblers/spades/src /graph_assembler/assemblers/spades/src/modules/stages /graph_assembler/assemblers/spades/build_spades /graph_assembler/assemblers/spades/build_spades/modules/stages /graph_assembler/assemblers/spades/build_spades/modules/stages/CMakeFiles/stages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/stages/CMakeFiles/stages.dir/depend

