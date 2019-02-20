# Install script for directory: /Users/spinlock/src/wrmsr/cpython/cmake/extensions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_array/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_audioop/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_bisect/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_cmath/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_codecs_cn/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_codecs_hk/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_codecs_iso2022/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_codecs_jp/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_codecs_kr/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_codecs_tw/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_csv/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_ctypes_test/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_functools/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_heapq/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_itertools/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_json/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_locale/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_lsprof/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_math/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_mmap/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_multibytecodec/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_parser/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_random/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_struct/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_testcapi/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_unicodedata/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_fcntl/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_grp/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_resource/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_syslog/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_termios/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_scproxy/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_multiprocessing/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_select/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_ctypes/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_pyexpat/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_elementtree/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_md5/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha1/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha256/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sha512/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_binascii/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_bz2/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_curses_panel/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_curses/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_readline/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_sqlite3/cmake_install.cmake")
  include("/Users/spinlock/src/wrmsr/cpython/cmake-build-debug/CMakeBuild/extensions/extension_zlib/cmake_install.cmake")

endif()

