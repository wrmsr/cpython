add_library(extension_functools SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_functoolsmodule.c)
include_directories()

target_link_libraries(extension_functools )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_functools
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
