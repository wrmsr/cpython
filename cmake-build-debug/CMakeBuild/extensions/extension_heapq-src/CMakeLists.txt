add_library(extension_heapq SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_heapqmodule.c)
include_directories()

target_link_libraries(extension_heapq )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_heapq
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
