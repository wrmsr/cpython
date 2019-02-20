add_library(extension_fcntl SHARED /Users/spinlock/src/wrmsr/cpython/Modules/fcntlmodule.c)
include_directories()

target_link_libraries(extension_fcntl )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_fcntl
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
