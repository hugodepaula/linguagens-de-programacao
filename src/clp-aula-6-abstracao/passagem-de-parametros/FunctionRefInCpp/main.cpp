#include <iostream>

double integral(double (*fun)(double), double inf, double sup, double dx = 0.0000001) {
    double soma = (*fun)(inf);
    
    for (double x = inf + dx; x <= sup; x += dx) {
        soma += (*fun)(x);
    }
    return soma * dx;
}
    
double f(double x) {
    return x + 1;
}

double g(double x) {
  return x * x;
}
 
int main() {
    std::cout << integral (f, 0, 3*3.1415926) << "\n";
    std::cout << integral (g, 0, 3*3.1415926) << "\n";
    std::cout << integral (g, 0, 3*3.1415926, 0.001) << "\n";
}