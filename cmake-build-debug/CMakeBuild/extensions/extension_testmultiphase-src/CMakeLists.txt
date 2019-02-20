add_library(extension_testmultiphase SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_testmultiphase.c)
include_directories()

target_link_libraries(extension_testmultiphase )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_testmultiphase
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
