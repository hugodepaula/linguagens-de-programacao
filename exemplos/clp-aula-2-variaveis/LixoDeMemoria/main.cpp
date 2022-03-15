#include <iostream>

int main() {

  int *i;

  for (int n = 0; n < 100000; n++) {
     i = (int *) malloc(10240000);
  }
  i = 0;
  std::cout << "Hello World!\n";
}