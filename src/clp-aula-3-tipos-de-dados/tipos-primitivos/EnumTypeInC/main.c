#include <stdio.h>

enum dia_semana { dom, seg , ter , qua , qui , sex , sab };
enum cores { vermelho = 1 , verde = 256 , azul = 65536};

int main(void) {

  enum dia_semana hoje, ontem;
  
  ontem = seg;
  hoje = ontem + 1;

  printf("Ontem: %d\n", ontem);
  printf("Hoje: %d\n", hoje);

  enum cores cor_quente = azul;

  printf("Cor quente: %d\n", cor_quente);

  if (cor_quente == verde) {
     printf("Cor neutra\n");
  } else {
     printf("Cor nao neutra\n");
  }

  return 0;
}