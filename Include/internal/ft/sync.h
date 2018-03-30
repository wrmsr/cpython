#ifndef Py_INTERNAL_FT_SYNC_H
#define Py_INTERNAL_FT_SYNC_H
#ifdef __cplusplus
extern "C" {
#endif

typedef enum _Py_sync_mode {
    undefined,
    not_set,
    none,
    stamped,
    mutex,
    rwmutex,
    cow,
    exclusive,
    adaptive_exclusive,
    futex,
    biased,
    lockless,
} _Py_sync_mode;

#ifdef __cplusplus
}
#endif
#endif /* !Py_INTERNAL_FT_SYNC_H */
