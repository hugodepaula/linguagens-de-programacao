#include <stdio.h>

   int *r;

   int f() {
      int v = 50;
      r= &v;
      printf("r = %d\n", *r);
      return v;
   }

   int g() {
     int i = 20, b = 30;
     return i + b;
   }

   int main(void) {
      f();  	
      printf("r = %d\n", *r);
      g();
      if (*r)
        printf("r = %d\n", *r);
      *r = 0; // r e uma referencia dangling
      if (*r)
        printf("r = %d\n", *r);
      return 0;
   }

