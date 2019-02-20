add_library(extension_csv SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_csv.c)
include_directories()

target_link_libraries(extension_csv )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_csv
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
