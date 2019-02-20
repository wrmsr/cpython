add_library(extension_codecs_kr SHARED /Users/spinlock/src/wrmsr/cpython/Modules/cjkcodecs/_codecs_kr.c)
include_directories()

target_link_libraries(extension_codecs_kr )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_codecs_kr
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
