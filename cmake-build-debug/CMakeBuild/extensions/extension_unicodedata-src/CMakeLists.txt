add_library(extension_unicodedata SHARED /Users/spinlock/src/wrmsr/cpython/Modules/unicodedata.c)
include_directories()

target_link_libraries(extension_unicodedata )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_unicodedata
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
