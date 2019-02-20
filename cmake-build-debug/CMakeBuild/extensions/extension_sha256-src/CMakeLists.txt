add_library(extension_sha256 SHARED /Users/spinlock/src/wrmsr/cpython/Modules/sha256module.c)
include_directories()

target_link_libraries(extension_sha256 )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_sha256
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
