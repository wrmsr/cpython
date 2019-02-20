add_library(extension_sqlite3 SHARED /Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/cache.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/connection.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/cursor.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/microprotocols.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/module.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/prepare_protocol.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/row.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/statement.c;/Users/spinlock/src/wrmsr/cpython/Modules/_sqlite/util.c)
include_directories(/usr/include)

target_link_libraries(extension_sqlite3 /usr/lib/libsqlite3.dylib)

if(NOT ADD_PYTHON_EXTENSION_NO_INSTALL)
  install(TARGETS extension_sqlite3
          ARCHIVE DESTINATION libs
          LIBRARY DESTINATION lib/python3.7/lib-dynload
          RUNTIME DESTINATION lib/python3.7/lib-dynload)
endif()
