#include "Python.h"

#ifdef __cplusplus
extern "C" {
#endif


extern PyObject* PyInit__collections(void);
extern PyObject* PyInit__datetime(void);
extern PyObject* PyInit__io(void);
extern PyObject* PyInit__thread(void);
extern PyObject* PyInit_time(void);
extern PyObject* PyInit_atexit(void);
extern PyObject* PyInit__codecs(void);
extern PyObject* PyInit_faulthandler(void);
extern PyObject* PyInit__opcode(void);
extern PyObject* PyInit__pickle(void);
extern PyObject* PyInit__sre(void);
extern PyObject* PyInit__stat(void);
extern PyObject* PyInit__symtable(void);
extern PyObject* PyInit__tracemalloc(void);
extern PyObject* PyInit__weakref(void);
extern PyObject* PyInit_xxsubtype(void);
extern PyObject* PyInit_zipimport(void);
extern PyObject* PyInit_posix(void);
extern PyObject* PyInit_pwd(void);
extern PyObject* PyInit_errno(void);
extern PyObject* PyInit__posixsubprocess(void);
extern PyObject* PyInit__socket(void);


/* -- ADDMODULE MARKER 1 -- */

extern PyObject* PyMarshal_Init(void);
extern PyObject* PyInit_imp(void);
extern PyObject* PyInit_gc(void);
extern PyObject* PyInit__ast(void);
extern PyObject* _PyWarnings_Init(void);
extern PyObject* PyInit__string(void);

extern PyObject* PyInit_errno(void);
extern PyObject* PyInit__codecs(void);
extern PyObject* PyInit__signal(void);
extern PyObject* PyInit__sre(void);
extern PyObject* PyInit__symtable(void);
extern PyObject* PyInit__weakref(void);
extern PyObject* PyInit_xxsubtype(void);
extern PyObject* PyInit_zipimport(void);

struct _inittab _PyImport_Inittab[] = {

    {"_collections", PyInit__collections},
    {"_datetime", PyInit__datetime},
    {"_io", PyInit__io},
    {"_thread", PyInit__thread},
    {"time", PyInit_time},
    {"atexit", PyInit_atexit},
    {"_codecs", PyInit__codecs},
    {"faulthandler", PyInit_faulthandler},
    {"_opcode", PyInit__opcode},
    {"_pickle", PyInit__pickle},
    {"_sre", PyInit__sre},
    {"_stat", PyInit__stat},
    {"_symtable", PyInit__symtable},
    {"_tracemalloc", PyInit__tracemalloc},
    {"_weakref", PyInit__weakref},
    {"xxsubtype", PyInit_xxsubtype},
    {"zipimport", PyInit_zipimport},
    {"posix", PyInit_posix},
    {"pwd", PyInit_pwd},
    {"errno", PyInit_errno},
    {"_posixsubprocess", PyInit__posixsubprocess},
    {"_socket", PyInit__socket},


/* -- ADDMODULE MARKER 2 -- */

    /* This module lives in marshal.c */
    {"marshal", PyMarshal_Init},

    /* This lives in import.c */
    {"_imp", PyInit_imp},

    /* This lives in Python/Python-ast.c */
    {"_ast", PyInit__ast},

    /* These entries are here for sys.builtin_module_names */
    {"builtins", NULL},
    {"sys", NULL},

    /* This lives in gcmodule.c */
    {"gc", PyInit_gc},

    /* This lives in _warnings.c */
    {"_warnings", _PyWarnings_Init},

    /* This lives in Objects/unicodeobject.c */
    {"_string", PyInit__string},

    {"errno", PyInit_errno},
    {"_codecs", PyInit__codecs},
    {"_signal", PyInit__signal},
    {"_sre", PyInit__sre},
    {"_symtable", PyInit__symtable},
    {"_weakref", PyInit__weakref},
    {"xxsubtype", PyInit_xxsubtype},
    {"zipimport", PyInit_zipimport},

    /* Sentinel */
    {0, 0}
};


#ifdef __cplusplus
}
#endif
