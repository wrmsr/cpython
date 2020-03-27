cmake_minimum_required(VERSION 3.1...3.16)

project(cpython VERSION 3.8.2 LANGUAGES C)

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR})


### Common

set(CPYTHON_CFLAGS
        -Wno-unused-result
        -Wsign-compare
        -g
        -O0
        -Wall
        -std=c99
        -Wextra
        -Wno-unused-result
        -Wno-unused-parameter
        -Wno-missing-field-initializers
        -Wstrict-prototypes
        -Werror=implicit-function-declaration
        )

set(CPYTHON_CORE_INCLUDE
        Include/internal
        .
        Include
        )

set(CPYTHON_MODULE_LDFLAGS
        -bundle
        -undefined dynamic_lookup
        -L/usr/local/lib
        )

set(CPYTHON_MODULE_INCLUDE
        Include/internal
        Include
        .
        /usr/local/include
        )


### _programs

add_library(_programs STATIC
        Programs/python.c
        )

target_include_directories(_programs PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        )

target_compile_options(_programs PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )


### _parser

add_library(_parser STATIC
        Parser/acceler.c
        Parser/grammar1.c
        Parser/listnode.c
        Parser/myreadline.c
        Parser/node.c
        Parser/parser.c
        Parser/parsetok.c
        Parser/token.c
        Parser/tokenizer.c
        )

target_include_directories(_parser PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        )

target_compile_options(_parser PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )


### _objects

add_library(_objects STATIC
        Objects/abstract.c
        Objects/accu.c
        Objects/boolobject.c
        Objects/bytearrayobject.c
        Objects/bytes_methods.c
        Objects/bytesobject.c
        Objects/call.c
        Objects/capsule.c
        Objects/cellobject.c
        Objects/classobject.c
        Objects/codeobject.c
        Objects/complexobject.c
        Objects/descrobject.c
        Objects/dictobject.c
        Objects/enumobject.c
        Objects/exceptions.c
        Objects/fileobject.c
        Objects/floatobject.c
        Objects/frameobject.c
        Objects/funcobject.c
        Objects/genobject.c
        Objects/interpreteridobject.c
        Objects/iterobject.c
        Objects/listobject.c
        Objects/longobject.c
        Objects/memoryobject.c
        Objects/methodobject.c
        Objects/moduleobject.c
        Objects/namespaceobject.c
        Objects/object.c
        Objects/obmalloc.c
        Objects/odictobject.c
        Objects/picklebufobject.c
        Objects/rangeobject.c
        Objects/setobject.c
        Objects/sliceobject.c
        Objects/structseq.c
        Objects/tupleobject.c
        Objects/typeobject.c
        Objects/unicodectype.c
        Objects/unicodeobject.c
        Objects/weakrefobject.c
        )

target_include_directories(_objects PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        )

target_compile_options(_objects PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )


### _python

add_library(_python STATIC
        Python/_warnings.c
        Python/asdl.c
        Python/ast.c
        Python/ast_opt.c
        Python/ast_unparse.c
        Python/bltinmodule.c
        Python/bootstrap_hash.c
        Python/ceval.c
        Python/codecs.c
        Python/compile.c
        Python/context.c
        Python/dtoa.c
        Python/dynamic_annotations.c
        Python/dynload_shlib.c
        Python/errors.c
        Python/fileutils.c
        Python/formatter_unicode.c
        Python/frozenmain.c
        Python/future.c
        Python/getargs.c
        Python/getcompiler.c
        Python/getcopyright.c
        Python/getopt.c
        Python/getplatform.c
        Python/getversion.c
        Python/graminit.c
        Python/hamt.c
        Python/import.c
        Python/importdl.c
        Python/initconfig.c
        Python/marshal.c
        Python/modsupport.c
        Python/mysnprintf.c
        Python/mystrtoul.c
        Python/pathconfig.c
        Python/peephole.c
        Python/preconfig.c
        Python/pyarena.c
        Python/pyctype.c
        Python/pyfpe.c
        Python/pyhash.c
        Python/pylifecycle.c
        Python/pymath.c
        Python/pystate.c
        Python/pystrcmp.c
        Python/pystrhex.c
        Python/pystrtod.c
        Python/Python-ast.c
        Python/pythonrun.c
        Python/pytime.c
        Python/structmember.c
        Python/symtable.c
        Python/sysmodule.c
        Python/thread.c
        Python/traceback.c
        )

