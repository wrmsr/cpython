add_library(extension_struct SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_struct.c)
include_directories()

target_link_libraries(extension_struct )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_struct
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
