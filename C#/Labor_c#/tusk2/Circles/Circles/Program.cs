using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Circles
{
    class Program
    {

        static void Main(string[] args)
        {
            Circle[] circles = Circle.readCircle();
            Console.WriteLine("Число пересекающихся окружностей: " + Circle.countCommonCircle(circles));
            Console.ReadKey();
        }
    }
}
