add_library(extension_codecs_tw SHARED /Users/spinlock/src/wrmsr/cpython/Modules/cjkcodecs/_codecs_tw.c)
include_directories()

target_link_libraries(extension_codecs_tw )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_codecs_tw
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
