add_library(extension_curses SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_cursesmodule.c)
include_directories()

target_link_libraries(extension_curses /usr/lib/libcurses.dylib;/usr/lib/libform.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_curses
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
