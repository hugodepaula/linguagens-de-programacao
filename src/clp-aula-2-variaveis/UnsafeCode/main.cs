using System;

class MainClass {

  
  public static int f(int valor) {
    valor = valor + 10;
    return valor;
  }

  public static int g(ref int end) {
    end = end + 10;
    return end;
  }

 public unsafe static int h(int* end) {
    *end = *end + 10;
    return *end;
  }



  public unsafe static void Main (string[] args) {

    int x = 10;

    Console.WriteLine("f({0}) = {1} ", x, f(x));
    Console.WriteLine("Novo x: {0}", x);

    Console.WriteLine("g({0}) = {1} ", x, g(ref x));
    Console.WriteLine("Novo x: {0}", x);

    Console.WriteLine("h({0}) = {1} ", x, h(&x));
    Console.WriteLine("Novo x: {0}", x);

   }
}