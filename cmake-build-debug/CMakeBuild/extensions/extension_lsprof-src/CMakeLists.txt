add_library(extension_lsprof SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_lsprof.c;/Users/spinlock/src/wrmsr/cpython/Modules/rotatingtree.c)
include_directories()

target_link_libraries(extension_lsprof )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_lsprof
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
