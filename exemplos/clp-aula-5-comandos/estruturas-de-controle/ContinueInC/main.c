#include <stdio.h>

int main(void) {

  int x = 0, y = 0;

  while (x < 10) {
   x++;
   if (x == 5)
      continue;
    printf("\nx = %d", x);
  }

  x = 0;

  while (x < 10) {
    x++;
    y = 0;
    while (y < 10) {
      y++;
      if (x == 5) {
          printf("\nContinue.");
          continue;
      }
      printf("\nx = %d\ty = %d", x, y);
    }
  }


  return 0;
}