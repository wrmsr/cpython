add_library(extension_itertools SHARED /Users/spinlock/src/wrmsr/cpython/Modules/itertoolsmodule.c)
include_directories()

target_link_libraries(extension_itertools )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_itertools
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
