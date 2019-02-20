#include <string.h>
int main() {
    double x = 9006104071832581.0;
    if (memcmp(&x, "\x05\x04\x03\x02\x01\xff\x3f\x43", 8) == 0)
        return 0;
    else
        return 1;
}
