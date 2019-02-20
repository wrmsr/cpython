#include <math.h>
#include <stdlib.h>
int main() {
  /* Fail if the signs of log1p(-0.) and -0. can be distinguished. */
  if (atan2(log1p(-0.), -1.) == atan2(-0., -1.))
      return 0;
  else
      return 1;
}
