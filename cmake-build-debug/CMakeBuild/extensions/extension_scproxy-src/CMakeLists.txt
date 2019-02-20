add_library(extension_scproxy SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_scproxy.c)
include_directories()

target_link_libraries(extension_scproxy /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/SystemConfiguration.framework)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_scproxy
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
