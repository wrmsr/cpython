add_library(extension_bz2 SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_bz2module.c)
include_directories(/usr/include)

target_link_libraries(extension_bz2 /usr/lib/libbz2.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_bz2
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
