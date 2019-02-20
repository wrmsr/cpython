add_library(extension_readline SHARED /Users/spinlock/src/wrmsr/cpython/Modules/readline.c)
include_directories(/usr/include)

target_link_libraries(extension_readline /usr/lib/libreadline.dylib;/usr/lib/libcurses.dylib;/usr/lib/libform.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_readline
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
