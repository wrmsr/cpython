#define PY_SSIZE_T_CLEAN
#include "Python.h"

#ifdef __cplusplus
extern "C" {
#endif


static PyMethodDef ft_methods[] = {
    {NULL,              NULL}           /* sentinel */
};


PyDoc_STRVAR(module_doc,
"\n\
");


static struct PyModuleDef ftmodule = {
    PyModuleDef_HEAD_INIT,
    "_ft",
    module_doc,
    -1,
    ft_methods,
    NULL,
    NULL,
    NULL,
    NULL
};

PyMODINIT_FUNC
PyInit__ft(void)
{
    PyObject *m;
    m = PyModule_Create(&ftmodule);
    if (m == NULL)
        return NULL;

    return m;
}


#ifdef __cplusplus
}
#endif
