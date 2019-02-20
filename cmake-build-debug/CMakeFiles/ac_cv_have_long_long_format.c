#include <stdio.h>
#include <stddef.h>
#include <string.h>

#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif

int main()
{
    char buffer[256];

    if (sprintf(buffer, "%lld", (long long)123) < 0)
        return 1;
    if (strcmp(buffer, "123"))
        return 1;

    if (sprintf(buffer, "%lld", (long long)-123) < 0)
        return 1;
    if (strcmp(buffer, "-123"))
        return 1;

    if (sprintf(buffer, "%llu", (unsigned long long)123) < 0)
        return 1;
    if (strcmp(buffer, "123"))
        return 1;

    return 0;
}
