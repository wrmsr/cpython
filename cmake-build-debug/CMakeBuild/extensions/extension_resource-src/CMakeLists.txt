add_library(extension_resource SHARED /Users/spinlock/src/wrmsr/cpython/Modules/resource.c)
include_directories()

target_link_libraries(extension_resource )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_resource
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
