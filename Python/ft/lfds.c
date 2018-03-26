#include "Python.h"
#include "internal/ft/lfds.h"





/***** liblfds711_internal.h *****/





/***** defines *****/
#define and &&
#define or  ||

#define NO_FLAGS 0x0

#define LFDS711_VERSION_STRING   "7.1.1"
#define LFDS711_VERSION_INTEGER  711

#if( defined KERNEL_MODE )
  #define MODE_TYPE_STRING "kernel-mode"
#endif

#if( !defined KERNEL_MODE )
  #define MODE_TYPE_STRING "user-mode"
#endif

#if( defined NDEBUG && !defined COVERAGE && !defined TSAN && !defined PROF )
  #define BUILD_TYPE_STRING "release"
#endif

#if( !defined NDEBUG && !defined COVERAGE && !defined TSAN && !defined PROF )
  #define BUILD_TYPE_STRING "debug"
#endif

#if( !defined NDEBUG && defined COVERAGE && !defined TSAN && !defined PROF )
  #define BUILD_TYPE_STRING "coverage"
#endif

#if( !defined NDEBUG && !defined COVERAGE && defined TSAN && !defined PROF )
  #define BUILD_TYPE_STRING "threadsanitizer"
#endif

#if( !defined NDEBUG && !defined COVERAGE && !defined TSAN && defined PROF )
  #define BUILD_TYPE_STRING "profiling"
#endif

#define LFDS711_BACKOFF_INITIAL_VALUE  0
#define LFDS711_BACKOFF_LIMIT          10

#define LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( backoff_state, backoff_iteration )                \
{                                                                                              \
  lfds711_pal_uint_t volatile                                                                  \
    loop;                                                                                      \
                                                                                               \
  lfds711_pal_uint_t                                                                           \
    endloop;                                                                                   \
                                                                                               \
  if( (backoff_iteration) == LFDS711_BACKOFF_LIMIT )                                           \
    (backoff_iteration) = LFDS711_BACKOFF_INITIAL_VALUE;                                       \
  else                                                                                         \
  {                                                                                            \
    endloop = ( ((lfds711_pal_uint_t) 0x1) << (backoff_iteration) ) * (backoff_state).metric;  \
    for( loop = 0 ; loop < endloop ; loop++ );                                                 \
  }                                                                                            \
                                                                                               \
  (backoff_iteration)++;                                                                       \
}

#define LFDS711_BACKOFF_AUTOTUNE( bs, backoff_iteration )                                                                           \
{                                                                                                                                   \
  if( (backoff_iteration) < 2 )                                                                                                     \
    (bs).backoff_iteration_frequency_counters[(backoff_iteration)]++;                                                               \
                                                                                                                                    \
  if( ++(bs).total_operations >= 10000 and (bs).lock == LFDS711_MISC_FLAG_LOWERED )                                                 \
  {                                                                                                                                 \
    char unsigned                                                                                                                   \
      result;                                                                                                                       \
                                                                                                                                    \
    lfds711_pal_uint_t LFDS711_PAL_ALIGN(LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES)                                                     \
      compare = LFDS711_MISC_FLAG_LOWERED;                                                                                          \
                                                                                                                                    \
    LFDS711_PAL_ATOMIC_CAS( &(bs).lock, &compare, LFDS711_MISC_FLAG_RAISED, LFDS711_MISC_CAS_STRENGTH_WEAK, result );               \
                                                                                                                                    \
    if( result == 1 )                                                                                                               \
    {                                                                                                                               \
      /* TRD : if E[1] is less than 1/100th of E[0], decrease the metric, to increase E[1] */                                       \
      if( (bs).backoff_iteration_frequency_counters[1] < (bs).backoff_iteration_frequency_counters[0] / 100 )                       \
      {                                                                                                                             \
        if( (bs).metric >= 11 )                                                                                                     \
          (bs).metric -= 10;                                                                                                        \
      }                                                                                                                             \
      else                                                                                                                          \
        (bs).metric += 10;                                                                                                          \
                                                                                                                                    \
      (bs).backoff_iteration_frequency_counters[0] = 0;                                                                             \
      (bs).backoff_iteration_frequency_counters[1] = 0;                                                                             \
      (bs).total_operations = 0;                                                                                                    \
                                                                                                                                    \
      LFDS711_MISC_BARRIER_STORE;                                                                                                   \
                                                                                                                                    \
      LFDS711_PAL_ATOMIC_SET( &(bs).lock, LFDS711_MISC_FLAG_LOWERED );                                                              \
    }                                                                                                                               \
  }                                                                                                                                 \
}

/***** library-wide prototypes *****/
void lfds711_misc_internal_backoff_init( struct lfds711_misc_backoff_state *bs );





/***** lfds711_list_addonly_singlylinked_unordered/lfds711_list_addonly_singlylinked_unordered_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_list_addonly_singlylinked_unordered/lfds711_list_addonly_singlylinked_unordered_init.c *****/





