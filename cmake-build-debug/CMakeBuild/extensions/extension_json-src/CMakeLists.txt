add_library(extension_json SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_json.c)
include_directories()

target_link_libraries(extension_json )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_json
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
