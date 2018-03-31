#ifndef Py_INTERNAL_FT_LFDS_H
#define Py_INTERNAL_FT_LFDS_H
#ifdef __cplusplus
extern "C" {
#endif





#ifndef LIBLFDS_H

  /***** defines *****/
  #define LIBLFDS_H

  /***** includes *****/
/***** liblfds/lfds_porting_abstraction_layer_compiler.h *****/





/****************************************************************************/
#if( defined __GNUC__ )
  // TRD : makes checking GCC versions much tidier
  #define LFDS_PAL_GCC_VERSION ( __GNUC__ * 100 + __GNUC_MINOR__ * 10 + __GNUC_PATCHLEVEL__ )
#endif





/****************************************************************************/
#if( defined _MSC_VER && _MSC_VER >= 1400 )

  #ifdef LFDS_PAL_COMPILER
    #error More than one porting abstraction layer matches the current platform in lfds_porting_abstraction_layer_compiler.h
  #endif

  #define LFDS_PAL_COMPILER

  #define LFDS_PAL_COMPILER_STRING            "MSVC"

  #define LFDS_PAL_ALIGN(alignment)           __declspec( align(alignment) )
  #define LFDS_PAL_INLINE                     __forceinline

  #define LFDS_PAL_BARRIER_COMPILER_LOAD      _ReadBarrier()
  #define LFDS_PAL_BARRIER_COMPILER_STORE     _WriteBarrier()
  #define LFDS_PAL_BARRIER_COMPILER_FULL      _ReadWriteBarrier()

  /* TRD : there are four processors to consider;

           . ARM32    (32 bit, ADD, CAS, DWCAS, EXCHANGE, SET) (defined _M_ARM)
           . Itanium  (64 bit, ADD, CAS,        EXCHANGE, SET) (defined _M_IA64)
           . x64      (64 bit, ADD, CAS, DWCAS, EXCHANGE, SET) (defined _M_X64 || defined _M_AMD64)
           . x86      (32 bit, ADD, CAS, DWCAS, EXCHANGE, SET) (defined _M_IX86)

           can't find any indications of 64-bit ARM support yet

           ARM has better intrinsics than the others, as there are no-fence variants

           in theory we also have to deal with 32-bit Windows on a 64-bit platform,
           and I presume we'd see the compiler properly indicate this in its macros,
           but this would require that we use 32-bit atomics on the 64-bit platforms,
           while keeping 64-bit cache line lengths and so on, and this is just so
           wierd a thing to do these days that it's not supported
  */

  #if( defined _M_ARM )
    #define LFDS_PAL_BARRIER_PROCESSOR_LOAD   __dmb( _ARM_BARRIER_ISH )
    #define LFDS_PAL_BARRIER_PROCESSOR_STORE  __dmb( _ARM_BARRIER_ISHST )
    #define LFDS_PAL_BARRIER_PROCESSOR_FULL   __dmb( _ARM_BARRIER_ISH )

    #define LFDS_PAL_ATOMIC_ADD( pointer_to_target, value, result, result_type )                                  \
    {                                                                                                                \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                             \
      (result) = (result_type) _InterlockedAdd_nf( (int long volatile *) (pointer_to_target), (int long) (value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                             \
    }

    #define LFDS_PAL_ATOMIC_CAS( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, result )                                                                                          \
    {                                                                                                                                                                                                            \
      lfds_pal_uint_t                                                                                                                                                                                         \
        original_compare;                                                                                                                                                                                        \
                                                                                                                                                                                                                 \
      original_compare = (lfds_pal_uint_t) *(pointer_to_compare);                                                                                                                                             \
                                                                                                                                                                                                                 \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                         \
      *(lfds_pal_uint_t *) (pointer_to_compare) = (lfds_pal_uint_t) _InterlockedCompareExchange_nf( (long volatile *) (pointer_to_destination), (long) (new_destination), (long) *(pointer_to_compare) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                         \
                                                                                                                                                                                                                 \
      result = (char unsigned) ( original_compare == (lfds_pal_uint_t) *(pointer_to_compare) );                                                                                                               \
    }

    #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )                                                                        \
    {                                                                                                                                                                                                       \
      __int64                                                                                                                                                                                               \
        original_compare;                                                                                                                                                                                   \
                                                                                                                                                                                                            \
      original_compare = *(__int64 *) (pointer_to_compare);                                                                                                                                                 \
                                                                                                                                                                                                            \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                    \
      *(__int64 *) (pointer_to_compare) = _InterlockedCompareExchange64_nf( (__int64 volatile *) (pointer_to_destination), *(__int64 *) (pointer_to_new_destination), *(__int64 *) (pointer_to_compare) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                    \
                                                                                                                                                                                                            \
      (result) = (char unsigned) ( *(__int64 *) (pointer_to_compare) == original_compare );                                                                                                                 \
    }

    #define LFDS_PAL_ATOMIC_EXCHANGE( pointer_to_destination, exchange, exchange_type )                                            \
    {                                                                                                                                 \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                              \
      (exchange) = (exchange_type) _InterlockedExchange_nf( (int long volatile *) (pointer_to_destination), (int long) (exchange) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                              \
    }

    #define LFDS_PAL_ATOMIC_SET( pointer_to_destination, new_value )                                          \
    {                                                                                                            \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                         \
      (void) _InterlockedExchange_nf( (int long volatile *) (pointer_to_destination), (int long) (new_value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                         \
    }
  #endif

  #if( defined _M_IA64 )
    #define LFDS_PAL_BARRIER_PROCESSOR_LOAD   __mf()
    #define LFDS_PAL_BARRIER_PROCESSOR_STORE  __mf()
    #define LFDS_PAL_BARRIER_PROCESSOR_FULL   __mf()

    #define LFDS_PAL_ATOMIC_ADD( pointer_to_target, value, result, result_type )                                   \
    {                                                                                                                 \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                              \
      (result) = (result_type) _InterlockedAdd64_acq( (__int64 volatile *) (pointer_to_target), (__int64) (value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                              \
    }

    #define LFDS_PAL_ATOMIC_CAS( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, result )                                                                                                      \
    {                                                                                                                                                                                                                        \
      lfds_pal_uint_t                                                                                                                                                                                                     \
        original_compare;                                                                                                                                                                                                    \
                                                                                                                                                                                                                             \
      original_compare = (lfds_pal_uint_t) *(pointer_to_compare);                                                                                                                                                         \
                                                                                                                                                                                                                             \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                     \
      *(lfds_pal_uint_t *) (pointer_to_compare) = (lfds_pal_uint_t) _InterlockedCompareExchange64_acq( (__int64 volatile *) (pointer_to_destination), (__int64) (new_destination), (__int64) *(pointer_to_compare) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                     \
                                                                                                                                                                                                                             \
      result = (char unsigned) ( original_compare == (lfds_pal_uint_t) *(pointer_to_compare) );                                                                                                                           \
    }

    #define LFDS_PAL_ATOMIC_EXCHANGE( pointer_to_destination, exchange, exchange_type )                                             \
    {                                                                                                                                  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                               \
      (exchange) = (exchange_type) _InterlockedExchange64_acq( (__int64 volatile *) (pointer_to_destination), (__int64) (exchange) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                               \
    }

    #define LFDS_PAL_ATOMIC_SET( pointer_to_destination, new_value )                                           \
    {                                                                                                             \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                          \
      (void) _InterlockedExchange64_acq( (__int64 volatile *) (pointer_to_destination), (__int64) (new_value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                          \
    }
  #endif

  #if( defined _M_X64 || defined _M_AMD64 )
    #define LFDS_PAL_BARRIER_PROCESSOR_LOAD   _mm_lfence()
    #define LFDS_PAL_BARRIER_PROCESSOR_STORE  _mm_sfence()
    #define LFDS_PAL_BARRIER_PROCESSOR_FULL   _mm_mfence()

    // TRD : no _InterlockedAdd64 for x64 - only the badly named _InterlockedExchangeAdd64, which is the same as _InterlockedAdd64 but returns the *original* value (which we must then add to before we return)
    #define LFDS_PAL_ATOMIC_ADD( pointer_to_target, value, result, result_type )                                       \
    {                                                                                                                     \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                  \
      (result) = (result_type) _InterlockedExchangeAdd64( (__int64 volatile *) (pointer_to_target), (__int64) (value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                  \
      result += value;                                                                                                    \
    }

    #define LFDS_PAL_ATOMIC_CAS( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, result )                                                                                                  \
    {                                                                                                                                                                                                                    \
      lfds_pal_uint_t                                                                                                                                                                                                 \
        original_compare;                                                                                                                                                                                                \
                                                                                                                                                                                                                         \
      original_compare = (lfds_pal_uint_t) *(pointer_to_compare);                                                                                                                                                     \
                                                                                                                                                                                                                         \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                 \
      *(lfds_pal_uint_t *) (pointer_to_compare) = (lfds_pal_uint_t) _InterlockedCompareExchange64( (__int64 volatile *) (pointer_to_destination), (__int64) (new_destination), (__int64) *(pointer_to_compare) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                 \
                                                                                                                                                                                                                         \
      result = (char unsigned) ( original_compare == (lfds_pal_uint_t) *(pointer_to_compare) );                                                                                                                       \
    }

    #if( _MSC_VER >= 1500 )
      #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )                                                                                                       \
      {                                                                                                                                                                                                                                      \
        LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                                   \
        (result) = (char unsigned) _InterlockedCompareExchange128( (__int64 volatile *) (pointer_to_destination), (__int64) (pointer_to_new_destination[1]), (__int64) (pointer_to_new_destination[0]), (__int64 *) (pointer_to_compare) );  \
        LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                                   \
      }
    #endif

    #define LFDS_PAL_ATOMIC_EXCHANGE( pointer_to_destination, exchange, exchange_type )                                         \
    {                                                                                                                              \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                           \
      (exchange) = (exchange_type) _InterlockedExchange64( (__int64 volatile *) (pointer_to_destination), (__int64) (exchange) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                           \
    }

    #define LFDS_PAL_ATOMIC_SET( pointer_to_destination, new_value )                                       \
    {                                                                                                         \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                      \
      (void) _InterlockedExchange64( (__int64 volatile *) (pointer_to_destination), (__int64) (new_value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                      \
    }
  #endif

  #if( defined _M_IX86 )
    #define LFDS_PAL_BARRIER_PROCESSOR_LOAD   lfds_misc_force_store()
    #define LFDS_PAL_BARRIER_PROCESSOR_STORE  lfds_misc_force_store()
    #define LFDS_PAL_BARRIER_PROCESSOR_FULL   lfds_misc_force_store()

    // TRD : no _InterlockedAdd for x86 - only the badly named _InterlockedExchangeAdd, which is the same as _InterlockedAdd but returns the *original* value (which we must then add to before we return)
    #define LFDS_PAL_ATOMIC_ADD( pointer_to_target, value, result, result_type )                                     \
    {                                                                                                                   \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                \
      (result) = (result_type) _InterlockedExchangeAdd( (__int64 volatile *) (pointer_to_target), (__int64) (value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                \
      result += value;                                                                                                  \
    }

    #define LFDS_PAL_ATOMIC_CAS( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, result )                                                                                       \
    {                                                                                                                                                                                                         \
      lfds_pal_uint_t                                                                                                                                                                                      \
        original_compare;                                                                                                                                                                                     \
                                                                                                                                                                                                              \
      /* LFDS_PAL_ASSERT( (pointer_to_destination) != NULL ); */                                                                                                                                           \
      /* LFDS_PAL_ASSERT( (pointer_to_compare) != NULL ); */                                                                                                                                               \
      /* TRD : new_destination can be any value in its range */                                                                                                                                               \
      /* TRD : cas_strength can be any value in its range */                                                                                                                                                  \
      /* TRD : result can be any value in its range */                                                                                                                                                        \
                                                                                                                                                                                                              \
      original_compare = (lfds_pal_uint_t) *(pointer_to_compare);                                                                                                                                          \
                                                                                                                                                                                                              \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                      \
      *(lfds_pal_uint_t *) (pointer_to_compare) = (lfds_pal_uint_t) _InterlockedCompareExchange( (long volatile *) (pointer_to_destination), (long) (new_destination), (long) *(pointer_to_compare) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                      \
                                                                                                                                                                                                              \
      result = (char unsigned) ( original_compare == (lfds_pal_uint_t) *(pointer_to_compare) );                                                                                                            \
    }

    #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )                                                                     \
    {                                                                                                                                                                                                    \
      __int64                                                                                                                                                                                            \
        original_compare;                                                                                                                                                                                \
                                                                                                                                                                                                         \
      original_compare = *(__int64 *) (pointer_to_compare);                                                                                                                                              \
                                                                                                                                                                                                         \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                 \
      *(__int64 *) (pointer_to_compare) = _InterlockedCompareExchange64( (__int64 volatile *) (pointer_to_destination), *(__int64 *) (pointer_to_new_destination), *(__int64 *) (pointer_to_compare) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                 \
                                                                                                                                                                                                         \
      (result) = (char unsigned) ( *(__int64 *) (pointer_to_compare) == original_compare );                                                                                                              \
    }

    #define LFDS_PAL_ATOMIC_EXCHANGE( pointer_to_destination, exchange, exchange_type )                                         \
    {                                                                                                                              \
      /* LFDS_PAL_ASSERT( (pointer_to_destination) != NULL ); */                                                                \
      /* LFDS_PAL_ASSERT( (pointer_to_exchange) != NULL ); */                                                                   \
                                                                                                                                   \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                           \
      (exchange) = (exchange_type) _InterlockedExchange( (int long volatile *) (pointer_to_destination), (int long) (exchange) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                           \
    }

    #define LFDS_PAL_ATOMIC_SET( pointer_to_destination, new_value )                                       \
    {                                                                                                         \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                      \
      (void) _InterlockedExchange( (int long volatile *) (pointer_to_destination), (int long) (new_value) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                      \
    }
  #endif

#endif





/****************************************************************************/
#if( defined __GNUC__ && LFDS_PAL_GCC_VERSION >= 412 && LFDS_PAL_GCC_VERSION < 473 )

  #ifdef LFDS_PAL_COMPILER
    #error More than one porting abstraction layer matches the current platform in lfds_porting_abstraction_layer_compiler.h
  #endif

  #define LFDS_PAL_COMPILER

  #define LFDS_PAL_COMPILER_STRING          "GCC < 4.7.3"

  #define LFDS_PAL_ALIGN(alignment)         __attribute__( (aligned(alignment)) )
  #define LFDS_PAL_INLINE                   inline

  static LFDS_PAL_INLINE void lfds_pal_barrier_compiler( void )
  {
    __asm__ __volatile__ ( "" : : : "memory" );
  }

  #define LFDS_PAL_BARRIER_COMPILER_LOAD    lfds_pal_barrier_compiler()
  #define LFDS_PAL_BARRIER_COMPILER_STORE   lfds_pal_barrier_compiler()
  #define LFDS_PAL_BARRIER_COMPILER_FULL    lfds_pal_barrier_compiler()

  #define LFDS_PAL_BARRIER_PROCESSOR_LOAD   __sync_synchronize()
  #define LFDS_PAL_BARRIER_PROCESSOR_STORE  __sync_synchronize()
  #define LFDS_PAL_BARRIER_PROCESSOR_FULL   __sync_synchronize()

  #define LFDS_PAL_ATOMIC_ADD( pointer_to_target, value, result, result_type )                                               \
  {                                                                                                                             \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                          \
    (result) = (result_type) __sync_add_and_fetch( (lfds_pal_uint_t *) (pointer_to_target), (lfds_pal_uint_t) (value) );  \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                          \
  }

  #define LFDS_PAL_ATOMIC_CAS( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, result )       \
  {                                                                                                                         \
    lfds_pal_uint_t                                                                                                      \
      original_compare;                                                                                                     \
                                                                                                                            \
    original_compare = (lfds_pal_uint_t) *(pointer_to_compare);                                                          \
                                                                                                                            \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                      \
    *(pointer_to_compare) = __sync_val_compare_and_swap( pointer_to_destination, *(pointer_to_compare), new_destination );  \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                      \
                                                                                                                            \
    result = (unsigned char) ( original_compare == (lfds_pal_uint_t) *(pointer_to_compare) );                            \
  }

  #if( defined __x86_64__ )
    /* TRD : On 64 bit platforms, unsigned long long int is 64 bit, so we must manually use cmpxchg16b,
             as the atomic intrinsics will only emit cmpxchg8b
    */

    // TRD : lfds_pal_uint_t volatile (*destination)[2], lfds_pal_uint_t (*compare)[2], lfds_pal_uint_t (*new_destination)[2], enum lfds_misc_cas_strength cas_strength, char unsigned result

    #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )                             \
    {                                                                                                                                                            \
      (result) = 0;                                                                                                                                              \
                                                                                                                                                                 \
      __asm__ __volatile__                                                                                                                                       \
      (                                                                                                                                                          \
        "lock;"           /* make cmpxchg16b atomic        */                                                                                                    \
        "cmpxchg16b %0;"  /* cmpxchg16b sets ZF on success */                                                                                                    \
        "setz       %4;"  /* if ZF set, set result to 1    */                                                                                                    \
                                                                                                                                                                 \
        /* output */                                                                                                                                             \
        : "+m" ((pointer_to_destination)[0]), "+m" ((pointer_to_destination)[1]), "+a" ((pointer_to_compare)[0]), "+d" ((pointer_to_compare)[1]), "=q" (result)  \
                                                                                                                                                                 \
        /* input */                                                                                                                                              \
        : "b" ((pointer_to_new_destination)[0]), "c" ((pointer_to_new_destination)[1])                                                                           \
                                                                                                                                                                 \
        /* clobbered */                                                                                                                                          \
        :                                                                                                                                                        \
      );                                                                                                                                                         \
    }
  #endif

  // TRD : ARM and x86 have DWCAS which we can get via GCC intrinsics
  #if( defined __arm__ || defined __i686__ || defined __i586__ || defined __i486__ )
    #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )                                                                                                   \
    {                                                                                                                                                                                                                                  \
      int long long unsigned                                                                                                                                                                                                           \
        original_destination;                                                                                                                                                                                                          \
                                                                                                                                                                                                                                       \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                               \
      original_destination = __sync_val_compare_and_swap( (int long long unsigned volatile *) (pointer_to_destination), *(int long long unsigned *) (pointer_to_compare), *(int long long unsigned *) (pointer_to_new_destination) );  \
      LFDS_PAL_BARRIER_COMPILER_FULL;                                                                                                                                                                                               \
                                                                                                                                                                                                                                       \
      (result) = (char unsigned) ( original_destination == *(int long long unsigned *) (pointer_to_compare) );                                                                                                                         \
                                                                                                                                                                                                                                       \
      *(int long long unsigned *) (pointer_to_compare) = original_destination;                                                                                                                                                         \
    }
  #endif

  #define LFDS_PAL_ATOMIC_EXCHANGE( pointer_to_destination, exchange, exchange_type )          \
  {                                                                                               \
    /* LFDS_PAL_ASSERT( (pointer_to_destination) != NULL ); */                                 \
    /* TRD : exchange can be any value in its range */                                            \
    /* TRD : exchange_type can be any value in its range */                                       \
                                                                                                  \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                                            \
    (exchange) = (exchange_type) __sync_lock_test_and_set( pointer_to_destination, (exchange) );  \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                                            \
  }

  #define LFDS_PAL_ATOMIC_SET( pointer_to_destination, new_value )        \
  {                                                                          \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                       \
    (void) __sync_lock_test_and_set( pointer_to_destination, (new_value) );  \
    LFDS_PAL_BARRIER_COMPILER_FULL;                                       \
  }

#endif





/****************************************************************************/
#if( defined __GNUC__ && LFDS_PAL_GCC_VERSION >= 473 )

  #ifdef LFDS_PAL_COMPILER
    #error More than one porting abstraction layer matches the current platform in lfds_porting_abstraction_layer_compiler.h
  #endif

  #define LFDS_PAL_COMPILER

  #define LFDS_PAL_COMPILER_STRING          "GCC >= 4.7.3"

  #define LFDS_PAL_ALIGN(alignment)         __attribute__( (aligned(alignment)) )
  #define LFDS_PAL_INLINE                   inline

  // TRD : GCC >= 4.7.3 compiler barriers are built into the intrinsics
  #define LFDS_PAL_COMPILER_BARRIERS_MISSING_PRESUMED_HAVING_A_GOOD_TIME

  #define LFDS_PAL_BARRIER_PROCESSOR_LOAD   __atomic_thread_fence( __ATOMIC_ACQUIRE )
  #define LFDS_PAL_BARRIER_PROCESSOR_STORE  __atomic_thread_fence( __ATOMIC_RELEASE )
  #define LFDS_PAL_BARRIER_PROCESSOR_FULL   __atomic_thread_fence( __ATOMIC_ACQ_REL )

  #define LFDS_PAL_ATOMIC_ADD( pointer_to_target, value, result, result_type )                   \
  {                                                                                                 \
    (result) = (result_type) __atomic_add_fetch( (pointer_to_target), (value), __ATOMIC_RELAXED );  \
  }

  #define LFDS_PAL_ATOMIC_CAS( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, result )                                                       \
  {                                                                                                                                                                         \
    result = (char unsigned) __atomic_compare_exchange_n( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, __ATOMIC_RELAXED, __ATOMIC_RELAXED );  \
  }

  // TRD : ARM and x86 have DWCAS which we can get via GCC intrinsics
  #if( defined __arm__ || defined __i686__ || defined __i586__ || defined __i486__ )
    #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )                                                                                                                                                          \
    {                                                                                                                                                                                                                                                                                         \
      (result) = (char unsigned) __atomic_compare_exchange_n( (int long long unsigned volatile *) (pointer_to_destination), (int long long unsigned *) (pointer_to_compare), *(int long long unsigned *) (pointer_to_new_destination), (cas_strength), __ATOMIC_RELAXED, __ATOMIC_RELAXED );  \
    }
  #endif

  #if( defined __x86_64__ )
    /* TRD : On 64 bit platforms, unsigned long long int is 64 bit, so we must manually use cmpxchg16b,
             as __sync_val_compare_and_swap() will only emit cmpxchg8b
    */

    // TRD : lfds_pal_uint_t volatile (*destination)[2], lfds_pal_uint_t (*compare)[2], lfds_pal_uint_t (*new_destination)[2], enum lfds_misc_cas_strength cas_strength, char unsigned result

    #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )                             \
    {                                                                                                                                                            \
      (result) = 0;                                                                                                                                              \
                                                                                                                                                                 \
      __asm__ __volatile__                                                                                                                                       \
      (                                                                                                                                                          \
        "lock;"           /* make cmpxchg16b atomic        */                                                                                                    \
        "cmpxchg16b %0;"  /* cmpxchg16b sets ZF on success */                                                                                                    \
        "setz       %4;"  /* if ZF set, set result to 1    */                                                                                                    \
                                                                                                                                                                 \
        /* output */                                                                                                                                             \
        : "+m" ((pointer_to_destination)[0]), "+m" ((pointer_to_destination)[1]), "+a" ((pointer_to_compare)[0]), "+d" ((pointer_to_compare)[1]), "=q" (result)  \
                                                                                                                                                                 \
        /* input */                                                                                                                                              \
        : "b" ((pointer_to_new_destination)[0]), "c" ((pointer_to_new_destination)[1])                                                                           \
                                                                                                                                                                 \
        /* clobbered */                                                                                                                                          \
        :                                                                                                                                                        \
      );                                                                                                                                                         \
    }
  #endif

  #define LFDS_PAL_ATOMIC_EXCHANGE( pointer_to_destination, exchange, exchange_type )                         \
  {                                                                                                              \
    (exchange) = (exchange_type) __atomic_exchange_n( (pointer_to_destination), (exchange), __ATOMIC_RELAXED );  \
  }

  #define LFDS_PAL_ATOMIC_SET( pointer_to_destination, new_value )                       \
  {                                                                                         \
    (void) __atomic_exchange_n( (pointer_to_destination), (new_value), __ATOMIC_RELAXED );  \
  }

#endif





/****************************************************************************/
#if( !defined LFDS_PAL_COMPILER )

  #error No matching porting abstraction layer in lfds_porting_abstraction_layer_compiler.h

#endif





/***** liblfds/lfds_porting_abstraction_layer_operating_system.h *****/





  #define LFDS_PAL_OS_STRING "generic"
  #define LFDS_PAL_ASSERT( expression )  assert(expression)





/***** liblfds/lfds_porting_abstraction_layer_processor.h *****/





/****************************************************************************/
#if( defined _MSC_VER && defined _M_IX86 )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "x86"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   32

#endif





/****************************************************************************/
#if( defined _MSC_VER && (defined _M_X64 || defined _M_AMD64) )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "x64"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  // TRD : Intel bring over two cache lines at once, always, unless disabled in BIOS
  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   128

#endif





/****************************************************************************/
#if( defined _MSC_VER && defined _M_IA64 )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "IA64"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   64

#endif





/****************************************************************************/
#if( defined _MSC_VER && defined _M_ARM )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "ARM (32-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  /* TRD : ARM is LL/SC and uses a reservation granule of 8 to 2048 bytes
           so the isolation value used here is worst-case - be sure to set
           this correctly, otherwise structures are painfully large

           the test application has an argument, "-e", which attempts to
           determine the ERG length
  */

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   2048

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __arm__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "ARM (32-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  /* TRD : ARM is LL/SC and uses a reservation granule of 8 to 2048 bytes
           so the isolation value used here is worst-case - be sure to set
           this correctly, otherwise structures are painfully large

           the test application has an argument, "-e", which attempts to
           determine the ERG length
  */

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   2048

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __aarch64__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "ARM (64-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  /* TRD : ARM is LL/SC and uses a reservation granule of 8 to 2048 bytes
           so the isolation value used here is worst-case - be sure to set
           this correctly, otherwise structures are painfully large

           the test application has an argument, "-e", which attempts to
           determine the ERG length
  */

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   2048

#endif





/****************************************************************************/
#if( defined __GNUC__ && (defined __i686__ || defined __i586__ || defined __i486__) )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "x86"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   32

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __x86_64__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "x64"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   128

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __alpha__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "alpha"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   64

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __ia64__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "IA64"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   64

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __mips__ && !defined __mips64 )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "MIPS (32-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   32

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __mips__ && defined __mips64 )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "MIPS (64-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   64

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __ppc__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "POWERPC (32-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  // TRD : this value is not very certain
  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   128

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __ppc64__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "POWERPC (64-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  // TRD : this value is not very certain
  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   128

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __sparc__ && !defined __sparc_v9__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "SPARC (32-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   32

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __sparc__ && defined __sparc_v9__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long long          lfds_pal_int_t;
  typedef int long long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "SPARC (64-bit)"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        8
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        16

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   64

#endif





/****************************************************************************/
#if( defined __GNUC__ && defined __m68k__ )

  #ifdef LFDS_PAL_PROCESSOR
    #error More than one porting abstraction layer matches the current platform in "lfds_porting_abstraction_layer_processor.h".
  #endif

  #define LFDS_PAL_PROCESSOR

  typedef int long          lfds_pal_int_t;
  typedef int long unsigned lfds_pal_uint_t;

  #define LFDS_PAL_PROCESSOR_STRING            "680x0"

  #define LFDS_PAL_ALIGN_SINGLE_POINTER        4
  #define LFDS_PAL_ALIGN_DOUBLE_POINTER        8

  #define LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES   32

#endif





/****************************************************************************/
#if( !defined LFDS_PAL_PROCESSOR )

  #error No matching porting abstraction layer in "lfds_porting_abstraction_layer_processor.h".

#endif






/***** liblfds/lfds_prng.h *****/





/***** defines *****/
#define LFDS_PRNG_MAX  ( (lfds_pal_uint_t) -1 )

/* TRD : the seed is from an on-line hardware RNG, using atmospheric noise
         the URL below will generate another 16 random hex digits (e.g. a 64-bit number) and is
         the RNG used to generate the number above (0x0a34655d34c092fe)

         http://www.random.org/integers/?num=16&min=0&max=15&col=1&base=16&format=plain&rnd=new

         the 32 bit seed is the upper half of the 64 bit seed

         the "SplitMix" PRNG is from from Sebastiano vigna's site, CC0 license, http://xorshift.di.unimi.it/splitmix64.c
         the 64-bit constants come directly from the source, the 32-bt constants are in fact the 32-bit murmurhash3 constants
*/

#if( LFDS_PAL_ALIGN_SINGLE_POINTER == 4 )
  #define LFDS_PRNG_SEED                            0x0a34655dUL
  #define LFDS_PRNG_SPLITMIX_MAGIC_RATIO            0x9E3779B9UL
  #define LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_ONE     16
  #define LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_TWO     13
  #define LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_THREE   16
  #define LFDS_PRNG_SPLITMIX_MULTIPLY_CONSTANT_ONE  0x85ebca6bUL
  #define LFDS_PRNG_SPLITMIX_MULTIPLY_CONSTANT_TWO  0xc2b2ae35UL
#endif

#if( LFDS_PAL_ALIGN_SINGLE_POINTER == 8 )
  #define LFDS_PRNG_SEED                            0x0a34655d34c092feULL
  #define LFDS_PRNG_SPLITMIX_MAGIC_RATIO            0x9E3779B97F4A7C15ULL
  #define LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_ONE     30
  #define LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_TWO     27
  #define LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_THREE   31
  #define LFDS_PRNG_SPLITMIX_MULTIPLY_CONSTANT_ONE  0xBF58476D1CE4E5B9ULL
  #define LFDS_PRNG_SPLITMIX_MULTIPLY_CONSTANT_TWO  0x94D049BB133111EBULL
#endif

// TRD : struct lfds_prng_state prng_state, lfds_pal_uint_t random_value
#define LFDS_PRNG_GENERATE( prng_state, random_value )                                                                  \
{                                                                                                                          \
  LFDS_PAL_ATOMIC_ADD( &(prng_state).entropy, LFDS_PRNG_SPLITMIX_MAGIC_RATIO, (random_value), lfds_pal_uint_t );  \
  LFDS_PRNG_ST_MIXING_FUNCTION( random_value );                                                                         \
}

// TRD : struct lfds_prng_state prng_st_state, lfds_pal_uint_t random_value
#define LFDS_PRNG_ST_GENERATE( prng_st_state, random_value )                       \
{                                                                                     \
  (random_value) = ( (prng_st_state).entropy += LFDS_PRNG_SPLITMIX_MAGIC_RATIO );  \
  LFDS_PRNG_ST_MIXING_FUNCTION( random_value );                                    \
}

// TRD : lfds_pal_uint_t random_value
#define LFDS_PRNG_ST_MIXING_FUNCTION( random_value )                                                                                            \
{                                                                                                                                                  \
  (random_value) = ((random_value) ^ ((random_value) >> LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_ONE)) * LFDS_PRNG_SPLITMIX_MULTIPLY_CONSTANT_ONE;  \
  (random_value) = ((random_value) ^ ((random_value) >> LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_TWO)) * LFDS_PRNG_SPLITMIX_MULTIPLY_CONSTANT_TWO;  \
  (random_value) = (random_value ^ (random_value >> LFDS_PRNG_SPLITMIX_SHIFT_CONSTANT_THREE));                                                  \
}

/***** structs *****/
struct lfds_prng_state
{
  lfds_pal_uint_t volatile LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    entropy;
};

struct lfds_prng_st_state
{
  lfds_pal_uint_t
    entropy;
};

/***** public prototypes *****/
void lfds_prng_init_valid_on_current_logical_core( struct lfds_prng_state *ps, lfds_pal_uint_t seed );
void lfds_prng_st_init( struct lfds_prng_st_state *psts, lfds_pal_uint_t seed );





/***** liblfds/lfds_misc.h *****/





/***** defines *****/
#define LFDS_MISC_VERSION_STRING   "7.1.1"
#define LFDS_MISC_VERSION_INTEGER

#ifndef NULL
  #define NULL ( (void *) 0 )
#endif

#define POINTER   0
#define COUNTER   1
#define PAC_SIZE  2

#define LFDS_MISC_DELIBERATELY_CRASH  { char *c = 0; *c = 0; }

#if( !defined LFDS_PAL_ATOMIC_ADD )
  #define LFDS_PAL_NO_ATOMIC_ADD
  #define LFDS_MISC_ATOMIC_SUPPORT_ADD 0
  #define LFDS_PAL_ATOMIC_ADD( pointer_to_target, value, result, result_type )        \
  {                                                                                      \
    LFDS_PAL_ASSERT( !"LFDS_PAL_ATOMIC_ADD not implemented for this platform." );  \
    LFDS_MISC_DELIBERATELY_CRASH;                                                     \
  }
#else
  #define LFDS_MISC_ATOMIC_SUPPORT_ADD 1
#endif

#if( !defined LFDS_PAL_ATOMIC_CAS )
  #define LFDS_PAL_NO_ATOMIC_CAS
  #define LFDS_MISC_ATOMIC_SUPPORT_CAS 0
  #define LFDS_PAL_ATOMIC_CAS( pointer_to_destination, pointer_to_compare, new_destination, cas_strength, result )  \
  {                                                                                                                    \
    LFDS_PAL_ASSERT( !"LFDS_PAL_ATOMIC_CAS not implemented for this platform." );                                \
    (result) = 0;                                                                                                      \
    LFDS_MISC_DELIBERATELY_CRASH;                                                                                   \
  }
#else
  #define LFDS_MISC_ATOMIC_SUPPORT_CAS 1
#endif

#if( !defined LFDS_PAL_ATOMIC_DWCAS )
  #define LFDS_PAL_NO_ATOMIC_DWCAS
  #define LFDS_MISC_ATOMIC_SUPPORT_DWCAS 0
  #define LFDS_PAL_ATOMIC_DWCAS( pointer_to_destination, pointer_to_compare, pointer_to_new_destination, cas_strength, result )  \
  {                                                                                                                                 \
    LFDS_PAL_ASSERT( !"LFDS_PAL_ATOMIC_DWCAS not implemented for this platform." );                                           \
    (result) = 0;                                                                                                                   \
    LFDS_MISC_DELIBERATELY_CRASH;                                                                                                \
  }
#else
  #define LFDS_MISC_ATOMIC_SUPPORT_DWCAS 1
#endif

#if( !defined LFDS_PAL_ATOMIC_EXCHANGE )
  #define LFDS_PAL_NO_ATOMIC_EXCHANGE
  #define LFDS_MISC_ATOMIC_SUPPORT_EXCHANGE 0
  #define LFDS_PAL_ATOMIC_EXCHANGE( pointer_to_destination, new_value, original_value, value_type )  \
  {                                                                                                     \
    LFDS_PAL_ASSERT( !"LFDS_PAL_ATOMIC_EXCHANGE not implemented for this platform." );            \
    LFDS_MISC_DELIBERATELY_CRASH;                                                                    \
  }
#else
  #define LFDS_MISC_ATOMIC_SUPPORT_EXCHANGE 1
#endif

#if( !defined LFDS_PAL_ATOMIC_SET )
  #define LFDS_PAL_NO_ATOMIC_SET
  #define LFDS_MISC_ATOMIC_SUPPORT_SET 0
  #define LFDS_PAL_ATOMIC_SET( pointer_to_destination, new_value )                    \
  {                                                                                      \
    LFDS_PAL_ASSERT( !"LFDS_PAL_ATOMIC_SET not implemented for this platform." );  \
    LFDS_MISC_DELIBERATELY_CRASH;                                                     \
  }
#else
  #define LFDS_MISC_ATOMIC_SUPPORT_SET 1
#endif

#if( defined LFDS_PAL_BARRIER_COMPILER_LOAD && defined LFDS_PAL_BARRIER_PROCESSOR_LOAD )
  #define LFDS_MISC_BARRIER_LOAD  ( LFDS_PAL_BARRIER_COMPILER_LOAD, LFDS_PAL_BARRIER_PROCESSOR_LOAD, LFDS_PAL_BARRIER_COMPILER_LOAD )
#endif

#if( (!defined LFDS_PAL_BARRIER_COMPILER_LOAD || defined LFDS_PAL_COMPILER_BARRIERS_MISSING_PRESUMED_HAVING_A_GOOD_TIME) && defined LFDS_PAL_BARRIER_PROCESSOR_LOAD )
  #define LFDS_MISC_BARRIER_LOAD  LFDS_PAL_BARRIER_PROCESSOR_LOAD
#endif

#if( defined LFDS_PAL_BARRIER_COMPILER_LOAD && !defined LFDS_PAL_BARRIER_PROCESSOR_LOAD )
  #define LFDS_MISC_BARRIER_LOAD  LFDS_PAL_BARRIER_COMPILER_LOAD
#endif

#if( !defined LFDS_PAL_BARRIER_COMPILER_LOAD && !defined LFDS_PAL_BARRIER_PROCESSOR_LOAD )
  #define LFDS_MISC_BARRIER_LOAD
#endif

#if( defined LFDS_PAL_BARRIER_COMPILER_STORE && defined LFDS_PAL_BARRIER_PROCESSOR_STORE )
  #define LFDS_MISC_BARRIER_STORE  ( LFDS_PAL_BARRIER_COMPILER_STORE, LFDS_PAL_BARRIER_PROCESSOR_STORE, LFDS_PAL_BARRIER_COMPILER_STORE )
#endif

#if( (!defined LFDS_PAL_BARRIER_COMPILER_STORE || defined LFDS_PAL_COMPILER_BARRIERS_MISSING_PRESUMED_HAVING_A_GOOD_TIME) && defined LFDS_PAL_BARRIER_PROCESSOR_STORE )
  #define LFDS_MISC_BARRIER_STORE  LFDS_PAL_BARRIER_PROCESSOR_STORE
#endif

#if( defined LFDS_PAL_BARRIER_COMPILER_STORE && !defined LFDS_PAL_BARRIER_PROCESSOR_STORE )
  #define LFDS_MISC_BARRIER_STORE  LFDS_PAL_BARRIER_COMPILER_STORE
#endif

#if( !defined LFDS_PAL_BARRIER_COMPILER_STORE && !defined LFDS_PAL_BARRIER_PROCESSOR_STORE )
  #define LFDS_MISC_BARRIER_STORE
#endif

#if( defined LFDS_PAL_BARRIER_COMPILER_FULL && defined LFDS_PAL_BARRIER_PROCESSOR_FULL )
  #define LFDS_MISC_BARRIER_FULL  ( LFDS_PAL_BARRIER_COMPILER_FULL, LFDS_PAL_BARRIER_PROCESSOR_FULL, LFDS_PAL_BARRIER_COMPILER_FULL )
#endif

#if( (!defined LFDS_PAL_BARRIER_COMPILER_FULL || defined LFDS_PAL_COMPILER_BARRIERS_MISSING_PRESUMED_HAVING_A_GOOD_TIME) && defined LFDS_PAL_BARRIER_PROCESSOR_FULL )
  #define LFDS_MISC_BARRIER_FULL  LFDS_PAL_BARRIER_PROCESSOR_FULL
#endif

#if( defined LFDS_PAL_BARRIER_COMPILER_FULL && !defined LFDS_PAL_BARRIER_PROCESSOR_FULL )
  #define LFDS_MISC_BARRIER_FULL  LFDS_PAL_BARRIER_COMPILER_FULL
#endif

#if( !defined LFDS_PAL_BARRIER_COMPILER_FULL && !defined LFDS_PAL_BARRIER_PROCESSOR_FULL )
  #define LFDS_MISC_BARRIER_FULL
#endif

#if( (defined LFDS_PAL_BARRIER_COMPILER_LOAD && defined LFDS_PAL_BARRIER_COMPILER_STORE && defined LFDS_PAL_BARRIER_COMPILER_FULL) || (defined LFDS_PAL_COMPILER_BARRIERS_MISSING_PRESUMED_HAVING_A_GOOD_TIME) )
  #define LFDS_MISC_ATOMIC_SUPPORT_COMPILER_BARRIERS  1
#else
  #define LFDS_MISC_ATOMIC_SUPPORT_COMPILER_BARRIERS  0
#endif

#if( defined LFDS_PAL_BARRIER_PROCESSOR_LOAD && defined LFDS_PAL_BARRIER_PROCESSOR_STORE && defined LFDS_PAL_BARRIER_PROCESSOR_FULL )
  #define LFDS_MISC_ATOMIC_SUPPORT_PROCESSOR_BARRIERS  1
#else
  #define LFDS_MISC_ATOMIC_SUPPORT_PROCESSOR_BARRIERS  0
#endif

#define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE  LFDS_MISC_BARRIER_LOAD
#define LFDS_MISC_FLUSH                                                                                    { LFDS_MISC_BARRIER_STORE; lfds_misc_force_store(); }

/***** enums *****/
enum lfds_misc_cas_strength
{
  // TRD : GCC defined values
  LFDS_MISC_CAS_STRENGTH_STRONG = 0,
  LFDS_MISC_CAS_STRENGTH_WEAK   = 1,
};

enum lfds_misc_validity
{
  LFDS_MISC_VALIDITY_UNKNOWN,
  LFDS_MISC_VALIDITY_VALID,
  LFDS_MISC_VALIDITY_INVALID_LOOP,
  LFDS_MISC_VALIDITY_INVALID_MISSING_ELEMENTS,
  LFDS_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS,
  LFDS_MISC_VALIDITY_INVALID_TEST_DATA,
  LFDS_MISC_VALIDITY_INVALID_ORDER,
  LFDS_MISC_VALIDITY_INVALID_ATOMIC_FAILED,
  LFDS_MISC_VALIDITY_INDETERMINATE_NONATOMIC_PASSED,
};

enum lfds_misc_flag
{
  LFDS_MISC_FLAG_LOWERED,
  LFDS_MISC_FLAG_RAISED
};

enum lfds_misc_query
{
  LFDS_MISC_QUERY_GET_BUILD_AND_VERSION_STRING
};

enum lfds_misc_data_structure
{
  LFDS_MISC_DATA_STRUCTURE_BTREE_AU,
  LFDS_MISC_DATA_STRUCTURE_FREELIST,
  LFDS_MISC_DATA_STRUCTURE_HASH_A,
  LFDS_MISC_DATA_STRUCTURE_LIST_AOS,
  LFDS_MISC_DATA_STRUCTURE_LIST_ASU,
  LFDS_MISC_DATA_STRUCTURE_QUEUE_BMM,
  LFDS_MISC_DATA_STRUCTURE_QUEUE_BSS,
  LFDS_MISC_DATA_STRUCTURE_QUEUE_UMM,
  LFDS_MISC_DATA_STRUCTURE_RINGBUFFER,
  LFDS_MISC_DATA_STRUCTURE_STACK,
  LFDS_MISC_DATA_STRUCTURE_COUNT
};

/***** struct *****/
struct lfds_misc_backoff_state
{
  lfds_pal_uint_t volatile LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    lock;

  lfds_pal_uint_t
    backoff_iteration_frequency_counters[2],
    metric,
    total_operations;
};

struct lfds_misc_globals
{
  struct lfds_prng_state
    ps;
};

struct lfds_misc_validation_info
{
  lfds_pal_uint_t
    min_elements,
    max_elements;
};

/***** externs *****/
extern struct lfds_misc_globals
  lfds_misc_globals;

/***** public prototypes *****/
static LFDS_PAL_INLINE void lfds_misc_force_store( void );

void lfds_misc_query( enum lfds_misc_query query_type, void *query_input, void *query_output );

/***** public in-line functions *****/
static LFDS_PAL_INLINE void lfds_misc_force_store()
{
  lfds_pal_uint_t volatile LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    destination;

  LFDS_PAL_ATOMIC_SET( &destination, 0 );

  return;
}





/***** liblfds/lfds_btree_addonly_unbalanced.h *****/





/***** defines *****/
#define LFDS_BTREE_AU_GET_KEY_FROM_ELEMENT( btree_au_element )             ( (btree_au_element).key )
#define LFDS_BTREE_AU_SET_KEY_IN_ELEMENT( btree_au_element, new_key )      ( (btree_au_element).key = (void *) (lfds_pal_uint_t) (new_key) )
#define LFDS_BTREE_AU_GET_VALUE_FROM_ELEMENT( btree_au_element )           ( LFDS_MISC_BARRIER_LOAD, (btree_au_element).value )
#define LFDS_BTREE_AU_SET_VALUE_IN_ELEMENT( btree_au_element, new_value )  { LFDS_PAL_ATOMIC_SET( &(btree_au_element).value, new_value ); }
#define LFDS_BTREE_AU_GET_USER_STATE_FROM_STATE( btree_au_state )          ( (btree_au_state).user_state )

/***** enums *****/
enum lfds_btree_au_absolute_position
{
  LFDS_BTREE_AU_ABSOLUTE_POSITION_ROOT,
  LFDS_BTREE_AU_ABSOLUTE_POSITION_SMALLEST_IN_TREE,
  LFDS_BTREE_AU_ABSOLUTE_POSITION_LARGEST_IN_TREE
};

enum lfds_btree_au_existing_key
{
  LFDS_BTREE_AU_EXISTING_KEY_OVERWRITE,
  LFDS_BTREE_AU_EXISTING_KEY_FAIL
};

enum lfds_btree_au_insert_result
{
  LFDS_BTREE_AU_INSERT_RESULT_FAILURE_EXISTING_KEY,
  LFDS_BTREE_AU_INSERT_RESULT_SUCCESS_OVERWRITE,
  LFDS_BTREE_AU_INSERT_RESULT_SUCCESS
};

enum lfds_btree_au_query
{
  LFDS_BTREE_AU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT,
  LFDS_BTREE_AU_QUERY_SINGLETHREADED_VALIDATE
};

enum lfds_btree_au_relative_position
{
  LFDS_BTREE_AU_RELATIVE_POSITION_UP,
  LFDS_BTREE_AU_RELATIVE_POSITION_LEFT,
  LFDS_BTREE_AU_RELATIVE_POSITION_RIGHT,
  LFDS_BTREE_AU_RELATIVE_POSITION_SMALLEST_ELEMENT_BELOW_CURRENT_ELEMENT,
  LFDS_BTREE_AU_RELATIVE_POSITION_LARGEST_ELEMENT_BELOW_CURRENT_ELEMENT,
  LFDS_BTREE_AU_RELATIVE_POSITION_NEXT_SMALLER_ELEMENT_IN_ENTIRE_TREE,
  LFDS_BTREE_AU_RELATIVE_POSITION_NEXT_LARGER_ELEMENT_IN_ENTIRE_TREE
};

/***** structs *****/
struct lfds_btree_au_element
{
  /* TRD : we are add-only, so these elements are only written once
           as such, the write is wholly negligible
           we are only concerned with getting as many structs in one cache line as we can
  */

  struct lfds_btree_au_element LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile left,
    *volatile right,
    *volatile up;

  void LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile value;

  void
    *key;
};

struct lfds_btree_au_state
{
  struct lfds_btree_au_element LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile root;

  int
    (*key_compare_function)( void const *new_key, void const *existing_key );

  enum lfds_btree_au_existing_key
    existing_key;

  void
    *user_state;

  struct lfds_misc_backoff_state
    insert_backoff;
};

/***** public prototypes *****/
void lfds_btree_au_init_valid_on_current_logical_core( struct lfds_btree_au_state *baus,
                                                          int (*key_compare_function)(void const *new_key, void const *existing_key),
                                                          enum lfds_btree_au_existing_key existing_key,
                                                          void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_btree_au_cleanup( struct lfds_btree_au_state *baus,
                               void (*element_cleanup_callback)(struct lfds_btree_au_state *baus, struct lfds_btree_au_element *baue) );

enum lfds_btree_au_insert_result lfds_btree_au_insert( struct lfds_btree_au_state *baus,
                                                             struct lfds_btree_au_element *baue,
                                                             struct lfds_btree_au_element **existing_baue );
  // TRD : if a link collides with an existing key and existing_baue is non-NULL, existing_baue is set to the existing element

int lfds_btree_au_get_by_key( struct lfds_btree_au_state *baus,
                                 int (*key_compare_function)(void const *new_key, void const *existing_key),
                                 void *key,
                                 struct lfds_btree_au_element **baue );

int lfds_btree_au_get_by_absolute_position_and_then_by_relative_position( struct lfds_btree_au_state *baus,
                                                                             struct lfds_btree_au_element **baue,
                                                                             enum lfds_btree_au_absolute_position absolute_position,
                                                                             enum lfds_btree_au_relative_position relative_position );
  // TRD : if *baue is NULL, we get the element at position, otherwise we move from *baue according to direction

int lfds_btree_au_get_by_absolute_position( struct lfds_btree_au_state *baus,
                                               struct lfds_btree_au_element **baue,
                                               enum lfds_btree_au_absolute_position absolute_position );

int lfds_btree_au_get_by_relative_position( struct lfds_btree_au_element **baue,
                                               enum lfds_btree_au_relative_position relative_position );

void lfds_btree_au_query( struct lfds_btree_au_state *baus,
                             enum lfds_btree_au_query query_type,
                             void *query_input,
                             void *query_output );





/***** liblfds/lfds_freelist.h *****/





/***** defines *****/
#define LFDS_FREELIST_GET_KEY_FROM_ELEMENT( freelist_element )             ( (freelist_element).key )
#define LFDS_FREELIST_SET_KEY_IN_ELEMENT( freelist_element, new_key )      ( (freelist_element).key = (void *) (lfds_pal_uint_t) (new_key) )
#define LFDS_FREELIST_GET_VALUE_FROM_ELEMENT( freelist_element )           ( (freelist_element).value )
#define LFDS_FREELIST_SET_VALUE_IN_ELEMENT( freelist_element, new_value )  ( (freelist_element).value = (void *) (lfds_pal_uint_t) (new_value) )
#define LFDS_FREELIST_GET_USER_STATE_FROM_STATE( freelist_state )          ( (freelist_state).user_state )

#define LFDS_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS  ( LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES / sizeof(struct lfds_freelist_element *) )

/***** enums *****/
enum lfds_freelist_query
{
  LFDS_FREELIST_QUERY_SINGLETHREADED_GET_COUNT,
  LFDS_FREELIST_QUERY_SINGLETHREADED_VALIDATE,
  LFDS_FREELIST_QUERY_GET_ELIMINATION_ARRAY_EXTRA_ELEMENTS_IN_FREELIST_ELEMENTS
};

/***** structures *****/
struct lfds_freelist_element
{
  struct lfds_freelist_element
    *next;

  void
    *key,
    *value;
};

struct lfds_freelist_state
{
  struct lfds_freelist_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *volatile top[PAC_SIZE];

  lfds_pal_uint_t LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    elimination_array_size_in_elements;

  struct lfds_freelist_element * volatile
    (*elimination_array)[LFDS_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS];

  void
    *user_state;

  struct lfds_misc_backoff_state
    pop_backoff,
    push_backoff;
};

/***** public prototypes *****/
void lfds_freelist_init_valid_on_current_logical_core( struct lfds_freelist_state *fs,
                                                          struct lfds_freelist_element * volatile (*elimination_array)[LFDS_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS],
                                                          lfds_pal_uint_t elimination_array_size_in_elements,
                                                          void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_freelist_cleanup( struct lfds_freelist_state *fs,
                               void (*element_cleanup_callback)(struct lfds_freelist_state *fs, struct lfds_freelist_element *fe) );

void lfds_freelist_push( struct lfds_freelist_state *fs,
                                   struct lfds_freelist_element *fe,
                                   struct lfds_prng_st_state *psts );

int lfds_freelist_pop( struct lfds_freelist_state *fs,
                          struct lfds_freelist_element **fe,
                          struct lfds_prng_st_state *psts );

void lfds_freelist_query( struct lfds_freelist_state *fs,
                             enum lfds_freelist_query query_type,
                             void *query_input,
                             void *query_output );





/***** liblfds/lfds_hash_addonly.h *****/





/***** defines *****/
#define LFDS_HASH_A_GET_KEY_FROM_ELEMENT( hash_a_element )             ( (hash_a_element).key )
#define LFDS_HASH_A_SET_KEY_IN_ELEMENT( hash_a_element, new_key )      ( (hash_a_element).key = (void *) (lfds_pal_uint_t) (new_key) )
#define LFDS_HASH_A_GET_VALUE_FROM_ELEMENT( hash_a_element )           ( LFDS_MISC_BARRIER_LOAD, (hash_a_element).value )
#define LFDS_HASH_A_SET_VALUE_IN_ELEMENT( hash_a_element, new_value )  { LFDS_PAL_ATOMIC_SET( &(hash_a_element).value, new_value ); }
#define LFDS_HASH_A_GET_USER_STATE_FROM_STATE( hash_a_state )          ( (hash_a_state).user_state )

// TRD : a quality hash function, provided for user convenience - note hash must be initialized to 0 before the first call by the user

#if( LFDS_PAL_ALIGN_SINGLE_POINTER == 4 )
  // TRD : void *data, lfds_pal_uint_t data_length_in_bytes, lfds_pal_uint_t hash
  #define LFDS_HASH_A_HASH_FUNCTION( data, data_length_in_bytes, hash )  {                                                           \
                                                                              lfds_pal_uint_t                                        \
                                                                                loop;                                                   \
                                                                                                                                        \
                                                                              for( loop = 0 ; loop < (data_length_in_bytes) ; loop++ )  \
                                                                              {                                                         \
                                                                                (hash) += *( (char unsigned *) (data) + loop );         \
                                                                                (hash) = ((hash) ^ ((hash) >> 16)) * 0x85ebca6bUL;      \
                                                                                (hash) = ((hash) ^ ((hash) >> 13)) * 0xc2b2ae35UL;      \
                                                                                (hash) = (hash ^ (hash >> 16));                         \
                                                                              }                                                         \
                                                                            }
#endif

#if( LFDS_PAL_ALIGN_SINGLE_POINTER == 8 )
  // TRD : void *data, lfds_pal_uint_t data_length_in_bytes, lfds_pal_uint_t hash
  #define LFDS_HASH_A_HASH_FUNCTION( data, data_length_in_bytes, hash )  {                                                                \
                                                                              lfds_pal_uint_t                                             \
                                                                                loop;                                                        \
                                                                                                                                             \
                                                                              for( loop = 0 ; loop < (data_length_in_bytes) ; loop++ )       \
                                                                              {                                                              \
                                                                                (hash) += *( (char unsigned *) (data) + loop );              \
                                                                                (hash) = ((hash) ^ ((hash) >> 30)) * 0xBF58476D1CE4E5B9ULL;  \
                                                                                (hash) = ((hash) ^ ((hash) >> 27)) * 0x94D049BB133111EBULL;  \
                                                                                (hash) = (hash ^ (hash >> 31));                              \
                                                                              }                                                              \
                                                                            }
#endif

/***** enums *****/
enum lfds_hash_a_existing_key
{
  LFDS_HASH_A_EXISTING_KEY_OVERWRITE,
  LFDS_HASH_A_EXISTING_KEY_FAIL
};

enum lfds_hash_a_insert_result
{
  LFDS_HASH_A_PUT_RESULT_FAILURE_EXISTING_KEY,
  LFDS_HASH_A_PUT_RESULT_SUCCESS_OVERWRITE,
  LFDS_HASH_A_PUT_RESULT_SUCCESS
};

enum lfds_hash_a_query
{
  LFDS_HASH_A_QUERY_GET_POTENTIALLY_INACCURATE_COUNT,
  LFDS_HASH_A_QUERY_SINGLETHREADED_VALIDATE
};

/***** structs *****/
struct lfds_hash_a_element
{
  struct lfds_btree_au_element
    baue;

  void
    *key;

  void LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile value;
};

struct lfds_hash_a_iterate
{
  struct lfds_btree_au_element
    *baue;

  struct lfds_btree_au_state
    *baus,
    *baus_end;
};

struct lfds_hash_a_state
{
  enum lfds_hash_a_existing_key
    existing_key;

  int
    (*key_compare_function)( void const *new_key, void const *existing_key );

  lfds_pal_uint_t
    array_size;

  struct lfds_btree_au_state
    *baus_array;

  void
    (*element_cleanup_callback)( struct lfds_hash_a_state *has, struct lfds_hash_a_element *hae ),
    (*key_hash_function)( void const *key, lfds_pal_uint_t *hash ),
    *user_state;
};

/***** public prototypes *****/
void lfds_hash_a_init_valid_on_current_logical_core( struct lfds_hash_a_state *has,
                                                        struct lfds_btree_au_state *baus_array,
                                                        lfds_pal_uint_t array_size,
                                                        int (*key_compare_function)(void const *new_key, void const *existing_key),
                                                        void (*key_hash_function)(void const *key, lfds_pal_uint_t *hash),
                                                        enum lfds_hash_a_existing_key existing_key,
                                                        void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_hash_a_cleanup( struct lfds_hash_a_state *has,
                             void (*element_cleanup_function)(struct lfds_hash_a_state *has, struct lfds_hash_a_element *hae) );

enum lfds_hash_a_insert_result lfds_hash_a_insert( struct lfds_hash_a_state *has,
                                                         struct lfds_hash_a_element *hae,
                                                         struct lfds_hash_a_element **existing_hae );
  // TRD : if existing_value is not NULL and the key exists, existing_hae is set to the hash element of the existing key

int lfds_hash_a_get_by_key( struct lfds_hash_a_state *has,
                               int (*key_compare_function)(void const *new_key, void const *existing_key),
                               void (*key_hash_function)(void const *key, lfds_pal_uint_t *hash),
                               void *key,
                               struct lfds_hash_a_element **hae );

void lfds_hash_a_iterate_init( struct lfds_hash_a_state *has, struct lfds_hash_a_iterate *hai );
int lfds_hash_a_iterate( struct lfds_hash_a_iterate *hai, struct lfds_hash_a_element **hae );

void lfds_hash_a_query( struct lfds_hash_a_state *has,
                           enum lfds_hash_a_query query_type,
                           void *query_input,
                           void *query_output );





/***** liblfds/lfds_list_addonly_singlylinked_ordered.h *****/





/***** defines *****/
#define LFDS_LIST_ASO_GET_START( list_aso_state )                                             ( LFDS_MISC_BARRIER_LOAD, (list_aso_state).start->next )
#define LFDS_LIST_ASO_GET_NEXT( list_aso_element )                                            ( LFDS_MISC_BARRIER_LOAD, (list_aso_element).next )
#define LFDS_LIST_ASO_GET_START_AND_THEN_NEXT( list_aso_state, pointer_to_list_aso_element )  ( (pointer_to_list_aso_element) == NULL ? ( (pointer_to_list_aso_element) = LFDS_LIST_ASO_GET_START(list_aso_state) ) : ( (pointer_to_list_aso_element) = LFDS_LIST_ASO_GET_NEXT(*(pointer_to_list_aso_element)) ) )
#define LFDS_LIST_ASO_GET_KEY_FROM_ELEMENT( list_aso_element )                                ( (list_aso_element).key )
#define LFDS_LIST_ASO_SET_KEY_IN_ELEMENT( list_aso_element, new_key )                         ( (list_aso_element).key = (void *) (lfds_pal_uint_t) (new_key) )
#define LFDS_LIST_ASO_GET_VALUE_FROM_ELEMENT( list_aso_element )                              ( LFDS_MISC_BARRIER_LOAD, (list_aso_element).value )
#define LFDS_LIST_ASO_SET_VALUE_IN_ELEMENT( list_aso_element, new_value )                     { LFDS_PAL_ATOMIC_SET( &(list_aso_element).value, new_value ); }
#define LFDS_LIST_ASO_GET_USER_STATE_FROM_STATE( list_aso_state )                             ( (list_aso_state).user_state )

/***** enums *****/
enum lfds_list_aso_existing_key
{
  LFDS_LIST_ASO_EXISTING_KEY_OVERWRITE,
  LFDS_LIST_ASO_EXISTING_KEY_FAIL
};

enum lfds_list_aso_insert_result
{
  LFDS_LIST_ASO_INSERT_RESULT_FAILURE_EXISTING_KEY,
  LFDS_LIST_ASO_INSERT_RESULT_SUCCESS_OVERWRITE,
  LFDS_LIST_ASO_INSERT_RESULT_SUCCESS
};

enum lfds_list_aso_query
{
  LFDS_LIST_ASO_QUERY_GET_POTENTIALLY_INACCURATE_COUNT,
  LFDS_LIST_ASO_QUERY_SINGLETHREADED_VALIDATE
};

/***** structures *****/
struct lfds_list_aso_element
{
  struct lfds_list_aso_element LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile next;

  void LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile value;

  void
    *key;
};

struct lfds_list_aso_state
{
  struct lfds_list_aso_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    dummy_element;

  struct lfds_list_aso_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *start;

  int
    (*key_compare_function)( void const *new_key, void const *existing_key );

  enum lfds_list_aso_existing_key
    existing_key;

  void
    *user_state;

  struct lfds_misc_backoff_state
    insert_backoff;
};

/***** public prototypes *****/
void lfds_list_aso_init_valid_on_current_logical_core( struct lfds_list_aso_state *lasos,
                                                          int (*key_compare_function)(void const *new_key, void const *existing_key),
                                                          enum lfds_list_aso_existing_key existing_key,
                                                          void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_list_aso_cleanup( struct lfds_list_aso_state *lasos,
                               void (*element_cleanup_callback)(struct lfds_list_aso_state *lasos, struct lfds_list_aso_element *lasoe) );

enum lfds_list_aso_insert_result lfds_list_aso_insert( struct lfds_list_aso_state *lasos,
                                                             struct lfds_list_aso_element *lasoe,
                                                             struct lfds_list_aso_element **existing_lasoe );

int lfds_list_aso_get_by_key( struct lfds_list_aso_state *lasos,
                                 void *key,
                                 struct lfds_list_aso_element **lasoe );

void lfds_list_aso_query( struct lfds_list_aso_state *lasos,
                             enum lfds_list_aso_query query_type,
                             void *query_input,
                             void *query_output );





/***** liblfds/lfds_list_addonly_singlylinked_unordered.h *****/





/***** defines *****/
#define LFDS_LIST_ASU_GET_START( list_asu_state )                                             ( LFDS_MISC_BARRIER_LOAD, (list_asu_state).start->next )
#define LFDS_LIST_ASU_GET_NEXT( list_asu_element )                                            ( LFDS_MISC_BARRIER_LOAD, (list_asu_element).next )
#define LFDS_LIST_ASU_GET_START_AND_THEN_NEXT( list_asu_state, pointer_to_list_asu_element )  ( (pointer_to_list_asu_element) == NULL ? ( (pointer_to_list_asu_element) = LFDS_LIST_ASU_GET_START(list_asu_state) ) : ( (pointer_to_list_asu_element) = LFDS_LIST_ASU_GET_NEXT(*(pointer_to_list_asu_element)) ) )
#define LFDS_LIST_ASU_GET_KEY_FROM_ELEMENT( list_asu_element )                                ( (list_asu_element).key )
#define LFDS_LIST_ASU_SET_KEY_IN_ELEMENT( list_asu_element, new_key )                         ( (list_asu_element).key = (void *) (lfds_pal_uint_t) (new_key) )
#define LFDS_LIST_ASU_GET_VALUE_FROM_ELEMENT( list_asu_element )                              ( LFDS_MISC_BARRIER_LOAD, (list_asu_element).value )
#define LFDS_LIST_ASU_SET_VALUE_IN_ELEMENT( list_asu_element, new_value )                     { LFDS_PAL_ATOMIC_SET( &(list_asu_element).value, new_value ); }
#define LFDS_LIST_ASU_GET_USER_STATE_FROM_STATE( list_asu_state )                             ( (list_asu_state).user_state )

/***** enums *****/
enum lfds_list_asu_position
{
  LFDS_LIST_ASU_POSITION_START,
  LFDS_LIST_ASU_POSITION_END,
  LFDS_LIST_ASU_POSITION_AFTER
};

enum lfds_list_asu_query
{
  LFDS_LIST_ASU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT,
  LFDS_LIST_ASU_QUERY_SINGLETHREADED_VALIDATE
};

/***** structures *****/
struct lfds_list_asu_element
{
  struct lfds_list_asu_element LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile next;

  void LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_SINGLE_POINTER)
    *volatile value;

  void
    *key;
};

struct lfds_list_asu_state
{
  struct lfds_list_asu_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    dummy_element;

  struct lfds_list_asu_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *volatile end;

  struct lfds_list_asu_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *start;

  void
    *user_state;

  struct lfds_misc_backoff_state
    after_backoff,
    end_backoff,
    start_backoff;
};

/***** public prototypes *****/
void lfds_list_asu_init_valid_on_current_logical_core( struct lfds_list_asu_state *lasus,
                                                          void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_list_asu_cleanup( struct lfds_list_asu_state *lasus,
                               void (*element_cleanup_callback)(struct lfds_list_asu_state *lasus, struct lfds_list_asu_element *lasue) );

void lfds_list_asu_insert_at_position( struct lfds_list_asu_state *lasus,
                                          struct lfds_list_asu_element *lasue,
                                          struct lfds_list_asu_element *lasue_predecessor,
                                          enum lfds_list_asu_position position );

void lfds_list_asu_insert_at_start( struct lfds_list_asu_state *lasus,
                                       struct lfds_list_asu_element *lasue );

void lfds_list_asu_insert_at_end( struct lfds_list_asu_state *lasus,
                                     struct lfds_list_asu_element *lasue );

void lfds_list_asu_insert_after_element( struct lfds_list_asu_state *lasus,
                                            struct lfds_list_asu_element *lasue,
                                            struct lfds_list_asu_element *lasue_predecessor );

int lfds_list_asu_get_by_key( struct lfds_list_asu_state *lasus,
                                 int (*key_compare_function)(void const *new_key, void const *existing_key),
                                 void *key,
                                 struct lfds_list_asu_element **lasue );

void lfds_list_asu_query( struct lfds_list_asu_state *lasus,
                             enum lfds_list_asu_query query_type,
                             void *query_input,
                             void *query_output );





/***** liblfds/lfds_queue_bounded_manyproducer_manyconsumer.h *****/





/***** defines *****/
#define LFDS_QUEUE_BMM_GET_USER_STATE_FROM_STATE( queue_bmm_state )  ( (queue_bmm_state).user_state )

/***** enums *****/
enum lfds_queue_bmm_query
{
  LFDS_QUEUE_BMM_QUERY_GET_POTENTIALLY_INACCURATE_COUNT,
  LFDS_QUEUE_BMM_QUERY_SINGLETHREADED_VALIDATE
};

/***** structures *****/
struct lfds_queue_bmm_element
{
  lfds_pal_uint_t volatile
    sequence_number;

  void
    *volatile key,
    *volatile value;
};

struct lfds_queue_bmm_state
{
  lfds_pal_uint_t
    number_elements,
    mask;

  lfds_pal_uint_t volatile LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    read_index,
    write_index;

  struct lfds_queue_bmm_element
    *element_array;

  void
    *user_state;

  struct lfds_misc_backoff_state
    dequeue_backoff,
    enqueue_backoff;
};

/***** public prototypes *****/
void lfds_queue_bmm_init_valid_on_current_logical_core( struct lfds_queue_bmm_state *qbmms,
                                                           struct lfds_queue_bmm_element *element_array,
                                                           lfds_pal_uint_t number_elements,
                                                           void *user_state );

void lfds_queue_bmm_cleanup( struct lfds_queue_bmm_state *qbmms,
                                void (*element_cleanup_callback)(struct lfds_queue_bmm_state *qbmms,
                                                                 void *key,
                                                                 void *value) );

int lfds_queue_bmm_enqueue( struct lfds_queue_bmm_state *qbmms,
                               void *key,
                               void *value );

int lfds_queue_bmm_dequeue( struct lfds_queue_bmm_state *qbmms,
                                      void **key,
                                      void **value );

void lfds_queue_bmm_query( struct lfds_queue_bmm_state *qbmms,
                              enum lfds_queue_bmm_query query_type,
                              void *query_input,
                              void *query_output );





/***** liblfds/lfds_queue_bounded_singleproducer_singleconsumer.h *****/





/***** defines *****/
#define LFDS_QUEUE_BSS_GET_USER_STATE_FROM_STATE( queue_bss_state )  ( (queue_bss_state).user_state )

/***** enums *****/
enum lfds_queue_bss_query
{
  LFDS_QUEUE_BSS_QUERY_GET_POTENTIALLY_INACCURATE_COUNT,
  LFDS_QUEUE_BSS_QUERY_VALIDATE
};

/***** structures *****/
struct lfds_queue_bss_element
{
  void
    *volatile key,
    *volatile value;
};

struct lfds_queue_bss_state
{
  lfds_pal_uint_t
    number_elements,
    mask;

  lfds_pal_uint_t volatile
    read_index,
    write_index;

  struct lfds_queue_bss_element
    *element_array;

  void
    *user_state;
};

/***** public prototypes *****/
void lfds_queue_bss_init_valid_on_current_logical_core( struct lfds_queue_bss_state *qbsss,
                                                           struct lfds_queue_bss_element *element_array,
                                                           lfds_pal_uint_t number_elements,
                                                           void *user_state );
  // TRD : number_elements must be a positive integer power of 2
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_queue_bss_cleanup( struct lfds_queue_bss_state *qbsss,
                                void (*element_cleanup_callback)(struct lfds_queue_bss_state *qbsss, void *key, void *value) );

int lfds_queue_bss_enqueue( struct lfds_queue_bss_state *qbsss,
                               void *key,
                               void *value );

int lfds_queue_bss_dequeue( struct lfds_queue_bss_state *qbsss,
                               void **key,
                               void **value );

void lfds_queue_bss_query( struct lfds_queue_bss_state *qbsss,
                              enum lfds_queue_bss_query query_type,
                              void *query_input,
                              void *query_output );





/***** liblfds/lfds_queue_unbounded_manyproducer_manyconsumer.h *****/





/***** defines *****/
#define LFDS_QUEUE_UMM_GET_KEY_FROM_ELEMENT( queue_umm_element )             ( (queue_umm_element).key )
#define LFDS_QUEUE_UMM_SET_KEY_IN_ELEMENT( queue_umm_element, new_key )      ( (queue_umm_element).key = (void *) (lfds_pal_uint_t) (new_key) )
#define LFDS_QUEUE_UMM_GET_VALUE_FROM_ELEMENT( queue_umm_element )           ( (queue_umm_element).value )
#define LFDS_QUEUE_UMM_SET_VALUE_IN_ELEMENT( queue_umm_element, new_value )  ( (queue_umm_element).value = (void *) (lfds_pal_uint_t) (new_value) )
#define LFDS_QUEUE_UMM_GET_USER_STATE_FROM_STATE( queue_umm_state )          ( (queue_umm_state).user_state )

/***** enums *****/
enum lfds_queue_umm_query
{
  LFDS_QUEUE_UMM_QUERY_SINGLETHREADED_GET_COUNT,
  LFDS_QUEUE_UMM_QUERY_SINGLETHREADED_VALIDATE
};

/***** structures *****/
struct lfds_queue_umm_element
{
  struct lfds_queue_umm_element LFDS_PAL_ALIGN(LFDS_PAL_ALIGN_DOUBLE_POINTER)
    *volatile next[PAC_SIZE];

  void
    *key,
    *value;
};

struct lfds_queue_umm_state
{
  struct lfds_queue_umm_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *volatile enqueue[PAC_SIZE],
    *volatile dequeue[PAC_SIZE];

  lfds_pal_uint_t volatile LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    aba_counter;

  void LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *user_state;

  struct lfds_misc_backoff_state
    dequeue_backoff,
    enqueue_backoff;
};

/***** public prototypes *****/
void lfds_queue_umm_init_valid_on_current_logical_core( struct lfds_queue_umm_state *qumms,
                                                           struct lfds_queue_umm_element *qumme_dummy,
                                                           void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_queue_umm_cleanup( struct lfds_queue_umm_state *qumms,
                                void (*element_cleanup_callback)(struct lfds_queue_umm_state *qumms, struct lfds_queue_umm_element *qumme, enum lfds_misc_flag dummy_element_flag) );

void lfds_queue_umm_enqueue( struct lfds_queue_umm_state *qumms,
                                struct lfds_queue_umm_element *qumme );

int lfds_queue_umm_dequeue( struct lfds_queue_umm_state *qumms,
                               struct lfds_queue_umm_element **qumme );

void lfds_queue_umm_query( struct lfds_queue_umm_state *qumms,
                              enum lfds_queue_umm_query query_type,
                              void *query_input,
                              void *query_output );





/***** liblfds/lfds_ringbuffer.h *****/





/***** enums *****/
#define LFDS_RINGBUFFER_GET_USER_STATE_FROM_STATE( ringbuffer_state )  ( (ringbuffer_state).user_state )

/***** enums *****/
enum lfds_ringbuffer_query
{
  LFDS_RINGBUFFER_QUERY_SINGLETHREADED_GET_COUNT,
  LFDS_RINGBUFFER_QUERY_SINGLETHREADED_VALIDATE
};

/***** structures *****/
struct lfds_ringbuffer_element
{
  struct lfds_freelist_element
    fe;

  struct lfds_queue_umm_element
    qumme;

  struct lfds_queue_umm_element
    *qumme_use; // TRD : hack; we need a new queue with no dummy element

  void
    *key,
    *value;
};

struct lfds_ringbuffer_state
{
  struct lfds_freelist_state
    fs;

  struct lfds_queue_umm_state
    qumms;

  void
    (*element_cleanup_callback)( struct lfds_ringbuffer_state *rs, void *key, void *value, enum lfds_misc_flag unread_flag ),
    *user_state;
};

/***** public prototypes *****/
void lfds_ringbuffer_init_valid_on_current_logical_core( struct lfds_ringbuffer_state *rs,
                                                            struct lfds_ringbuffer_element *re_array_inc_dummy,
                                                            lfds_pal_uint_t number_elements_inc_dummy,
                                                            void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_ringbuffer_cleanup( struct lfds_ringbuffer_state *rs,
                                 void (*element_cleanup_callback)(struct lfds_ringbuffer_state *rs, void *key, void *value, enum lfds_misc_flag unread_flag) );

int lfds_ringbuffer_read( struct lfds_ringbuffer_state *rs,
                             void **key,
                             void **value );

void lfds_ringbuffer_write( struct lfds_ringbuffer_state *rs,
                               void *key,
                               void *value,
                               enum lfds_misc_flag *overwrite_occurred_flag,
                               void **overwritten_key,
                               void **overwritten_value );

void lfds_ringbuffer_query( struct lfds_ringbuffer_state *rs,
                               enum lfds_ringbuffer_query query_type,
                               void *query_input,
                               void *query_output );





/***** liblfds/lfds_stack.h *****/





/***** defines *****/
#define LFDS_STACK_GET_KEY_FROM_ELEMENT( stack_element )             ( (stack_element).key )
#define LFDS_STACK_SET_KEY_IN_ELEMENT( stack_element, new_key )      ( (stack_element).key = (void *) (lfds_pal_uint_t) (new_key) )
#define LFDS_STACK_GET_VALUE_FROM_ELEMENT( stack_element )           ( (stack_element).value )
#define LFDS_STACK_SET_VALUE_IN_ELEMENT( stack_element, new_value )  ( (stack_element).value = (void *) (lfds_pal_uint_t) (new_value) )
#define LFDS_STACK_GET_USER_STATE_FROM_STATE( stack_state )          ( (stack_state).user_state )

/***** enums *****/
enum lfds_stack_query
{
  LFDS_STACK_QUERY_SINGLETHREADED_GET_COUNT,
  LFDS_STACK_QUERY_SINGLETHREADED_VALIDATE
};

/***** structures *****/
struct lfds_stack_element
{
  struct lfds_stack_element
    *next;

  void
    *key,
    *value;
};

struct lfds_stack_state
{
  struct lfds_stack_element LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *volatile top[PAC_SIZE];

  void LFDS_PAL_ALIGN(LFDS_PAL_ATOMIC_ISOLATION_IN_BYTES)
    *user_state;

  struct lfds_misc_backoff_state
    pop_backoff,
    push_backoff;
};

/***** public prototypes *****/
void lfds_stack_init_valid_on_current_logical_core( struct lfds_stack_state *ss,
                                                       void *user_state );
  // TRD : used in conjunction with the #define LFDS_MISC_MAKE_VALID_ON_CURRENT_LOGICAL_CORE_INITS_COMPLETED_BEFORE_NOW_ON_ANY_OTHER_LOGICAL_CORE

void lfds_stack_cleanup( struct lfds_stack_state *ss,
                            void (*element_cleanup_callback)(struct lfds_stack_state *ss, struct lfds_stack_element *se) );

void lfds_stack_push( struct lfds_stack_state *ss,
                         struct lfds_stack_element *se );

int lfds_stack_pop( struct lfds_stack_state *ss,
                       struct lfds_stack_element **se );

void lfds_stack_query( struct lfds_stack_state *ss,
                          enum lfds_stack_query query_type,
                          void *query_input,
                          void *query_output );





#endif





#ifdef __cplusplus
}
#endif
#endif /* !Py_INTERNAL_FT_LFDS_H */
