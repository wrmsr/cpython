add_library(extension_curses_panel SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_curses_panel.c)
include_directories()

target_link_libraries(extension_curses_panel /usr/lib/libcurses.dylib;/usr/lib/libform.dylib;/usr/lib/libpanel.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_curses_panel
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
