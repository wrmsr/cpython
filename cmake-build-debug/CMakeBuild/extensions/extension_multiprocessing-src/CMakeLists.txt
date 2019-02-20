add_library(extension_multiprocessing SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_multiprocessing/multiprocessing.c;/Users/spinlock/src/wrmsr/cpython/Modules/_multiprocessing/semaphore.c)
include_directories()

target_link_libraries(extension_multiprocessing )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_multiprocessing
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
