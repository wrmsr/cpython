add_library(extension_random SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_randommodule.c)
include_directories()

target_link_libraries(extension_random )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_random
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
