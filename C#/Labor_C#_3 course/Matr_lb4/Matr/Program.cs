using System;

namespace Matr
{
    class Program
    {
        static void Main(string[] args)
        {
            WorkMatr workMatr = new WorkMatr();
            workMatr.readMatr();
            int[][] arr = workMatr.searchMaxSeriases();
            WorkMatr.writeMatr(arr);
        }
    }
}
