add_library(extension_mmap SHARED /Users/spinlock/src/wrmsr/cpython/Modules/mmapmodule.c)
include_directories()

target_link_libraries(extension_mmap )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_mmap
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
