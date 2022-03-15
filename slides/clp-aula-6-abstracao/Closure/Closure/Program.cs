using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Closure
{
    class Program
    {
        static Func<int, int> somador(int x)
        {
            return delegate (int y) { return x + y; };
        }

        static void Main(string[] args)
        {
            Func<int, int> soma10 = somador(10);
            Func<int, int> soma5 = somador(5);
            Console.WriteLine("Soma 10 a 20: {0} ", soma10(20));
            Console.WriteLine("Soma 5 a 20: {0} ", soma5(20));

            Console.ReadKey();
        }
    }
}
