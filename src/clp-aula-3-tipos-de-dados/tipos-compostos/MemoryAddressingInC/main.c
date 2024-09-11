#include <stdio.h>
#include <stdlib.h>
int i = 10;

int main(void) {
  int i = 22;
  char c = 'a';
  {
    int j = 22;
  }

  int  *p0 = &i;
  int  *p1 = &i;
  char *p2 = &c;
  // int  *p3 = &j; // j nao foi declarado no bloco main

  printf("\n%p\n%p\n%p\n", p0, p1, p2);

  printf("\n%p\n%p\n%p\n", &p0, &p1, &p2);
  
  p1 = malloc(sizeof(int));
  printf("\n%p\n", p1);
 
  for (int k = 1; k < 3; k++) {
    printf("k=%d\n",k);
  }

  // printf("\n%p\n", &k); // k nao foi declarado no bloco main


  return 0;
}
