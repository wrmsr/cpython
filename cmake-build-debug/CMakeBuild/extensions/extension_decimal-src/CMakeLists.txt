add_library(extension_decimal SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_decimal/_decimal.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/docstrings.h;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/basearith.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/constants.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/context.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/convolute.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/crt.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/difradix2.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/fnt.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/fourstep.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/io.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/memory.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/mpdecimal.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/numbertheory.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/sixstep.c;/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec/transpose.c)
include_directories(/Users/spinlock/src/wrmsr/cpython/Modules/_decimal/libmpdec)

target_link_libraries(extension_decimal )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_decimal
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
