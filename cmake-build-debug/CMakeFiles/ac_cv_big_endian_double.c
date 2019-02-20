#include <string.h>
int main() {
    double x = 9006104071832581.0;
    if (memcmp(&x, "\x43\x3f\xff\x01\x02\x03\x04\x05", 8) == 0)
        return 0;
    else
        return 1;
}
