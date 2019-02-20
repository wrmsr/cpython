add_library(extension_codecs_iso2022 SHARED /Users/spinlock/src/wrmsr/cpython/Modules/cjkcodecs/_codecs_iso2022.c)
include_directories()

target_link_libraries(extension_codecs_iso2022 )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_codecs_iso2022
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