/****************************************************************************/
void lfds711_list_asu_init_valid_on_current_logical_core( struct lfds711_list_asu_state *lasus,
                                                          void *user_state )
{
  LFDS711_PAL_ASSERT( lasus != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasus->dummy_element % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasus->end % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasus->start % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  // TRD : user_state can be NULL

  // TRD : dummy start element - makes code easier when you can always use ->next
  lasus->start = lasus->end = &lasus->dummy_element;

  lasus->start->next = NULL;
  lasus->start->value = NULL;
  lasus->user_state = user_state;

  lfds711_misc_internal_backoff_init( &lasus->after_backoff );
  lfds711_misc_internal_backoff_init( &lasus->start_backoff );
  lfds711_misc_internal_backoff_init( &lasus->end_backoff );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_list_addonly_singlylinked_unordered/lfds711_list_addonly_singlylinked_unordered_insert.c *****/





/****************************************************************************/
void lfds711_list_asu_insert_at_position( struct lfds711_list_asu_state *lasus,
                                          struct lfds711_list_asu_element *lasue,
                                          struct lfds711_list_asu_element *lasue_predecessor,
                                          enum lfds711_list_asu_position position )
{
  LFDS711_PAL_ASSERT( lasus != NULL );
  LFDS711_PAL_ASSERT( lasue != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->next % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->value % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  // TRD : lasue_predecessor asserted in the switch
  // TRD : position can be any value in its range

  switch( position )
  {
    case LFDS711_LIST_ASU_POSITION_START:
      lfds711_list_asu_insert_at_start( lasus, lasue );
    break;

    case LFDS711_LIST_ASU_POSITION_END:
      lfds711_list_asu_insert_at_end( lasus, lasue );
    break;

    case LFDS711_LIST_ASU_POSITION_AFTER:
      lfds711_list_asu_insert_after_element( lasus, lasue, lasue_predecessor );
    break;
  }

  return;
}





/****************************************************************************/
void lfds711_list_asu_insert_at_start( struct lfds711_list_asu_state *lasus,
                                       struct lfds711_list_asu_element *lasue )
{
  char unsigned
    result;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  LFDS711_PAL_ASSERT( lasus != NULL );
  LFDS711_PAL_ASSERT( lasue != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->next % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->value % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );

  LFDS711_MISC_BARRIER_LOAD;

  lasue->next = lasus->start->next;

  do
  {
    LFDS711_MISC_BARRIER_STORE;
    LFDS711_PAL_ATOMIC_CAS( &lasus->start->next, (struct lfds711_list_asu_element **) &lasue->next, lasue, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
    if( result == 0 )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( lasus->start_backoff, backoff_iteration );
  }
  while( result == 0 );

  LFDS711_BACKOFF_AUTOTUNE( lasus->start_backoff, backoff_iteration );

  return;
}





/****************************************************************************/
void lfds711_list_asu_insert_at_end( struct lfds711_list_asu_state *lasus,
                                     struct lfds711_list_asu_element *lasue )
{
  char unsigned
    result;

  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_list_asu_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_SINGLE_POINTER)
    *compare;

  struct lfds711_list_asu_element
    *volatile lasue_next,
    *volatile lasue_end;

  LFDS711_PAL_ASSERT( lasus != NULL );
  LFDS711_PAL_ASSERT( lasue != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->next % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->value % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );

  /* TRD : begin by assuming end is correctly pointing to the final element
           try to link (comparing for next being NULL)
           if we fail, move down list till we find last element
           and retry
           when successful, update end to ourselves

           note there's a leading dummy element
           so lasus->end always points to an element
  */

  LFDS711_MISC_BARRIER_LOAD;

  lasue->next = NULL;
  lasue_end = lasus->end;

  while( finished_flag == LFDS711_MISC_FLAG_LOWERED )
  {
    compare = NULL;

    LFDS711_MISC_BARRIER_STORE;
    LFDS711_PAL_ATOMIC_CAS( &lasue_end->next, &compare, lasue, LFDS711_MISC_CAS_STRENGTH_STRONG, result );

    if( result == 1 )
      finished_flag = LFDS711_MISC_FLAG_RAISED;
    else
    {
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( lasus->end_backoff, backoff_iteration );

      lasue_end = compare;
      lasue_next = LFDS711_LIST_ASU_GET_NEXT( *lasue_end );

      while( lasue_next != NULL )
      {
        lasue_end = lasue_next;
        lasue_next = LFDS711_LIST_ASU_GET_NEXT( *lasue_end );
      }
    }
  }

  lasus->end = lasue;

  LFDS711_BACKOFF_AUTOTUNE( lasus->end_backoff, backoff_iteration );

  return;
}





/****************************************************************************/
#pragma warning( disable : 4100 )

void lfds711_list_asu_insert_after_element( struct lfds711_list_asu_state *lasus,
                                            struct lfds711_list_asu_element *lasue,
                                            struct lfds711_list_asu_element *lasue_predecessor )
{
  char unsigned
    result;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  LFDS711_PAL_ASSERT( lasus != NULL );
  LFDS711_PAL_ASSERT( lasue != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->next % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasue->value % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( lasue_predecessor != NULL );

  LFDS711_MISC_BARRIER_LOAD;

  lasue->next = lasue_predecessor->next;

  do
  {
    LFDS711_MISC_BARRIER_STORE;
    LFDS711_PAL_ATOMIC_CAS( &lasue_predecessor->next, (struct lfds711_list_asu_element **) &lasue->next, lasue, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
    if( result == 0 )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( lasus->after_backoff, backoff_iteration );
  }
  while( result == 0 );

  LFDS711_BACKOFF_AUTOTUNE( lasus->after_backoff, backoff_iteration );

  return;
}

#pragma warning( default : 4100 )





/***** lfds711_list_addonly_singlylinked_unordered/lfds711_list_addonly_singlylinked_unordered_cleanup.c *****/





/****************************************************************************/
void lfds711_list_asu_cleanup( struct lfds711_list_asu_state *lasus,
                               void (*element_cleanup_callback)(struct lfds711_list_asu_state *lasus, struct lfds711_list_asu_element *lasue) )
{
  struct lfds711_list_asu_element
    *lasue,
    *temp;

  LFDS711_PAL_ASSERT( lasus != NULL );
  // TRD : element_cleanup_callback can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( element_cleanup_callback == NULL )
    return;

  lasue = LFDS711_LIST_ASU_GET_START( *lasus );

  while( lasue != NULL )
  {
    temp = lasue;

    lasue = LFDS711_LIST_ASU_GET_NEXT( *lasue );

    element_cleanup_callback( lasus, temp );
  }

  return;
}





/***** lfds711_list_addonly_singlylinked_unordered/lfds711_list_addonly_singlylinked_unordered_query.c *****/





/***** private prototypes *****/
static void lfds711_list_asu_internal_validate( struct lfds711_list_asu_state *lasus,
                                                struct lfds711_misc_validation_info *vi,
                                                enum lfds711_misc_validity *lfds711_list_asu_validity );





/****************************************************************************/
void lfds711_list_asu_query( struct lfds711_list_asu_state *lasus,
                             enum lfds711_list_asu_query query_type,
                             void *query_input,
                             void *query_output )
{
  LFDS711_PAL_ASSERT( lasus != NULL );
  // TRD : query_type can be any value in its range

  LFDS711_MISC_BARRIER_LOAD;

  switch( query_type )
  {
    case LFDS711_LIST_ASU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT:
    {
      struct lfds711_list_asu_element
        *lasue = NULL;

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(lfds711_pal_uint_t *) query_output = 0;

      while( LFDS711_LIST_ASU_GET_START_AND_THEN_NEXT(*lasus, lasue) )
        ( *(lfds711_pal_uint_t *) query_output )++;
    }
    break;

    case LFDS711_LIST_ASU_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_list_asu_internal_validate( lasus, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}






/****************************************************************************/
static void lfds711_list_asu_internal_validate( struct lfds711_list_asu_state *lasus,
                                                struct lfds711_misc_validation_info *vi,
                                                enum lfds711_misc_validity *lfds711_list_asu_validity )
{
  lfds711_pal_uint_t
    number_elements = 0;

  struct lfds711_list_asu_element
    *lasue_fast,
    *lasue_slow;

  LFDS711_PAL_ASSERT( lasus!= NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_list_asu_validity != NULL );

  *lfds711_list_asu_validity = LFDS711_MISC_VALIDITY_VALID;

  lasue_slow = lasue_fast = lasus->start->next;

  /* TRD : first, check for a loop
           we have two pointers
           both of which start at the start of the list
           we enter a loop
           and on each iteration
           we advance one pointer by one element
           and the other by two

           we exit the loop when both pointers are NULL
           (have reached the end of the queue)

           or

           if we fast pointer 'sees' the slow pointer
           which means we have a loop
  */

  if( lasue_slow != NULL )
    do
    {
      lasue_slow = lasue_slow->next;

      if( lasue_fast != NULL )
        lasue_fast = lasue_fast->next;

      if( lasue_fast != NULL )
        lasue_fast = lasue_fast->next;
    }
    while( lasue_slow != NULL and lasue_fast != lasue_slow );

  if( lasue_fast != NULL and lasue_slow != NULL and lasue_fast == lasue_slow )
    *lfds711_list_asu_validity = LFDS711_MISC_VALIDITY_INVALID_LOOP;

  /* TRD : now check for expected number of elements
           vi can be NULL, in which case we do not check
           we know we don't have a loop from our earlier check
  */

  if( *lfds711_list_asu_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
  {
    lfds711_list_asu_query( lasus, LFDS711_LIST_ASU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, &number_elements );

    if( number_elements < vi->min_elements )
      *lfds711_list_asu_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements > vi->max_elements )
      *lfds711_list_asu_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_list_addonly_singlylinked_unordered/lfds711_list_addonly_singlylinked_unordered_get.c *****/





/****************************************************************************/
int lfds711_list_asu_get_by_key( struct lfds711_list_asu_state *lasus,
                                 int (*key_compare_function)(void const *new_key, void const *existing_key),
                                 void *key,
                                 struct lfds711_list_asu_element **lasue )
{
  int
    cr = !0,
    rv = 1;

  LFDS711_PAL_ASSERT( lasus != NULL );
  LFDS711_PAL_ASSERT( key_compare_function != NULL );
  // TRD : key can be NULL
  LFDS711_PAL_ASSERT( lasue != NULL );

  *lasue = NULL;

  while( cr != 0 and LFDS711_LIST_ASU_GET_START_AND_THEN_NEXT(*lasus, *lasue) )
    cr = key_compare_function( key, (*lasue)->key );

  if( *lasue == NULL )
    rv = 0;

  return rv;
}





/***** lfds711_stack/lfds711_stack_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_stack/lfds711_stack_cleanup.c *****/





/****************************************************************************/
void lfds711_stack_cleanup( struct lfds711_stack_state *ss,
                            void (*element_cleanup_callback)(struct lfds711_stack_state *ss, struct lfds711_stack_element *se) )
{
  struct lfds711_stack_element
    *se,
    *se_temp;

  LFDS711_PAL_ASSERT( ss != NULL );
  // TRD : element_cleanup_callback can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( element_cleanup_callback != NULL )
  {
    se = ss->top[POINTER];

    while( se != NULL )
    {
      se_temp = se;
      se = se->next;

      element_cleanup_callback( ss, se_temp );
    }
  }

  return;
}





/***** lfds711_stack/lfds711_stack_query.c *****/





/***** private prototypes *****/
static void lfds711_stack_internal_stack_validate( struct lfds711_stack_state *ss,
                                                   struct lfds711_misc_validation_info *vi,
                                                   enum lfds711_misc_validity *lfds711_stack_validity );





/****************************************************************************/
void lfds711_stack_query( struct lfds711_stack_state *ss,
                          enum lfds711_stack_query query_type,
                          void *query_input,
                          void *query_output )
{
  struct lfds711_stack_element
    *se;

  LFDS711_MISC_BARRIER_LOAD;

  LFDS711_PAL_ASSERT( ss != NULL );
  // TRD : query_type can be any value in its range

  switch( query_type )
  {
    case LFDS711_STACK_QUERY_SINGLETHREADED_GET_COUNT:
      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(lfds711_pal_uint_t *) query_output = 0;

      se = (struct lfds711_stack_element *) ss->top[POINTER];

      while( se != NULL )
      {
        ( *(lfds711_pal_uint_t *) query_output )++;
        se = (struct lfds711_stack_element *) se->next;
      }
    break;

    case LFDS711_STACK_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_stack_internal_stack_validate( ss, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_stack_internal_stack_validate( struct lfds711_stack_state *ss,
                                                   struct lfds711_misc_validation_info *vi,
                                                   enum lfds711_misc_validity *lfds711_stack_validity )
{
  lfds711_pal_uint_t
    number_elements = 0;

  struct lfds711_stack_element
    *se_fast,
    *se_slow;

  LFDS711_PAL_ASSERT( ss != NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_stack_validity != NULL );

  *lfds711_stack_validity = LFDS711_MISC_VALIDITY_VALID;

  se_slow = se_fast = (struct lfds711_stack_element *) ss->top[POINTER];

  /* TRD : first, check for a loop
           we have two pointers
           both of which start at the top of the stack
           we enter a loop
           and on each iteration
           we advance one pointer by one element
           and the other by two

           we exit the loop when both pointers are NULL
           (have reached the end of the stack)

           or

           if we fast pointer 'sees' the slow pointer
           which means we have a loop
  */

  if( se_slow != NULL )
    do
    {
      se_slow = se_slow->next;

      if( se_fast != NULL )
        se_fast = se_fast->next;

      if( se_fast != NULL )
        se_fast = se_fast->next;
    }
    while( se_slow != NULL and se_fast != se_slow );

  if( se_fast != NULL and se_slow != NULL and se_fast == se_slow )
    *lfds711_stack_validity = LFDS711_MISC_VALIDITY_INVALID_LOOP;

  /* TRD : now check for expected number of elements
           vi can be NULL, in which case we do not check
           we know we don't have a loop from our earlier check
  */

  if( *lfds711_stack_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
  {
    lfds711_stack_query( ss, LFDS711_STACK_QUERY_SINGLETHREADED_GET_COUNT, NULL, (void *) &number_elements );

    if( number_elements < vi->min_elements )
      *lfds711_stack_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements > vi->max_elements )
      *lfds711_stack_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_stack/lfds711_stack_pop.c *****/





/****************************************************************************/
int lfds711_stack_pop( struct lfds711_stack_state *ss,
                       struct lfds711_stack_element **se )
{
  char unsigned
    result;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_stack_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_DOUBLE_POINTER)
    *new_top[PAC_SIZE],
    *volatile original_top[PAC_SIZE];

  LFDS711_PAL_ASSERT( ss != NULL );
  LFDS711_PAL_ASSERT( se != NULL );

  LFDS711_MISC_BARRIER_LOAD;

  original_top[COUNTER] = ss->top[COUNTER];
  original_top[POINTER] = ss->top[POINTER];

  do
  {
    if( original_top[POINTER] == NULL )
    {
      *se = NULL;
      return 0;
    }

    new_top[COUNTER] = original_top[COUNTER] + 1;
    new_top[POINTER] = original_top[POINTER]->next;

    LFDS711_PAL_ATOMIC_DWCAS( ss->top, original_top, new_top, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

    if( result == 0 )
    {
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( ss->pop_backoff, backoff_iteration );
      LFDS711_MISC_BARRIER_LOAD;
    }
  }
  while( result == 0 );

  *se = original_top[POINTER];

  LFDS711_BACKOFF_AUTOTUNE( ss->pop_backoff, backoff_iteration );

  return 1;
}





/***** lfds711_stack/lfds711_stack_push.c *****/





/****************************************************************************/
void lfds711_stack_push( struct lfds711_stack_state *ss,
                         struct lfds711_stack_element *se )
{
  char unsigned
    result;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_stack_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_DOUBLE_POINTER)
    *new_top[PAC_SIZE],
    *volatile original_top[PAC_SIZE];

  LFDS711_PAL_ASSERT( ss != NULL );
  LFDS711_PAL_ASSERT( se != NULL );

  new_top[POINTER] = se;

  original_top[COUNTER] = ss->top[COUNTER];
  original_top[POINTER] = ss->top[POINTER];

  do
  {
    se->next = original_top[POINTER];
    LFDS711_MISC_BARRIER_STORE;

    new_top[COUNTER] = original_top[COUNTER] + 1;
    LFDS711_PAL_ATOMIC_DWCAS( ss->top, original_top, new_top, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

    if( result == 0 )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( ss->push_backoff, backoff_iteration );
  }
  while( result == 0 );

  LFDS711_BACKOFF_AUTOTUNE( ss->push_backoff, backoff_iteration );

  return;
}





/***** lfds711_stack/lfds711_stack_init.c *****/





/****************************************************************************/
void lfds711_stack_init_valid_on_current_logical_core( struct lfds711_stack_state *ss,
                                                       void *user_state )
{
  LFDS711_PAL_ASSERT( ss != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) ss->top % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &ss->user_state % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  // TRD : user_state can be NULL

  ss->top[POINTER] = NULL;
  ss->top[COUNTER] = 0;

  ss->user_state = user_state;

  lfds711_misc_internal_backoff_init( &ss->pop_backoff );
  lfds711_misc_internal_backoff_init( &ss->push_backoff );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_btree_addonly_unbalanced/lfds711_btree_addonly_unbalanced_internal.h *****/





/***** the library-wide header file *****/

/***** enums *****/
enum lfds711_btree_au_move
{
  LFDS711_BTREE_AU_MOVE_INVALID,
  LFDS711_BTREE_AU_MOVE_SMALLEST_FROM_RIGHT_CHILD,
  LFDS711_BTREE_AU_MOVE_LARGEST_FROM_LEFT_CHILD,
  LFDS711_BTREE_AU_MOVE_GET_PARENT,
  LFDS711_BTREE_AU_MOVE_MOVE_UP_TREE
};

enum lfds711_btree_au_delete_action
{
  LFDS711_BTREE_AU_DELETE_SELF,
  LFDS711_BTREE_AU_DELETE_SELF_REPLACE_WITH_LEFT_CHILD,
  LFDS711_BTREE_AU_DELETE_SELF_REPLACE_WITH_RIGHT_CHILD,
  LFDS711_BTREE_AU_DELETE_MOVE_LEFT
};

/***** private prototypes *****/





/***** lfds711_btree_addonly_unbalanced/lfds711_btree_addonly_unbalanced_init.c *****/





/****************************************************************************/
void lfds711_btree_au_init_valid_on_current_logical_core( struct lfds711_btree_au_state *baus,
                                                          int (*key_compare_function)(void const *new_key, void const *existing_key),
                                                          enum lfds711_btree_au_existing_key existing_key,
                                                          void *user_state )
{
  LFDS711_PAL_ASSERT( baus != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &baus->root % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( key_compare_function != NULL );
  // TRD : existing_key can be any value in its range
  // TRD : user_state can be NULL

  baus->root = NULL;
  baus->key_compare_function = key_compare_function;
  baus->existing_key = existing_key;
  baus->user_state = user_state;

  lfds711_misc_internal_backoff_init( &baus->insert_backoff );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_btree_addonly_unbalanced/lfds711_btree_addonly_unbalanced_insert.c *****/





/****************************************************************************/
enum lfds711_btree_au_insert_result lfds711_btree_au_insert( struct lfds711_btree_au_state *baus,
                                                             struct lfds711_btree_au_element *baue,
                                                             struct lfds711_btree_au_element **existing_baue )
{
  char unsigned
    result = 0;

  int
    compare_result = 0;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_btree_au_element
    *compare = NULL,
    *volatile baue_next = NULL,
    *volatile baue_parent = NULL,
    *volatile baue_temp;

  LFDS711_PAL_ASSERT( baus != NULL );
  LFDS711_PAL_ASSERT( baue != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &baue->left % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &baue->right % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &baue->up % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &baue->value % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  // TRD : existing_baue can be NULL

  /* TRD : we follow a normal search for the insert node and which side to insert

           the difference is that insertion may fail because someone else inserts
           there before we do

           in this case, we resume searching for the insert node from the node
           we were attempting to insert upon

           (if we attempted to insert the root node and this failed, i.e. we thought
            the tree was empty but then it wasn't, then we start searching from the
            new root)
  */

  baue->up = baue->left = baue->right = NULL;

  LFDS711_MISC_BARRIER_LOAD;

  baue_temp = baus->root;

  LFDS711_MISC_BARRIER_LOAD;

  while( result == 0 )
  {
    // TRD : first we find where to insert
    while( baue_temp != NULL )
    {
      compare_result = baus->key_compare_function( baue->key, baue_temp->key );

      if( compare_result == 0 )
      {
        if( existing_baue != NULL )
          *existing_baue = baue_temp;

        switch( baus->existing_key )
        {
          case LFDS711_BTREE_AU_EXISTING_KEY_OVERWRITE:
            LFDS711_BTREE_AU_SET_VALUE_IN_ELEMENT( *baue_temp, baue->value );
            return LFDS711_BTREE_AU_INSERT_RESULT_SUCCESS_OVERWRITE;
          break;

          case LFDS711_BTREE_AU_EXISTING_KEY_FAIL:
            return LFDS711_BTREE_AU_INSERT_RESULT_FAILURE_EXISTING_KEY;
          break;
        }
      }

      if( compare_result < 0 )
        baue_next = baue_temp->left;

      if( compare_result > 0 )
        baue_next = baue_temp->right;

      baue_parent = baue_temp;
      baue_temp = baue_next;
      if( baue_temp != NULL )
        LFDS711_MISC_BARRIER_LOAD;
    }

    /* TRD : second, we actually insert

             at this point baue_temp has come to NULL
             and baue_parent is the element to insert at
             and result of the last compare indicates
             the direction of insertion

             it may be that another tree has already inserted an element with
             the same key as ourselves, or other elements which mean our position
             is now wrong

             in this case, it is either inserted in the position we're trying
             to insert in now, in which case our insert will fail

             or, similarly, other elements will have come in where we are,
             and our insert will fail
    */

    if( baue_parent == NULL )
    {
      compare = NULL;
      baue->up = baus->root;
      LFDS711_MISC_BARRIER_STORE;
      LFDS711_PAL_ATOMIC_CAS( &baus->root, &compare, baue, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

      if( result == 0 )
        baue_temp = baus->root;
    }

    if( baue_parent != NULL )
    {
      if( compare_result <= 0 )
      {
        compare = NULL;
        baue->up = baue_parent;
        LFDS711_MISC_BARRIER_STORE;
        LFDS711_PAL_ATOMIC_CAS( &baue_parent->left, &compare, baue, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
      }

      if( compare_result > 0 )
      {
        compare = NULL;
        baue->up = baue_parent;
        LFDS711_MISC_BARRIER_STORE;
        LFDS711_PAL_ATOMIC_CAS( &baue_parent->right, &compare, baue, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
      }

      // TRD : if the insert fails, then resume searching at the insert node
      if( result == 0 )
        baue_temp = baue_parent;
    }

    if( result == 0 )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( baus->insert_backoff, backoff_iteration );
  }

  LFDS711_BACKOFF_AUTOTUNE( baus->insert_backoff, backoff_iteration );

  // TRD : if we get to here, we added (not failed or overwrite on exist) a new element
  if( existing_baue != NULL )
    *existing_baue = NULL;

  return LFDS711_BTREE_AU_INSERT_RESULT_SUCCESS;
}





/***** lfds711_btree_addonly_unbalanced/lfds711_btree_addonly_unbalanced_query.c *****/





/***** private prototypes *****/
static void lfds711_btree_au_internal_validate( struct lfds711_btree_au_state *abs, struct lfds711_misc_validation_info *vi, enum lfds711_misc_validity *lfds711_btree_au_validity );





/****************************************************************************/
void lfds711_btree_au_query( struct lfds711_btree_au_state *baus,
                             enum lfds711_btree_au_query query_type,
                             void *query_input,
                             void *query_output )
{
  LFDS711_PAL_ASSERT( baus != NULL );
  // TRD : query_type can be any value in its range

  LFDS711_MISC_BARRIER_LOAD;

  switch( query_type )
  {
    case LFDS711_BTREE_AU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT:
    {
      struct lfds711_btree_au_element
        *baue = NULL;

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(lfds711_pal_uint_t *) query_output = 0;

      while( lfds711_btree_au_get_by_absolute_position_and_then_by_relative_position(baus, &baue, LFDS711_BTREE_AU_ABSOLUTE_POSITION_SMALLEST_IN_TREE, LFDS711_BTREE_AU_RELATIVE_POSITION_NEXT_LARGER_ELEMENT_IN_ENTIRE_TREE) )
        ( *(lfds711_pal_uint_t *) query_output )++;
    }
    break;

    case LFDS711_BTREE_AU_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_btree_au_internal_validate( baus, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_btree_au_internal_validate( struct lfds711_btree_au_state *baus,
                                                struct lfds711_misc_validation_info *vi,
                                                enum lfds711_misc_validity *lfds711_btree_au_validity )
{
  lfds711_pal_uint_t
    number_elements_from_query_tree = 0,
    number_elements_from_walk = 0;

  struct lfds711_btree_au_element
    *baue = NULL,
    *baue_prev = NULL;

  LFDS711_PAL_ASSERT( baus!= NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_btree_au_validity != NULL );

  *lfds711_btree_au_validity = LFDS711_MISC_VALIDITY_VALID;

  /* TRD : validation is performed by;

           performing an in-order walk
           we should see every element is larger than the preceeding element
           we count elements as we go along (visited elements, that is)
           and check our tally equals the expected count
  */

  LFDS711_MISC_BARRIER_LOAD;

  while( lfds711_btree_au_get_by_absolute_position_and_then_by_relative_position(baus, &baue, LFDS711_BTREE_AU_ABSOLUTE_POSITION_SMALLEST_IN_TREE, LFDS711_BTREE_AU_RELATIVE_POSITION_NEXT_LARGER_ELEMENT_IN_ENTIRE_TREE) )
  {
    // TRD : baue_prev should always be smaller than or equal to baue
    if( baue_prev != NULL )
      if( baus->key_compare_function(baue_prev->key, baue->key) > 0 )
      {
        *lfds711_btree_au_validity = LFDS711_MISC_VALIDITY_INVALID_ORDER;
        return;
      }

    baue_prev = baue;
    number_elements_from_walk++;
  }

  if( *lfds711_btree_au_validity == LFDS711_MISC_VALIDITY_VALID )
  {
    lfds711_btree_au_query( (struct lfds711_btree_au_state *) baus, LFDS711_BTREE_AU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, &number_elements_from_query_tree );

    if( number_elements_from_walk > number_elements_from_query_tree )
      *lfds711_btree_au_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;

    if( number_elements_from_walk < number_elements_from_query_tree )
      *lfds711_btree_au_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;
  }

  /* TRD : now check for expected number of elements
           vi can be NULL, in which case we do not check
           we know we don't have a loop from our earlier check
  */

  if( *lfds711_btree_au_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
  {
    lfds711_btree_au_query( (struct lfds711_btree_au_state *) baus, LFDS711_BTREE_AU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, &number_elements_from_query_tree );

    if( number_elements_from_query_tree < vi->min_elements )
      *lfds711_btree_au_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements_from_query_tree > vi->max_elements )
      *lfds711_btree_au_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_btree_addonly_unbalanced/lfds711_btree_addonly_unbalanced_cleanup.c *****/





/****************************************************************************/
void lfds711_btree_au_cleanup( struct lfds711_btree_au_state *baus,
                               void (*element_cleanup_callback)(struct lfds711_btree_au_state *baus, struct lfds711_btree_au_element *baue) )
{
  enum lfds711_btree_au_delete_action
    delete_action = LFDS711_BTREE_AU_DELETE_SELF; // TRD : to remove compiler warning

  struct lfds711_btree_au_element
    *baue;

  struct lfds711_btree_au_element
    *temp;

  LFDS711_PAL_ASSERT( baus != NULL );
  // TRD : element_delete_function can be NULL

  /* TRD : we're not lock-free now, so delete at will
           but be iterative, so can be used in kernels (where there's little stack)
           and be performant, since the user may be
           creating/destroying many of these trees
           also remember the user may be deallocating user data
           so we cannot visit an element twice

           we start at the root and iterate till we go to NULL
           if the element has zero children, we delete it and move up to its parent
           if the element has one child, we delete it, move its child into its place, and continue from its child
           if the element has two children, we move left

           the purpose of this is to minimize walking around the tree
           to prevent visiting an element twice
           while also minimizing code complexity
  */

  if( element_cleanup_callback == NULL )
    return;

  LFDS711_MISC_BARRIER_LOAD;

  lfds711_btree_au_get_by_absolute_position( baus, &baue, LFDS711_BTREE_AU_ABSOLUTE_POSITION_ROOT );

  while( baue != NULL )
  {
    if( baue->left == NULL and baue->right == NULL )
      delete_action = LFDS711_BTREE_AU_DELETE_SELF;

    if( baue->left != NULL and baue->right == NULL )
      delete_action = LFDS711_BTREE_AU_DELETE_SELF_REPLACE_WITH_LEFT_CHILD;

    if( baue->left == NULL and baue->right != NULL )
      delete_action = LFDS711_BTREE_AU_DELETE_SELF_REPLACE_WITH_RIGHT_CHILD;

    if( baue->left != NULL and baue->right != NULL )
      delete_action = LFDS711_BTREE_AU_DELETE_MOVE_LEFT;

    switch( delete_action )
    {
      case LFDS711_BTREE_AU_DELETE_SELF:
        // TRD : if we have a parent (we could be root) set his point to us to NULL
        if( baue->up != NULL )
        {
          if( baue->up->left == baue )
            baue->up->left = NULL;
          if( baue->up->right == baue )
            baue->up->right = NULL;
        }

        temp = baue;
        lfds711_btree_au_get_by_relative_position( &baue, LFDS711_BTREE_AU_RELATIVE_POSITION_UP );
        element_cleanup_callback( baus, temp );
      break;

      case LFDS711_BTREE_AU_DELETE_SELF_REPLACE_WITH_LEFT_CHILD:
        baue->left->up = baue->up;
        if( baue->up != NULL )
        {
          if( baue->up->left == baue )
            baue->up->left = baue->left;
          if( baue->up->right == baue )
            baue->up->right = baue->left;
        }

        temp = baue;
        lfds711_btree_au_get_by_relative_position( &baue, LFDS711_BTREE_AU_RELATIVE_POSITION_LEFT );
        element_cleanup_callback( baus, temp );
      break;

      case LFDS711_BTREE_AU_DELETE_SELF_REPLACE_WITH_RIGHT_CHILD:
        baue->right->up = baue->up;
        if( baue->up != NULL )
        {
          if( baue->up->left == baue )
            baue->up->left = baue->right;
          if( baue->up->right == baue )
            baue->up->right = baue->right;
        }

        temp = baue;
        lfds711_btree_au_get_by_relative_position( &baue, LFDS711_BTREE_AU_RELATIVE_POSITION_RIGHT );
        element_cleanup_callback( baus, temp );
      break;

      case LFDS711_BTREE_AU_DELETE_MOVE_LEFT:
        lfds711_btree_au_get_by_relative_position( &baue, LFDS711_BTREE_AU_RELATIVE_POSITION_LEFT );
      break;
    }
  }

  return;
}





/***** lfds711_btree_addonly_unbalanced/lfds711_btree_addonly_unbalanced_get.c *****/





/***** private prototypes *****/
static void lfds711_btree_au_internal_inorder_walk_from_largest_get_next_smallest_element( struct lfds711_btree_au_element **baue );
static void lfds711_btree_au_internal_inorder_walk_from_smallest_get_next_largest_element( struct lfds711_btree_au_element **baue );





/****************************************************************************/
int lfds711_btree_au_get_by_key( struct lfds711_btree_au_state *baus,
                                 int (*key_compare_function)(void const *new_key, void const *existing_key),
                                 void *key,
                                 struct lfds711_btree_au_element **baue )
{
  int
    compare_result = !0,
    rv = 1;

  LFDS711_PAL_ASSERT( baus != NULL );
  // TRD : key_compare_function can be NULL
  // TRD : key can be NULL
  LFDS711_PAL_ASSERT( baue != NULL );

  if( key_compare_function == NULL )
    key_compare_function = baus->key_compare_function;

  LFDS711_MISC_BARRIER_LOAD;

  *baue = baus->root;

  LFDS711_MISC_BARRIER_LOAD;

  while( *baue != NULL and compare_result != 0 )
  {
    compare_result = key_compare_function( key, (*baue)->key );

    if( compare_result < 0 )
    {
      *baue = (*baue)->left;
      LFDS711_MISC_BARRIER_LOAD;
    }

    if( compare_result > 0 )
    {
      *baue = (*baue)->right;
      LFDS711_MISC_BARRIER_LOAD;
    }
  }

  if( *baue == NULL )
    rv = 0;

  return rv;
}





/****************************************************************************/
int lfds711_btree_au_get_by_absolute_position( struct lfds711_btree_au_state *baus,
                                               struct lfds711_btree_au_element **baue,
                                               enum lfds711_btree_au_absolute_position absolute_position )
{
  int
    rv = 1;

  LFDS711_PAL_ASSERT( baus != NULL );
  LFDS711_PAL_ASSERT( baue != NULL );
  // TRD : absolute_position can be any value in its range

  LFDS711_MISC_BARRIER_LOAD;

  *baue = baus->root;

  LFDS711_MISC_BARRIER_LOAD;

  switch( absolute_position )
  {
    case LFDS711_BTREE_AU_ABSOLUTE_POSITION_ROOT:
    break;

    case LFDS711_BTREE_AU_ABSOLUTE_POSITION_LARGEST_IN_TREE:
      if( *baue != NULL )
        while( (*baue)->right != NULL )
        {
          *baue = (*baue)->right;
          LFDS711_MISC_BARRIER_LOAD;
        }
    break;

    case LFDS711_BTREE_AU_ABSOLUTE_POSITION_SMALLEST_IN_TREE:
      if( *baue != NULL )
        while( (*baue)->left != NULL )
        {
          *baue = (*baue)->left;
          LFDS711_MISC_BARRIER_LOAD;
        }
    break;
  }

  if( *baue == NULL )
    rv = 0;

  return rv;
}





/****************************************************************************/
int lfds711_btree_au_get_by_relative_position( struct lfds711_btree_au_element **baue,
                                               enum lfds711_btree_au_relative_position relative_position )
{
  int
    rv = 1;

  LFDS711_PAL_ASSERT( baue != NULL );
  // TRD : relative_position can baue any value in its range

  if( *baue == NULL )
    return 0;

  LFDS711_MISC_BARRIER_LOAD;

  switch( relative_position )
  {
    case LFDS711_BTREE_AU_RELATIVE_POSITION_UP:
      *baue = (*baue)->up;
      // TRD : no load barrier - up already existed, so is known to be safely propagated
    break;

    case LFDS711_BTREE_AU_RELATIVE_POSITION_LEFT:
      *baue = (*baue)->left;
      LFDS711_MISC_BARRIER_LOAD;
    break;

    case LFDS711_BTREE_AU_RELATIVE_POSITION_RIGHT:
      *baue = (*baue)->right;
      LFDS711_MISC_BARRIER_LOAD;
    break;

    case LFDS711_BTREE_AU_RELATIVE_POSITION_SMALLEST_ELEMENT_BELOW_CURRENT_ELEMENT:
      *baue = (*baue)->left;
      if( *baue != NULL )
      {
        LFDS711_MISC_BARRIER_LOAD;
        while( (*baue)->right != NULL )
        {
          *baue = (*baue)->right;
          LFDS711_MISC_BARRIER_LOAD;
        }
      }
    break;

    case LFDS711_BTREE_AU_RELATIVE_POSITION_LARGEST_ELEMENT_BELOW_CURRENT_ELEMENT:
      *baue = (*baue)->right;
      if( *baue != NULL )
      {
        LFDS711_MISC_BARRIER_LOAD;
        while( (*baue)->left != NULL )
        {
          *baue = (*baue)->left;
          LFDS711_MISC_BARRIER_LOAD;
        }
      }
    break;

    case LFDS711_BTREE_AU_RELATIVE_POSITION_NEXT_SMALLER_ELEMENT_IN_ENTIRE_TREE:
      lfds711_btree_au_internal_inorder_walk_from_largest_get_next_smallest_element( baue );
    break;

    case LFDS711_BTREE_AU_RELATIVE_POSITION_NEXT_LARGER_ELEMENT_IN_ENTIRE_TREE:
      lfds711_btree_au_internal_inorder_walk_from_smallest_get_next_largest_element( baue );
    break;
  }

  if( *baue == NULL )
    rv = 0;

  return rv;
}





/****************************************************************************/
static void lfds711_btree_au_internal_inorder_walk_from_largest_get_next_smallest_element( struct lfds711_btree_au_element **baue )
{
  enum lfds711_btree_au_move
    action = LFDS711_BTREE_AU_MOVE_INVALID;

  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED,
    load_finished_flag = LFDS711_MISC_FLAG_LOWERED;

  struct lfds711_btree_au_element
    *left = NULL,
    *right = NULL,
    *up = NULL,
    *up_left = NULL,
    *up_right = NULL;

  LFDS711_PAL_ASSERT( baue != NULL );

  /* TRD : from any given element, the next smallest element is;
           1. if we have a left, it's the largest element on the right branch of our left child
           2. if we don't have a left, and we're on the right of our parent, then it's our parent
           3. if we don't have a left, and we're on the left of our parent or we have no parent,
              iterative up the tree until we find the first child who is on the right of its parent; then it's the parent
  */

  /* TRD : we need to ensure the variables we use to decide our action are self-consistent
           to do this, we make local copies of them all
           then, if they are all not NULL, we can know they cannot change and we can continue
           if however any of them are NULL, they could have changed while we were reading
           and so our variables could be non-self-consistent
           to check for this, we issue another processor read barrier
           and then compare our local variables with the values in the tree
           if they all match, then we know our variable set is self-consistent
           (even though it may now be wrong - but we will discover this when we try the atomic operation)
  */

  LFDS711_MISC_BARRIER_LOAD;

  while( load_finished_flag == LFDS711_MISC_FLAG_LOWERED )
  {
    left = (*baue)->left;
    right = (*baue)->right;
    up = (*baue)->up;
    if( up != NULL )
    {
      up_left = (*baue)->up->left;
      up_right = (*baue)->up->right;
    }

    // TRD : optimization - if all already not NULL, given we're add-only, they won't change
    if( left != NULL and right != NULL and (up == NULL or (up != NULL and up_left != NULL and up_right != NULL)) )
      break;

    LFDS711_MISC_BARRIER_LOAD;

    if( left == (*baue)->left and right == (*baue)->right and (up == NULL or (up != NULL and up == (*baue)->up and up_left == (*baue)->up->left and up_right == (*baue)->up->right)) )
      load_finished_flag = LFDS711_MISC_FLAG_RAISED;
  }

  if( left != NULL )
    action = LFDS711_BTREE_AU_MOVE_LARGEST_FROM_LEFT_CHILD;

  if( left == NULL and up != NULL and up_right == *baue )
    action = LFDS711_BTREE_AU_MOVE_GET_PARENT;

  if( (left == NULL and up == NULL) or (up != NULL and up_left == *baue and left == NULL) )
    action = LFDS711_BTREE_AU_MOVE_MOVE_UP_TREE;

  switch( action )
  {
    case LFDS711_BTREE_AU_MOVE_INVALID:
    case LFDS711_BTREE_AU_MOVE_SMALLEST_FROM_RIGHT_CHILD:
      // TRD : eliminates a compiler warning
    break;

    case LFDS711_BTREE_AU_MOVE_LARGEST_FROM_LEFT_CHILD:
      *baue = left;
      if( *baue != NULL )
      {
        LFDS711_MISC_BARRIER_LOAD;
        while( (*baue)->right != NULL )
        {
          *baue = (*baue)->right;
          LFDS711_MISC_BARRIER_LOAD;
        }
      }
    break;

    case LFDS711_BTREE_AU_MOVE_GET_PARENT:
      *baue = up;
    break;

    case LFDS711_BTREE_AU_MOVE_MOVE_UP_TREE:
      while( finished_flag == LFDS711_MISC_FLAG_LOWERED )
      {
        load_finished_flag = LFDS711_MISC_FLAG_LOWERED;

        while( load_finished_flag == LFDS711_MISC_FLAG_LOWERED )
        {
          up = (*baue)->up;
          if( up != NULL )
            up_left = (*baue)->up->left;

          // TRD : optimization - if all already not NULL, given we're add-only, they won't change
          if( up == NULL or (up != NULL and up_left != NULL) )
            break;

          LFDS711_MISC_BARRIER_LOAD;

          if( up == (*baue)->up and up_left == (*baue)->up->left )
            load_finished_flag = LFDS711_MISC_FLAG_RAISED;
        }

        if( *baue != NULL and up != NULL and *baue == up_left )
          *baue = up;
        else
          finished_flag = LFDS711_MISC_FLAG_RAISED;
      }

      *baue = up;

      /*

      while( *baue != NULL and (*baue)->up != NULL and *baue == (*baue)->up->left )
        *baue = (*baue)->up;

      *baue = (*baue)->up;

      */
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_btree_au_internal_inorder_walk_from_smallest_get_next_largest_element( struct lfds711_btree_au_element **baue )
{
  enum lfds711_btree_au_move
    action = LFDS711_BTREE_AU_MOVE_INVALID;

  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED,
    load_finished_flag = LFDS711_MISC_FLAG_LOWERED;

  struct lfds711_btree_au_element
    *left = NULL,
    *right = NULL,
    *up = NULL,
    *up_left = NULL,
    *up_right = NULL;

  LFDS711_PAL_ASSERT( baue != NULL );

  /* TRD : from any given element, the next largest element is;
           1. if we have a right, it's the smallest element on the left branch of our right child
           2. if we don't have a right, and we're on the left of our parent, then it's our parent
           3. if we don't have a right, and we're on the right of our parent or we have no parent,
              iterate up the tree until we find the first child who is on the left of its parent; then it's the parent
  */

  LFDS711_MISC_BARRIER_LOAD;

  while( load_finished_flag == LFDS711_MISC_FLAG_LOWERED )
  {
    left = (*baue)->left;
    right = (*baue)->right;
    up = (*baue)->up;
    if( up != NULL )
    {
      up_left = (*baue)->up->left;
      up_right = (*baue)->up->right;
    }

    // TRD : optimization - if all already not NULL, given we're add-only, they won't change
    if( left != NULL and right != NULL and (up == NULL or (up != NULL and up_left != NULL and up_right != NULL)) )
      break;

    LFDS711_MISC_BARRIER_LOAD;

    if( left == (*baue)->left and right == (*baue)->right and (up == NULL or (up != NULL and up == (*baue)->up and up_left == (*baue)->up->left and up_right == (*baue)->up->right)) )
      load_finished_flag = LFDS711_MISC_FLAG_RAISED;
  }

  if( right != NULL )
    action = LFDS711_BTREE_AU_MOVE_SMALLEST_FROM_RIGHT_CHILD;

  if( right == NULL and up != NULL and up_left == *baue )
    action = LFDS711_BTREE_AU_MOVE_GET_PARENT;

  if( (right == NULL and up == NULL) or (up != NULL and up_right == *baue and right == NULL) )
    action = LFDS711_BTREE_AU_MOVE_MOVE_UP_TREE;

  switch( action )
  {
    case LFDS711_BTREE_AU_MOVE_INVALID:
    case LFDS711_BTREE_AU_MOVE_LARGEST_FROM_LEFT_CHILD:
      // TRD : remove compiler warning
    break;

    case LFDS711_BTREE_AU_MOVE_SMALLEST_FROM_RIGHT_CHILD:
      *baue = right;
      if( *baue != NULL )
      {
        LFDS711_MISC_BARRIER_LOAD;
        while( (*baue)->left != NULL )
        {
          *baue = (*baue)->left;
          LFDS711_MISC_BARRIER_LOAD;
        }
      }
    break;

    case LFDS711_BTREE_AU_MOVE_GET_PARENT:
      *baue = up;
    break;

    case LFDS711_BTREE_AU_MOVE_MOVE_UP_TREE:
      while( finished_flag == LFDS711_MISC_FLAG_LOWERED )
      {
        load_finished_flag = LFDS711_MISC_FLAG_LOWERED;

        while( load_finished_flag == LFDS711_MISC_FLAG_LOWERED )
        {
          up = (*baue)->up;
          if( up != NULL )
            up_right = (*baue)->up->right;

          // TRD : optimization - if all already not NULL, given we're add-only, they won't change
          if( up == NULL or (up != NULL and up_right != NULL) )
            break;

          LFDS711_MISC_BARRIER_LOAD;

          if( up == (*baue)->up and up_right == (*baue)->up->right )
            load_finished_flag = LFDS711_MISC_FLAG_RAISED;
        }

        if( *baue != NULL and up != NULL and *baue == up_right )
          *baue = up;
        else
          finished_flag = LFDS711_MISC_FLAG_RAISED;
      }

      *baue = up;

      /*

      while( *baue != NULL and (*baue)->up != NULL and *baue == (*baue)->up->right )
        *baue = (*baue)->up;

      *baue = (*baue)->up;

      */
    break;
  }

  return;
}





/****************************************************************************/
int lfds711_btree_au_get_by_absolute_position_and_then_by_relative_position( struct lfds711_btree_au_state *baus,
                                                                             struct lfds711_btree_au_element **baue,
                                                                             enum lfds711_btree_au_absolute_position absolute_position,
                                                                             enum lfds711_btree_au_relative_position relative_position )
{
  int
    rv;

  LFDS711_PAL_ASSERT( baus != NULL );
  LFDS711_PAL_ASSERT( baue != NULL );
  // TRD: absolute_position can be any value in its range
  // TRD: relative_position can be any value in its range

  if( *baue == NULL )
    rv = lfds711_btree_au_get_by_absolute_position( baus, baue, absolute_position );
  else
    rv = lfds711_btree_au_get_by_relative_position( baue, relative_position );

  return rv;
}





/***** lfds711_freelist/lfds711_freelist_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/
void lfds711_freelist_internal_push_without_ea( struct lfds711_freelist_state *fs,
                                                struct lfds711_freelist_element *fe );





/***** lfds711_freelist/lfds711_freelist_query.c *****/





/***** private prototypes *****/
static void lfds711_freelist_internal_freelist_validate( struct lfds711_freelist_state *fs,
                                                         struct lfds711_misc_validation_info *vi,
                                                         enum lfds711_misc_validity *lfds711_freelist_validity );





/****************************************************************************/
void lfds711_freelist_query( struct lfds711_freelist_state *fs,
                             enum lfds711_freelist_query query_type,
                             void *query_input,
                             void *query_output )
{
  struct lfds711_freelist_element
    *fe;

  LFDS711_PAL_ASSERT( fs != NULL );
  // TRD : query_type can be any value in its range

  LFDS711_MISC_BARRIER_LOAD;

  switch( query_type )
  {
    case LFDS711_FREELIST_QUERY_SINGLETHREADED_GET_COUNT:
    {
      lfds711_pal_uint_t
        loop,
        subloop;

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(lfds711_pal_uint_t *) query_output = 0;

      // TRD : count the elements in the elimination array
      for( loop = 0 ; loop < fs->elimination_array_size_in_elements ; loop++ )
        for( subloop = 0 ; subloop < LFDS711_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS ; subloop++ )
          if( fs->elimination_array[loop][subloop] != NULL )
            ( *(lfds711_pal_uint_t *) query_output )++;

      // TRD : count the elements on the freelist
      fe = (struct lfds711_freelist_element *) fs->top[POINTER];

      while( fe != NULL )
      {
        ( *(lfds711_pal_uint_t *) query_output )++;
        fe = (struct lfds711_freelist_element *) fe->next;
      }
    }
    break;

    case LFDS711_FREELIST_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_freelist_internal_freelist_validate( fs, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;

    case LFDS711_FREELIST_QUERY_GET_ELIMINATION_ARRAY_EXTRA_ELEMENTS_IN_FREELIST_ELEMENTS:
    {
      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      ( *(lfds711_pal_uint_t *) query_output ) = (fs->elimination_array_size_in_elements-1) * LFDS711_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS;
    }
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_freelist_internal_freelist_validate( struct lfds711_freelist_state *fs,
                                                         struct lfds711_misc_validation_info *vi,
                                                         enum lfds711_misc_validity *lfds711_freelist_validity )
{
  lfds711_pal_uint_t
    number_elements = 0;

  struct lfds711_freelist_element
    *fe_slow,
    *fe_fast;

  LFDS711_PAL_ASSERT( fs != NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_freelist_validity != NULL );

  *lfds711_freelist_validity = LFDS711_MISC_VALIDITY_VALID;

  fe_slow = fe_fast = (struct lfds711_freelist_element *) fs->top[POINTER];

  /* TRD : first, check for a loop
           we have two pointers
           both of which start at the top of the freelist
           we enter a loop
           and on each iteration
           we advance one pointer by one element
           and the other by two

           we exit the loop when both pointers are NULL
           (have reached the end of the freelist)

           or

           if we fast pointer 'sees' the slow pointer
           which means we have a loop
  */

  if( fe_slow != NULL )
    do
    {
      fe_slow = fe_slow->next;

      if( fe_fast != NULL )
        fe_fast = fe_fast->next;

      if( fe_fast != NULL )
        fe_fast = fe_fast->next;
    }
    while( fe_slow != NULL and fe_fast != fe_slow );

  if( fe_fast != NULL and fe_slow != NULL and fe_fast == fe_slow )
    *lfds711_freelist_validity = LFDS711_MISC_VALIDITY_INVALID_LOOP;

  /* TRD : now check for expected number of elements
           vi can be NULL, in which case we do not check
           we know we don't have a loop from our earlier check
  */

  if( *lfds711_freelist_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
  {
    lfds711_freelist_query( fs, LFDS711_FREELIST_QUERY_SINGLETHREADED_GET_COUNT, NULL, (void *) &number_elements );

    if( number_elements < vi->min_elements )
      *lfds711_freelist_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements > vi->max_elements )
      *lfds711_freelist_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_freelist/lfds711_freelist_pop.c *****/





/****************************************************************************/
int lfds711_freelist_pop( struct lfds711_freelist_state *fs,
                          struct lfds711_freelist_element **fe,
                          struct lfds711_prng_st_state *psts )
{
  char unsigned
    result;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE,
    elimination_array_index,
    loop,
    random_value;

  struct lfds711_freelist_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_DOUBLE_POINTER)
    *new_top[PAC_SIZE],
    *volatile original_top[PAC_SIZE];

  LFDS711_PAL_ASSERT( fs != NULL );
  LFDS711_PAL_ASSERT( fe != NULL );
  // TRD : psts can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( fs->elimination_array_size_in_elements > 0 )
  {
    if( psts != NULL )
    {
      LFDS711_PRNG_ST_GENERATE( *psts, random_value );
      elimination_array_index = ( random_value & (fs->elimination_array_size_in_elements-1) );
    }
    else
    {
      elimination_array_index = (lfds711_pal_uint_t) fe;
      LFDS711_PRNG_ST_MIXING_FUNCTION( elimination_array_index );
      elimination_array_index = ( elimination_array_index & (fs->elimination_array_size_in_elements-1) );
    }

    // TRD : full scan of one cache line, max pointers per cache line

    *fe = NULL;

    for( loop = 0 ; loop < LFDS711_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS ; loop++ )
      if( fs->elimination_array[elimination_array_index][loop] != NULL )
      {
        LFDS711_PAL_ATOMIC_EXCHANGE( &fs->elimination_array[elimination_array_index][loop], *fe, struct lfds711_freelist_element * );
        if( *fe != NULL )
          return 1;
      }
  }

  original_top[COUNTER] = fs->top[COUNTER];
  original_top[POINTER] = fs->top[POINTER];

  do
  {
    if( original_top[POINTER] == NULL )
    {
      *fe = NULL;
      return 0;
    }

    new_top[COUNTER] = original_top[COUNTER] + 1;
    new_top[POINTER] = original_top[POINTER]->next;

    LFDS711_PAL_ATOMIC_DWCAS( fs->top, original_top, new_top, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

    if( result == 0 )
    {
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( fs->pop_backoff, backoff_iteration );
      LFDS711_MISC_BARRIER_LOAD;
    }
  }
  while( result == 0 );

  *fe = original_top[POINTER];

  LFDS711_BACKOFF_AUTOTUNE( fs->pop_backoff, backoff_iteration );

  return 1;
}





/***** lfds711_freelist/lfds711_freelist_cleanup.c *****/





/****************************************************************************/
void lfds711_freelist_cleanup( struct lfds711_freelist_state *fs,
                               void (*element_cleanup_callback)(struct lfds711_freelist_state *fs, struct lfds711_freelist_element *fe) )
{
  struct lfds711_freelist_element
    *fe,
    *fe_temp;

  LFDS711_PAL_ASSERT( fs != NULL );
  // TRD : element_cleanup_callback can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( element_cleanup_callback != NULL )
  {
    fe = fs->top[POINTER];

    while( fe != NULL )
    {
      fe_temp = fe;
      fe = fe->next;

      element_cleanup_callback( fs, fe_temp );
    }
  }

  return;
}





/***** lfds711_freelist/lfds711_freelist_init.c *****/





/****************************************************************************/
void lfds711_freelist_init_valid_on_current_logical_core( struct lfds711_freelist_state *fs,
                                                          struct lfds711_freelist_element * volatile (*elimination_array)[LFDS711_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS],
                                                          lfds711_pal_uint_t elimination_array_size_in_elements,
                                                          void *user_state )
{
  lfds711_pal_uint_t
    loop,
    subloop;

  LFDS711_PAL_ASSERT( fs != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) fs->top % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &fs->elimination_array_size_in_elements % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  // TRD : elimination_array can be NULL
  LFDS711_PAL_ASSERT( (elimination_array == NULL) or
                      ( (elimination_array != NULL) and (lfds711_pal_uint_t) elimination_array % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 ) );
  LFDS711_PAL_ASSERT( (elimination_array == NULL and elimination_array_size_in_elements == 0) or
                      (elimination_array != NULL and elimination_array_size_in_elements >= 2 and (elimination_array_size_in_elements & (elimination_array_size_in_elements-1)) == 0) );
  // TRD : user_state can be NULL

  fs->top[POINTER] = NULL;
  fs->top[COUNTER] = 0;

  fs->elimination_array = elimination_array;
  fs->elimination_array_size_in_elements = elimination_array_size_in_elements;
  fs->user_state = user_state;

  for( loop = 0 ; loop < elimination_array_size_in_elements ; loop++ )
    for( subloop = 0 ; subloop < LFDS711_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS ; subloop++ )
      fs->elimination_array[loop][subloop] = NULL;

  lfds711_misc_internal_backoff_init( &fs->pop_backoff );
  lfds711_misc_internal_backoff_init( &fs->push_backoff );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_freelist/lfds711_freelist_push.c *****/





/****************************************************************************/
void lfds711_freelist_push( struct lfds711_freelist_state *fs,
                            struct lfds711_freelist_element *fe,
                            struct lfds711_prng_st_state *psts )
{
  char unsigned
    result;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE,
    elimination_array_index,
    loop,
    random_value;

  struct lfds711_freelist_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_DOUBLE_POINTER)
    *new_top[PAC_SIZE],
    *volatile original_top[PAC_SIZE];

  LFDS711_PAL_ASSERT( fs != NULL );
  LFDS711_PAL_ASSERT( fe != NULL );
  // TRD : psts can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( fs->elimination_array_size_in_elements > 0 )
  {
    if( psts != NULL )
    {
      LFDS711_PRNG_ST_GENERATE( *psts, random_value );
      elimination_array_index = ( random_value & (fs->elimination_array_size_in_elements-1) );
    }
    else
    {
      elimination_array_index = (lfds711_pal_uint_t) fe;
      LFDS711_PRNG_ST_MIXING_FUNCTION( elimination_array_index );
      elimination_array_index = ( elimination_array_index & (fs->elimination_array_size_in_elements-1) );
    }

    // TRD : full scan of one cache line, max pointers per cache line

    for( loop = 0 ; loop < LFDS711_FREELIST_ELIMINATION_ARRAY_ELEMENT_SIZE_IN_FREELIST_ELEMENTS ; loop++ )
      if( fs->elimination_array[elimination_array_index][loop] == NULL )
      {
        LFDS711_PAL_ATOMIC_EXCHANGE( &fs->elimination_array[elimination_array_index][loop], fe, struct lfds711_freelist_element * );
        if( fe == NULL )
          return;
      }
  }

  new_top[POINTER] = fe;

  original_top[COUNTER] = fs->top[COUNTER];
  original_top[POINTER] = fs->top[POINTER];

  do
  {
    fe->next = original_top[POINTER];
    LFDS711_MISC_BARRIER_STORE;

    new_top[COUNTER] = original_top[COUNTER] + 1;
    LFDS711_PAL_ATOMIC_DWCAS( fs->top, original_top, new_top, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

    if( result == 0 )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( fs->push_backoff, backoff_iteration );
  }
  while( result == 0 );

  LFDS711_BACKOFF_AUTOTUNE( fs->push_backoff, backoff_iteration );

  return;
}





/****************************************************************************/
void lfds711_freelist_internal_push_without_ea( struct lfds711_freelist_state *fs,
                                                struct lfds711_freelist_element *fe )
{
  char unsigned
    result;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_freelist_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_DOUBLE_POINTER)
    *new_top[PAC_SIZE],
    *volatile original_top[PAC_SIZE];

  LFDS711_PAL_ASSERT( fs != NULL );
  LFDS711_PAL_ASSERT( fe != NULL );

  new_top[POINTER] = fe;

  original_top[COUNTER] = fs->top[COUNTER];
  original_top[POINTER] = fs->top[POINTER];

  do
  {
    fe->next = original_top[POINTER];
    LFDS711_MISC_BARRIER_STORE;

    new_top[COUNTER] = original_top[COUNTER] + 1;
    LFDS711_PAL_ATOMIC_DWCAS( fs->top, original_top, new_top, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

    if( result == 0 )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( fs->push_backoff, backoff_iteration );
  }
  while( result == 0 );

  LFDS711_BACKOFF_AUTOTUNE( fs->push_backoff, backoff_iteration );

  return;
}





/***** lfds711_queue_bounded_singleproducer_singleconsumer/lfds711_queue_bounded_singleproducer_singleconsumer_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_queue_bounded_singleproducer_singleconsumer/lfds711_queue_bounded_singleproducer_singleconsumer_dequeue.c *****/





/****************************************************************************/
int lfds711_queue_bss_dequeue( struct lfds711_queue_bss_state *qbsss,
                               void **key,
                               void **value )
{
  struct lfds711_queue_bss_element
    *qbsse;

  LFDS711_PAL_ASSERT( qbsss != NULL );
  // TRD : key can be NULL
  // TRD : value can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( qbsss->read_index != qbsss->write_index )
  {
    qbsse = qbsss->element_array + qbsss->read_index;

    if( key != NULL )
      *key = qbsse->key;

    if( value != NULL )
      *value = qbsse->value;

    qbsss->read_index = (qbsss->read_index + 1) & qbsss->mask;

    LFDS711_MISC_BARRIER_STORE;

    return 1;
  }

  return 0;
}





/***** lfds711_queue_bounded_singleproducer_singleconsumer/lfds711_queue_bounded_singleproducer_singleconsumer_cleanup.c *****/





/****************************************************************************/
void lfds711_queue_bss_cleanup( struct lfds711_queue_bss_state *qbsss,
                                void (*element_cleanup_callback)(struct lfds711_queue_bss_state *qbsss, void *key, void *value) )
{
  lfds711_pal_uint_t
    loop;

  struct lfds711_queue_bss_element
    *qbsse;

  LFDS711_PAL_ASSERT( qbsss != NULL );
  // TRD : element_cleanup_callback can be NULL

  if( element_cleanup_callback != NULL )
    for( loop = qbsss->read_index ; loop < qbsss->read_index + qbsss->number_elements ; loop++ )
    {
      qbsse = qbsss->element_array + (loop % qbsss->number_elements);
      element_cleanup_callback( qbsss, qbsse->key, qbsse->value );
    }

  return;
}





/***** lfds711_queue_bounded_singleproducer_singleconsumer/lfds711_queue_bounded_singleproducer_singleconsumer_query.c *****/





/***** private prototypes *****/
static void lfds711_queue_bss_internal_validate( struct lfds711_queue_bss_state *qbsss,
                                                 struct lfds711_misc_validation_info *vi,
                                                 enum lfds711_misc_validity *lfds711_validity );





/****************************************************************************/
void lfds711_queue_bss_query( struct lfds711_queue_bss_state *qbsss,
                              enum lfds711_queue_bss_query query_type,
                              void *query_input,
                              void *query_output )
{
  LFDS711_PAL_ASSERT( qbsss != NULL );
  // TRD : query_type can be any value in its range

  switch( query_type )
  {
    case LFDS711_QUEUE_BSS_QUERY_GET_POTENTIALLY_INACCURATE_COUNT:
    {
      lfds711_pal_uint_t
        local_read_index,
        local_write_index;

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      LFDS711_MISC_BARRIER_LOAD;

      local_read_index = qbsss->read_index;
      local_write_index = qbsss->write_index;

      *(lfds711_pal_uint_t *) query_output = +( local_write_index - local_read_index );

      if( local_read_index > local_write_index )
        *(lfds711_pal_uint_t *) query_output = qbsss->number_elements - *(lfds711_pal_uint_t *) query_output;
    }
    break;

    case LFDS711_QUEUE_BSS_QUERY_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_queue_bss_internal_validate( qbsss, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_queue_bss_internal_validate( struct lfds711_queue_bss_state *qbsss,
                                                 struct lfds711_misc_validation_info *vi,
                                                 enum lfds711_misc_validity *lfds711_validity )
{
  LFDS711_PAL_ASSERT( qbsss != NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_validity != NULL );

  *lfds711_validity = LFDS711_MISC_VALIDITY_VALID;

  if( vi != NULL )
  {
    lfds711_pal_uint_t
      number_elements;

    lfds711_queue_bss_query( qbsss, LFDS711_QUEUE_BSS_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, (void *) &number_elements );

    if( number_elements < vi->min_elements )
      *lfds711_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements > vi->max_elements )
      *lfds711_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_queue_bounded_singleproducer_singleconsumer/lfds711_queue_bounded_singleproducer_singleconsumer_init.c *****/





/****************************************************************************/
void lfds711_queue_bss_init_valid_on_current_logical_core( struct lfds711_queue_bss_state *qbsss,
                                                           struct lfds711_queue_bss_element *element_array,
                                                           lfds711_pal_uint_t number_elements,
                                                           void *user_state )
{
  LFDS711_PAL_ASSERT( qbsss != NULL );
  LFDS711_PAL_ASSERT( element_array != NULL );
  LFDS711_PAL_ASSERT( number_elements >= 2 );
  LFDS711_PAL_ASSERT( ( number_elements & (number_elements-1) ) == 0 ); // TRD : number_elements must be a positive integer power of 2
  // TRD : user_state can be NULL

  /* TRD : the use of mask and the restriction on a power of two
           upon the number of elements bears some remark

           in this queue, there are a fixed number of elements
           we have a read index and a write index
           when we write, and thre is space to write, we increment the write index
           (if no space to write, we just return)
           when we read, and there are elements to be read, we after reading increment the read index
           (if no elements to read, we just return)
           the problem is - how do we handle wrap around?
           e.g. when I write, but my write index is now equal to the number of elements
           the usual solution is to modulus the write index by the nunmber of elements
           problem is modulus is slow
           there is a better way
           first, we restrict the number of elements to be a power of two
           so imagine we have a 64-bit system and we set the number of elements to be 2^64
           this gives us a bit pattern of 1000 0000 0000 0000 (...etc, lots of zeros)
           now (just roll with this for a bit) subtract one from this
           this gives us a mask (on a two's compliment machine)
           0111 1111 1111 1111 (...etc, lots of ones)
           so what we do now, when we increment an index (think of the write index as the example)
           we bitwise and it with the mask
           now think about thwt happens
           all the numbers up to 2^64 will be unchanged - their MSB is never set, and we and with all the other bits
           but when we finally hit 2^64 and need to roll over... bingo!
           we drop MSB (which we finally have) and have the value 0!
           this is exactly what we want
           bitwise and is much faster than modulus
  */

  qbsss->number_elements = number_elements;
  qbsss->mask = qbsss->number_elements - 1;
  qbsss->read_index = 0;
  qbsss->write_index = 0;
  qbsss->element_array = element_array;
  qbsss->user_state = user_state;

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_queue_bounded_singleproducer_singleconsumer/lfds711_queue_bounded_singleproducer_singleconsumer_enqueue.c *****/





/****************************************************************************/
int lfds711_queue_bss_enqueue( struct lfds711_queue_bss_state *qbsss,
                               void *key,
                               void *value )
{
  struct lfds711_queue_bss_element
    *qbsse;

  LFDS711_PAL_ASSERT( qbsss != NULL );
  // TRD : key can be NULL
  // TRD : value can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( ( (qbsss->write_index+1) & qbsss->mask ) != qbsss->read_index )
  {
    qbsse = qbsss->element_array + qbsss->write_index;

    qbsse->key = key;
    qbsse->value = value;

    LFDS711_MISC_BARRIER_STORE;

    qbsss->write_index = (qbsss->write_index + 1) & qbsss->mask;

    return 1;
  }

  return 0;
}





/***** lfds711_list_addonly_singlylinked_ordered/lfds711_list_addonly_singlylinked_ordered_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_list_addonly_singlylinked_ordered/lfds711_list_addonly_singlylinked_ordered_insert.c *****/





/****************************************************************************/
enum lfds711_list_aso_insert_result lfds711_list_aso_insert( struct lfds711_list_aso_state *lasos,
                                                             struct lfds711_list_aso_element *lasoe,
                                                             struct lfds711_list_aso_element **existing_lasoe )
{
  char unsigned
    result;

  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED;

  int
    compare_result = 0;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_list_aso_element
    *volatile lasoe_temp = NULL,
    *volatile lasoe_trailing;

  LFDS711_PAL_ASSERT( lasos != NULL );
  LFDS711_PAL_ASSERT( lasoe != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasoe->next % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasoe->value % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  // TRD : existing_lasoe can be NULL

  /* TRD : imagine a list, sorted small to large

           we arrive at an element
           we obtain its next pointer
           we check we are greater than the current element and smaller than the next element
           this means we have found the correct location to insert
           we try to CAS ourselves in; in the meantime,
           someone else has *aready* swapped in an element which is smaller than we are

           e.g.

           the list is { 1, 10 } and we are the value 5

           we arrive at 1; we check the next element and see it is 10
           so we are larger than the current element and smaller than the next
           we are in the correct location to insert and we go to insert...

           in the meantime, someone else with the value 3 comes along
           he too finds this is the correct location and inserts before we do
           the list is now { 1, 3, 10 } and we are trying to insert now after
           1 and before 3!

           our insert CAS fails, because the next pointer of 1 has changed aready;
           but we see we are in the wrong location - we need to move forward an
           element
  */

  LFDS711_MISC_BARRIER_LOAD;

  /* TRD : we need to begin with the leading dummy element
           as the element to be inserted
           may be smaller than all elements in the list
  */

  lasoe_trailing = lasos->start;
  lasoe_temp = lasos->start->next;

  while( finished_flag == LFDS711_MISC_FLAG_LOWERED )
  {
    if( lasoe_temp == NULL )
      compare_result = -1;

    if( lasoe_temp != NULL )
    {
      LFDS711_MISC_BARRIER_LOAD;
      compare_result = lasos->key_compare_function( lasoe->key, lasoe_temp->key );
    }

    if( compare_result == 0 )
    {
      if( existing_lasoe != NULL )
        *existing_lasoe = lasoe_temp;

      switch( lasos->existing_key )
      {
        case LFDS711_LIST_ASO_EXISTING_KEY_OVERWRITE:
          LFDS711_LIST_ASO_SET_VALUE_IN_ELEMENT( *lasoe_temp, lasoe->value );
          return LFDS711_LIST_ASO_INSERT_RESULT_SUCCESS_OVERWRITE;
        break;

        case LFDS711_LIST_ASO_EXISTING_KEY_FAIL:
          return LFDS711_LIST_ASO_INSERT_RESULT_FAILURE_EXISTING_KEY;
        break;
      }

      finished_flag = LFDS711_MISC_FLAG_RAISED;
    }

    if( compare_result < 0 )
    {
      lasoe->next = lasoe_temp;
      LFDS711_MISC_BARRIER_STORE;
      LFDS711_PAL_ATOMIC_CAS( &lasoe_trailing->next, (struct lfds711_list_aso_element **) &lasoe->next, lasoe, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

      if( result == 1 )
        finished_flag = LFDS711_MISC_FLAG_RAISED;
      else
      {
        LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( lasos->insert_backoff, backoff_iteration );
        // TRD : if we fail to link, someone else has linked and so we need to redetermine our position is correct
        lasoe_temp = lasoe_trailing->next;
      }
    }

    if( compare_result > 0 )
    {
      // TRD : move trailing along by one element
      lasoe_trailing = lasoe_trailing->next;

      /* TRD : set temp as the element after trailing
               if the new element we're linking is larger than all elements in the list,
               lasoe_temp will now go to NULL and we'll link at the end
      */
      lasoe_temp = lasoe_trailing->next;
    }
  }

  LFDS711_BACKOFF_AUTOTUNE( lasos->insert_backoff, backoff_iteration );

  return LFDS711_LIST_ASO_INSERT_RESULT_SUCCESS;
}





/***** lfds711_list_addonly_singlylinked_ordered/lfds711_list_addonly_singlylinked_ordered_query.c *****/





/***** private prototypes *****/
static void lfds711_list_aso_internal_validate( struct lfds711_list_aso_state *lasos,
                                                struct lfds711_misc_validation_info *vi,
                                                enum lfds711_misc_validity *lfds711_list_aso_validity );





/****************************************************************************/
void lfds711_list_aso_query( struct lfds711_list_aso_state *lasos,
                             enum lfds711_list_aso_query query_type,
                             void *query_input,
                             void *query_output )
{
  LFDS711_PAL_ASSERT( lasos != NULL );
  // TRD : query_type can be any value in its range

  LFDS711_MISC_BARRIER_LOAD;

  switch( query_type )
  {
    case LFDS711_LIST_ASO_QUERY_GET_POTENTIALLY_INACCURATE_COUNT:
    {
      struct lfds711_list_aso_element
        *lasoe = NULL;

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(lfds711_pal_uint_t *) query_output = 0;

      while( LFDS711_LIST_ASO_GET_START_AND_THEN_NEXT(*lasos, lasoe) )
        ( *(lfds711_pal_uint_t *) query_output )++;
    }
    break;

    case LFDS711_LIST_ASO_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_list_aso_internal_validate( lasos, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}






/****************************************************************************/
static void lfds711_list_aso_internal_validate( struct lfds711_list_aso_state *lasos,
                                                struct lfds711_misc_validation_info *vi,
                                                enum lfds711_misc_validity *lfds711_list_aso_validity )
{
  lfds711_pal_uint_t
    number_elements = 0;

  struct lfds711_list_aso_element
    *lasoe_fast,
    *lasoe_slow;

  LFDS711_PAL_ASSERT( lasos!= NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_list_aso_validity != NULL );

  *lfds711_list_aso_validity = LFDS711_MISC_VALIDITY_VALID;

  lasoe_slow = lasoe_fast = lasos->start->next;

  /* TRD : first, check for a loop
           we have two pointers
           both of which start at the start of the list
           we enter a loop
           and on each iteration
           we advance one pointer by one element
           and the other by two

           we exit the loop when both pointers are NULL
           (have reached the end of the queue)

           or

           if we fast pointer 'sees' the slow pointer
           which means we have a loop
  */

  if( lasoe_slow != NULL )
    do
    {
      lasoe_slow = lasoe_slow->next;

      if( lasoe_fast != NULL )
        lasoe_fast = lasoe_fast->next;

      if( lasoe_fast != NULL )
        lasoe_fast = lasoe_fast->next;
    }
    while( lasoe_slow != NULL and lasoe_fast != lasoe_slow );

  if( lasoe_fast != NULL and lasoe_slow != NULL and lasoe_fast == lasoe_slow )
    *lfds711_list_aso_validity = LFDS711_MISC_VALIDITY_INVALID_LOOP;

  /* TRD : now check for expected number of elements
           vi can be NULL, in which case we do not check
           we know we don't have a loop from our earlier check
  */

  if( *lfds711_list_aso_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
  {
    lfds711_list_aso_query( lasos, LFDS711_LIST_ASO_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, &number_elements );

    if( number_elements < vi->min_elements )
      *lfds711_list_aso_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements > vi->max_elements )
      *lfds711_list_aso_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_list_addonly_singlylinked_ordered/lfds711_list_addonly_singlylinked_ordered_init.c *****/





/****************************************************************************/
void lfds711_list_aso_init_valid_on_current_logical_core( struct lfds711_list_aso_state *lasos,
                                                          int (*key_compare_function)(void const *new_key, void const *existing_key),
                                                          enum lfds711_list_aso_existing_key existing_key,
                                                          void *user_state )
{
  LFDS711_PAL_ASSERT( lasos != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasos->dummy_element % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &lasos->start % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( key_compare_function != NULL );
  // TRD : existing_key can be any value in its range
  // TRD : user_state can be NULL

  // TRD : dummy start element - makes code easier when you can always use ->next
  lasos->start = &lasos->dummy_element;

  lasos->start->next = NULL;
  lasos->start->value = NULL;
  lasos->key_compare_function = key_compare_function;
  lasos->existing_key = existing_key;
  lasos->user_state = user_state;

  lfds711_misc_internal_backoff_init( &lasos->insert_backoff );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_list_addonly_singlylinked_ordered/lfds711_list_addonly_singlylinked_ordered_get.c *****/





/****************************************************************************/
int lfds711_list_aso_get_by_key( struct lfds711_list_aso_state *lasos,
                                 void *key,
                                 struct lfds711_list_aso_element **lasoe )
{
  int
    cr = !0,
    rv = 1;

  LFDS711_PAL_ASSERT( lasos != NULL );
  // TRD : key can be NULL
  LFDS711_PAL_ASSERT( lasoe != NULL );

  while( cr != 0 and LFDS711_LIST_ASO_GET_START_AND_THEN_NEXT(*lasos, *lasoe) )
    cr = lasos->key_compare_function( key, (*lasoe)->key );

  if( *lasoe == NULL )
    rv = 0;

  return rv;
}





/***** lfds711_list_addonly_singlylinked_ordered/lfds711_list_addonly_singlylinked_ordered_cleanup.c *****/





/****************************************************************************/
void lfds711_list_aso_cleanup( struct lfds711_list_aso_state *lasos,
                               void (*element_cleanup_callback)(struct lfds711_list_aso_state *lasos, struct lfds711_list_aso_element *lasoe) )
{
  struct lfds711_list_aso_element
    *lasoe,
    *temp;

  LFDS711_PAL_ASSERT( lasos != NULL );
  // TRD : element_cleanup_callback can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( element_cleanup_callback == NULL )
    return;

  lasoe = LFDS711_LIST_ASO_GET_START( *lasos );

  while( lasoe != NULL )
  {
    temp = lasoe;

    lasoe = LFDS711_LIST_ASO_GET_NEXT( *lasoe );

    element_cleanup_callback( lasos, temp );
  }

  return;
}





/***** lfds711_hash_addonly/lfds711_hash_addonly_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_hash_addonly/lfds711_hash_addonly_cleanup.c *****/





/***** private prototypes*****/
static void btree_au_element_cleanup_function( struct lfds711_btree_au_state *baus,
                                               struct lfds711_btree_au_element *baue );





/****************************************************************************/
void lfds711_hash_a_cleanup( struct lfds711_hash_a_state *has,
                             void (*element_cleanup_callback)(struct lfds711_hash_a_state *has, struct lfds711_hash_a_element *hae) )
{
  lfds711_pal_uint_t
    loop;

  LFDS711_PAL_ASSERT( has != NULL );
  // TRD : element_cleanup_callback can be NULL

  if( element_cleanup_callback == NULL )
    return;

  LFDS711_MISC_BARRIER_LOAD;

  has->element_cleanup_callback = element_cleanup_callback;

  for( loop = 0 ; loop < has->array_size ; loop++ )
    lfds711_btree_au_cleanup( has->baus_array+loop, btree_au_element_cleanup_function );

  return;
}





/****************************************************************************/
#pragma warning( disable : 4100 )

static void btree_au_element_cleanup_function( struct lfds711_btree_au_state *baus,
                                               struct lfds711_btree_au_element *baue )
{
  struct lfds711_hash_a_state
    *has;

  struct lfds711_hash_a_element
    *hae;

  LFDS711_PAL_ASSERT( baus != NULL );
  LFDS711_PAL_ASSERT( baue != NULL );

  hae = (struct lfds711_hash_a_element *) LFDS711_BTREE_AU_GET_VALUE_FROM_ELEMENT( *baue );
  has = (struct lfds711_hash_a_state *) LFDS711_BTREE_AU_GET_USER_STATE_FROM_STATE( *baus );

  has->element_cleanup_callback( has, hae );

  return;
}

#pragma warning( default : 4100 )





/***** lfds711_hash_addonly/lfds711_hash_addonly_query.c *****/





/***** private prototypes *****/
static void lfds711_hash_a_internal_validate( struct lfds711_hash_a_state *has,
                                              struct lfds711_misc_validation_info *vi,
                                              enum lfds711_misc_validity *lfds711_hash_a_validity );





/****************************************************************************/
void lfds711_hash_a_query( struct lfds711_hash_a_state *has,
                           enum lfds711_hash_a_query query_type,
                           void *query_input,
                           void *query_output )
{
  LFDS711_PAL_ASSERT( has != NULL );
  // TRD : query_type can be any value in its range

  LFDS711_MISC_BARRIER_LOAD;

  switch( query_type )
  {
    case LFDS711_HASH_A_QUERY_GET_POTENTIALLY_INACCURATE_COUNT:
    {
      struct lfds711_hash_a_iterate
        ai;

      struct lfds711_hash_a_element
        *hae;

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(lfds711_pal_uint_t *) query_output = 0;

      lfds711_hash_a_iterate_init( has, &ai );

      while( lfds711_hash_a_iterate(&ai, &hae) )
        ( *(lfds711_pal_uint_t *) query_output )++;
    }
    break;

    case LFDS711_HASH_A_QUERY_SINGLETHREADED_VALIDATE:
      // TRD: query_input can be any value in its range
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_hash_a_internal_validate( has, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_hash_a_internal_validate( struct lfds711_hash_a_state *has,
                                              struct lfds711_misc_validation_info *vi,
                                              enum lfds711_misc_validity *lfds711_hash_a_validity )
{
  lfds711_pal_uint_t
    lfds711_hash_a_total_number_elements = 0,
    lfds711_btree_au_total_number_elements = 0,
    number_elements;

  lfds711_pal_uint_t
    loop;

  LFDS711_PAL_ASSERT( has!= NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_hash_a_validity != NULL );

  /* TRD : validate every btree_addonly_unbalanced in the addonly_hash
           sum elements in each btree_addonly_unbalanced
           check matches expected element counts (if vi is provided)
  */

  *lfds711_hash_a_validity = LFDS711_MISC_VALIDITY_VALID;

  for( loop = 0 ; *lfds711_hash_a_validity == LFDS711_MISC_VALIDITY_VALID and loop < has->array_size ; loop++ )
    lfds711_btree_au_query( has->baus_array+loop, LFDS711_BTREE_AU_QUERY_SINGLETHREADED_VALIDATE, NULL, (void *) lfds711_hash_a_validity );

  if( *lfds711_hash_a_validity == LFDS711_MISC_VALIDITY_VALID )
  {
    for( loop = 0 ; loop < has->array_size ; loop++ )
    {
      lfds711_btree_au_query( has->baus_array+loop, LFDS711_BTREE_AU_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, (void *) &number_elements );
      lfds711_btree_au_total_number_elements += number_elements;
    }

    // TRD : first, check btree_addonly_unbalanced total vs the addonly_hash total
    lfds711_hash_a_query( has, LFDS711_HASH_A_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, &lfds711_hash_a_total_number_elements );

    // TRD : the btree_addonly_unbalanceds are assumed to speak the truth
    if( lfds711_hash_a_total_number_elements < lfds711_btree_au_total_number_elements )
      *lfds711_hash_a_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;

    if( lfds711_hash_a_total_number_elements > lfds711_btree_au_total_number_elements )
      *lfds711_hash_a_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    // TRD : second, if we're still valid and vi is provided, check the btree_addonly_unbalanced total against vi
    if( *lfds711_hash_a_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
    {
      if( lfds711_btree_au_total_number_elements < vi->min_elements )
        *lfds711_hash_a_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

      if( lfds711_btree_au_total_number_elements > vi->max_elements )
        *lfds711_hash_a_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
    }
  }

  return;
}





/***** lfds711_hash_addonly/lfds711_hash_addonly_insert.c *****/





/****************************************************************************/
enum lfds711_hash_a_insert_result lfds711_hash_a_insert( struct lfds711_hash_a_state *has,
                                                         struct lfds711_hash_a_element *hae,
                                                         struct lfds711_hash_a_element **existing_hae )
{
  enum lfds711_hash_a_insert_result
    apr = LFDS711_HASH_A_PUT_RESULT_SUCCESS;

  enum lfds711_btree_au_insert_result
    alr;

  lfds711_pal_uint_t
    hash = 0;

  struct lfds711_btree_au_element
    *existing_baue;

  LFDS711_PAL_ASSERT( has != NULL );
  LFDS711_PAL_ASSERT( hae != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &hae->value % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );
  // TRD : existing_hae can be NULL

  // TRD : alignment checks
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &hae->baue % LFDS711_PAL_ALIGN_SINGLE_POINTER == 0 );

  has->key_hash_function( hae->key, &hash );

  LFDS711_BTREE_AU_SET_KEY_IN_ELEMENT( hae->baue, hae->key );
  LFDS711_BTREE_AU_SET_VALUE_IN_ELEMENT( hae->baue, hae );

  alr = lfds711_btree_au_insert( has->baus_array + (hash % has->array_size), &hae->baue, &existing_baue );

  switch( alr )
  {
    case LFDS711_BTREE_AU_INSERT_RESULT_FAILURE_EXISTING_KEY:
      if( existing_hae != NULL )
        *existing_hae = LFDS711_BTREE_AU_GET_VALUE_FROM_ELEMENT( *existing_baue );

      apr = LFDS711_HASH_A_PUT_RESULT_FAILURE_EXISTING_KEY;
    break;

    case LFDS711_BTREE_AU_INSERT_RESULT_SUCCESS_OVERWRITE:
      apr = LFDS711_HASH_A_PUT_RESULT_SUCCESS_OVERWRITE;
    break;

    case LFDS711_BTREE_AU_INSERT_RESULT_SUCCESS:
      apr = LFDS711_HASH_A_PUT_RESULT_SUCCESS;
    break;
  }

  return apr;
}





/***** lfds711_hash_addonly/lfds711_hash_addonly_get.c *****/





/****************************************************************************/
int lfds711_hash_a_get_by_key( struct lfds711_hash_a_state *has,
                               int (*key_compare_function)(void const *new_key, void const *existing_key),
                               void (*key_hash_function)(void const *key, lfds711_pal_uint_t *hash),
                               void *key,
                               struct lfds711_hash_a_element **hae )
{
  int
    rv;

  lfds711_pal_uint_t
    hash = 0;

  struct lfds711_btree_au_element
    *baue;

  LFDS711_PAL_ASSERT( has != NULL );
  // TRD : key_compare_function can be NULL
  // TRD : key_hash_function can be NULL
  // TRD : key can be NULL
  LFDS711_PAL_ASSERT( hae != NULL );

  if( key_compare_function == NULL )
    key_compare_function = has->key_compare_function;

  if( key_hash_function == NULL )
    key_hash_function = has->key_hash_function;

  key_hash_function( key, &hash );

  rv = lfds711_btree_au_get_by_key( has->baus_array + (hash % has->array_size), key_compare_function, key, &baue );

  if( rv == 1 )
    *hae = LFDS711_BTREE_AU_GET_VALUE_FROM_ELEMENT( *baue );
  else
    *hae = NULL;

  return rv;
}





/***** lfds711_hash_addonly/lfds711_hash_addonly_iterate.c *****/





/****************************************************************************/
void lfds711_hash_a_iterate_init( struct lfds711_hash_a_state *has,
                                  struct lfds711_hash_a_iterate *hai )
{
  LFDS711_PAL_ASSERT( has != NULL );
  LFDS711_PAL_ASSERT( hai != NULL );

  hai->baus = has->baus_array;
  hai->baus_end = has->baus_array + has->array_size;
  hai->baue = NULL;

  return;
}





/****************************************************************************/
int lfds711_hash_a_iterate( struct lfds711_hash_a_iterate *hai,
                            struct lfds711_hash_a_element **hae )
{
  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED;

  int
    rv = 0;

  LFDS711_PAL_ASSERT( hai != NULL );
  LFDS711_PAL_ASSERT( hae != NULL );

  while( finished_flag == LFDS711_MISC_FLAG_LOWERED )
  {
    lfds711_btree_au_get_by_absolute_position_and_then_by_relative_position( hai->baus, &hai->baue, LFDS711_BTREE_AU_ABSOLUTE_POSITION_SMALLEST_IN_TREE, LFDS711_BTREE_AU_RELATIVE_POSITION_NEXT_LARGER_ELEMENT_IN_ENTIRE_TREE );

    if( hai->baue != NULL )
    {
      *hae = LFDS711_BTREE_AU_GET_VALUE_FROM_ELEMENT( *hai->baue );
      finished_flag = LFDS711_MISC_FLAG_RAISED;
      rv = 1;
    }

    if( hai->baue == NULL )
      if( ++hai->baus == hai->baus_end )
      {
        *hae = NULL;
        finished_flag = LFDS711_MISC_FLAG_RAISED;
      }
  }

  return rv;
}





/***** lfds711_hash_addonly/lfds711_hash_addonly_init.c *****/





/****************************************************************************/
void lfds711_hash_a_init_valid_on_current_logical_core( struct lfds711_hash_a_state *has,
                                                        struct lfds711_btree_au_state *baus_array,
                                                        lfds711_pal_uint_t array_size,
                                                        int (*key_compare_function)(void const *new_key, void const *existing_key),
                                                        void (*key_hash_function)(void const *key, lfds711_pal_uint_t *hash),
                                                        enum lfds711_hash_a_existing_key existing_key,
                                                        void *user_state )
{
  enum lfds711_btree_au_existing_key
    btree_au_existing_key = LFDS711_BTREE_AU_EXISTING_KEY_OVERWRITE; // TRD : for compiler warning

  lfds711_pal_uint_t
    loop;

  LFDS711_PAL_ASSERT( has != NULL );
  LFDS711_PAL_ASSERT( baus_array != NULL );
  LFDS711_PAL_ASSERT( array_size > 0 );
  LFDS711_PAL_ASSERT( key_compare_function != NULL );
  LFDS711_PAL_ASSERT( key_hash_function != NULL );
  // TRD : existing_key can be any value in its range
  // TRD : user_state can be NULL

  has->array_size = array_size;
  has->key_compare_function = key_compare_function;
  has->key_hash_function = key_hash_function;
  has->existing_key = existing_key;
  has->baus_array = baus_array;
  has->user_state = user_state;

  if( has->existing_key == LFDS711_HASH_A_EXISTING_KEY_OVERWRITE )
    btree_au_existing_key = LFDS711_BTREE_AU_EXISTING_KEY_OVERWRITE;

  if( has->existing_key == LFDS711_HASH_A_EXISTING_KEY_FAIL )
    btree_au_existing_key = LFDS711_BTREE_AU_EXISTING_KEY_FAIL;

  // TRD : since the addonly_hash atomic counts, if that flag is set, the btree_addonly_unbalanceds don't have to
  for( loop = 0 ; loop < array_size ; loop++ )
    lfds711_btree_au_init_valid_on_current_logical_core( has->baus_array+loop, key_compare_function, btree_au_existing_key, user_state );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_prng/lfds711_prng_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_prng/lfds711_prng_init.c *****/





/****************************************************************************/
void lfds711_prng_init_valid_on_current_logical_core( struct lfds711_prng_state *ps, lfds711_pal_uint_t seed )
{
  LFDS711_PAL_ASSERT( ps != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &ps->entropy % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  // TRD : seed can be any value in its range (unlike for the mixing function)

  LFDS711_PRNG_ST_MIXING_FUNCTION( seed );

  ps->entropy = seed;

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/****************************************************************************/
void lfds711_prng_st_init( struct lfds711_prng_st_state *psts, lfds711_pal_uint_t seed )
{
  LFDS711_PAL_ASSERT( psts != NULL );
  LFDS711_PAL_ASSERT( seed != 0 );

  LFDS711_PRNG_ST_MIXING_FUNCTION( seed );

  psts->entropy = seed;

  return;
}





/***** lfds711_queue_bounded_manyproducer_manyconsumer/lfds711_queue_bounded_manyproducer_manyconsumer_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_queue_bounded_manyproducer_manyconsumer/lfds711_queue_bounded_manyproducer_manyconsumer_query.c *****/





/***** private prototypes *****/
static void lfds711_queue_bmm_internal_validate( struct lfds711_queue_bmm_state *qbmms,
                                                 struct lfds711_misc_validation_info *vi,
                                                 enum lfds711_misc_validity *lfds711_validity );





/****************************************************************************/
void lfds711_queue_bmm_query( struct lfds711_queue_bmm_state *qbmms,
                              enum lfds711_queue_bmm_query query_type,
                              void *query_input,
                              void *query_output )
{
  LFDS711_PAL_ASSERT( qbmms != NULL );
  // TRD : query_type can be any value in its range

  switch( query_type )
  {
    case LFDS711_QUEUE_BMM_QUERY_GET_POTENTIALLY_INACCURATE_COUNT:
    {
      lfds711_pal_uint_t
        local_read_index,
        local_write_index;

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      LFDS711_MISC_BARRIER_LOAD;

      local_read_index = qbmms->read_index;
      local_write_index = qbmms->write_index;

      *(lfds711_pal_uint_t *) query_output = +( local_write_index - local_read_index );

      if( local_read_index > local_write_index )
        *(lfds711_pal_uint_t *) query_output = ((lfds711_pal_uint_t) -1) - *(lfds711_pal_uint_t *) query_output;
    }
    break;

    case LFDS711_QUEUE_BMM_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_queue_bmm_internal_validate( qbmms, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_queue_bmm_internal_validate( struct lfds711_queue_bmm_state *qbmms,
                                                 struct lfds711_misc_validation_info *vi,
                                                 enum lfds711_misc_validity *lfds711_validity )
{
  lfds711_pal_uint_t
    expected_sequence_number,
    loop,
    number_elements,
    sequence_number;

  LFDS711_PAL_ASSERT( qbmms != NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_validity != NULL );

  *lfds711_validity = LFDS711_MISC_VALIDITY_VALID;

  /* TRD : starting from the read_index, we should find number_elements of incrementing sequence numbers
           we then perform a second scan from the write_index onwards, which should have (max elements in queue - number_elements) incrementing sequence numbers
  */

  lfds711_queue_bmm_query( qbmms, LFDS711_QUEUE_BMM_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, (void *) &number_elements );

  expected_sequence_number = qbmms->element_array[ qbmms->read_index & qbmms->mask ].sequence_number;

  for( loop = 0 ; loop < number_elements ; loop++ )
  {
    sequence_number = qbmms->element_array[ (qbmms->read_index + loop) & qbmms->mask ].sequence_number;

    if( sequence_number != expected_sequence_number )
      *lfds711_validity = LFDS711_MISC_VALIDITY_INVALID_ORDER;

    if( sequence_number == expected_sequence_number )
      expected_sequence_number = sequence_number + 1;
  }

  // TRD : now the write_index onwards

  expected_sequence_number = qbmms->element_array[ qbmms->write_index & qbmms->mask ].sequence_number;

  for( loop = 0 ; loop < qbmms->number_elements - number_elements ; loop++ )
  {
    sequence_number = qbmms->element_array[ (qbmms->write_index + loop) & qbmms->mask ].sequence_number;

    if( sequence_number != expected_sequence_number )
      *lfds711_validity = LFDS711_MISC_VALIDITY_INVALID_ORDER;

    if( sequence_number == expected_sequence_number )
      expected_sequence_number = sequence_number + 1;
  }

  // TRD : now check against the expected number of elements

  if( *lfds711_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
  {
    lfds711_pal_uint_t
      number_elements;

    lfds711_queue_bmm_query( qbmms, LFDS711_QUEUE_BMM_QUERY_GET_POTENTIALLY_INACCURATE_COUNT, NULL, (void *) &number_elements );

    if( number_elements < vi->min_elements )
      *lfds711_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements > vi->max_elements )
      *lfds711_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_queue_bounded_manyproducer_manyconsumer/lfds711_queue_bounded_manyproducer_manyconsumer_enqueue.c *****/





/****************************************************************************/
int lfds711_queue_bmm_enqueue( struct lfds711_queue_bmm_state *qbmms,
                               void *key,
                               void *value )
{
  char unsigned
    result;

  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED;

  int
    rv = 1;

  lfds711_pal_uint_t
    sequence_number,
    write_index;

  lfds711_pal_int_t
    difference;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_queue_bmm_element
    *qbmme = NULL;

  LFDS711_PAL_ASSERT( qbmms != NULL );
  // TRD : key can be NULL
  // TRD : value can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  write_index = qbmms->write_index;

  while( finished_flag == LFDS711_MISC_FLAG_LOWERED )
  {
    qbmme = &qbmms->element_array[ write_index & qbmms->mask ];
    LFDS711_MISC_BARRIER_LOAD;
    sequence_number = qbmme->sequence_number;
    difference = (lfds711_pal_int_t) sequence_number - (lfds711_pal_int_t) write_index;

    if( difference == 0 )
    {
      LFDS711_PAL_ATOMIC_CAS( &qbmms->write_index, &write_index, write_index + 1, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
      if( result == 0 )
        LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( qbmms->enqueue_backoff, backoff_iteration );
      if( result == 1 )
        finished_flag = LFDS711_MISC_FLAG_RAISED;
    }

    if( difference < 0 )
    {
      rv = 0;
      finished_flag = LFDS711_MISC_FLAG_RAISED;
    }

    if( difference > 0 )
    {
      LFDS711_MISC_BARRIER_LOAD;
      write_index = qbmms->write_index;
    }
  }

  if( rv == 1 )
  {
    qbmme->key = key;
    qbmme->value = value;
    LFDS711_MISC_BARRIER_STORE;
    qbmme->sequence_number = write_index + 1;
  }

  LFDS711_BACKOFF_AUTOTUNE( qbmms->enqueue_backoff, backoff_iteration );

  return rv;
}





/***** lfds711_queue_bounded_manyproducer_manyconsumer/lfds711_queue_bounded_manyproducer_manyconsumer_init.c *****/





/****************************************************************************/
void lfds711_queue_bmm_init_valid_on_current_logical_core( struct lfds711_queue_bmm_state *qbmms,
                                                           struct lfds711_queue_bmm_element *element_array,
                                                           lfds711_pal_uint_t number_elements,
                                                           void *user_state )
{
  lfds711_pal_uint_t
    loop;

  LFDS711_PAL_ASSERT( qbmms != NULL );
  LFDS711_PAL_ASSERT( element_array != NULL );
  LFDS711_PAL_ASSERT( number_elements >= 2 );
  LFDS711_PAL_ASSERT( ( number_elements & (number_elements-1) ) == 0 ); // TRD : number_elements must be a positive integer power of 2
  // TRD : user_state can be NULL

  qbmms->number_elements = number_elements;
  qbmms->mask = qbmms->number_elements - 1;
  qbmms->read_index = 0;
  qbmms->write_index = 0;
  qbmms->element_array = element_array;
  qbmms->user_state = user_state;

  for( loop = 0 ; loop < qbmms->number_elements ; loop++ )
    qbmms->element_array[loop].sequence_number = loop;

  lfds711_misc_internal_backoff_init( &qbmms->dequeue_backoff );
  lfds711_misc_internal_backoff_init( &qbmms->enqueue_backoff );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_queue_bounded_manyproducer_manyconsumer/lfds711_queue_bounded_manyproducer_manyconsumer_cleanup.c *****/





/****************************************************************************/
void lfds711_queue_bmm_cleanup( struct lfds711_queue_bmm_state *qbmms,
                                void (*element_cleanup_callback)(struct lfds711_queue_bmm_state *qbmms, void *key, void *value) )
{
  void
    *key,
    *value;

  LFDS711_PAL_ASSERT( qbmms != NULL );
  // TRD : element_cleanup_callback can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( element_cleanup_callback != NULL )
    while( lfds711_queue_bmm_dequeue(qbmms,&key,&value) )
      element_cleanup_callback( qbmms, key, value );

  return;
}





/***** lfds711_queue_bounded_manyproducer_manyconsumer/lfds711_queue_bounded_manyproducer_manyconsumer_dequeue.c *****/





/****************************************************************************/
int lfds711_queue_bmm_dequeue( struct lfds711_queue_bmm_state *qbmms,
                               void **key,
                               void **value )
{
  char unsigned
    result;

  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED;

  int
    rv = 1;

  lfds711_pal_uint_t
    read_index,
    sequence_number;

  lfds711_pal_int_t
    difference;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_queue_bmm_element
    *qbmme = NULL;

  LFDS711_PAL_ASSERT( qbmms != NULL );
  // TRD : key can be NULL
  // TRD : value can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  read_index = qbmms->read_index;

  while( finished_flag == LFDS711_MISC_FLAG_LOWERED )
  {
    qbmme = &qbmms->element_array[ read_index & qbmms->mask ];
    LFDS711_MISC_BARRIER_LOAD;
    sequence_number = qbmme->sequence_number;
    difference = (lfds711_pal_int_t) sequence_number - (lfds711_pal_int_t) (read_index + 1);

    if( difference == 0 )
    {
      LFDS711_PAL_ATOMIC_CAS( &qbmms->read_index, &read_index, read_index + 1, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
      if( result == 0 )
        LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( qbmms->dequeue_backoff, backoff_iteration );
      if( result == 1 )
        finished_flag = LFDS711_MISC_FLAG_RAISED;
    }

    if( difference < 0 )
    {
      rv = 0;
      finished_flag = LFDS711_MISC_FLAG_RAISED;
    }

    if( difference > 0 )
    {
      LFDS711_MISC_BARRIER_LOAD;
      read_index = qbmms->read_index;
    }
  }

  if( rv == 1 )
  {
    if( key != NULL )
      *key = qbmme->key;
    if( value != NULL )
      *value = qbmme->value;
    LFDS711_MISC_BARRIER_STORE;
    qbmme->sequence_number = read_index + qbmms->mask + 1;
  }

  LFDS711_BACKOFF_AUTOTUNE( qbmms->dequeue_backoff, backoff_iteration );

  return rv;
}





/***** lfds711_ringbuffer/lfds711_ringbuffer_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/





/***** lfds711_ringbuffer/lfds711_ringbuffer_cleanup.c *****/





/***** private prototypes *****/
static void lfds711_ringbuffer_internal_queue_umm_element_cleanup_callback( struct lfds711_queue_umm_state *qumms,
                                                                            struct lfds711_queue_umm_element *qumme,
                                                                            enum lfds711_misc_flag dummy_element_flag );
static void lfds711_ringbuffer_internal_freelist_element_cleanup_callback( struct lfds711_freelist_state *fs,
                                                                           struct lfds711_freelist_element *fe );





/****************************************************************************/
void lfds711_ringbuffer_cleanup( struct lfds711_ringbuffer_state *rs,
                                 void (*element_cleanup_callback)(struct lfds711_ringbuffer_state *rs, void *key, void *value, enum lfds711_misc_flag unread_flag) )
{
  LFDS711_PAL_ASSERT( rs != NULL );
  // TRD : element_cleanup_callback can be NULL

  if( element_cleanup_callback != NULL )
  {
    rs->element_cleanup_callback = element_cleanup_callback;
    lfds711_queue_umm_cleanup( &rs->qumms, lfds711_ringbuffer_internal_queue_umm_element_cleanup_callback );
    lfds711_freelist_cleanup( &rs->fs, lfds711_ringbuffer_internal_freelist_element_cleanup_callback );
  }

  return;
}





/****************************************************************************/
#pragma warning( disable : 4100 )

static void lfds711_ringbuffer_internal_queue_umm_element_cleanup_callback( struct lfds711_queue_umm_state *qumms,
                                                                            struct lfds711_queue_umm_element *qumme,
                                                                            enum lfds711_misc_flag dummy_element_flag )
{
  struct lfds711_ringbuffer_element
    *re;

  struct lfds711_ringbuffer_state
    *rs;

  LFDS711_PAL_ASSERT( qumms != NULL );
  LFDS711_PAL_ASSERT( qumme != NULL );
  // TRD : dummy_element can be any value in its range

  rs = (struct lfds711_ringbuffer_state *) LFDS711_QUEUE_UMM_GET_USER_STATE_FROM_STATE( *qumms );
  re = (struct lfds711_ringbuffer_element *) LFDS711_QUEUE_UMM_GET_VALUE_FROM_ELEMENT( *qumme );

  if( dummy_element_flag == LFDS711_MISC_FLAG_LOWERED )
    rs->element_cleanup_callback( rs, re->key, re->value, LFDS711_MISC_FLAG_RAISED );

  return;
}

#pragma warning( default : 4100 )





/****************************************************************************/
#pragma warning( disable : 4100 )

static void lfds711_ringbuffer_internal_freelist_element_cleanup_callback( struct lfds711_freelist_state *fs,
                                                                           struct lfds711_freelist_element *fe )
{
  struct lfds711_ringbuffer_element
    *re;

  struct lfds711_ringbuffer_state
    *rs;

  LFDS711_PAL_ASSERT( fs != NULL );
  LFDS711_PAL_ASSERT( fe != NULL );

  rs = (struct lfds711_ringbuffer_state *) LFDS711_FREELIST_GET_USER_STATE_FROM_STATE( *fs );
  re = (struct lfds711_ringbuffer_element *) LFDS711_FREELIST_GET_VALUE_FROM_ELEMENT( *fe );

  rs->element_cleanup_callback( rs, re->key, re->value, LFDS711_MISC_FLAG_LOWERED );

  return;
}

#pragma warning( default : 4100 )





/***** lfds711_ringbuffer/lfds711_ringbuffer_write.c *****/





/****************************************************************************/
void lfds711_ringbuffer_write( struct lfds711_ringbuffer_state *rs,
                               void *key,
                               void *value,
                               enum lfds711_misc_flag *overwrite_occurred_flag,
                               void **overwritten_key,
                               void **overwritten_value )
{
  int
    rv = 0;

  struct lfds711_freelist_element
    *fe;

  struct lfds711_queue_umm_element
    *qumme;

  struct lfds711_ringbuffer_element
    *re = NULL;

  LFDS711_PAL_ASSERT( rs != NULL );
  // TRD : key can be NULL
  // TRD : value can be NULL
  // TRD : overwrite_occurred_flag can be NULL
  // TRD : overwritten_key can be NULL
  // TRD : overwritten_value can be NULL
  // TRD : psts can be NULL

  if( overwrite_occurred_flag != NULL )
    *overwrite_occurred_flag = LFDS711_MISC_FLAG_LOWERED;

  do
  {
    rv = lfds711_freelist_pop( &rs->fs, &fe, NULL );

    if( rv == 1 )
      re = LFDS711_FREELIST_GET_VALUE_FROM_ELEMENT( *fe );

    if( rv == 0 )
    {
      // TRD : the queue can return empty as well - remember, we're lock-free; anything could have happened since the previous instruction
      rv = lfds711_queue_umm_dequeue( &rs->qumms, &qumme );

      if( rv == 1 )
      {
        re = LFDS711_QUEUE_UMM_GET_VALUE_FROM_ELEMENT( *qumme );
        re->qumme_use = (struct lfds711_queue_umm_element *) qumme;

        if( overwrite_occurred_flag != NULL )
          *overwrite_occurred_flag = LFDS711_MISC_FLAG_RAISED;

        if( overwritten_key != NULL )
          *overwritten_key = re->key;

        if( overwritten_value != NULL )
          *overwritten_value = re->value;
      }
    }
  }
  while( rv == 0 );

  re->key = key;
  re->value = value;

  LFDS711_QUEUE_UMM_SET_VALUE_IN_ELEMENT( *re->qumme_use, re );
  lfds711_queue_umm_enqueue( &rs->qumms, re->qumme_use );

  return;
}





/***** lfds711_ringbuffer/lfds711_ringbuffer_read.c *****/





/****************************************************************************/
int lfds711_ringbuffer_read( struct lfds711_ringbuffer_state *rs,
                             void **key,
                             void **value )
{
  int
    rv;

  struct lfds711_queue_umm_element
    *qumme;

  struct lfds711_ringbuffer_element
    *re;

  LFDS711_PAL_ASSERT( rs != NULL );
  // TRD : key can be NULL
  // TRD : value can be NULL
  // TRD : psts can be NULL

  rv = lfds711_queue_umm_dequeue( &rs->qumms, &qumme );

  if( rv == 1 )
  {
    re = LFDS711_QUEUE_UMM_GET_VALUE_FROM_ELEMENT( *qumme );
    re->qumme_use = (struct lfds711_queue_umm_element *) qumme;
    if( key != NULL )
      *key = re->key;
    if( value != NULL )
      *value = re->value;
    LFDS711_FREELIST_SET_VALUE_IN_ELEMENT( re->fe, re );
    lfds711_freelist_push( &rs->fs, &re->fe, NULL );
  }

  return rv;
}





/***** lfds711_ringbuffer/lfds711_ringbuffer_init.c *****/





/****************************************************************************/
void lfds711_ringbuffer_init_valid_on_current_logical_core( struct lfds711_ringbuffer_state *rs,
                                                            struct lfds711_ringbuffer_element *re_array_inc_dummy,
                                                            lfds711_pal_uint_t number_elements_inc_dummy,
                                                            void *user_state )
{
  lfds711_pal_uint_t
    loop;

  LFDS711_PAL_ASSERT( rs != NULL );
  LFDS711_PAL_ASSERT( re_array_inc_dummy != NULL );
  LFDS711_PAL_ASSERT( number_elements_inc_dummy >= 2 );
  // TRD : user_state can be NULL

  rs->user_state = user_state;

  re_array_inc_dummy[0].qumme_use = &re_array_inc_dummy[0].qumme;

  lfds711_freelist_init_valid_on_current_logical_core( &rs->fs, NULL, 0, rs );
  lfds711_queue_umm_init_valid_on_current_logical_core( &rs->qumms, &re_array_inc_dummy[0].qumme, rs );

  for( loop = 1 ; loop < number_elements_inc_dummy ; loop++ )
  {
    re_array_inc_dummy[loop].qumme_use = &re_array_inc_dummy[loop].qumme;
    LFDS711_FREELIST_SET_VALUE_IN_ELEMENT( re_array_inc_dummy[loop].fe, &re_array_inc_dummy[loop] );
    lfds711_freelist_push( &rs->fs, &re_array_inc_dummy[loop].fe, NULL );
  }

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_ringbuffer/lfds711_ringbuffer_query.c *****/





/***** private prototypes *****/
static void lfds711_ringbuffer_internal_validate( struct lfds711_ringbuffer_state *rs,
                                                  struct lfds711_misc_validation_info *vi,
                                                  enum lfds711_misc_validity *lfds711_queue_umm_validity,
                                                  enum lfds711_misc_validity *lfds711_freelist_validity );



/****************************************************************************/
void lfds711_ringbuffer_query( struct lfds711_ringbuffer_state *rs,
                               enum lfds711_ringbuffer_query query_type,
                               void *query_input,
                               void *query_output )
{
  LFDS711_PAL_ASSERT( rs != NULL );
  // TRD : query_type can be any value in its range

  LFDS711_MISC_BARRIER_LOAD;

  switch( query_type )
  {
    case LFDS711_RINGBUFFER_QUERY_SINGLETHREADED_GET_COUNT:
      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_queue_umm_query( &rs->qumms, LFDS711_QUEUE_UMM_QUERY_SINGLETHREADED_GET_COUNT, NULL, query_output );
    break;

    case LFDS711_RINGBUFFER_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_ringbuffer_internal_validate( rs, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output, ((enum lfds711_misc_validity *) query_output)+1 );
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_ringbuffer_internal_validate( struct lfds711_ringbuffer_state *rs,
                                                  struct lfds711_misc_validation_info *vi,
                                                  enum lfds711_misc_validity *lfds711_queue_umm_validity,
                                                  enum lfds711_misc_validity *lfds711_freelist_validity )
{
  LFDS711_PAL_ASSERT( rs != NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_queue_umm_validity != NULL );
  LFDS711_PAL_ASSERT( lfds711_freelist_validity != NULL );

  if( vi == NULL )
  {
    lfds711_queue_umm_query( &rs->qumms, LFDS711_QUEUE_UMM_QUERY_SINGLETHREADED_VALIDATE, NULL, lfds711_queue_umm_validity );
    lfds711_freelist_query( &rs->fs, LFDS711_FREELIST_QUERY_SINGLETHREADED_VALIDATE, NULL, lfds711_freelist_validity );
  }

  if( vi != NULL )
  {
    struct lfds711_misc_validation_info
      freelist_vi,
      queue_vi;

    queue_vi.min_elements = 0;
    freelist_vi.min_elements = 0;
    queue_vi.max_elements = vi->max_elements;
    freelist_vi.max_elements = vi->max_elements;

    lfds711_queue_umm_query( &rs->qumms, LFDS711_QUEUE_UMM_QUERY_SINGLETHREADED_VALIDATE, &queue_vi, lfds711_queue_umm_validity );
    lfds711_freelist_query( &rs->fs, LFDS711_FREELIST_QUERY_SINGLETHREADED_VALIDATE, &freelist_vi, lfds711_freelist_validity );
  }

  return;
}





/***** lfds711_queue_unbounded_manyproducer_manyconsumer/lfds711_queue_unbounded_manyproducer_manyconsumer_internal.h *****/





/***** the library wide include file *****/

/***** enums *****/
enum lfds711_queue_umm_queue_state
{
  LFDS711_QUEUE_UMM_QUEUE_STATE_UNKNOWN,
  LFDS711_QUEUE_UMM_QUEUE_STATE_EMPTY,
  LFDS711_QUEUE_UMM_QUEUE_STATE_ENQUEUE_OUT_OF_PLACE,
  LFDS711_QUEUE_UMM_QUEUE_STATE_ATTEMPT_DEQUEUE
};

/***** private prototypes *****/





/***** lfds711_queue_unbounded_manyproducer_manyconsumer/lfds711_queue_unbounded_manyproducer_manyconsumer_query.c *****/





/***** private prototypes *****/
static void lfds711_queue_umm_internal_validate( struct lfds711_queue_umm_state *qumms,
                                                 struct lfds711_misc_validation_info *vi,
                                                 enum lfds711_misc_validity *lfds711_queue_umm_validity );





/****************************************************************************/
void lfds711_queue_umm_query( struct lfds711_queue_umm_state *qumms,
                              enum lfds711_queue_umm_query query_type,
                              void *query_input,
                              void *query_output )
{
  struct lfds711_queue_umm_element
    *qumme;

  LFDS711_MISC_BARRIER_LOAD;

  LFDS711_PAL_ASSERT( qumms != NULL );
  // TRD : query_type can be any value in its range

  switch( query_type )
  {
    case LFDS711_QUEUE_UMM_QUERY_SINGLETHREADED_GET_COUNT:
      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(lfds711_pal_uint_t *) query_output = 0;

      qumme = (struct lfds711_queue_umm_element *) qumms->dequeue[POINTER];

      while( qumme != NULL )
      {
        ( *(lfds711_pal_uint_t *) query_output )++;
        qumme = (struct lfds711_queue_umm_element *) qumme->next[POINTER];
      }

      // TRD : remember there is a dummy element in the queue
      ( *(lfds711_pal_uint_t *) query_output )--;
    break;

    case LFDS711_QUEUE_UMM_QUERY_SINGLETHREADED_VALIDATE:
      // TRD : query_input can be NULL
      LFDS711_PAL_ASSERT( query_output != NULL );

      lfds711_queue_umm_internal_validate( qumms, (struct lfds711_misc_validation_info *) query_input, (enum lfds711_misc_validity *) query_output );
    break;
  }

  return;
}





/****************************************************************************/
static void lfds711_queue_umm_internal_validate( struct lfds711_queue_umm_state *qumms,
                                                 struct lfds711_misc_validation_info *vi,
                                                 enum lfds711_misc_validity *lfds711_queue_umm_validity )
{
  lfds711_pal_uint_t
    number_elements = 0;

  struct lfds711_queue_umm_element
    *qumme_fast,
    *qumme_slow;

  LFDS711_PAL_ASSERT( qumms != NULL );
  // TRD : vi can be NULL
  LFDS711_PAL_ASSERT( lfds711_queue_umm_validity != NULL );

  *lfds711_queue_umm_validity = LFDS711_MISC_VALIDITY_VALID;

  qumme_slow = qumme_fast = (struct lfds711_queue_umm_element *) qumms->dequeue[POINTER];

  /* TRD : first, check for a loop
           we have two pointers
           both of which start at the dequeue end of the queue
           we enter a loop
           and on each iteration
           we advance one pointer by one element
           and the other by two

           we exit the loop when both pointers are NULL
           (have reached the end of the queue)

           or

           if we fast pointer 'sees' the slow pointer
           which means we have a loop
  */

  if( qumme_slow != NULL )
    do
    {
      qumme_slow = qumme_slow->next[POINTER];

      if( qumme_fast != NULL )
        qumme_fast = qumme_fast->next[POINTER];

      if( qumme_fast != NULL )
        qumme_fast = qumme_fast->next[POINTER];
    }
    while( qumme_slow != NULL and qumme_fast != qumme_slow );

  if( qumme_fast != NULL and qumme_slow != NULL and qumme_fast == qumme_slow )
    *lfds711_queue_umm_validity = LFDS711_MISC_VALIDITY_INVALID_LOOP;

  /* TRD : now check for expected number of elements
           vi can be NULL, in which case we do not check
           we know we don't have a loop from our earlier check
  */

  if( *lfds711_queue_umm_validity == LFDS711_MISC_VALIDITY_VALID and vi != NULL )
  {
    lfds711_queue_umm_query( qumms, LFDS711_QUEUE_UMM_QUERY_SINGLETHREADED_GET_COUNT, NULL, (void *) &number_elements );

    if( number_elements < vi->min_elements )
      *lfds711_queue_umm_validity = LFDS711_MISC_VALIDITY_INVALID_MISSING_ELEMENTS;

    if( number_elements > vi->max_elements )
      *lfds711_queue_umm_validity = LFDS711_MISC_VALIDITY_INVALID_ADDITIONAL_ELEMENTS;
  }

  return;
}





/***** lfds711_queue_unbounded_manyproducer_manyconsumer/lfds711_queue_unbounded_manyproducer_manyconsumer_enqueue.c *****/





/****************************************************************************/
void lfds711_queue_umm_enqueue( struct lfds711_queue_umm_state *qumms,
                                struct lfds711_queue_umm_element *qumme )
{
  char unsigned
    result = 0;

  enum lfds711_misc_flag
    finished_flag = LFDS711_MISC_FLAG_LOWERED;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_queue_umm_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_DOUBLE_POINTER)
    *volatile enqueue[PAC_SIZE],
    *new_enqueue[PAC_SIZE],
    *volatile next[PAC_SIZE];

  LFDS711_PAL_ASSERT( qumms != NULL );
  LFDS711_PAL_ASSERT( qumme != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) qumme->next % LFDS711_PAL_ALIGN_DOUBLE_POINTER == 0 );

  qumme->next[POINTER] = NULL;
  LFDS711_PAL_ATOMIC_ADD( &qumms->aba_counter, 1, qumme->next[COUNTER], struct lfds711_queue_umm_element * );
  LFDS711_MISC_BARRIER_STORE;

  new_enqueue[POINTER] = qumme;

  LFDS711_MISC_BARRIER_LOAD;

  do
  {
    /* TRD : note here the deviation from the white paper
             in the white paper, next is loaded from enqueue, not from qumms->enqueue
             what concerns me is that between the load of enqueue and the load of
             enqueue->next, the element can be dequeued by another thread *and freed*

             by ordering the loads (load barriers), and loading both from qumms,
             the following if(), which checks enqueue is still the same as qumms->enqueue
             still continues to ensure next belongs to enqueue, while avoiding the
             problem with free
    */

    enqueue[COUNTER] = qumms->enqueue[COUNTER];
    enqueue[POINTER] = qumms->enqueue[POINTER];

    LFDS711_MISC_BARRIER_LOAD;

    next[COUNTER] = qumms->enqueue[POINTER]->next[COUNTER];
    next[POINTER] = qumms->enqueue[POINTER]->next[POINTER];

    LFDS711_MISC_BARRIER_LOAD;

    if( qumms->enqueue[COUNTER] == enqueue[COUNTER] and qumms->enqueue[POINTER] == enqueue[POINTER] )
    {
      if( next[POINTER] == NULL )
      {
        new_enqueue[COUNTER] = next[COUNTER] + 1;
        LFDS711_PAL_ATOMIC_DWCAS( enqueue[POINTER]->next, next, new_enqueue, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
        if( result == 1 )
          finished_flag = LFDS711_MISC_FLAG_RAISED;
      }
      else
      {
        next[COUNTER] = enqueue[COUNTER] + 1;
        // TRD : strictly, this is a weak CAS, but we do an extra iteration of the main loop on a fake failure, so we set it to be strong
        LFDS711_PAL_ATOMIC_DWCAS( qumms->enqueue, enqueue, next, LFDS711_MISC_CAS_STRENGTH_STRONG, result );
      }
    }
    else
      result = 0;

    if( result == 0 )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( qumms->enqueue_backoff, backoff_iteration );
  }
  while( finished_flag == LFDS711_MISC_FLAG_LOWERED );

  // TRD : move enqueue along; only a weak CAS as the dequeue will solve this if it's out of place
  new_enqueue[COUNTER] = enqueue[COUNTER] + 1;
  LFDS711_PAL_ATOMIC_DWCAS( qumms->enqueue, enqueue, new_enqueue, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

  if( result == 0 )
    LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( qumms->enqueue_backoff, backoff_iteration );

  LFDS711_BACKOFF_AUTOTUNE( qumms->enqueue_backoff, backoff_iteration );

  return;
}





/***** lfds711_queue_unbounded_manyproducer_manyconsumer/lfds711_queue_unbounded_manyproducer_manyconsumer_dequeue.c *****/





/****************************************************************************/
int lfds711_queue_umm_dequeue( struct lfds711_queue_umm_state *qumms,
                               struct lfds711_queue_umm_element **qumme )
{
  char unsigned
    result = 0;

  enum lfds711_misc_flag
    backoff_flag = LFDS711_MISC_FLAG_RAISED,
    finished_flag = LFDS711_MISC_FLAG_LOWERED;

  enum lfds711_queue_umm_queue_state
    state = LFDS711_QUEUE_UMM_QUEUE_STATE_UNKNOWN;

  int
    rv = 1;

  lfds711_pal_uint_t
    backoff_iteration = LFDS711_BACKOFF_INITIAL_VALUE;

  struct lfds711_queue_umm_element LFDS711_PAL_ALIGN(LFDS711_PAL_ALIGN_DOUBLE_POINTER)
    *dequeue[PAC_SIZE],
    *enqueue[PAC_SIZE],
    *next[PAC_SIZE];

  void
    *key = NULL,
    *value = NULL;

  LFDS711_PAL_ASSERT( qumms != NULL );
  LFDS711_PAL_ASSERT( qumme != NULL );

  LFDS711_MISC_BARRIER_LOAD;

  do
  {
    /* TRD : note here the deviation from the white paper
             in the white paper, next is loaded from dequeue, not from qumms->dequeue
             what concerns me is that between the load of dequeue and the load of
             enqueue->next, the element can be dequeued by another thread *and freed*

             by ordering the loads (load barriers), and loading both from qumms,
             the following if(), which checks dequeue is still the same as qumms->enqueue
             still continues to ensure next belongs to enqueue, while avoiding the
             problem with free
    */

    dequeue[COUNTER] = qumms->dequeue[COUNTER];
    dequeue[POINTER] = qumms->dequeue[POINTER];

    LFDS711_MISC_BARRIER_LOAD;

    enqueue[COUNTER] = qumms->enqueue[COUNTER];
    enqueue[POINTER] = qumms->enqueue[POINTER];

    next[COUNTER] = qumms->dequeue[POINTER]->next[COUNTER];
    next[POINTER] = qumms->dequeue[POINTER]->next[POINTER];

    LFDS711_MISC_BARRIER_LOAD;

    if( qumms->dequeue[COUNTER] == dequeue[COUNTER] and qumms->dequeue[POINTER] == dequeue[POINTER] )
    {
      if( enqueue[POINTER] == dequeue[POINTER] and next[POINTER] == NULL )
        state = LFDS711_QUEUE_UMM_QUEUE_STATE_EMPTY;

      if( enqueue[POINTER] == dequeue[POINTER] and next[POINTER] != NULL )
        state = LFDS711_QUEUE_UMM_QUEUE_STATE_ENQUEUE_OUT_OF_PLACE;

      if( enqueue[POINTER] != dequeue[POINTER] )
        state = LFDS711_QUEUE_UMM_QUEUE_STATE_ATTEMPT_DEQUEUE;

      switch( state )
      {
        case LFDS711_QUEUE_UMM_QUEUE_STATE_UNKNOWN:
          // TRD : eliminates compiler warning
        break;

        case LFDS711_QUEUE_UMM_QUEUE_STATE_EMPTY:
          rv = 0;
          *qumme = NULL;
          result = 0;
          backoff_flag = LFDS711_MISC_FLAG_LOWERED;
          finished_flag = LFDS711_MISC_FLAG_RAISED;
        break;

        case LFDS711_QUEUE_UMM_QUEUE_STATE_ENQUEUE_OUT_OF_PLACE:
          next[COUNTER] = enqueue[COUNTER] + 1;
          LFDS711_PAL_ATOMIC_DWCAS( qumms->enqueue, enqueue, next, LFDS711_MISC_CAS_STRENGTH_WEAK, result );
          // TRD : in fact if result is 1 (successful) I think we can now simply drop down into the dequeue attempt
        break;

        case LFDS711_QUEUE_UMM_QUEUE_STATE_ATTEMPT_DEQUEUE:
          key = next[POINTER]->key;
          value = next[POINTER]->value;

          next[COUNTER] = qumms->dequeue[COUNTER] + 1;
          LFDS711_PAL_ATOMIC_DWCAS( qumms->dequeue, dequeue, next, LFDS711_MISC_CAS_STRENGTH_WEAK, result );

          if( result == 1 )
          {
            backoff_flag = LFDS711_MISC_FLAG_LOWERED;
            finished_flag = LFDS711_MISC_FLAG_RAISED;
          }
        break;
      }
    }
    else
      backoff_flag = LFDS711_MISC_FLAG_RAISED;

    if( backoff_flag == LFDS711_MISC_FLAG_RAISED )
      LFDS711_BACKOFF_EXPONENTIAL_BACKOFF( qumms->dequeue_backoff, backoff_iteration );
  }
  while( finished_flag == LFDS711_MISC_FLAG_LOWERED );

  if( result == 1 )
  {
    *qumme = dequeue[POINTER];
    (*qumme)->key = key;
    (*qumme)->value = value;
  }

  LFDS711_BACKOFF_AUTOTUNE( qumms->dequeue_backoff, backoff_iteration );

  return rv;
}





/***** lfds711_queue_unbounded_manyproducer_manyconsumer/lfds711_queue_unbounded_manyproducer_manyconsumer_init.c *****/





/****************************************************************************/
void lfds711_queue_umm_init_valid_on_current_logical_core( struct lfds711_queue_umm_state *qumms,
                                                           struct lfds711_queue_umm_element *qumme_dummy,
                                                           void *user_state )
{
  LFDS711_PAL_ASSERT( qumms != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &qumms->enqueue % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &qumms->dequeue % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &qumms->user_state % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );
  LFDS711_PAL_ASSERT( qumme_dummy != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) qumme_dummy->next % LFDS711_PAL_ALIGN_DOUBLE_POINTER == 0 );
  // TRD : user_state can be NULL

  /* TRD : qumme_dummy is a dummy element, needed for init
           the qumms->enqueue and qumms->dequeue counters do not need to be initialized
           but it does no harm to do so, and stops a valgrind complaint
  */

  LFDS711_PRNG_GENERATE( lfds711_misc_globals.ps, qumms->aba_counter );

  qumms->enqueue[POINTER] = qumme_dummy;
  qumms->enqueue[COUNTER] = (struct lfds711_queue_umm_element *) 0;
  qumms->dequeue[POINTER] = qumme_dummy;
  qumms->dequeue[COUNTER] = (struct lfds711_queue_umm_element *) 0;

  qumme_dummy->next[POINTER] = NULL;
  // TRD : no need here for an atomic add as we have a store barrier and force store below
  qumme_dummy->next[COUNTER] = (struct lfds711_queue_umm_element *) qumms->aba_counter++;
  qumme_dummy->key = NULL;
  qumme_dummy->value = NULL;

  qumms->user_state = user_state;

  lfds711_misc_internal_backoff_init( &qumms->dequeue_backoff );
  lfds711_misc_internal_backoff_init( &qumms->enqueue_backoff );

  LFDS711_MISC_BARRIER_STORE;

  lfds711_misc_force_store();

  return;
}





/***** lfds711_queue_unbounded_manyproducer_manyconsumer/lfds711_queue_unbounded_manyproducer_manyconsumer_cleanup.c *****/





/****************************************************************************/
void lfds711_queue_umm_cleanup( struct lfds711_queue_umm_state *qumms,
                                void (*element_cleanup_callback)(struct lfds711_queue_umm_state *qumms, struct lfds711_queue_umm_element *qumme, enum lfds711_misc_flag dummy_element_flag) )
{
  struct lfds711_queue_umm_element
    *qumme;

  void
    *value;

  LFDS711_PAL_ASSERT( qumms != NULL );
  // TRD : element_cleanup_callback can be NULL

  LFDS711_MISC_BARRIER_LOAD;

  if( element_cleanup_callback != NULL )
  {
    while( qumms->dequeue[POINTER] != qumms->enqueue[POINTER] )
    {
      // TRD : trailing dummy element, so the first real value is in the next element
      value = qumms->dequeue[POINTER]->next[POINTER]->value;

      // TRD : user is given back *an* element, but not the one his user data was in
      qumme = qumms->dequeue[POINTER];

      // TRD : remove the element from queue
      qumms->dequeue[POINTER] = qumms->dequeue[POINTER]->next[POINTER];

      // TRD : write value into the qumme we're going to give the user
      qumme->value = value;

      element_cleanup_callback( qumms, qumme, LFDS711_MISC_FLAG_LOWERED );
    }

    // TRD : and now the final element
    element_cleanup_callback( qumms, (struct lfds711_queue_umm_element *) qumms->dequeue[POINTER], LFDS711_MISC_FLAG_RAISED );
  }

  return;
}





/***** lfds711_misc/lfds711_misc_internal.h *****/





/***** the library wide include file *****/

/***** private prototypes *****/
void lfds711_misc_prng_internal_big_slow_high_quality_init( int long long unsigned seed );





/***** lfds711_misc/lfds711_misc_query.c *****/





/****************************************************************************/
#pragma warning( disable : 4100 )

void lfds711_misc_query( enum lfds711_misc_query query_type,
                         void *query_input,
                         void *query_output )
{
  // TRD : query type can be any value in its range
  // TRD : query_input can be NULL in some cases
  // TRD : query_outputput can be NULL in some cases

  switch( query_type )
  {
    case LFDS711_MISC_QUERY_GET_BUILD_AND_VERSION_STRING:
    {
      char static const
        * const build_and_version_string = "liblfds " LFDS711_MISC_VERSION_STRING " (" BUILD_TYPE_STRING ", " LFDS711_PAL_OS_STRING ", " MODE_TYPE_STRING ", " LFDS711_PAL_PROCESSOR_STRING ", " LFDS711_PAL_COMPILER_STRING ")";

      LFDS711_PAL_ASSERT( query_input == NULL );
      LFDS711_PAL_ASSERT( query_output != NULL );

      *(char const **) query_output = build_and_version_string;
    }
    break;
  }

  return;
}

#pragma warning( default : 4100 )





/***** lfds711_misc/lfds711_misc_globals.c *****/





/****************************************************************************/
struct lfds711_misc_globals
  lfds711_misc_globals =
  {
    { LFDS711_PRNG_SEED }
  };





/***** lfds711_misc/lfds711_misc_internal_backoff_init.c *****/





/****************************************************************************/
void lfds711_misc_internal_backoff_init( struct lfds711_misc_backoff_state *bs )
{
  LFDS711_PAL_ASSERT( bs != NULL );
  LFDS711_PAL_ASSERT( (lfds711_pal_uint_t) &bs->lock % LFDS711_PAL_ATOMIC_ISOLATION_IN_BYTES == 0 );

  bs->lock = LFDS711_MISC_FLAG_LOWERED;
  bs->backoff_iteration_frequency_counters[0] = 0;
  bs->backoff_iteration_frequency_counters[1] = 0;
  bs->metric = 1;
  bs->total_operations = 0;

  return;
}
