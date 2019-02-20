#include <stdlib.h>
#include <time.h>
#include <string.h>

#if HAVE_TZNAME
extern char *tzname[];
#endif

int main()
{
  /* Note that we need to ensure that not only does tzset(3)
     do 'something' with localtime, but it works as documented
     in the library reference and as expected by the test suite.
     This includes making sure that tzname is set properly if
     tm->tm_zone does not exist since it is the alternative way
     of getting timezone info.

     Red Hat 6.2 doesn't understand the southern hemisphere
     after New Year's Day.
  */

  time_t groundhogday = 1044144000; /* GMT-based */
  time_t midyear = groundhogday + (365 * 24 * 3600 / 2);

  putenv("TZ=UTC+0");
  tzset();
  if (localtime(&groundhogday)->tm_hour != 0)
      exit(1);
#if HAVE_TZNAME
  /* For UTC, tzname[1] is sometimes "", sometimes "   " */
  if (strcmp(tzname[0], "UTC") ||
    (tzname[1][0] != 0 && tzname[1][0] != ' '))
      exit(1);
#endif

  putenv("TZ=EST+5EDT,M4.1.0,M10.5.0");
  tzset();
  if (localtime(&groundhogday)->tm_hour != 19)
      exit(1);
#if HAVE_TZNAME
  if (strcmp(tzname[0], "EST") || strcmp(tzname[1], "EDT"))
      exit(1);
#endif

  putenv("TZ=AEST-10AEDT-11,M10.5.0,M3.5.0");
  tzset();
  if (localtime(&groundhogday)->tm_hour != 11)
      exit(1);
#if HAVE_TZNAME
  if (strcmp(tzname[0], "AEST") || strcmp(tzname[1], "AEDT"))
      exit(1);
#endif

#if HAVE_STRUCT_TM_TM_ZONE
  if (strcmp(localtime(&groundhogday)->tm_zone, "AEDT"))
      exit(1);
  if (strcmp(localtime(&midyear)->tm_zone, "AEST"))
      exit(1);
#endif

  exit(0);
}
