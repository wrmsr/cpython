add_library(extension_testcapi SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_testcapimodule.c)
include_directories()

target_link_libraries(extension_testcapi )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_testcapi
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
