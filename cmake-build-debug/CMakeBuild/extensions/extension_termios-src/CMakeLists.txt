add_library(extension_termios SHARED /Users/spinlock/src/wrmsr/cpython/Modules/termios.c)
include_directories()

target_link_libraries(extension_termios )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_termios
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
