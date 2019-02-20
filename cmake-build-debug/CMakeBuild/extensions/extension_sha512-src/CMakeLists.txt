add_library(extension_sha512 SHARED /Users/spinlock/src/wrmsr/cpython/Modules/sha512module.c)
include_directories()

target_link_libraries(extension_sha512 )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_sha512
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
