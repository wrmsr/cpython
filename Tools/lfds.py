import io
import os
import re
import sys


def main(basedir):
    buf = io.StringIO()
    drops = [
        lambda l: re.fullmatch(r'/\*+\s+include(s)?\s+\*+/', l),
        lambda l: re.match(r'^#include ', l),
    ]

    def srcfn(fdir, fn, dfn):
        with open(os.path.join(fdir, fn), 'r') as f:
            lines = f.read().strip().split('\n')
        lines = [l for l in lines if not any(drop(l) for drop in drops)]
        while lines[0] == '':
            del lines[0]
        while lines[-1] == '':
            del lines[-1]
        lines[0:0] = [f'/***** {dfn} *****/'] + [''] * 5
        lines.extend([''] * 6)
        buf.write('\n'.join(lines))

    srcdir = os.path.join(basedir, 'src')
    for fn in [fn for fn in os.listdir(srcdir) if fn.endswith('.h')]:
        srcfn(srcdir, fn, fn)
    for d in [d for d in os.listdir(srcdir) if os.path.isdir(os.path.join(srcdir, d))]:
        fdir = os.path.join(srcdir, d)
        for fn in (
                [fn for fn in os.listdir(fdir) if fn.endswith('.h')] +
                [fn for fn in os.listdir(fdir) if fn.endswith('.c')]
        ):
            srcfn(fdir, fn, os.path.join(d, fn))

    print(buf.getvalue())
    del buf

    hdir = os.path.join(basedir, 'inc')
    [hf] = [fn for fn in os.listdir(hdir) if fn.endswith('.h')]
    with open(os.path.join(hdir, hf), 'r') as f:
        lines = f.read().strip().split('\n')

    for i in range(len(lines)):
        m = re.match(r'^\s*#include "(?P<f>[^"]+)"', lines[i])
        if m is not None:
            [fd] = m.groups()
            with open(os.path.join(hdir, fd)) as f:
                lines[i] = f'/***** {fd} *****/\n' + '\n' * 5 + f.read().strip() + '\n' * 5

    print('\n'.join(lines))


if __name__ == '__main__':
    main(sys.argv[1])