target_include_directories(_python PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        )

target_compile_options(_python PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )

set_source_files_properties(Python/dtoa.c PROPERTIES COMPILE_FLAGS
        "-fno-strict-aliasing"
        )

set_source_files_properties(Python/dynload_shlib.c PROPERTIES COMPILE_FLAGS
        "-DSOABI='\"cpython-38d-darwin\"'"
        )

set_source_files_properties(Python/getplatform.c PROPERTIES COMPILE_FLAGS
        "-DPLATFORM='\"darwin\"'"
        )

set_source_files_properties(Python/sysmodule.c PROPERTIES COMPILE_FLAGS
        "-DABIFLAGS='\"d\"' -DMULTIARCH='\"darwin\"'"
        )


### _modules

add_library(_modules STATIC
        Modules/config.c
        Modules/gcmodule.c
        Modules/getpath.c
        Modules/main.c
        )

target_include_directories(_modules PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        )

target_compile_options(_modules PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )

set_source_files_properties(Modules/getpath.c PROPERTIES COMPILE_FLAGS
        "-DPYTHONPATH='\"\"' -DPREFIX='\"/usr/local\"' -DEXEC_PREFIX='\"/usr/local\"' -DVERSION='\"3.8\"' -DVPATH='\"\"'"
        )


### _builtin_modules

add_library(_builtin_modules STATIC
        Modules/_abc.c
        Modules/_codecsmodule.c
        Modules/_collectionsmodule.c
        Modules/_functoolsmodule.c
        Modules/_localemodule.c
        Modules/_operator.c
        Modules/_sre.c
        Modules/_stat.c
        Modules/_threadmodule.c
        Modules/_tracemalloc.c
        Modules/_weakref.c
        Modules/atexitmodule.c
        Modules/errnomodule.c
        Modules/faulthandler.c
        Modules/hashtable.c
        Modules/itertoolsmodule.c
        Modules/posixmodule.c
        Modules/pwdmodule.c
        Modules/signalmodule.c
        Modules/symtablemodule.c
        Modules/timemodule.c
        Modules/xxsubtype.c
        )

target_include_directories(_builtin_modules PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        )

target_compile_options(_builtin_modules PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE_BUILTIN
        )


### _io_module

add_library(_io_module STATIC
        Modules/_io/_iomodule.c
        Modules/_io/bufferedio.c
        Modules/_io/bytesio.c
        Modules/_io/fileio.c
        Modules/_io/iobase.c
        Modules/_io/stringio.c
        Modules/_io/textio.c
        )

target_include_directories(_io_module PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        Modules/_io
        )

target_compile_options(_io_module PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE_BUILTIN
        )


### python.exe

add_executable(python.exe
        Modules/_math.c
        Modules/getbuildinfo.c
        Python/frozen.c
        )

target_include_directories(python.exe PRIVATE
        ${CPYTHON_CORE_INCLUDE}
        )

target_compile_options(python.exe PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )

target_link_options(python.exe PRIVATE
        -Wl,-stack_size,1000000
        -framework CoreFoundation
        -ldl
        -framework CoreFoundation
        )

set_source_files_properties(Modules/getbuildinfo.c PROPERTIES COMPILE_FLAGS
        "-DGITVERSION='\"fa7e2a5240\"' -DGITTAG='\"heads/freethreading3\"' -DGITBRANCH='\"freethreading3\"'"
        )

target_link_libraries(python.exe PRIVATE
        _programs
        _parser
        _objects
        _python
        _modules
        _builtin_modules
        _io_module
        )


