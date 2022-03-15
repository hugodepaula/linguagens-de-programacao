using System;

class MainClass {
   public static void ParamVariavel(params int[] lista)
    {
        for (int i = 0; i < lista.Length; i++)
        {
            Console.Write(lista[i] + " ");
        }
        Console.WriteLine();
    }

   public static void ParamList(int[] lista)
    {
        for (int i = 0; i < lista.Length; i++)
        {
            Console.Write(lista[i] + " ");
        }
        Console.WriteLine();
    }

    public static void Main(string[] args)
    {
        ParamVariavel(10);
        ParamVariavel(1, 3, 5, 7, 9);

        ParamList(new int[] { 10 } );
        ParamList(new int[] { 1, 3, 5, 7, 9} );

    }
}