using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

class Fibonnaci {
  public static int x = 10;
  public static int y = 20;

  public static long Soma()
  {
    Lazy<long> s = new Lazy<long>(() => Fibonnaci.x + Fibonnaci.y);
    return s.Value;
  }

  public static IEnumerable<long> Serie() {
    long n1 = 1;
    long n2 = 1;
    yield return n1;
    yield return n2;

    while ( true ) {
      long temp = n1 + n2 ;
      n1 = n2 ;
      n2 = temp ;
      yield return temp ;
    }
  }
  public static void Main (string[] args) {
    
    var primeiros10elementos = Fibonnaci.Serie().Take(10);

    foreach (long elem in primeiros10elementos)
    {
      Console.Write(elem + ", ");
      if (elem > 100) 
      {
        Console.WriteLine();
        break;
      }
    }
    Console.WriteLine();


    Console.WriteLine("x = " + Fibonnaci.x + "  y = " + Fibonnaci.y + " Soma = " + Fibonnaci.Soma());

    Fibonnaci.x = 5;
    Fibonnaci.y = 2;

   Console.WriteLine("x = " + Fibonnaci.x + "  y = " + Fibonnaci.y + " Soma = " + Fibonnaci.Soma());



    // Na linha a seguir, a lista não é gerada, 
    // mas de forma "preguiçosa", o C# retorna
    // um cursor para uma lista (iterator), para
    // ser usado quando necessário.
    Console.WriteLine(Fibonnaci.Serie());
  }
}