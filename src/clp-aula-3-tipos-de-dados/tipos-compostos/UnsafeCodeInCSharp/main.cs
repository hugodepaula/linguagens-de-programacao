using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnsafeCode
{
    class Program
    {
        unsafe static void Main(string[] args)
        {
            int[] v = new int[5];
            int* r = (int*) new int();
 

            for (int i = 0; i < 5; i++)
            {
                v[i] = i;
                Console.Write("v[{0}] = {1}, ", i, v[i]);
            }

            r = v;

            Console.Write("r = {1}, ", r);

            Console.ReadKey();
        }
    }
}
