#include <stdio.h>
#include <stddef.h>
#include <string.h>

#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif

#ifdef HAVE_SSIZE_T
typedef ssize_t Py_ssize_t;
#elif SIZEOF_VOID_P == SIZEOF_LONG
typedef long Py_ssize_t;
#else
typedef int Py_ssize_t;
#endif

int main()
{
    char buffer[256];
    if(sprintf(buffer, "%zd", (size_t)123) < 0)
        return 1;
    if (strcmp(buffer, "123"))
        return 1;
    if (sprintf(buffer, "%zd", (Py_ssize_t)-123) < 0)
        return 1;
    if (strcmp(buffer, "-123"))
        return 1;
    return 0;
}
