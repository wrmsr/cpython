import gc
import sys


l0 = list(range(100))

sys.freethread_enable()

l1 = list(range(100))

print('%x\n' % (id(l0,)))
print('%x\n' % (id(l1,)))
del l0
del l1

gc.collect(2)
