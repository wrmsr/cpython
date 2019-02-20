add_library(extension_codecs_jp SHARED /Users/spinlock/src/wrmsr/cpython/Modules/cjkcodecs/_codecs_jp.c)
include_directories()

target_link_libraries(extension_codecs_jp )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_codecs_jp
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
