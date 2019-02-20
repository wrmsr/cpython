add_library(extension_grp SHARED /Users/spinlock/src/wrmsr/cpython/Modules/grpmodule.c)
include_directories()

target_link_libraries(extension_grp )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_grp
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
