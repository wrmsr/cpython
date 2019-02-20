
/* Define getpriority to an innocuous variant, in case <limits.h> declares getpriority.
   For example, HP-UX 11i <limits.h> declares gettimeofday.  */
#define getpriority innocuous_getpriority

/* System header to define __stub macros and hopefully few prototypes,
    which can conflict with char getpriority (); below.
    Prefer <limits.h> to <assert.h> if __STDC__ is defined, since
    <limits.h> exists even on freestanding compilers.  */

#ifdef __STDC__
# include <limits.h>
#else
# include <assert.h>
#endif

#undef getpriority

/* Override any GCC internal prototype to avoid an error.
   Use char because int might match the return type of a GCC
   builtin and then its argument prototype would still apply.  */
#ifdef __cplusplus
extern "C"
#endif
char getpriority ();
/* The GNU C library defines this for functions which it implements
    to always fail with ENOSYS.  Some functions are actually named
    something starting with __ and the normal name is an alias.  */
#if defined __stub_getpriority || defined __stub___getpriority
choke me
#endif

int main () { return getpriority (); }
