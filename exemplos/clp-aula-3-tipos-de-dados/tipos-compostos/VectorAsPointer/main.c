#include <stdio.h>

int main(void) {

  int v[3] = {10, 15, 20};
  int *p;
  p = v;

  printf("v [%d]  = %d\n", 0, *p);
  p++;
  printf("v [%d]  = %d\n", 1, *p);
  p++;
  printf("v [%d]  = %d\n", 2, *p);
  p += 8;
  printf("v [%d]  = %d\n", 3, *p);

  return 0;
}