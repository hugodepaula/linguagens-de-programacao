#include <iostream>
using namespace std;

namespace first
{

  typedef struct {
    int a;
    int b;
  } par;

  int var = 5;
}

namespace second
{
  typedef struct {
    int a;
    int b;
  } par;

  double var = 3.1416;
}



int main () {
  first::par par1;
  second::par par2;
  second::par par3;

  par1.a = 10;   par1.b = 20;
  par2.a = 30;   par2.b = 40;

  cout <<par1.a << "   " << par1.b << endl;
  cout <<par2.a << "   " << par2.b << endl;


  par1.a = par2.a;

  cout <<par1.a << "   " << par1.b << endl;

  par3 = par2;

  cout <<par3.a << "   " << par3.b << endl;

  par1 = par2; 


  cout << "first.var = " << first::var << endl;
  cout << "second.var = " << second::var << endl;

  return 0;
}