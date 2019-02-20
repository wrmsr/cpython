#include <math.h>
#include <stdlib.h>
int main() {
    /* return 0 if either negative zeros don't exist
       on this platform or if negative zeros exist
       and tanh(-0.) == -0. */
  if (atan2(0., -1.) == atan2(-0., -1.) ||
      atan2(tanh(-0.), -1.) == atan2(-0., -1.)) exit(0);
  else exit(1);
}
