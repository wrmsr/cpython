add_library(extension_select SHARED /Users/spinlock/src/wrmsr/cpython/Modules/selectmodule.c)
include_directories()

target_link_libraries(extension_select )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_select
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
