# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /work/menuconfig/menuconfig

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /work/menuconfig/menuconfig/build

# Include any dependencies generated for this target.
include CMakeFiles/mconf.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mconf.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mconf.dir/flags.make

CMakeFiles/mconf.dir/mconf.c.o: CMakeFiles/mconf.dir/flags.make
CMakeFiles/mconf.dir/mconf.c.o: ../mconf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/work/menuconfig/menuconfig/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mconf.dir/mconf.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mconf.dir/mconf.c.o   -c /work/menuconfig/menuconfig/mconf.c

CMakeFiles/mconf.dir/mconf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mconf.dir/mconf.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /work/menuconfig/menuconfig/mconf.c > CMakeFiles/mconf.dir/mconf.c.i

CMakeFiles/mconf.dir/mconf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mconf.dir/mconf.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /work/menuconfig/menuconfig/mconf.c -o CMakeFiles/mconf.dir/mconf.c.s

# Object files for target mconf
mconf_OBJECTS = \
"CMakeFiles/mconf.dir/mconf.c.o"

# External object files for target mconf
mconf_EXTERNAL_OBJECTS =

mconf: CMakeFiles/mconf.dir/mconf.c.o
mconf: CMakeFiles/mconf.dir/build.make
mconf: lxdialog/liblxdialog.a
mconf: /usr/lib/x86_64-linux-gnu/libncurses.so
mconf: /usr/lib/x86_64-linux-gnu/libform.so
mconf: libzconf.a
mconf: CMakeFiles/mconf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/work/menuconfig/menuconfig/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mconf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mconf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mconf.dir/build: mconf

.PHONY : CMakeFiles/mconf.dir/build

CMakeFiles/mconf.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mconf.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mconf.dir/clean

CMakeFiles/mconf.dir/depend:
	cd /work/menuconfig/menuconfig/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /work/menuconfig/menuconfig /work/menuconfig/menuconfig /work/menuconfig/menuconfig/build /work/menuconfig/menuconfig/build /work/menuconfig/menuconfig/build/CMakeFiles/mconf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mconf.dir/depend

