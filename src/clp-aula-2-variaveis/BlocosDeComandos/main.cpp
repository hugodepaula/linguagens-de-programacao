#include <iostream>
namespace EspacoNome {

  int i = 10;

  class Shulambs {
    public:
      int i = 20;

      void f() { 
        int local = 30;

        for (int i = 0; i < 1; i++) {
            {
              int inFor = 40;
              std::cout << inFor << "  " << i << "  "  << local << "  " 
                        << Shulambs::i  << "  " << EspacoNome::i << std::endl;  
            }
            std::cout << i << "  "  << local << "  " 
                       << Shulambs::i  << "  " << EspacoNome::i << std::endl;  
        }

        std::cout << local << "  " << Shulambs::i  << "  " << EspacoNome::i << std::endl;  

      }
  };


}



int main() {
  std::cout << "Hello World!\n";
}