add_library(extension_elementtree SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_elementtree.c)
include_directories(/usr/include)

target_link_libraries(extension_elementtree /usr/lib/libexpat.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_elementtree
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
