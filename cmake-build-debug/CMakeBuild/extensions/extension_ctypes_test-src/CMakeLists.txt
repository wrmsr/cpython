add_library(extension_ctypes_test SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/_ctypes_test.c)
include_directories()

target_link_libraries(extension_ctypes_test )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_ctypes_test
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
