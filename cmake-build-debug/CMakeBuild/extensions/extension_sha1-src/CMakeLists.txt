add_library(extension_sha1 SHARED /Users/spinlock/src/wrmsr/cpython/Modules/sha1module.c)
include_directories()

target_link_libraries(extension_sha1 )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_sha1
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
