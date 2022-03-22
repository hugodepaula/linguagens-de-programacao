#include <stdio.h>

int main(void) {

  char tab = '\t';

  if (7)
    printf("7 is True\n");
  
  if (!0)
    printf("0 is false\n");

  if ('\t')
    printf("\\t is true\n");

  if (!'\0')
    printf("\\0 is false\n");


  if (7  && tab)
   printf("7 and \\t is true\n");

  return 0;
}