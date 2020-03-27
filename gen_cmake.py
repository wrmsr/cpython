import dataclasses as dc
import typing as ta


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
        for i, line in enumerate(obj):
            if i > 0 and spacing is not None:
                self._out.write(spacing)
            if indent is not None:
                line = indent + line
            self._out.write(line)
            self._out.write('\n')

    def _write_section(self, label: str) -> None:
        self._write(['', '', f'### {label}', ''])

    def _write_set(self, first: ta.Union[str, ta.Sequence[str]], rest: ta.Sequence[str] = None) -> None:
        if not isinstance(first, str):
            first = ' '.join(first)
        if not rest:
            self._write(f'set({first})')
        else:
            self._write(f'set({first}')
            self._write(rest, indent=8)
            self._write()

    @property
    def preamble(self) -> ta.List[str]:
        return [
            'cmake_minimum_required(VERSION 3.1...3.16)',
            'project(cpython VERSION 3.8.2 LANGUAGES C)',
            'set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR})',
        ]

    @property
    def common_sets(self) -> ta.Dict[str, ta.List[str]]:
        """
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

# FIXME: cc -isysroot /Applications/Xcode.app/.../SDKs/MacOSX10.14.sdk -bundle -Wl,-headerpad_max_install_names
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
        """

    def write(self) -> None:
        self._write(self.preamble, spacing=1)
        self._write_section('Common')


def main():
    with open('CMakeLists_.txt', 'w') as f:
        CmakeGen(f).write()


if __name__ == '__main__':
    main()
