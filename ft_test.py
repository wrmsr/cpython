import gc
import sys


l = list(range(100))


sys.freethread_enable()


gc.collect(2)
