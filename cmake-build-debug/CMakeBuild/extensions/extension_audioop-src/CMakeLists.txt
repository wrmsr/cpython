add_library(extension_audioop SHARED /Users/spinlock/src/wrmsr/cpython/Modules/audioop.c)
include_directories()

target_link_libraries(extension_audioop )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_audioop
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
