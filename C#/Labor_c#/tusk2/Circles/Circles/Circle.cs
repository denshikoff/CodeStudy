using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using static System.Math;
using static System.Convert;
using System.Threading.Tasks;

namespace Circles
{
    class Circle
    {
        public Circle(int X, int Y, int R)
        {
            this.X = X;
            this.Y = Y;
            this.R = R;
        }
        public int R { get; set; }
        public int X { get; set; }
        public int Y { get; set; }

        public static Circle[] readCircle()
        {
            int n, x, y, r;
            do
            {
                Console.WriteLine("Введите количество окружностей");
                n = ToInt32(Console.ReadLine());
            } while (n <= 0);
            Circle[] circles = new Circle[n];
            for (int i = 0; i < n; i++)
            {
                Console.WriteLine("Окружность №" + (i+1) + "\n" + "Введите координаты");
                Console.WriteLine("X:");
                x = ToInt32(Console.ReadLine());
                Console.WriteLine("Y:");
                y = ToInt32(Console.ReadLine());
                Console.WriteLine("R:");
                r = ToInt32(Console.ReadLine());
                circles[i] = new Circle(x, y, r);
            }
            return circles;
        }

        private static bool isCommonCircle(Circle c1, Circle c2)
        { 
            double d = Sqrt(Pow(c1.X - c2.X, 2) + Pow(c1.Y - c2.Y, 2)); //d^2 = (x1-x2)^2+(y1-y2)^2
            return d <= c1.R + c2.R && d > Abs(c1.R - c2.R); //пересекается или имеет одно касание
        }

        public static int countCommonCircle(Circle[] circles)
        {
            int k = 0;
            for(int i = 0; i < circles.Length-1; i++)
            {
                if (isCommonCircle(circles[i], circles[i + 1]))
                {
                    k++;
                }
            }
            return k > 0 ? k+1:0;
        }
    }
}
