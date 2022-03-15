#include <stdio.h>

int main(void) {
  int c = 0;

  for (int x = 0, y = 10; x < y; x++, y--) {
    printf("x = %d \t y = %d\n", x, y);
  }

  for ( ; ; ) {
    printf("Loop infinito \t c = %d\n", c++);
    if (c > 10) break;
  }

  while (1) {
    printf("Loop infinito \t c = %d\n", c++);
    if (c > 10) break;
  }
 
  return 0;
}