/*

Faça um programa que lê um numero inteiro e responda:

     "Bem vindo", se o número inteiro for 1.
     "Que bom que voltou", se o numero inteiro for 2.
     "Que pena que já está indo", se o número for 3.
     "Até logo", caso contrário

     Utilize o comando switch - case para implementar o programa.

*/

#include <iostream>
#include <stdio.h>
#include <stdlib.h>


int main() {
  int num;
  
  // Gerou o main.s ali do lado <<
  printf("Insira um número: ");
  scanf("%d", &num);
  int i = 0;
  
  switch (num) {
    case 1: printf("Bem vindo\n");
            break;
    case 2: 
            JUMPSTART:
            printf("Que bom que voltou\n");
            break;
    case 3: printf("Que pena que esta indo\n");
            break;
    default: printf("Até logo\n");
  }

   START:
    i++;
    printf("Teste\n");
    if (i == 3) goto END;  
    goto JUMPSTART;
  END:
    return 0;
}
