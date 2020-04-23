import abc
import sys


_MARKER_NAMESPACE_KEYS = None


class _MarkerMeta(abc.ABCMeta):

    def __new__(mcls, name, bases, namespace):
        global _MARKER_NAMESPACE_KEYS
        if _MARKER_NAMESPACE_KEYS is None:
            if not (namespace.get('__module__') == __name__ and name == 'Marker'):
                raise RuntimeError
            _MARKER_NAMESPACE_KEYS = set(namespace)
        else:
            if set(namespace) != _MARKER_NAMESPACE_KEYS:
                raise TypeError('Markers must not include contents. Did you mean to use Namespace?')
        return super().__new__(mcls, name, bases, namespace)

    def __instancecheck__(self, instance):
        sys.cbreak()
        if isinstance(instance, type) and type(instance) is self:
            return True
        else:
            return NotImplemented

    def __repr__(cls) -> str:
        return f'<{cls.__name__}>'


class Marker(metaclass=_MarkerMeta):
    pass


class M(Marker):
    pass


class O(Marker):
    pass


print('ready')
input()


# assert isinstance(M, M)
# assert issubclass(M, M)

# assert isinstance(O, O)
# assert issubclass(O, O)

assert not isinstance(M, O)
assert not issubclass(M, O)
assert not isinstance(O, M)
assert not issubclass(O, M)
