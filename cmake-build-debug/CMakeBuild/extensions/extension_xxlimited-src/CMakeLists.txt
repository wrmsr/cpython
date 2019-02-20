add_library(extension_xxlimited SHARED /Users/spinlock/src/wrmsr/cpython/Modules/xxlimited.c)
include_directories()

target_link_libraries(extension_xxlimited )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_xxlimited
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
