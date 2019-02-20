#include <stdio.h>
#include<stdlib.h>
int main() {
    size_t len = -1;
    const char *str = "text";
    len = mbstowcs(NULL, str, 0);
    return (len != 4);
}
