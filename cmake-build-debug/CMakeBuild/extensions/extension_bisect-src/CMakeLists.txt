add_library(extension_bisect SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_bisectmodule.c)
include_directories()

target_link_libraries(extension_bisect )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_bisect
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
