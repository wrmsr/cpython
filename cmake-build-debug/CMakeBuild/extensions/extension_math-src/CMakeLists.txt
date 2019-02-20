add_library(extension_math SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_math.c;/Users/spinlock/src/wrmsr/cpython/Modules/mathmodule.c)
include_directories()

target_link_libraries(extension_math )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_math
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
