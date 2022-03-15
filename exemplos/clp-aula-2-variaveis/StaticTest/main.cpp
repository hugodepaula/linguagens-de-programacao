#include <iostream>

int a = 1;
int *p;

void f() {
  int b = 1;
  static int c = a; // inicializacao 
  
  std::cout << "a = " << a++ << " b = " << b++;
  std::cout << " c = " << c++ << std::endl;
  c = c + 2;
}

int main() {
  while (a < 4) f();
  std::cout << "p = " << *p; 
  return 0;
}
