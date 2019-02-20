add_library(extension_binascii SHARED /Users/spinlock/src/wrmsr/cpython/Modules/binascii.c)
include_directories(/usr/include)

target_link_libraries(extension_binascii /usr/lib/libz.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_binascii
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
