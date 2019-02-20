add_library(extension_testbuffer SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_testbuffer.c)
include_directories()

target_link_libraries(extension_testbuffer )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_testbuffer
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
