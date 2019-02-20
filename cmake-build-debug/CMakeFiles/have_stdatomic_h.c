
#include <stdatomic.h>
atomic_int value = ATOMIC_VAR_INIT(1);
int main() {
  int loaded_value = atomic_load(&value);
  return 0;
}
