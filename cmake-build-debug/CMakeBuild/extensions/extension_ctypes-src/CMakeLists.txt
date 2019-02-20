add_library(extension_ctypes SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/_ctypes.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/callbacks.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/callproc.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/stgdict.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/cfield.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/malloc_closure.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/darwin/dlfcn_simple.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/libffi_osx/ffi.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/libffi_osx/x86/darwin64.S;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/libffi_osx/x86/x86-darwin.S;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi_darwin.c;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/libffi_osx/x86/x86-ffi64.c)
include_directories(/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/libffi_osx/include;/Users/spinlock/src/wrmsr/cpython/Modules/_ctypes/darwin)

target_link_libraries(extension_ctypes )

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_ctypes
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
