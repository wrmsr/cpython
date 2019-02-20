add_library(extension_zlib SHARED /Users/spinlock/src/wrmsr/cpython/Modules/zlibmodule.c)
include_directories(/usr/include)

target_link_libraries(extension_zlib /usr/lib/libz.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_zlib
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
