add_library(extension_syslog SHARED /Users/spinlock/src/wrmsr/cpython/Modules/syslogmodule.c)
include_directories()

target_link_libraries(extension_syslog )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_syslog
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