### _struct

add_library(_struct MODULE
        Modules/_struct.c
        )

target_include_directories(_struct PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_struct PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_struct PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### array

add_library(array MODULE
        Modules/arraymodule.c
        )

target_include_directories(array PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(array PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(array PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _contextvars

add_library(_contextvars MODULE
        Modules/_contextvarsmodule.c
        )

target_include_directories(_contextvars PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_contextvars PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_contextvars PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### math

add_library(math MODULE
        Modules/mathmodule.c
        )

target_include_directories(math PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(math PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(math PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lm
        )


### cmath

add_library(cmath MODULE
        Modules/cmathmodule.c
        )

target_include_directories(cmath PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(cmath PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(cmath PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lm
        )


### _datetime

add_library(_datetime MODULE
        Modules/_datetimemodule.c
        )

target_include_directories(_datetime PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_datetime PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_datetime PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lm
        )


### _random

add_library(_random MODULE
        Modules/_randommodule.c
        )

target_include_directories(_random PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_random PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_random PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _bisect

add_library(_bisect MODULE
        Modules/_bisectmodule.c
        )

target_include_directories(_bisect PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_bisect PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_bisect PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _heapq

add_library(_heapq MODULE
        Modules/_heapqmodule.c
        )

target_include_directories(_heapq PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_heapq PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_heapq PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _pickle

add_library(_pickle MODULE
        Modules/_pickle.c
        )

target_include_directories(_pickle PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_pickle PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE_MODULE
        )

target_link_options(_pickle PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _json

add_library(_json MODULE
        Modules/_json.c
        )

target_include_directories(_json PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_json PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE_MODULE
        )

target_link_options(_json PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _lsprof

add_library(_lsprof MODULE
        Modules/_lsprof.c
        Modules/rotatingtree.c
        )

target_include_directories(_lsprof PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_lsprof PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_lsprof PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### unicodedata

add_library(unicodedata MODULE
        Modules/unicodedata.c
        )

target_include_directories(unicodedata PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(unicodedata PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(unicodedata PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _opcode

add_library(_opcode MODULE
        Modules/_opcode.c
        )

target_include_directories(_opcode PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_opcode PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_opcode PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _queue

add_library(_queue MODULE
        Modules/_queuemodule.c
        )

target_include_directories(_queue PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_queue PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_queue PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _statistics

add_library(_statistics MODULE
        Modules/_statisticsmodule.c
        )

target_include_directories(_statistics PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_statistics PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_statistics PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### fcntl

add_library(fcntl MODULE
        Modules/fcntlmodule.c
        )

target_include_directories(fcntl PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(fcntl PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(fcntl PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### grp

add_library(grp MODULE
        Modules/grpmodule.c
        )

target_include_directories(grp PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(grp PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(grp PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### select

add_library(select MODULE
        Modules/selectmodule.c
        )

target_include_directories(select PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(select PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(select PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### parser

add_library(parser MODULE
        Modules/parsermodule.c
        )

target_include_directories(parser PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(parser PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(parser PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### mmap

add_library(mmap MODULE
        Modules/mmapmodule.c
        )

target_include_directories(mmap PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(mmap PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(mmap PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### syslog

add_library(syslog MODULE
        Modules/syslogmodule.c
        )

target_include_directories(syslog PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(syslog PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(syslog PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _xxsubinterpreters

add_library(_xxsubinterpreters MODULE
        Modules/_xxsubinterpretersmodule.c
        )

target_include_directories(_xxsubinterpreters PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_xxsubinterpreters PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_xxsubinterpreters PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### audioop

add_library(audioop MODULE
        Modules/audioop.c
        )

target_include_directories(audioop PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(audioop PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(audioop PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lm
        )


### _csv

add_library(_csv MODULE
        Modules/_csv.c
        )

target_include_directories(_csv PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_csv PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_csv PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _posixsubprocess

add_library(_posixsubprocess MODULE
        Modules/_posixsubprocess.c
        )

target_include_directories(_posixsubprocess PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_posixsubprocess PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_posixsubprocess PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _testcapi

add_library(_testcapi MODULE
        Modules/_testcapimodule.c
        )

target_include_directories(_testcapi PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_testcapi PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_testcapi PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _testinternalcapi

add_library(_testinternalcapi MODULE
        Modules/_testinternalcapi.c
        )

target_include_directories(_testinternalcapi PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_testinternalcapi PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE_MODULE
        )

target_link_options(_testinternalcapi PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _testbuffer

add_library(_testbuffer MODULE
        Modules/_testbuffer.c
        )

target_include_directories(_testbuffer PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_testbuffer PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_testbuffer PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _testimportmultiple

add_library(_testimportmultiple MODULE
        Modules/_testimportmultiple.c
        )

target_include_directories(_testimportmultiple PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_testimportmultiple PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_testimportmultiple PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _testmultiphase

add_library(_testmultiphase MODULE
        Modules/_testmultiphase.c
        )

target_include_directories(_testmultiphase PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_testmultiphase PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_testmultiphase PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _xxtestfuzz

add_library(_xxtestfuzz MODULE
        Modules/_xxtestfuzz/_xxtestfuzz.c
        Modules/_xxtestfuzz/fuzzer.c
        )

target_include_directories(_xxtestfuzz PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_xxtestfuzz PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_xxtestfuzz PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### readline

add_library(readline MODULE
        Modules/readline.c
        )

target_include_directories(readline PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(readline PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(readline PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -L/usr/lib/termcap
        -lreadline
        -lncurses
        )


### _curses

add_library(_curses MODULE
        Modules/_cursesmodule.c
        )

target_include_directories(_curses PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_curses PRIVATE
        ${CPYTHON_CFLAGS}
        -DHAVE_NCURSESW=1
        -D_XOPEN_SOURCE_EXTENDED=1
        )

target_link_options(_curses PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lncurses
        )


### _curses_panel

add_library(_curses_panel MODULE
        Modules/_curses_panel.c
        )

target_include_directories(_curses_panel PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_curses_panel PRIVATE
        ${CPYTHON_CFLAGS}
        -DHAVE_NCURSESW=1
        -D_XOPEN_SOURCE_EXTENDED=1
        )

target_link_options(_curses_panel PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lpanel
        -lncurses
        )


### _crypt

add_library(_crypt MODULE
        Modules/_cryptmodule.c
        )

target_include_directories(_crypt PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_crypt PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_crypt PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _ssl

add_library(_ssl MODULE
        Modules/_ssl.c
        )

target_include_directories(_ssl PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        /usr/local/opt/openssl@1.1/include
        )

target_compile_options(_ssl PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_ssl PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -L/usr/local/opt/openssl@1.1/lib
        -lssl
        -lcrypto
        )


### _hashlib

add_library(_hashlib MODULE
        Modules/_hashopenssl.c
        )

target_include_directories(_hashlib PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        /usr/local/opt/openssl@1.1/include
        )

target_compile_options(_hashlib PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_hashlib PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -L/usr/local/opt/openssl@1.1/lib
        -lssl
        -lcrypto
        )


### _sha256

add_library(_sha256 MODULE
        Modules/sha256module.c
        )

target_include_directories(_sha256 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_sha256 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_sha256 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _sha512

add_library(_sha512 MODULE
        Modules/sha512module.c
        )

target_include_directories(_sha512 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_sha512 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_sha512 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _md5

add_library(_md5 MODULE
        Modules/md5module.c
        )

target_include_directories(_md5 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_md5 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_md5 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _sha1

add_library(_sha1 MODULE
        Modules/sha1module.c
        )

target_include_directories(_sha1 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_sha1 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_sha1 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _blake2

add_library(_blake2 MODULE
        Modules/_blake2/blake2b_impl.c
        Modules/_blake2/blake2module.c
        Modules/_blake2/blake2s_impl.c
        )

target_include_directories(_blake2 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_blake2 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_blake2 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _sha3

add_library(_sha3 MODULE
        Modules/_sha3/sha3module.c
        )

target_include_directories(_sha3 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_sha3 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_sha3 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _dbm

add_library(_dbm MODULE
        Modules/_dbmmodule.c
        )

target_include_directories(_dbm PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_dbm PRIVATE
        ${CPYTHON_CFLAGS}
        -DHAVE_NDBM_H
        )

target_link_options(_dbm PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _gdbm

add_library(_gdbm MODULE
        Modules/_gdbmmodule.c
        )

target_include_directories(_gdbm PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_gdbm PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_gdbm PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lgdbm
        )


### _sqlite3

add_library(_sqlite3 MODULE
        Modules/_sqlite/cache.c
        Modules/_sqlite/connection.c
        Modules/_sqlite/cursor.c
        Modules/_sqlite/microprotocols.c
        Modules/_sqlite/module.c
        Modules/_sqlite/prepare_protocol.c
        Modules/_sqlite/row.c
        Modules/_sqlite/statement.c
        Modules/_sqlite/util.c
        )

target_include_directories(_sqlite3 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        Modules/_sqlite
        /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/include
        )

target_compile_options(_sqlite3 PRIVATE
        ${CPYTHON_CFLAGS}
        -DMODULE_NAME="sqlite3"
        -DSQLITE_OMIT_LOAD_EXTENSION=1
        )

target_link_options(_sqlite3 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/lib
        -lsqlite3
        -Wl,-search_paths_first
        )


### termios

add_library(termios MODULE
        Modules/termios.c
        )

target_include_directories(termios PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(termios PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(termios PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### resource

add_library(resource MODULE
        Modules/resource.c
        )

target_include_directories(resource PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(resource PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(resource PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _scproxy

add_library(_scproxy MODULE
        Modules/_scproxy.c
        )

target_include_directories(_scproxy PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_scproxy PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_scproxy PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        "SHELL:-framework SystemConfiguration"
        "SHELL:-framework CoreFoundation"
        )


### nis

add_library(nis MODULE
        Modules/nismodule.c
        )

target_include_directories(nis PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(nis PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(nis PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### zlib

add_library(zlib MODULE
        Modules/zlibmodule.c
        )

target_include_directories(zlib PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(zlib PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(zlib PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -Wl,-search_paths_first
        )


### binascii

add_library(binascii MODULE
        Modules/binascii.c
        )

target_include_directories(binascii PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(binascii PRIVATE
        ${CPYTHON_CFLAGS}
        -DUSE_ZLIB_CRC32
        )

target_link_options(binascii PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -Wl,-search_paths_first
        )


### _bz2

add_library(_bz2 MODULE
        Modules/_bz2module.c
        )

target_include_directories(_bz2 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_bz2 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_bz2 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lbz2
        -Wl,-search_paths_first
        )


### _lzma

add_library(_lzma MODULE
        Modules/_lzmamodule.c
        )

target_include_directories(_lzma PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_lzma PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_lzma PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -llzma
        )


### pyexpat

add_library(pyexpat MODULE
        Modules/expat/xmlparse.c
        Modules/expat/xmlrole.c
        Modules/expat/xmltok.c
        Modules/pyexpat.c
        )

target_include_directories(pyexpat PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        Modules/expat
        )

target_compile_options(pyexpat PRIVATE
        ${CPYTHON_CFLAGS}
        -DHAVE_EXPAT_CONFIG_H=1
        -DXML_POOR_ENTROPY=1
        -DUSE_PYEXPAT_CAPI
        -Wno-unreachable-code
        )

target_link_options(pyexpat PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _elementtree

add_library(_elementtree MODULE
        Modules/_elementtree.c
        )

target_include_directories(_elementtree PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        Modules/expat
        )

target_compile_options(_elementtree PRIVATE
        ${CPYTHON_CFLAGS}
        -DHAVE_EXPAT_CONFIG_H=1
        -DXML_POOR_ENTROPY=1
        -DUSE_PYEXPAT_CAPI
        )

target_link_options(_elementtree PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _multibytecodec

add_library(_multibytecodec MODULE
        Modules/cjkcodecs/multibytecodec.c
        )

target_include_directories(_multibytecodec PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_multibytecodec PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_multibytecodec PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _codecs_kr

add_library(_codecs_kr MODULE
        Modules/cjkcodecs/_codecs_kr.c
        )

target_include_directories(_codecs_kr PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_codecs_kr PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_codecs_kr PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _codecs_jp

add_library(_codecs_jp MODULE
        Modules/cjkcodecs/_codecs_jp.c
        )

target_include_directories(_codecs_jp PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_codecs_jp PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_codecs_jp PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _codecs_cn

add_library(_codecs_cn MODULE
        Modules/cjkcodecs/_codecs_cn.c
        )

target_include_directories(_codecs_cn PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_codecs_cn PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_codecs_cn PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _codecs_tw

add_library(_codecs_tw MODULE
        Modules/cjkcodecs/_codecs_tw.c
        )

target_include_directories(_codecs_tw PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_codecs_tw PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_codecs_tw PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _codecs_hk

add_library(_codecs_hk MODULE
        Modules/cjkcodecs/_codecs_hk.c
        )

target_include_directories(_codecs_hk PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_codecs_hk PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_codecs_hk PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _codecs_iso2022

add_library(_codecs_iso2022 MODULE
        Modules/cjkcodecs/_codecs_iso2022.c
        )

target_include_directories(_codecs_iso2022 PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_codecs_iso2022 PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_codecs_iso2022 PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _decimal

add_library(_decimal MODULE
        Modules/_decimal/libmpdec/basearith.c
        Modules/_decimal/libmpdec/constants.c
        Modules/_decimal/libmpdec/context.c
        Modules/_decimal/libmpdec/convolute.c
        Modules/_decimal/libmpdec/crt.c
        Modules/_decimal/libmpdec/difradix2.c
        Modules/_decimal/libmpdec/fnt.c
        Modules/_decimal/libmpdec/fourstep.c
        Modules/_decimal/libmpdec/io.c
        Modules/_decimal/libmpdec/memory.c
        Modules/_decimal/libmpdec/mpdecimal.c
        Modules/_decimal/libmpdec/numbertheory.c
        Modules/_decimal/libmpdec/sixstep.c
        Modules/_decimal/libmpdec/transpose.c
        )

target_include_directories(_decimal PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        Modules/_decimal/libmpdec
        )

target_compile_options(_decimal PRIVATE
        ${CPYTHON_CFLAGS}
        -DUNIVERSAL=1
        )

target_link_options(_decimal PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lm
        )


### _ctypes_test

add_library(_ctypes_test MODULE
        Modules/_ctypes/_ctypes_test.c
        )

target_include_directories(_ctypes_test PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        )

target_compile_options(_ctypes_test PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_ctypes_test PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        -lm
        )


### _posixshmem

add_library(_posixshmem MODULE
        Modules/_multiprocessing/posixshmem.c
        )

target_include_directories(_posixshmem PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        Modules/_multiprocessing
        )

target_compile_options(_posixshmem PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_posixshmem PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _multiprocessing

add_library(_multiprocessing MODULE
        Modules/_multiprocessing/multiprocessing.c
        Modules/_multiprocessing/semaphore.c
        )

target_include_directories(_multiprocessing PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        Modules/_multiprocessing
        )

target_compile_options(_multiprocessing PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_multiprocessing PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )


### _uuid

add_library(_uuid MODULE
        Modules/_uuidmodule.c
        )

target_include_directories(_uuid PRIVATE
        ${CPYTHON_MODULE_INCLUDE}
        /usr/include/uuid
        )

target_compile_options(_uuid PRIVATE
        ${CPYTHON_CFLAGS}
        )

target_link_options(_uuid PRIVATE
        ${CPYTHON_MODULE_LDFLAGS}
        )

