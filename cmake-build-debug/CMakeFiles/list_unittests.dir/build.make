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

# Utility rule file for list_unittests.

# Include the progress variables for this target.
include CMakeFiles/list_unittests.dir/progress.make

CMakeFiles/list_unittests: bin/python
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Display list of python unittests"
	/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/bin/python -c "exec(\"import glob\\nimport os\\nfilenames = sorted(glob.glob('./lib/python3.7/test/test_*.py'))\\nfor filename in filenames:\\n  print('list(APPEND unittests \\\"%s\\\")' % os.path.splitext(os.path.basename(filename))[0])\\nprint('Discovered %d tests' % len(filenames))\\n\")"

list_unittests: CMakeFiles/list_unittests
list_unittests: CMakeFiles/list_unittests.dir/build.make

.PHONY : list_unittests

# Rule to build all files generated by this target.
CMakeFiles/list_unittests.dir/build: list_unittests

.PHONY : CMakeFiles/list_unittests.dir/build

CMakeFiles/list_unittests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/list_unittests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/list_unittests.dir/clean

CMakeFiles/list_unittests.dir/depend:
	cd /Users/spinlock/src/wrmsr/cpython/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/spinlock/src/wrmsr/cpython /Users/spinlock/src/wrmsr/cpython /Users/spinlock/src/wrmsr/cpython/cmake-build-debug /Users/spinlock/src/wrmsr/cpython/cmake-build-debug /Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeFiles/list_unittests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/list_unittests.dir/depend

