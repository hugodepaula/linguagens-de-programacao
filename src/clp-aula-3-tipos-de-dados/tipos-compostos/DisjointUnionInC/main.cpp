#include <iostream>
#include <string.h>

enum tipo_dados { inteiro, real, logico };

typedef struct {
  char *nome;
  enum tipo_dados tipo;
  union {
      int val_int;
      float val_real;
      bool val_log;
  } valor;
} Constante;

int main() {

  Constante c;
  strcpy(c.nome, "pi");
  c.tipo = real;
  c.valor.val_real = 3.14;

  std::cout << "Constante   " << c.nome << " - valor: " 
    << c.valor.val_real  <<  "\n";

  std::cout << "Constante   " << c.nome << " - valor: " 
    << c.valor.val_int  <<  "\n";

  std::cout << "Constante   " << c.nome << " - valor: " 
    << c.valor.val_log  <<  "\n";

  union {
    int x;
    int y;
  } teste;

  teste.x = 10;
  std::cout << "teste x, y   " << teste.y  <<  "\n";

  struct {
    int x;
    int y;
  } registro;

  registro.x = 10;
  std::cout << "registro x, y   " << registro.y  <<  "\n";


}