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
        usr/local/include
        )


### Programs

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


### Parser

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


### Objects

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


### Python

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
        -DPLATFORM='"darwin"'
        )

set_source_files_properties(Python/sysmodule.c PROPERTIES COMPILE_FLAGS
        "-DABIFLAGS='\"d\"' -DMULTIARCH='\"darwin\"'"
        )


### Modules

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


### Builtin Modules

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


### IO Module

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


# Executable

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


# _struct

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


# array

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


# _contextvars

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


# math

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


# cmath

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


# _datetime

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


# _random

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


# _bisect

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


# _heapq

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


# _pickle

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


# _json

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


# _lsprof

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


# unicodedata

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


# _opcode

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


# _queue

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


# _statistics

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


# fcntl

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


# grp

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


# select

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


# parser

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


# mmap

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


# syslog

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


# _xxsubinterpreters

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


# audioop

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
