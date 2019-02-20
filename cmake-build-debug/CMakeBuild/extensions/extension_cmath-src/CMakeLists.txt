add_library(extension_cmath SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_math.c;/Users/spinlock/src/wrmsr/cpython/Modules/cmathmodule.c)
include_directories()

target_link_libraries(extension_cmath )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_cmath
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
