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

# Utility rule file for update_sysconfig.

# Include the progress variables for this target.
include CMakeBuild/python/CMakeFiles/update_sysconfig.dir/progress.make

CMakeBuild/python/CMakeFiles/update_sysconfig: bin/pybuilddir.txt
CMakeBuild/python/CMakeFiles/update_sysconfig: lib/python3.7/lib-dynload/_sysconfigdata__darwin_.py


bin/pybuilddir.txt: bin/python
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Relocate _sysconfigdata__darwin_.py and update pybuilddir.txt"
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/bin && /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/bin/python -E -S -m sysconfig --generate-posix-vars
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/bin && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -DBIN_BUILD_DIR:PATH=/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/bin -DSYSCONFIGDATA_PY:STRING=_sysconfigdata__darwin_.py -DPYTHON_BINARY_DIR:PATH=/Users/spinlock/src/wrmsr/cpython/cmake-build-debug -DEXTENSION_INSTALL_DIR:PATH=lib/python3.7/lib-dynload -P /Users/spinlock/src/wrmsr/cpython/cmake/UpdateSysconfig.cmake

lib/python3.7/lib-dynload/_sysconfigdata__darwin_.py: bin/pybuilddir.txt
	@$(CMAKE_COMMAND) -E touch_nocreate lib/python3.7/lib-dynload/_sysconfigdata__darwin_.py

update_sysconfig: CMakeBuild/python/CMakeFiles/update_sysconfig
update_sysconfig: bin/pybuilddir.txt
update_sysconfig: lib/python3.7/lib-dynload/_sysconfigdata__darwin_.py
update_sysconfig: CMakeBuild/python/CMakeFiles/update_sysconfig.dir/build.make

.PHONY : update_sysconfig

# Rule to build all files generated by this target.
CMakeBuild/python/CMakeFiles/update_sysconfig.dir/build: update_sysconfig

.PHONY : CMakeBuild/python/CMakeFiles/update_sysconfig.dir/build

CMakeBuild/python/CMakeFiles/update_sysconfig.dir/clean:
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/python && $(CMAKE_COMMAND) -P CMakeFiles/update_sysconfig.dir/cmake_clean.cmake
.PHONY : CMakeBuild/python/CMakeFiles/update_sysconfig.dir/clean

CMakeBuild/python/CMakeFiles/update_sysconfig.dir/depend:
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spinlock/src/wrmsr/cpython /Users/spinlock/src/wrmsr/cpython/cmake/python /Users/spinlock/src/wrmsr/cpython/cmake-build-debug /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/python /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/python/CMakeFiles/update_sysconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeBuild/python/CMakeFiles/update_sysconfig.dir/depend

