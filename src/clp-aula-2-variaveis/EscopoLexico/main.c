#include <stdio.h>
#include "mlib.h"

int g;
int *p;

void f() {
 
  int lf = 3;
    
  g = h(lf); 
}


int rec(int n) {
  printf("end n = %p\n", &n);
  if (n == 2) p = &n;
  if (n > 0) return 1 + rec(n-1);
  else return 1;
}




int main(void) {
  printf("g = %d\n", g);
  f();
  printf("g = %d\n", g);

  int res = rec(2);

  printf("res = %d\n", res);
  printf("p = %d\n", *p);
  p += 4;
  printf("p = %d\n", *p);
  
  return 0;
}

// 