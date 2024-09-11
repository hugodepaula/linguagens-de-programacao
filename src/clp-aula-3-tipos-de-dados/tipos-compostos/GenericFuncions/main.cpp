#include <iostream>

typedef int (*funcInt)(int);
typedef double (*funcDouble)(double);

int quadrado (int x) { 
  return x * x; 
}

funcInt f = quadrado ;


double integral(funcDouble f, double inf, double sup) {
  double dx = 0.0001;
  double soma = f(inf);

  for (double x = inf + dx; x < sup; x += dx) {
    soma += f(x);
  }
  return soma*dx;
}

double linear(double n) {
  return 2*n + 3;
}

int avaliar(funcInt g , int val) {
  return g( val ) ;
}


int main() {
  std::cout << "Avaliar f(3): " <<     avaliar(f, 3) << "\n";
  std::cout << "Integral: " << integral(linear, 1, 2) << "\n";
}