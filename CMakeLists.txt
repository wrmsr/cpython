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
        "-DABIFLAGS='\"d\"' -DMULTIARCH='\"darwin\"'"
        )

set_source_files_properties(Python/dtoa.c PROPERTIES COMPILE_FLAGS
        "-fno-strict-aliasing"
        )

set_source_files_properties(Python/dynload_shlib.c PROPERTIES COMPILE_FLAGS
        "-DSOABI='\"cpython-38d-darwin\"'"
        )



# gcc -o Modules/config.o Modules/config.c
# gcc -DPYTHONPATH='""' -DPREFIX='"/usr/local"' -DEXEC_PREFIX='"/usr/local"' -DVERSION='"3.8"' -DVPATH='""' -o Modules/getpath.o ./Modules/getpath.c
# gcc -o Modules/main.o Modules/main.c
# gcc -o Modules/gcmodule.o Modules/gcmodule.c

# ! -DPy_BUILD_CORE_BUILTIN
# gcc -c ./Modules/posixmodule.c -o Modules/posixmodule.o
# gcc -c ./Modules/errnomodule.c -o Modules/errnomodule.o
# gcc -c ./Modules/pwdmodule.c -o Modules/pwdmodule.o
# gcc -c ./Modules/_sre.c -o Modules/_sre.o
# gcc -c ./Modules/_codecsmodule.c -o Modules/_codecsmodule.o
# gcc -c ./Modules/_weakref.c -o Modules/_weakref.o
# gcc -c ./Modules/_functoolsmodule.c -o Modules/_functoolsmodule.o
# gcc -c ./Modules/_operator.c -o Modules/_operator.o
# gcc -c ./Modules/_collectionsmodule.c -o Modules/_collectionsmodule.o
# gcc -c ./Modules/_abc.c -o Modules/_abc.o
# gcc -c ./Modules/itertoolsmodule.c -o Modules/itertoolsmodule.o
# gcc -c ./Modules/atexitmodule.c -o Modules/atexitmodule.o
# gcc -c ./Modules/signalmodule.c -o Modules/signalmodule.o
# gcc -c ./Modules/_stat.c -o Modules/_stat.o
# gcc -c ./Modules/timemodule.c -o Modules/timemodule.o
# gcc -c ./Modules/_threadmodule.c -o Modules/_threadmodule.o
# gcc -c ./Modules/_localemodule.c -o Modules/_localemodule.o

# gcc -c -I./Modules/_io ./Modules/_io/_iomodule.c -o Modules/_iomodule.o
# gcc -c -I./Modules/_io ./Modules/_io/iobase.c -o Modules/iobase.o
# gcc -c -I./Modules/_io ./Modules/_io/fileio.c -o Modules/fileio.o
# gcc -c -I./Modules/_io ./Modules/_io/bytesio.c -o Modules/bytesio.o
# gcc -c -I./Modules/_io ./Modules/_io/bufferedio.c -o Modules/bufferedio.o
# gcc -c -I./Modules/_io ./Modules/_io/textio.c -o Modules/textio.o
# gcc -c -I./Modules/_io ./Modules/_io/stringio.c -o Modules/stringio.o

# gcc -c ./Modules/faulthandler.c -o Modules/faulthandler.o
# gcc -c ./Modules/_tracemalloc.c -o Modules/_tracemalloc.o
# gcc -c ./Modules/hashtable.c -o Modules/hashtable.o
# gcc -c ./Modules/symtablemodule.c -o Modules/symtablemodule.o
# gcc -c ./Modules/xxsubtype.c -o Modules/xxsubtype.o

# ! -DPy_BUILD_CORE
# gcc -o Python/frozen.o Python/frozen.c
# gcc -o Modules/_math.o Modules/_math.c
# gcc -o Programs/_testembed.o ./Programs/_testembed.c
# gcc -DGITVERSION="\"`LC_ALL=C git --git-dir ./.git rev-parse --short HEAD`\"" -DGITTAG="\"`LC_ALL=C git --git-dir ./.git describe --all --always --dirty`\"" -DGITBRANCH="\"`LC_ALL=C git --git-dir ./.git name-rev --name-only HEAD`\"" -o Modules/getbuildinfo.o ./Modules/getbuildinfo.c
# # gcc -DGITVERSION="fa7e2a5240" -DGITTAG="heads/freethreading3" -DGITBRANCH="freethreading3" -o Modules/getbuildinfo.o ./Modules/getbuildinfo.c
