import abc
import dataclasses as dc
import typing as ta


@dc.dataclass(frozen=True)
class Command:
    name: str
    args: ta.Union[str, ta.Sequence[str]]
    lines: ta.Sequence[str] = None


@dc.dataclass(frozen=True)
class Var:
    name: str
    value: ta.Union[str, ta.Sequence[str]]


@dc.dataclass(frozen=True)
class Target(abc.ABC):
    name: str
    source_files: ta.Sequence[str]

    include_directories: ta.Sequence[str] = None
    compile_options: ta.Sequence[str] = None
    link_options: ta.Sequence[str] = None

    compile_flags_by_source_file: ta.Mapping[str, ta.Sequence[str]] = None

    link_libraries: ta.Sequence[str] = None

    @abc.abstractproperty
    def command_name(self) -> str:
        raise NotImplementedError

    @property
    def command_extra(self) -> ta.Sequence[str]:
        return []


@dc.dataclass(frozen=True)
class Library(Target):

    @property
    def command_name(self) -> str:
        return 'add_library'


@dc.dataclass(frozen=True)
class StaticLibrary(Library):

    @property
    def command_extra(self) -> ta.Sequence[str]:
        return ['STATIC']


@dc.dataclass(frozen=True)
class ModuleLibrary(Library):

    @property
    def command_extra(self) -> ta.Sequence[str]:
        return ['MODULE']


@dc.dataclass(frozen=True)
class Executable(Target):

    @property
    def command_name(self) -> str:
        return 'add_executable'


