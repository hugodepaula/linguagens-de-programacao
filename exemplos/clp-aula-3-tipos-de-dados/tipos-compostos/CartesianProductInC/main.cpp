#include <iostream>

typedef struct {
  int dia ;
  int mes ;
  int ano ;
} Data ;


int main() {

Data natal ;
natal.dia = 25;
natal.mes = 12;
natal.ano = 00;

std::cout << natal.dia << '/' << natal.mes << '/' << natal.ano << '\n';

Data *pdata = &natal;

int *pint;
pint = &(pdata->dia);


std::cout << *(pint) << '/';
std::cout << *(++pint) << '/';
std::cout << *(++pint) << '\n';

std::cout << "\nTam. inteiro: " << sizeof(int) 
          << "\nTam data: " << sizeof(Data)
          << '\n';
              
}