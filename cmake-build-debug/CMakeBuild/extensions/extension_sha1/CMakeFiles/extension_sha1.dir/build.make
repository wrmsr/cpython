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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/spinlock/src/wrmsr/cpython

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/spinlock/src/wrmsr/cpython/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/depend.make

# Include the progress variables for this target.
include CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/flags.make

CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.o: CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/flags.make
CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.o: ../Modules/sha1module.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.o"
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.o   -c /Users/spinlock/src/wrmsr/cpython/Modules/sha1module.c

CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.i"
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/spinlock/src/wrmsr/cpython/Modules/sha1module.c > CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.i

CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.s"
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/spinlock/src/wrmsr/cpython/Modules/sha1module.c -o CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.s

# Object files for target extension_sha1
extension_sha1_OBJECTS = \
"CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.o"

# External object files for target extension_sha1
extension_sha1_EXTERNAL_OBJECTS =

lib/python3.7/lib-dynload/_sha1.so: CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/__/__/__/__/Modules/sha1module.c.o
lib/python3.7/lib-dynload/_sha1.so: CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/build.make
lib/python3.7/lib-dynload/_sha1.so: CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ../../../lib/python3.7/lib-dynload/_sha1.so"
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/extension_sha1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/build: lib/python3.7/lib-dynload/_sha1.so

.PHONY : CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/build

CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/clean:
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1 && $(CMAKE_COMMAND) -P CMakeFiles/extension_sha1.dir/cmake_clean.cmake
.PHONY : CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/clean

CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/depend:
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spinlock/src/wrmsr/cpython /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1-src /Users/spinlock/src/wrmsr/cpython/cmake-build-debug /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1 /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeBuild/extensions/extension_sha1/CMakeFiles/extension_sha1.dir/depend

