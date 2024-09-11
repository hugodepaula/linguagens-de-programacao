#include <iostream>


int shulambs(int a = 10, int b = 10) {
  return a + b;
}  

int main() {
  std::cout <<"shulambs() = " << shulambs() << '\n';
  std::cout <<"shulambs(50) = " << shulambs(50) << '\n';
  std::cout <<"shulambs(50, 50) = " << shulambs(50, 50) << '\n';
}