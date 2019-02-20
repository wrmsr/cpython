add_library(extension_array SHARED /Users/spinlock/src/wrmsr/cpython/Modules/arraymodule.c)
include_directories()

target_link_libraries(extension_array )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_array
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
