# Install script for directory: /Users/spinlock/src/wrmsr/cpython/cmake/lib

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__future__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__phello__.foo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/_bootlocale.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/_collections_abc.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/_compat_pickle.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/_compression.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/_osx_support.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/_sitebuiltins.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/_weakrefset.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/abc.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/bz2.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/codecs.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/configparser.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/contextlib.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/contextvars.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/copy.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/copyreg.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/dis.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/enum.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/fnmatch.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/functools.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/genericpath.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/getopt.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/gettext.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/glob.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/heapq.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/inspect.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/io.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/keyword.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/linecache.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/locale.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/lzma.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/numbers.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/opcode.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/operator.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/optparse.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/os.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/pkgutil.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/posixpath.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/pprint.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/queue.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/re.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/reprlib.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/rlcompleter.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/runpy.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/selectors.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/shutil.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/signal.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/site.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/socket.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/sre_compile.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/sre_constants.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/sre_parse.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/ssl.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/stat.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/string.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/struct.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/subprocess.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/sysconfig.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/textwrap.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/threading.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/token.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/tokenize.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/traceback.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/types.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/warnings.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/weakref.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/__pycache__/zipfile.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_bootlocale.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_collections_abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_compat_pickle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_compression.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_dummy_thread.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_markupbase.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_osx_support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_py_abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_pydecimal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_pyio.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_sitebuiltins.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_strptime.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_threading_local.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/_weakrefset.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/aifc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/antigravity.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/argparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ast.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asynchat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/base_events.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/base_futures.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/base_subprocess.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/base_tasks.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/constants.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/coroutines.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/events.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/format_helpers.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/futures.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/locks.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/log.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/protocols.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/queues.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/runners.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/selector_events.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/sslproto.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/streams.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/subprocess.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/tasks.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/transports.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/__pycache__/unix_events.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/base_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/base_futures.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/base_subprocess.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/base_tasks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/constants.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/coroutines.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/format_helpers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/futures.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/locks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/log.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/proactor_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/protocols.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/queues.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/runners.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/selector_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/sslproto.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/streams.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/subprocess.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/tasks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/transports.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/unix_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/windows_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncio/windows_utils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/asyncore.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/base64.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/bdb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/binhex.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/bisect.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/bz2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/cProfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/calendar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/cgi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/cgitb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/chunk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/cmd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/code.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/codecs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/codeop.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/collections" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/collections/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/collections/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/collections/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/collections/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/collections/__pycache__/abc.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/collections" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/collections/abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/colorsys.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/compileall.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/futures" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/futures/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/futures/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/futures/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/futures/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/futures/__pycache__/_base.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/futures/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/futures/__pycache__/thread.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/futures" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/futures/_base.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/futures" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/futures/process.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/concurrent/futures" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/concurrent/futures/thread.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/configparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/contextlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/contextvars.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/copy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/copyreg.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/crypt.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/csv.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/_aix.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/_endian.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/macholib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/macholib/README.ctypes")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/macholib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/macholib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/macholib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/macholib/dyld.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/macholib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/macholib/dylib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/macholib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/macholib/fetch_macholib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/macholib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/macholib/fetch_macholib.bat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/macholib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/macholib/framework.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_anon.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_array_in_pointer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_arrays.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_as_parameter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_bitfields.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_buffers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_bytes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_byteswap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_callbacks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_cast.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_cfuncs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_checkretval.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_delattr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_errno.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_find.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_frombuffer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_funcptr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_functions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_incomplete.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_init.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_internals.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_keeprefs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_libc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_loading.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_macholib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_memfunctions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_numbers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_objects.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_parameters.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_pep3118.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_pickling.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_pointers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_prototypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_python_api.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_random_things.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_refcounts.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_repr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_returnfuncptrs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_simplesubclasses.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_sizes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_slicing.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_stringptr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_strings.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_struct_fields.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_structures.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_unaligned_structures.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_unicode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_values.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_varsize_struct.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_win32.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/test/test_wintypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ctypes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ctypes/wintypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/curses" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/curses/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/curses" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/curses/ascii.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/curses" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/curses/has_key.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/curses" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/curses/panel.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/curses" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/curses/textpad.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/dataclasses.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/datetime.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/dbm" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/dbm/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/dbm" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/dbm/dumb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/dbm" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/dbm/gnu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/dbm" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/dbm/ndbm.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/decimal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/difflib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/dis.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/archive_util.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/ccompiler.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/cmd.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/config.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/core.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/debug.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/dep_util.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/dir_util.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/dist.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/errors.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/extension.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/fancy_getopt.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/file_util.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/log.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/spawn.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/sysconfig.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/unixccompiler.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/__pycache__/util.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/_msvccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/archive_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/bcppcompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/ccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/cmd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/__pycache__/build.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/__pycache__/build_ext.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/__pycache__/build_scripts.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/__pycache__/install.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/__pycache__/install_lib.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/bdist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/bdist_dumb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/bdist_msi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/bdist_rpm.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/bdist_wininst.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/build.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/build_clib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/build_ext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/build_py.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/build_scripts.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/check.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/clean.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/command_template")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/config.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/install.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/install_data.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/install_egg_info.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/install_headers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/install_lib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/install_scripts.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/register.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/sdist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/upload.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-10.0-amd64.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-10.0.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-14.0-amd64.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-14.0.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-6.0.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-7.1.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-8.0.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-9.0-amd64.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/command" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/command/wininst-9.0.exe")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/config.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/core.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/cygwinccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/debug.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/dep_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/dir_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/dist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/errors.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/extension.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/fancy_getopt.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/file_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/filelist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/log.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/msvc9compiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/msvccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/spawn.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/sysconfig.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/Setup.sample")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_archive_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_bdist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_bdist_dumb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_bdist_msi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_bdist_rpm.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_bdist_wininst.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_build.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_build_clib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_build_ext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_build_py.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_build_scripts.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_check.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_clean.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_cmd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_config.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_config_cmd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_core.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_cygwinccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_dep_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_dir_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_dist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_extension.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_file_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_filelist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_install.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_install_data.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_install_headers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_install_lib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_install_scripts.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_log.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_msvc9compiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_msvccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_register.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_sdist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_spawn.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_sysconfig.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_text_file.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_unixccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_upload.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_version.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/tests/test_versionpredicate.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/text_file.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/unixccompiler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/version.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/distutils" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/distutils/versionpredicate.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/doctest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/dummy_threading.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/_encoded_words.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/_header_value_parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/_parseaddr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/_policybase.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/architecture.rst")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/base64mime.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/charset.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/contentmanager.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/encoders.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/errors.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/feedparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/generator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/header.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/headerregistry.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/iterators.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/message.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/application.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/audio.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/base.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/image.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/message.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/multipart.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/nonmultipart.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email/mime" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/mime/text.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/policy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/quoprimime.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/email/utils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/__pycache__/aliases.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/__pycache__/ascii.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/__pycache__/latin_1.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/__pycache__/utf_8.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/aliases.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/ascii.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/base64_codec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/big5.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/big5hkscs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/bz2_codec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/charmap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp037.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1006.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1026.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1125.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1140.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1250.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1251.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1252.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1253.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1254.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1255.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1256.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1257.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp1258.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp273.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp424.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp437.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp500.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp65001.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp720.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp737.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp775.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp850.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp852.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp855.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp856.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp857.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp858.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp860.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp861.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp862.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp863.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp864.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp865.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp866.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp869.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp874.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp875.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp932.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp949.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/cp950.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/euc_jis_2004.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/euc_jisx0213.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/euc_jp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/euc_kr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/gb18030.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/gb2312.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/gbk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/hex_codec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/hp_roman8.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/hz.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/idna.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso2022_jp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso2022_jp_1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso2022_jp_2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso2022_jp_2004.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso2022_jp_3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso2022_jp_ext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso2022_kr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_10.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_11.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_13.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_14.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_15.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_16.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_4.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_5.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_6.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_7.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_8.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/iso8859_9.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/johab.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/koi8_r.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/koi8_t.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/koi8_u.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/kz1048.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/latin_1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_arabic.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_centeuro.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_croatian.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_cyrillic.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_farsi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_greek.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_iceland.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_latin2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_roman.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_romanian.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mac_turkish.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/mbcs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/oem.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/palmos.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/ptcp154.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/punycode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/quopri_codec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/raw_unicode_escape.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/rot_13.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/shift_jis.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/shift_jis_2004.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/shift_jisx0213.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/tis_620.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/undefined.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/unicode_escape.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/unicode_internal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_16.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_16_be.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_16_le.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_32.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_32_be.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_32_le.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_7.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_8.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/utf_8_sig.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/uu_codec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/encodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/encodings/zlib_codec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ensurepip" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ensurepip/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ensurepip" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ensurepip/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ensurepip/_bundled" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ensurepip/_bundled/pip-10.0.1-py2.py3-none-any.whl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ensurepip/_bundled" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ensurepip/_bundled/setuptools-39.0.1-py2.py3-none-any.whl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/ensurepip" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ensurepip/_uninstall.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/enum.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/filecmp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/fileinput.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/fnmatch.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/formatter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/fractions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ftplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/functools.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/genericpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/getopt.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/getpass.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/gettext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/glob.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/gzip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/hashlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/heapq.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/hmac.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/html" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/html/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/html" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/html/entities.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/html" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/html/parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/http" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/http/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/http" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/http/client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/http" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/http/cookiejar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/http" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/http/cookies.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/http" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/http/server.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/CREDITS.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/ChangeLog")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/HISTORY.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/folder.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle.icns")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle.ico")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle_16.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle_16.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle_32.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle_32.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle_48.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/idle_48.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/minusnode.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/openfolder.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/plusnode.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/python.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/Icons" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/Icons/tk.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/NEWS.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/NEWS2x.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/README.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/TODO.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/autocomplete.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/autocomplete_w.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/autoexpand.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/browser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/calltip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/calltip_w.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/codecontext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/colorizer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/config-extensions.def")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/config-highlight.def")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/config-keys.def")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/config-main.def")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/config.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/config_key.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/configdialog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/debugger.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/debugger_r.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/debugobj.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/debugobj_r.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/delegator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/dynoption.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/editor.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/extend.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/filelist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/grep.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/help.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/help.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/help_about.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/history.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/hyperparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle.bat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle.pyw")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/README.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/htest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/mock_idle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/mock_tk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/template.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_autocomplete.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_autocomplete_w.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_autoexpand.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_browser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_calltip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_calltip_w.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_codecontext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_colorizer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_config.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_config_key.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_configdialog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_debugger.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_debugger_r.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_debugobj.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_debugobj_r.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_delegator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_editmenu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_editor.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_filelist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_grep.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_help.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_help_about.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_history.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_hyperparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_iomenu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_macosx.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_mainmenu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_multicall.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_outwin.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_paragraph.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_parenmatch.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_pathbrowser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_percolator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_pyparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_pyshell.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_query.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_redirector.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_replace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_rpc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_rstrip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_run.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_runscript.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_scrolledlist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_search.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_searchbase.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_searchengine.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_squeezer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_stackviewer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_statusbar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_text.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_textview.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_tooltip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_tree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_undo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_warning.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_window.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib/idle_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/idle_test/test_zoomheight.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/iomenu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/macosx.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/mainmenu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/multicall.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/outwin.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/paragraph.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/parenmatch.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/pathbrowser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/percolator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/pyparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/pyshell.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/query.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/redirector.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/replace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/rpc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/rstrip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/run.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/runscript.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/scrolledlist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/search.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/searchbase.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/searchengine.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/squeezer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/stackviewer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/statusbar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/textview.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/tooltip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/tree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/undo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/window.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/zoomheight.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/idlelib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/idlelib/zzdummy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/imaplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/imghdr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/imp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/__pycache__/abc.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/__pycache__/machinery.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/__pycache__/util.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/_bootstrap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/_bootstrap_external.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/machinery.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/resources.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/importlib/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/inspect.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/io.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ipaddress.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/json/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/json/decoder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/json/encoder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/json/scanner.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/json/tool.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/keyword.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/Grammar.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/PatternGrammar.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/btm_matcher.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/btm_utils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixer_base.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixer_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_apply.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_asserts.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_basestring.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_buffer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_dict.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_except.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_exec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_execfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_exitfunc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_filter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_funcattrs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_future.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_getcwdu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_has_key.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_idioms.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_import.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_imports.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_imports2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_input.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_intern.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_isinstance.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_itertools.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_itertools_imports.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_long.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_map.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_metaclass.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_methodattrs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_ne.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_next.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_nonzero.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_numliterals.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_operator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_paren.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_print.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_raise.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_raw_input.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_reduce.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_reload.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_renames.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_repr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_set_literal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_standarderror.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_sys_exc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_throw.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_tuple_params.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_types.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_unicode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_urllib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_ws_comma.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_xrange.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_xreadlines.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/fixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/fixes/fix_zip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/patcomp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/conv.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/driver.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/grammar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/literals.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/parse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/pgen.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/token.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/pgen2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pgen2/tokenize.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pygram.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/pytree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/refactor.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/bom.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/crlf.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/different_encoding.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/false_encoding.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/bad_order.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers/myfixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/myfixes/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers/myfixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/myfixes/fix_explicit.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers/myfixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/myfixes/fix_first.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers/myfixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/myfixes/fix_last.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers/myfixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/myfixes/fix_parrot.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers/myfixes" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/myfixes/fix_preorder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/no_fixer_cls.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data/fixers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/fixers/parrot_example.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/infinite_recursion.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/py2_test_grammar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/data/py3_test_grammar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/pytree_idempotency.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/test_all_fixers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/test_fixers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/test_main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/test_parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/test_pytree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/test_refactor.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/tests" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lib2to3/tests/test_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/linecache.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/locale.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/logging" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/logging/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/logging/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/logging/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/logging" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/logging/config.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/logging" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/logging/handlers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/lzma.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/macpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/mailbox.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/mailcap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/mimetypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/modulefinder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/msilib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/msilib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/msilib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/msilib/schema.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/msilib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/msilib/sequence.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/msilib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/msilib/text.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/connection.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/context.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing/dummy" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/dummy/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing/dummy" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/dummy/connection.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/forkserver.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/heap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/managers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/pool.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/popen_fork.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/popen_forkserver.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/popen_spawn_posix.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/popen_spawn_win32.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/process.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/queues.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/reduction.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/resource_sharer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/semaphore_tracker.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/sharedctypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/spawn.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/synchronize.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/multiprocessing" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/multiprocessing/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/netrc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/nntplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ntpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/nturl2path.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/numbers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/opcode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/operator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/optparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/os.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pathlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pdb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pickle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pickletools.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pipes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pkgutil.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/platform.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/plistlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/poplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/posixpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pprint.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/profile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pstats.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pty.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/py_compile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pyclbr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pydoc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/pydoc_data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pydoc_data/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/pydoc_data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pydoc_data/_pydoc.css")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/pydoc_data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/pydoc_data/topics.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/queue.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/quopri.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/random.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/re.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/reprlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/rlcompleter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/runpy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sched.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/secrets.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/selectors.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/shelve.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/shlex.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/shutil.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/signal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/site-packages" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/site-packages/README.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/site.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/smtpd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/smtplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sndhdr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/socket.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/socketserver.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/dbapi2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/dump.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/backup.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/dbapi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/dump.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/factory.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/hooks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/regression.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/transactions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/types.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/sqlite3/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sqlite3/test/userfunctions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sre_compile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sre_constants.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sre_parse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/ssl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/stat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/statistics.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/string.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/stringprep.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/struct.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/subprocess.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sunau.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/symbol.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/symtable.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/sysconfig.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tabnanny.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tarfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/telnetlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tempfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/Sine-1000Hz-300ms.aif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/_test_multiprocessing.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/allsans.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ann_module.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ann_module2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ann_module3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-alaw.aifc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm16.aiff")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm16.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm16.wav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm24.aiff")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm24.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm24.wav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm32.aiff")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm32.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm32.wav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm8.aiff")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm8.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-pcm8.wav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-ulaw.aifc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/audiodata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiodata/pluck-ulaw.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiotest.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/audiotests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/autotest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/bad_coding.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/bad_coding2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/bad_getattr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/bad_getattr2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/bad_getattr3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badcert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badkey.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_3131.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future10.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future4.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future5.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future6.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future7.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future8.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_future9.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/badsyntax_pep3120.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/bisect.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/bytecode_helper.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/capath" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/capath/4e1295a3.0")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/capath" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/capath/5ed36f99.0")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/capath" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/capath/6e88d7b8.0")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/capath" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/capath/99d0fa06.0")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/capath" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/capath/b1930218.0")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/capath" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/capath/ceff1710.0")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cfgparser.1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cfgparser.2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cfgparser.3")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/big5-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/big5.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/big5hkscs-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/big5hkscs.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/cp949-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/cp949.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/euc_jisx0213-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/euc_jisx0213.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/euc_jp-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/euc_jp.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/euc_kr-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/euc_kr.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/gb18030-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/gb18030.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/gb2312-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/gb2312.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/gbk-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/gbk.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/hz-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/hz.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/iso2022_jp-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/iso2022_jp.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/iso2022_kr-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/iso2022_kr.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/johab-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/johab.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/shift_jis-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/shift_jis.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/shift_jisx0213-utf8.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/cjkencodings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cjkencodings/shift_jisx0213.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/cmath_testcases.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/coding20731.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/bogus_code_obj.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/gc_inspection.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/infinite_loop_re.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/mutation_inside_cyclegc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/recursive_call.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/trace_at_recursion_limit.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/crashers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/crashers/underlying_dict.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/curses_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/data/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dataclass_module_1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dataclass_module_1_str.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dataclass_module_2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dataclass_module_2_str.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/datetimetester.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/abs.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/add.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/and.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/base.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/clamp.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/class.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/compare.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/comparetotal.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/comparetotmag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/copy.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/copyabs.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/copynegate.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/copysign.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddAbs.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddAdd.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddAnd.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddBase.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCanonical.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddClass.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCompare.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCompareSig.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCompareTotal.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCompareTotalMag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCopy.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCopyAbs.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCopyNegate.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddCopySign.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddDivide.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddDivideInt.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddEncode.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddFMA.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddInvert.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddLogB.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddMax.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddMaxMag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddMin.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddMinMag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddMinus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddMultiply.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddNextMinus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddNextPlus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddNextToward.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddOr.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddPlus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddQuantize.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddReduce.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddRemainder.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddRemainderNear.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddRotate.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddSameQuantum.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddScaleB.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddShift.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddSubtract.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddToIntegral.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ddXor.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/decDouble.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/decQuad.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/decSingle.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/divide.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/divideint.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqAbs.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqAdd.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqAnd.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqBase.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCanonical.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqClass.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCompare.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCompareSig.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCompareTotal.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCompareTotalMag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCopy.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCopyAbs.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCopyNegate.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqCopySign.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqDivide.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqDivideInt.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqEncode.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqFMA.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqInvert.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqLogB.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqMax.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqMaxMag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqMin.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqMinMag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqMinus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqMultiply.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqNextMinus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqNextPlus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqNextToward.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqOr.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqPlus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqQuantize.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqReduce.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqRemainder.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqRemainderNear.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqRotate.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqSameQuantum.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqScaleB.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqShift.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqSubtract.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqToIntegral.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dqXor.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dsBase.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/dsEncode.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/exp.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/extra.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/fma.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/inexact.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/invert.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/ln.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/log10.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/logb.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/max.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/maxmag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/min.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/minmag.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/minus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/multiply.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/nextminus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/nextplus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/nexttoward.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/or.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/plus.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/power.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/powersqrt.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/quantize.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/randomBound32.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/randoms.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/reduce.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/remainder.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/remainderNear.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/rescale.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/rotate.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/rounding.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/samequantum.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/scaleb.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/shift.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/squareroot.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/subtract.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/testall.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/tointegral.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/tointegralx.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/decimaltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/decimaltestdata/xor.decTest")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dis_module.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/doctest_aliases.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/double_const.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/assert_usable.d")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/assert_usable.stp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/call_stack.d")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/call_stack.d.expected")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/call_stack.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/call_stack.stp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/call_stack.stp.expected")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/gc.d")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/gc.d.expected")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/gc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/gc.stp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/gc.stp.expected")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/instance.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/line.d")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/line.d.expected")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/dtracedata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/dtracedata/line.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/eintrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/eintrdata/eintr_tester.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/empty.vbs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/encoded_modules" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/encoded_modules/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/encoded_modules" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/encoded_modules/module_iso_8859_1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/encoded_modules" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/encoded_modules/module_koi8_r.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/exception_hierarchy.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ffdh3072.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/final_a.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/final_b.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/floating_points.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/fork_wait.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/formatfloat_testcases.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/future_test1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/future_test2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/gdb_sample.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/good_getattr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/idnsans.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ieee754.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.bmp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.exr")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.jpg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.pbm")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.pgm")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.png")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.ppm")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.ras")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.sgi")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.tiff")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.webp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/imghdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imghdrdata/python.xbm")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/imp_dummy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/inspect_fodder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/inspect_fodder2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/keycert.passwd.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/keycert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/keycert2.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/keycert3.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/keycert4.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/keycertecc.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/leakers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/leakers/README.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/leakers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/leakers/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/leakers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/leakers/test_ctypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/leakers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/leakers/test_selftype.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/cmdline.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/refleak.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/runtest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/runtest_mp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/save_env.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/setup.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/libregrtest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/libregrtest/utils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/list_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/lock_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/mailcap.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/make_ssl_certs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/mapping_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/math_testcases.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/memory_watchdog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/mime.types")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/mock_socket.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/mod_generics_cache.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/mp_fork_bomb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/mp_preload.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/multibytecodec_support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/nokia.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/nullbytecert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/nullcert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/outstanding_bugs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pickletester.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/profilee.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pstats.pck")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pycacert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pycakey.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pyclbr_input.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pydoc_mod.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pydocfodder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/pythoninfo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/randv2_32.pck")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/randv2_64.pck")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/randv3.pck")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/re_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/regrtest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/relimport.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/reperf.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/revocation.crl")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sample_doctest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sample_doctest_no_docstrings.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sample_doctest_no_doctests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/secp384r1.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/selfsigned_pythontestdotnet.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/seq_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sgml_input.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/signalinterproctester.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.8svx")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.aifc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.aiff")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.hcom")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.sndt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.voc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/sndhdrdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sndhdrdata/sndhdr.wav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/sortperf.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ssl_cert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ssl_key.passwd.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ssl_key.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ssl_servers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/ssltests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/string_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/subprocessdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/subprocessdata/fd_status.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/subprocessdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/subprocessdata/input_reader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/subprocessdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/subprocessdata/qcat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/subprocessdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/subprocessdata/qgrep.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/subprocessdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/subprocessdata/sigchild_ignore.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/support" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/support/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/support" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/support/script_helper.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/support" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/support/testresult.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test___all__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test___future__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test__locale.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test__opcode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test__osx_support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_abstract_numbers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_aifc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_argparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_array.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asdl_parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ast.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncgen.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asynchat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/echo.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/echo2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/echo3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/functional.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/keycert3.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/pycacert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/ssl_cert.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/ssl_key.pem")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_base_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_buffered_proto.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_context.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_futures.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_locks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_pep492.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_proactor_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_queues.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_runners.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_selector_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_server.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_sslproto.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_streams.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_subprocess.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_tasks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_transports.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_unix_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_windows_events.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/test_windows_utils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_asyncio" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncio/utils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_asyncore.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_atexit.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_audioop.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_augassign.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_base64.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_baseexception.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bdb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bigaddrspace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bigmem.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_binascii.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_binhex.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_binop.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bisect.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bool.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_buffer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bufio.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_builtin.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bytes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_bz2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_c_locale_coercion.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_calendar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_call.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_capi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_cgi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_cgitb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_charmapcodec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_class.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_clinic.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_cmath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_cmd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_cmd_line.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_cmd_line_script.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_code.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_code_module.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codeccallbacks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecencodings_cn.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecencodings_hk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecencodings_iso2022.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecencodings_jp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecencodings_kr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecencodings_tw.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecmaps_cn.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecmaps_hk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecmaps_jp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecmaps_kr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecmaps_tw.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codecs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_codeop.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_collections.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_colorsys.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_compare.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_compile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_compileall.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_complex.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_concurrent_futures.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_configparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_contains.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_context.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_contextlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_contextlib_async.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_copy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_copyreg.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_coroutines.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_cprofile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_crashers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_crypt.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_csv.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ctypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_curses.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dataclasses.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_datetime.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dbm.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dbm_dumb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dbm_gnu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dbm_ndbm.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_decimal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_decorators.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_defaultdict.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_deque.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_descr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_descrtut.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_devpoll.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dict.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dict_version.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dictcomps.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dictviews.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_difflib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_difflib_expect.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dis.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_distutils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_doctest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_doctest.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_doctest2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_doctest2.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_doctest3.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_doctest4.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_docxmlrpc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dtrace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dummy_thread.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dummy_threading.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dynamic.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_dynamicclassattribute.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_eintr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/PyBanner048.gif")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/audiotest.au")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_01.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_02.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_03.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_04.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_05.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_06.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_07.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_08.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_09.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_10.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_11.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_12.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_12a.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_13.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_14.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_15.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_16.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_17.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_18.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_19.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_20.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_21.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_22.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_23.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_24.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_25.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_26.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_27.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_28.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_29.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_30.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_31.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_32.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_33.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_34.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_35.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_36.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_37.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_38.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_39.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_40.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_41.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_42.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_43.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_44.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_45.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/data/msg_46.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test__encoded_words.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test__header_value_parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_asian_codecs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_contentmanager.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_defect_handling.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_email.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_generator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_headerregistry.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_inversion.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_message.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_pickleable.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_policy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/test_utils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_email" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_email/torture_test.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_embed.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ensurepip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_enum.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_enumerate.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_eof.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_epoll.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_errno.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_exception_hierarchy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_exception_variations.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_exceptions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_extcall.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_faulthandler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_fcntl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_file.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_file_eintr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_filecmp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_fileinput.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_fileio.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_finalization.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_float.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_flufl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_fnmatch.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_fork1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_format.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_fractions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_frame.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_frozen.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_fstring.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ftplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_funcattrs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_functools.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_future.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_future3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_future4.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_future5.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_gc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_gdb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_generator_stop.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_generators.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_genericclass.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_genericpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_genexps.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_getargs2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_getopt.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_getpass.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_gettext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_glob.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_global.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_grammar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_grp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_gzip.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_hash.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_hashlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_heapq.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_hmac.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_html.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_htmlparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_http_cookiejar.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_http_cookies.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_httplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_httpservers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_idle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_imaplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_imghdr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_imp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/basic.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/basic2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/binding.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/binding2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/indirect.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/rebinding.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/rebinding2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/subpackage.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports/subpkg" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/subpkg/subpackage2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports/subpkg" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/subpkg/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/circular_imports" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/circular_imports/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/package" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/package/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/package" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/package/submodule.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/package2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/package2/submodule1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_import/data/package2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_import/data/package2/submodule2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/builtin" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/builtin/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/builtin" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/builtin/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/builtin" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/builtin/test_finder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/builtin" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/builtin/test_loader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data01" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data01/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data01" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data01/binary.file")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data01/subdirectory" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data01/subdirectory/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data01/subdirectory" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data01/subdirectory/binary.file")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data01" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data01/utf-16.file")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data01" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data01/utf-8.file")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data02" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data02/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data02/one" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data02/one/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data02/one" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data02/one/resource1.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data02/two" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data02/two/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data02/two" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data02/two/resource2.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data03" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data03/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data03/namespace/portion1" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data03/namespace/portion1/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data03/namespace/portion2" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data03/namespace/portion2/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/data03/namespace" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/data03/namespace/resource1.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/extension" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/extension/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/extension" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/extension/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/extension" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/extension/test_case_sensitivity.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/extension" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/extension/test_finder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/extension" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/extension/test_loader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/extension" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/extension/test_path_hook.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/frozen" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/frozen/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/frozen" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/frozen/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/frozen" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/frozen/test_finder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/frozen" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/frozen/test_loader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test___loader__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test___package__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test_api.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test_caching.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test_fromlist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test_meta_path.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test_packages.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test_path.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/import_" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/import_/test_relative_imports.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/both_portions/foo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/both_portions/foo/one.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/both_portions/foo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/both_portions/foo/two.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/missing_directory.zip")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/module_and_namespace_package" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/module_and_namespace_package/a_test.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/module_and_namespace_package/a_test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/module_and_namespace_package/a_test/empty")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/nested_portion1.zip")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/not_a_namespace_pkg/foo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/not_a_namespace_pkg/foo/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/not_a_namespace_pkg/foo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/not_a_namespace_pkg/foo/one.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/portion1/foo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/portion1/foo/one.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/portion2/foo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/portion2/foo/two.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/project1/parent/child" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/project1/parent/child/one.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/project2/parent/child" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/project2/parent/child/two.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs/project3/parent/child" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/project3/parent/child/three.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/namespace_pkgs" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/namespace_pkgs/top_level_portion1.zip")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/source" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/source/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/source" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/source/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/source" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/source/test_case_sensitivity.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/source" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/source/test_file_loader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/source" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/source/test_finder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/source" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/source/test_path_hook.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/source" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/source/test_source_encoding.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_abc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_api.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_lazy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_locks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_namespace_pkgs.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_open.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_path.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_read.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_resource.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_spec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/test_windows.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/zipdata01" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/zipdata01/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/zipdata01" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/zipdata01/ziptestdata.zip")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/zipdata02" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/zipdata02/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_importlib/zipdata02" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_importlib/zipdata02/ziptestdata.zip")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_index.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_inspect.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_int.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_int_literal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_io.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ioctl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ipaddress.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_isinstance.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_iter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_iterlen.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_itertools.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_decode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_default.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_dump.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_encode_basestring_ascii.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_enum.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_fail.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_float.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_indent.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_pass1.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_pass2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_pass3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_recursion.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_scanstring.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_separators.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_speedups.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_tool.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_json" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_json/test_unicode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_keyword.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_keywordonlyarg.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_kqueue.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_largefile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_lib2to3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_linecache.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_list.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_listcomps.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_locale.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_logging.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_long.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_longexp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_lzma.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_macpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_mailbox.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_mailcap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_marshal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_math.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_memoryio.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_memoryview.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_metaclass.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_mimetypes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_minidom.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_mmap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_module.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_modulefinder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_msilib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_multibytecodec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_multiprocessing_fork.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_multiprocessing_forkserver.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_multiprocessing_main_handling.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_multiprocessing_spawn.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_netrc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_nis.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_nntplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_normalization.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ntpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_numeric_tower.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_opcodes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_openpty.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_operator.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_optparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ordered_dict.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_os.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ossaudiodev.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_osx_env.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_parser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pathlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pdb.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_peepholer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pickle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pickletools.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pipes.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pkg.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pkgimport.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pkgutil.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_platform.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_plistlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_poll.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_popen.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_poplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_posix.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_posixpath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pow.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pprint.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_print.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_profile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_property.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pstats.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pty.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pulldom.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pwd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_py_compile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pyclbr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pydoc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_pyexpat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_queue.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_quopri.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_raise.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_random.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_range.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_re.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_readline.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_regrtest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_repl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_reprlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_resource.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_richcmp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_rlcompleter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_robotparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_runpy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sax.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sched.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_scope.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_script_helper.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_secrets.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_select.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_selectors.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_set.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_setcomps.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_shelve.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_shlex.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_shutil.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_signal.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_site.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_slice.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_smtpd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_smtplib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_smtpnet.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sndhdr.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_socket.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_socketserver.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sort.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_source_encoding.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_spwd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sqlite.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ssl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_startfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_stat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_statistics.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_strftime.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_string.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_string_literals.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_stringprep.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_strptime.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_strtod.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_struct.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_structmembers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_structseq.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_subclassinit.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_subprocess.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sunau.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sundry.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_super.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_symbol.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_symtable.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_syntax.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sys.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sys_setprofile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sys_settrace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_sysconfig.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_syslog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tarfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tcl.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_telnetlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tempfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_textwrap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_thread.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_threaded_import.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_threadedtempfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_threading.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_threading_local.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_threadsignals.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_time.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_timeit.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_timeout.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tix.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tokenize.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_fixcid.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_gprof2html.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_i18n.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_md5sum.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_pdeps.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_pindent.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_reindent.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_sundry.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_tools" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tools/test_unparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_trace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_traceback.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tracemalloc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ttk_guionly.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ttk_textonly.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_tuple.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_turtle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_typechecks.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_types.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_typing.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_ucn.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unary.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unicode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unicode_file.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unicode_file_functions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unicode_identifiers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unicodedata.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unittest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_univnewlines.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unpack.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_unpack_ex.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_urllib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_urllib2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_urllib2_localnet.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_urllib2net.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_urllib_response.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_urllibnet.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_urlparse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_userdict.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_userlist.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_userstring.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_utf8_mode.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_utf8source.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_uu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_uuid.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_venv.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_wait3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_wait4.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_warnings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_warnings/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_warnings" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_warnings/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_warnings/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_warnings/data/import_warning.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/test_warnings/data" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_warnings/data/stacklevel.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_wave.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_weakref.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_weakset.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_webbrowser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_winconsoleio.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_winreg.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_winsound.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_with.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_wsgiref.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_xdrlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_xml_dom_minicompat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_xml_etree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_xml_etree_c.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_xmlrpc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_xmlrpc_net.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_xxtestfuzz.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_yield_from.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_zipapp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_zipfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_zipfile64.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_zipimport.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_zipimport_support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/test_zlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/testcodec.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/testtar.tar")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tf_inherit_check.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/threaded_import_hangers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/time_hashlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tokenize_tests-latin1-coding-cookie-and-utf8-bom-sig.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tokenize_tests-no-coding-cookie-and-utf8-bom-sig-only.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tokenize_tests-utf8-coding-cookie-and-no-utf8-bom-sig.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tokenize_tests-utf8-coding-cookie-and-utf8-bom-sig.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tokenize_tests.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/tracedmodules" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tracedmodules/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/tracedmodules" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/tracedmodules/testmod.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/win_console_handler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/xmltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/xmltestdata/expat224_utf8_bug.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/xmltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/xmltestdata/simple-ns.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/xmltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/xmltestdata/simple.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/xmltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/xmltestdata/test.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test/xmltestdata" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/xmltestdata/test.xml.out")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/xmltests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/zip_cp437_header.zip")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/test/zipdir.zip")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/textwrap.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/this.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/threading.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/timeit.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/colorchooser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/commondialog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/constants.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/dialog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/dnd.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/filedialog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/font.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/messagebox.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/scrolledtext.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/simpledialog.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/runtktests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_font.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_geometry_managers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_images.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_loadtk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_misc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_text.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_variables.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_tkinter/test_widgets.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_ttk" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_ttk/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_ttk" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_ttk/test_extensions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_ttk" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_ttk/test_functions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_ttk" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_ttk/test_style.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test/test_ttk" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/test_ttk/test_widgets.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/test/widget_tests.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/tix.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/tkinter" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tkinter/ttk.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/token.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tokenize.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/trace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/traceback.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tracemalloc.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/tty.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtle.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/bytedesign.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/chaos.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/clock.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/colormixer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/forest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/fractalcurves.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/lindenmayer.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/minimal_hanoi.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/nim.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/paint.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/peace.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/penrose.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/planet_and_moon.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/rosette.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/round_dance.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/sorting_animate.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/tree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/turtle.cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/two_canvases.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/turtledemo" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/turtledemo/yinyang.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/types.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/typing.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/case.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/loader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/main.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/mock.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/result.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/runner.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/signals.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/suite.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/_test_warnings.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/dummy.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_assertions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_break.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_case.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_discovery.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_functiontestcase.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_loader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_program.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_result.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_runner.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_setups.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_skipping.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/test_suite.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/support.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testcallable.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testhelpers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testmagicmethods.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testmock.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testpatch.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testsealable.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testsentinel.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest/test/testmock" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/test/testmock/testwith.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/unittest" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/unittest/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/urllib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/urllib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/urllib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/urllib/error.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/urllib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/urllib/parse.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/urllib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/urllib/request.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/urllib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/urllib/response.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/urllib" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/urllib/robotparser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/uu.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/uuid.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/__main__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv/scripts/common" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/scripts/common/activate")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv/scripts/nt" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/scripts/nt/Activate.ps1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv/scripts/nt" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/scripts/nt/activate.bat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv/scripts/nt" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/scripts/nt/deactivate.bat")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv/scripts/posix" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/scripts/posix/activate.csh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/venv/scripts/posix" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/venv/scripts/posix/activate.fish")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/warnings.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/wave.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/weakref.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/webbrowser.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/wsgiref" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/wsgiref/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/wsgiref" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/wsgiref/handlers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/wsgiref" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/wsgiref/headers.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/wsgiref" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/wsgiref/simple_server.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/wsgiref" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/wsgiref/util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/wsgiref" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/wsgiref/validate.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xdrlib.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/NodeFilter.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/domreg.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/expatbuilder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/minicompat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/minidom.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/pulldom.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/dom" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/dom/xmlbuilder.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/etree" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/etree/ElementInclude.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/etree" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/etree/ElementPath.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/etree" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/etree/ElementTree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/etree" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/etree/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/etree/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/etree/__pycache__/ElementPath.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/etree/__pycache__" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/etree/__pycache__/__init__.cpython-37.pyc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/etree" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/etree/cElementTree.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/parsers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/parsers/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/parsers" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/parsers/expat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/sax" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/sax/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/sax" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/sax/_exceptions.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/sax" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/sax/expatreader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/sax" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/sax/handler.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/sax" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/sax/saxutils.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xml/sax" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xml/sax/xmlreader.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xmlrpc" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xmlrpc/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xmlrpc" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xmlrpc/client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7/xmlrpc" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/xmlrpc/server.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/zipapp.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.7" TYPE FILE FILES "/Users/spinlock/src/wrmsr/cpython/Lib/zipfile.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  find_program(
  PYTHON_EXECUTABLE python
  HINTS $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin
  NO_DEFAULT_PATH)
execute_process(COMMAND ${PYTHON_EXECUTABLE} -m lib2to3.pgen2.driver
  $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/Grammar.txt)
execute_process(COMMAND ${PYTHON_EXECUTABLE} -m lib2to3.pgen2.driver
  $ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3.7/lib2to3/PatternGrammar.txt)

endif()

