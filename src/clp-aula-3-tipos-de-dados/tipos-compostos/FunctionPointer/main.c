#include <stdio.h>

void f() {
     printf("Hello World\n");
}



int main(void) {
 
  void (*g)();

  g = &f;


  (*g)();


  return 0;
}