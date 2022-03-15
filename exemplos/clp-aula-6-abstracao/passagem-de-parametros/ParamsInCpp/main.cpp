#include <iostream>

/*-----------------------------------------
Declaracao    |   Valor   |   Referencia
int v         |   v       |   &v
int *p        |   *p      |   p
int f()       |   f()     |   f
*/


void imprime(int v, int *p, int f, int (*g)()){
  std::cout << "Endereço v: " << &v << " Valor: " << v << "\n";
  std::cout << "Endereço p: " << p << " Valor: " << *p << "\n";
  std::cout << "Endereço f: " << &f << " Valor: " << f << "\n";
  std::cout << "Endereço g: " << ((long) g) << " Valor: " <<  g() << "\n";
}

int func() {
  return 10;
}

int main() {
  int v = 20;
  int *p = new int;
  *p = 30;
  imprime(v, p, func(), func);

  std::cout << "\n--------------------------------------------------\n";
  std::cout << "Endereço v: " << &v << " Valor: " << v << "\n";
  std::cout << "Endereço p: " << p << " Valor: " << *p << "\n";
  std::cout << "Endereço g: " << ((long) func) << " Valor: " <<  func() << "\n";


}






