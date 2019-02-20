#include <tcl.h>
#if TCL_UTF_MAX != 6
# error "NOT UCS4_TCL"
#endif
int main () { return 0; }