class CmakeGen:

    def __init__(self, out) -> None:
        super().__init__()

        self._out = out

    def _write(
            self,
            obj: ta.Union[str, ta.Sequence[str]] = '',
            *,
            spacing: ta.Union[int, str] = 0,
            indent: ta.Union[int, str] = None,
    ) -> None:
        if isinstance(obj, str):
            obj = [obj]
        if isinstance(spacing, int):
            spacing = '\n' * spacing
        if isinstance(indent, int):
            indent = ' ' * indent
        for line in obj:
            if indent is not None:
                line = indent + line
            self._out.write(line)
            self._out.write('\n')
            if spacing is not None:
                self._out.write(spacing)

    def _write_section(self, label: str) -> None:
        self._write(['', f'### {label}', ''])

    def _write_cmd(self, cmd: Command) -> None:
        args = cmd.args
        if not isinstance(args, str):
            args = ' '.join(args)
        if not cmd.lines:
            self._write(f'{cmd.name}({args})')
        else:
            if isinstance(cmd.lines, str):
                raise TypeError(cmd.lines)
            self._write(f'{cmd.name}({args}')
            self._write(cmd.lines, indent=8)
            self._write(')', indent=8)
            self._write()

    def _write_var(self, var: Var) -> None:
        return self._write_cmd(Command('set', var.name, [var.value] if isinstance(var.value, str) else var.value))

    def _write_target(self, target: Target) -> None:
        self._write_section(target.name)
        self._write_cmd(Command(target.command_name, [target.name] + target.command_extra, target.source_files))
        if target.include_directories:
            self._write_cmd(Command('target_include_directories', [target.name, 'PRIVATE'], target.include_directories))
        if target.compile_options:
            self._write_cmd(Command('target_compile_options', [target.name, 'PRIVATE'], target.compile_options))
        if target.link_options:
            self._write_cmd(Command('target_link_options', [target.name, 'PRIVATE'], target.link_options))
        if target.compile_flags_by_source_file:
            for sf, cf in target.compile_flags_by_source_file.items():
                cf = ['"' + f.replace('"', '\\"') + '"' for f in cf]
                self._write_cmd(Command('set_source_files_properties', [sf, 'PROPERTIES', 'COMPILE_FLAGS'], cf))
        if target.link_libraries:
            self._write_cmd(Command('target_link_libraries', [target.name, 'PRIVATE'], target.link_libraries))

    @property
    def preamble(self) -> ta.List[str]:
        return [
            'cmake_minimum_required(VERSION 3.1...3.16)',
            'project(cpython VERSION 3.8.2 LANGUAGES C)',
            'set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR})',
        ]

    @property
    def common_vars(self) -> ta.List[Var]:
        return [Var(k, v) for k, v in {

            'CPYTHON_CFLAGS': [
                '-Wno-unused-result',
                '-Wsign-compare',
                '-g',
                '-O0',
                '-Wall',
                '-std=c99',
                '-Wextra',
                '-Wno-unused-result',
                '-Wno-unused-parameter',
                '-Wno-missing-field-initializers',
                '-Wstrict-prototypes',
                '-Werror=implicit-function-declaration',
            ],

            'CPYTHON_CORE_INCLUDE': [
                'Include/internal',
                '.',
                'Include',
            ],

            # FIXME: cc -isysroot /Applications/Xcode.app/.../SDKs/MacOSX10.14.sdk -bundle -Wl,-headerpad_max_install_names
            'CPYTHON_MODULE_LDFLAGS': [
                '-bundle',
                '-undefined dynamic_lookup',
                '-L/usr/local/lib',
            ],

            'CPYTHON_MODULE_INCLUDE': [
                'Include/internal',
                'Include',
                '.',
                '/usr/local/include',
            ]

        }.items()]

    def new_core_static(
            self,
            name: str,
            source_files: ta.Sequence[str],
            *,
            builtin: bool = False,
            **kwargs
    ) -> StaticLibrary:
        kwargs['include_directories'] = [
            '${CPYTHON_CORE_INCLUDE}',
        ] + kwargs.get('include_directories', [])

        kwargs['compile_options'] = [
            '${CPYTHON_CFLAGS}',
            '-DPy_BUILD_CORE' + ('_BUILTIN' if builtin else ''),
        ] + kwargs.get('compile_options', [])

        return StaticLibrary(
            name,
            source_files,
            **kwargs,
        )

    @property
    def executable_targets(self) -> ta.List[Target]:
        return [

            self.new_core_static(
                '_programs',
                [
                    'Programs/python.c',
                ],
            ),

            self.new_core_static(
                '_parser',
                [
                    'Parser/acceler.c',
                    'Parser/grammar1.c',
                    'Parser/listnode.c',
                    'Parser/myreadline.c',
                    'Parser/node.c',
                    'Parser/parser.c',
                    'Parser/parsetok.c',
                    'Parser/token.c',
                    'Parser/tokenizer.c',
                ],
            ),

            self.new_core_static(
                '_objects',
                [
                    'Objects/abstract.c',
                    'Objects/accu.c',
                    'Objects/boolobject.c',
                    'Objects/bytearrayobject.c',
                    'Objects/bytes_methods.c',
                    'Objects/bytesobject.c',
                    'Objects/call.c',
                    'Objects/capsule.c',
                    'Objects/cellobject.c',
                    'Objects/classobject.c',
                    'Objects/codeobject.c',
                    'Objects/complexobject.c',
                    'Objects/descrobject.c',
                    'Objects/dictobject.c',
                    'Objects/enumobject.c',
                    'Objects/exceptions.c',
                    'Objects/fileobject.c',
                    'Objects/floatobject.c',
                    'Objects/frameobject.c',
                    'Objects/funcobject.c',
                    'Objects/genobject.c',
                    'Objects/interpreteridobject.c',
                    'Objects/iterobject.c',
                    'Objects/listobject.c',
                    'Objects/longobject.c',
                    'Objects/memoryobject.c',
                    'Objects/methodobject.c',
                    'Objects/moduleobject.c',
                    'Objects/namespaceobject.c',
                    'Objects/object.c',
                    'Objects/obmalloc.c',
                    'Objects/odictobject.c',
                    'Objects/picklebufobject.c',
                    'Objects/rangeobject.c',
                    'Objects/setobject.c',
                    'Objects/sliceobject.c',
                    'Objects/structseq.c',
                    'Objects/tupleobject.c',
                    'Objects/typeobject.c',
                    'Objects/unicodectype.c',
                    'Objects/unicodeobject.c',
                    'Objects/weakrefobject.c',
                ],
            ),

            self.new_core_static(
                '_python',
                [
                    'Python/_warnings.c',
                    'Python/asdl.c',
                    'Python/ast.c',
                    'Python/ast_opt.c',
                    'Python/ast_unparse.c',
                    'Python/bltinmodule.c',
                    'Python/bootstrap_hash.c',
                    'Python/ceval.c',
                    'Python/codecs.c',
                    'Python/compile.c',
                    'Python/context.c',
                    'Python/dtoa.c',
                    'Python/dynamic_annotations.c',
                    'Python/dynload_shlib.c',
                    'Python/errors.c',
                    'Python/fileutils.c',
                    'Python/formatter_unicode.c',
                    'Python/frozenmain.c',
                    'Python/future.c',
                    'Python/getargs.c',
                    'Python/getcompiler.c',
                    'Python/getcopyright.c',
                    'Python/getopt.c',
                    'Python/getplatform.c',
                    'Python/getversion.c',
                    'Python/graminit.c',
                    'Python/hamt.c',
                    'Python/import.c',
                    'Python/importdl.c',
                    'Python/initconfig.c',
                    'Python/marshal.c',
                    'Python/modsupport.c',
                    'Python/mysnprintf.c',
                    'Python/mystrtoul.c',
                    'Python/pathconfig.c',
                    'Python/peephole.c',
                    'Python/preconfig.c',
                    'Python/pyarena.c',
                    'Python/pyctype.c',
                    'Python/pyfpe.c',
                    'Python/pyhash.c',
                    'Python/pylifecycle.c',
                    'Python/pymath.c',
                    'Python/pystate.c',
                    'Python/pystrcmp.c',
                    'Python/pystrhex.c',
                    'Python/pystrtod.c',
                    'Python/Python-ast.c',
                    'Python/pythonrun.c',
                    'Python/pytime.c',
                    'Python/structmember.c',
                    'Python/symtable.c',
                    'Python/sysmodule.c',
                    'Python/thread.c',
                    'Python/traceback.c',
                ],
                compile_flags_by_source_file={
                    'Python/dtoa.c': [
                        '-fno-strict-aliasing',
                    ],
                    'Python/dynload_shlib.c': [
                        '-DSOABI=\'"cpython-38d-darwin"\'',
                    ],
                    'Python/getplatform.c': [
                        '-DPLATFORM=\'"darwin"\'',
                    ],
                    'Python/sysmodule.c': [
                        '-DABIFLAGS=\'"d"\' -DMULTIARCH=\'"darwin"\'',
                    ],
                },
            ),

            self.new_core_static(
                '_modules',
                [
                    'Modules/config.c',
                    'Modules/gcmodule.c',
                    'Modules/getpath.c',
                    'Modules/main.c',
                ],
                compile_flags_by_source_file={
                    'Modules/getpath.c': [
                        '-DPYTHONPATH=\'""\' -DPREFIX=\'"/usr/local"\' -DEXEC_PREFIX=\'"/usr/local"\' -DVERSION=\'"3.8"\' -DVPATH=\'""\'',
                    ],
                },
            ),

            self.new_core_static(
                '_builtin_modules',
                [
                    'Modules/_abc.c',
                    'Modules/_codecsmodule.c',
                    'Modules/_collectionsmodule.c',
                    'Modules/_functoolsmodule.c',
                    'Modules/_localemodule.c',
                    'Modules/_operator.c',
                    'Modules/_sre.c',
                    'Modules/_stat.c',
                    'Modules/_threadmodule.c',
                    'Modules/_tracemalloc.c',
                    'Modules/_weakref.c',
                    'Modules/atexitmodule.c',
                    'Modules/errnomodule.c',
                    'Modules/faulthandler.c',
                    'Modules/hashtable.c',
                    'Modules/itertoolsmodule.c',
                    'Modules/posixmodule.c',
                    'Modules/pwdmodule.c',
                    'Modules/signalmodule.c',
                    'Modules/symtablemodule.c',
                    'Modules/timemodule.c',
                    'Modules/xxsubtype.c',
                ],
                builtin=True,
            ),

            self.new_core_static(
                '_io_module',
                [
                    'Modules/_io/_iomodule.c',
                    'Modules/_io/bufferedio.c',
                    'Modules/_io/bytesio.c',
                    'Modules/_io/fileio.c',
                    'Modules/_io/iobase.c',
                    'Modules/_io/stringio.c',
                    'Modules/_io/textio.c',
                ],
                include_directories=[
                    'Modules/_io',
                ],
                builtin=True,
            ),

            Executable(
                'python.exe',
                [
                    'Modules/_math.c',
                    'Modules/getbuildinfo.c',
                    'Python/frozen.c',
                ],
                include_directories=[
                    '${CPYTHON_CORE_INCLUDE}',
                ],
                compile_options=[
                    '${CPYTHON_CFLAGS}',
                    '-DPy_BUILD_CORE',
                ],
                link_options=[
                    '-Wl,-stack_size,1000000',
                    '-framework CoreFoundation',
                    '-ldl',
                    '-framework CoreFoundation',
                ],
                compile_flags_by_source_file={
                    'Modules/getbuildinfo.c': [
                        '-DGITVERSION=\'"fa7e2a5240"\' -DGITTAG=\'"heads/freethreading3"\' -DGITBRANCH=\'"freethreading3"\'',
                    ],
                },
                link_libraries=[
                    '_programs',
                    '_parser',
                    '_objects',
                    '_python',
                    '_modules',
                    '_builtin_modules',
                    '_io_module',
                ],
            ),

        ]

    def new_module(
            self,
            name: str,
            source_files: ta.Sequence[str],
            *,
            core: bool = False,
            **kwargs
    ) -> ModuleLibrary:
        kwargs['include_directories'] = [
            '${CPYTHON_MODULE_INCLUDE}',
        ] + kwargs.get('include_directories', [])

        kwargs['compile_options'] = [
            '${CPYTHON_CFLAGS}',
        ] + (
            ['-DPy_BUILD_CORE_MODULE'] if core else []
        ) + kwargs.get('compile_options', [])

        kwargs['link_options'] = [
            '${CPYTHON_MODULE_LDFLAGS}',
        ] + kwargs.get('link_options', [])

        return ModuleLibrary(
            name,
            source_files,
            **kwargs,
        )

    @property
    def module_targets(self) -> ta.List[Target]:
        return [

            self.new_module(
                '_struct',
                [
                    'Modules/_struct.c',
                ],
            ),

            self.new_module(
                'array',
                [
                    'Modules/arraymodule.c',
                ],
            ),

            self.new_module(
                '_contextvars',
                [
                    'Modules/_contextvarsmodule.c',
                ],
            ),

            self.new_module(
                'math',
                [
                    'Modules/mathmodule.c',
                ],
                link_options=[
                    '-lm',
                ],
            ),

            self.new_module(
                'cmath',
                [
                    'Modules/cmathmodule.c',
                ],
                link_options=[
                    '-lm',
                ],
            ),

            self.new_module(
                '_datetime',
                [
                    'Modules/_datetimemodule.c',
                ],
                link_options=[
                    '-lm',
                ],
            ),

            self.new_module(
                '_random',
                [
                    'Modules/_randommodule.c',
                ],
            ),

            self.new_module(
                '_bisect',
                [
                    'Modules/_bisectmodule.c',
                ],
            ),

            self.new_module(
                '_heapq',
                [
                    'Modules/_heapqmodule.c',
                ],
            ),

            self.new_module(
                '_pickle',
                [
                    'Modules/_pickle.c',
                ],
                core=True,
            ),

            self.new_module(
                '_json',
                [
                    'Modules/_json.c',
                ],
                core=True,
            ),

            self.new_module(
                '_lsprof',
                [
                    'Modules/_lsprof.c',
                    'Modules/rotatingtree.c',
                ],
            ),

            self.new_module(
                'unicodedata',
                [
                    'Modules/unicodedata.c',
                ],
            ),

            self.new_module(
                '_opcode',
                [
                    'Modules/_opcode.c',
                ],
            ),

            self.new_module(
                '_queue',
                [
                    'Modules/_queuemodule.c',
                ],
            ),

            self.new_module(
                '_statistics',
                [
                    'Modules/_statisticsmodule.c',
                ],
            ),

            self.new_module(
                'fcntl',
                [
                    'Modules/fcntlmodule.c',
                ],
            ),

            self.new_module(
                'grp',
                [
                    'Modules/grpmodule.c',
                ],
            ),

            self.new_module(
                'select',
                [
                    'Modules/selectmodule.c',
                ],
            ),

            self.new_module(
                'parser',
                [
                    'Modules/parsermodule.c',
                ],
            ),

            self.new_module(
                'mmap',
                [
                    'Modules/mmapmodule.c',
                ],
            ),

            self.new_module(
                'syslog',
                [
                    'Modules/syslogmodule.c',
                ],
            ),

            self.new_module(
                '_xxsubinterpreters',
                [
                    'Modules/_xxsubinterpretersmodule.c',
                ],
            ),

            self.new_module(
                'audioop',
                [
                    'Modules/audioop.c',
                ],
                link_options=[
                    '-lm',
                ],
            ),

            self.new_module(
                '_csv',
                [
                    'Modules/_csv.c',
                ],
            ),

            self.new_module(
                '_posixsubprocess',
                [
                    'Modules/_posixsubprocess.c',
                ],
            ),

            self.new_module(
                '_testcapi',
                [
                    'Modules/_testcapimodule.c',
                ],
            ),

            self.new_module(
                '_testinternalcapi',
                [
                    'Modules/_testinternalcapi.c',
                ],
                core=True,
            ),

            self.new_module(
                '_testbuffer',
                [
                    'Modules/_testbuffer.c',
                ],
            ),

            self.new_module(
                '_testimportmultiple',
                [
                    'Modules/_testimportmultiple.c',
                ],
            ),

            self.new_module(
                '_testmultiphase',
                [
                    'Modules/_testmultiphase.c',
                ],
            ),

            self.new_module(
                '_xxtestfuzz',
                [
                    'Modules/_xxtestfuzz/_xxtestfuzz.c',
                    'Modules/_xxtestfuzz/fuzzer.c',
                ],
            ),

            self.new_module(
                'readline',
                [
                    'Modules/readline.c',
                ],
                link_options=[
                    '-L/usr/lib/termcap',
                    '-lreadline',
                    '-lncurses',
                ],
            ),

            self.new_module(
                '_curses',
                [
                    'Modules/_cursesmodule.c',
                ],
                compile_options=[
                    '-DHAVE_NCURSESW=1',
                    '-D_XOPEN_SOURCE_EXTENDED=1',
                ],
                link_options=[
                    '-lncurses',
                ],
            ),

            self.new_module(
                '_curses_panel',
                [
                    'Modules/_curses_panel.c',
                ],
                compile_options=[
                    '-DHAVE_NCURSESW=1',
                    '-D_XOPEN_SOURCE_EXTENDED=1',
                ],
                link_options=[
                    '-lpanel',
                    '-lncurses',
                ],
            ),

            self.new_module(
                '_crypt',
                [
                    'Modules/_cryptmodule.c',
                ],
            ),

            self.new_module(
                '_ssl',
                [
                    'Modules/_ssl.c',
                ],
                include_directories=[
                    '/usr/local/opt/openssl@1.1/include',
                ],
                link_options=[
                    '-L/usr/local/opt/openssl@1.1/lib',
                    '-lssl',
                    '-lcrypto',
                ],
            ),

            self.new_module(
                '_hashlib',
                [
                    'Modules/_hashopenssl.c',
                ],
                include_directories=[
                    '/usr/local/opt/openssl@1.1/include',
                ],
                link_options=[
                    '-L/usr/local/opt/openssl@1.1/lib',
                    '-lssl',
                    '-lcrypto',
                ],
            ),

            self.new_module(
                '_sha256',
                [
                    'Modules/sha256module.c',
                ],
            ),

            self.new_module(
                '_sha512',
                [
                    'Modules/sha512module.c',
                ],
            ),

            self.new_module(
                '_md5',
                [
                    'Modules/md5module.c',
                ],
            ),

            self.new_module(
                '_sha1',
                [
                    'Modules/sha1module.c',
                ],
            ),

            ###

            self.new_module(
                '_blake2',
                [
                    'Modules/_blake2/blake2b_impl.c',
                    'Modules/_blake2/blake2module.c',
                    'Modules/_blake2/blake2s_impl.c',
                ],
            ),

            self.new_module(
                '_sha3',
                [
                    'Modules/_sha3/sha3module.c',
                ],
            ),

            self.new_module(
                '_dbm',
                [
                    'Modules/_dbmmodule.c',
                ],
                compile_options=[
                    '-DHAVE_NDBM_H',
                ],
            ),

            self.new_module(
                '_gdbm',
                [
                    'Modules/_gdbmmodule.c',
                ],
                link_options=[
                    '-lgdbm',
                ]
            ),

            self.new_module(
                '_sqlite3',
                [
                    'Modules/_sqlite/cache.c',
                    'Modules/_sqlite/connection.c',
                    'Modules/_sqlite/cursor.c',
                    'Modules/_sqlite/microprotocols.c',
                    'Modules/_sqlite/module.c',
                    'Modules/_sqlite/prepare_protocol.c',
                    'Modules/_sqlite/row.c',
                    'Modules/_sqlite/statement.c',
                    'Modules/_sqlite/util.c',
                ],
                include_directories=[
                    'Modules/_sqlite',
                    '/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/include',
                ],
                compile_options=[
                    '-DMODULE_NAME="sqlite3"',
                    '-DSQLITE_OMIT_LOAD_EXTENSION=1',
                ],
                link_options=[
                    '-L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/usr/lib',
                    '-lsqlite3',
                    '-Wl,-search_paths_first',
                ],
            ),

            self.new_module(
                'termios',
                [
                    'Modules/termios.c',
                ],
            ),

            self.new_module(
                'resource',
                [
                    'Modules/resource.c',
                ],
            ),

            self.new_module(
                '_scproxy',
                [
                    'Modules/_scproxy.c',
                ],
                link_options=[
                    '-framework SystemConfiguration',
                    '-framework CoreFoundation',
                ],
            ),

            self.new_module(
                'nis',
                [
                    'Modules/nismodule.c',
                ],
            ),

            self.new_module(
                'zlib',
                [
                    'Modules/zlibmodule.c',
                ],
                link_options=[
                    '-Wl,-search_paths_first',
                ],
            ),

            self.new_module(
                'binascii',
                [
                    'Modules/binascii.c',
                ],
                compile_options=[
                    '-DUSE_ZLIB_CRC32',
                ],
                link_options=[
                    '-Wl,-search_paths_first',
                ],
            ),

            self.new_module(
                '_bz2',
                [
                    'Modules/_bz2module.c',
                ],
                link_options=[
                    '-lbz2',
                    '-Wl,-search_paths_first',
                ],
            ),

            self.new_module(
                '_lzma',
                [
                    'Modules/_lzmamodule.c',
                ],
                link_options=[
                    '-llzma',
                ],
            ),

        ]

    def write(self) -> None:
        self._write(self.preamble, spacing=1)

        self._write_section('Common')
        for var in self.common_vars:
            self._write_var(var)

        for target in self.executable_targets:
            self._write_target(target)

        for target in self.module_targets:
            self._write_target(target)


def main():
    with open('CMakeLists.txt', 'w') as f:
        CmakeGen(f).write()


if __name__ == '__main__':
    main()
