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
                'usr/local/include',
            ]

        }.items()]

    def core_static_lib(self,
            name: str,
            source_files: ta.Sequence[str],
            **kwargs
    ) -> StaticLibrary:
        return StaticLibrary(
            name,
            source_files,
            **kwargs,
            include_directories=[
                '${CPYTHON_CORE_INCLUDE}'
            ] + kwargs.get('include_directories', []),
            compile_options=[
                '${CPYTHON_CFLAGS}',
                '-DPy_BUILD_CORE',
            ] + kwargs.get('include_directories', []),
        )

    @property
    def targets(self) -> ta.List[Target]:
        return [

            self.core_static_lib(
                '_programs',
                [
                    'Programs/python.c',
                ],
            ),

            self.core_static_lib(
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
            ),

            self.core_static_lib(
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

            self.core_static_lib(
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

            self.core_static_lib(
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

        ]

    def write(self) -> None:
        self._write(self.preamble, spacing=1)

        self._write_section('Common')
        for var in self.common_vars:
            self._write_var(var)

        for target in self.targets:
            self._write_target(target)


def main():
    with open('CMakeLists_.txt', 'w') as f:
        CmakeGen(f).write()


if __name__ == '__main__':
    main()
