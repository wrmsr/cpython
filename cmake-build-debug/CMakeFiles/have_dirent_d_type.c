#include <dirent.h>
int main() {
  struct dirent entry;
  return entry.d_type == DT_UNKNOWN;
}
