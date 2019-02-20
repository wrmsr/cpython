#include <sys/syscall.h>
int main() {
  char buffer[1];
  const size_t buflen = sizeof(buffer);
  const int flags = 0;
  /* ignore the result, Python checks for ENOSYS at runtime */
  (void)syscall(SYS_getrandom, buffer, buflen, flags);
  return 0;
}
