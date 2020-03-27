cmake_minimum_required(VERSION 3.1...3.16)

project(cpython VERSION 3.8.2 LANGUAGES C)

#add_library(MyLibExample simple_lib.cpp simple_lib.hpp)
#add_executable(MyExample simple_example.cpp)
#target_link_libraries(MyExample PRIVATE MyLibExample)


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

set(CPYTHON_INCLUDE
        ./Include/internal
        .
        ./Include
        )


### Programs

add_library(programs STATIC
        Programs/python.c
        )

target_include_directories(programs PRIVATE
        ${CPYTHON_INCLUDE}
        )

target_compile_options(programs PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )


### Parser

add_library(parser STATIC
        Parser/acceler.c
        Parser/grammar1.c
        Parser/listnode.c
        Parser/node.c
        Parser/parser.c
        Parser/token.c
        Parser/myreadline.c
        Parser/parsetok.c
        Parser/tokenizer.c
        )

target_include_directories(parser PRIVATE
        ${CPYTHON_INCLUDE}
        )

target_compile_options(parser PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )


### Objects

add_library(objects STATIC
        Objects/abstract.c
        Objects/accu.c
        Objects/boolobject.c
        Objects/bytes_methods.c
        Objects/bytearrayobject.c
        Objects/bytesobject.c
        Objects/call.c
        Objects/capsule.c
        Objects/cellobject.c
        Objects/classobject.c
        Objects/codeobject.c
        Objects/complexobject.c
        Objects/descrobject.c
        Objects/enumobject.c
        Objects/exceptions.c
        Objects/genobject.c
        Objects/fileobject.c
        Objects/floatobject.c
        Objects/frameobject.c
        Objects/funcobject.c
        Objects/interpreteridobject.c
        Objects/iterobject.c
        Objects/listobject.c
        Objects/longobject.c
        Objects/dictobject.c
        Objects/odictobject.c
        Objects/memoryobject.c
        Objects/methodobject.c
        Objects/moduleobject.c
        Objects/namespaceobject.c
        Objects/object.c
        Objects/obmalloc.c
        Objects/picklebufobject.c
        Objects/rangeobject.c
        Objects/setobject.c
        Objects/sliceobject.c
        Objects/structseq.c
        Objects/tupleobject.c
        Objects/typeobject.c
        Objects/unicodeobject.c
        Objects/unicodectype.c
        Objects/weakrefobject.c
        )

target_include_directories(objects PRIVATE
        ${CPYTHON_INCLUDE}
        )

target_compile_options(objects PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )


### Python

add_library(python STATIC
        Python/_warnings.c
        Python/Python-ast.c
        Python/asdl.c
        Python/ast.c
        Python/ast_opt.c
        Python/ast_unparse.c
        Python/bltinmodule.c
        Python/ceval.c
        Python/codecs.c
        Python/compile.c
        Python/context.c
        Python/dynamic_annotations.c
        Python/errors.c
        Python/frozenmain.c
        Python/future.c
        Python/getargs.c
        Python/getcompiler.c
        Python/getcopyright.c
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
        Python/pythonrun.c
        Python/pytime.c
        Python/bootstrap_hash.c
        Python/structmember.c
        Python/symtable.c
        Python/sysmodule.c
        Python/thread.c
        Python/traceback.c
        Python/getopt.c
        Python/pystrcmp.c
        Python/pystrtod.c
        Python/pystrhex.c
        Python/dtoa.c
        Python/formatter_unicode.c
        Python/fileutils.c
        Python/dynload_shlib.c
        )

target_include_directories(python PRIVATE
        ${CPYTHON_INCLUDE}
        )

target_compile_options(python PRIVATE
        ${CPYTHON_CFLAGS}
        -DPy_BUILD_CORE
        )

set_source_files_properties(Python/getplatform.c PROPERTIES COMPILE_FLAGS
        -DPLATFORM='"darwin"'
        )

set_source_files_properties(Python/sysmodule.c PROPERTIES COMPILE_FLAGS
        -DABIFLAGS='"d"'
        -DMULTIARCH=\"darwin\"
        )

set_source_files_properties(Python/dtoa.c PROPERTIES COMPILE_FLAGS
        -fno-strict-aliasing
        )

set_source_files_properties(Python/dynload_shlib.c PROPERTIES COMPILE_FLAGS
        -DSOABI='"cpython-38d-darwin"'
        )
