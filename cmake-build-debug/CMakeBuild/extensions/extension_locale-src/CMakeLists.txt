add_library(extension_locale SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_localemodule.c)
include_directories()

target_link_libraries(extension_locale )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_locale
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
