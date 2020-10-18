import sys; sys.cbreak()
import abc
for b in [True, False]:
    class A(abc.ABC): pass
    print(b)
    if b: assert issubclass(A, A)
    class B(abc.ABC):
        def __init_subclass__(cls, **kwargs): issubclass(A, B)
    class C(A, B): pass
    assert issubclass(A, A)
