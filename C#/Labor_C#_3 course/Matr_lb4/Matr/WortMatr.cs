using System;
using System.Collections.Generic;
using System.Text;

namespace Matr
{
    /*В данной матрице размером n* n для каждой строки найти серию
наибольшей длины из положительных.*/
    class WorkMatr
    {
        private static int[][] matr = null;
        public int sizeM { get; set; }
        int test;
        public WorkMatr()
        {
            Console.Write("Read size, please... ");
            sizeM = Convert.ToInt32(Console.ReadLine());
            if (sizeM < 0)
                Console.WriteLine("Error");
            test = 1;                             //переменная теста 
            matr = new int[test][];
            for (int i = 0; i < test; i++)
                matr[i] = new int[sizeM];
        }

        public int[][] readMatr()            //считывание матрицы из консоли
        {          
            for (int i = 0; i < test; i++)
            {
                for (int j = 0; j < sizeM; j++)
                {
                    Console.WriteLine("Введите элемент матрицы {0}:{1}", i + 1, j + 1);
                    matr[i][j] = Convert.ToInt32(Console.ReadLine());
                }

            }
            Console.WriteLine();
            return matr;
        }

        public static void writeMatr(int[][] ar)        //вывод матрицы
        {
            for (int i = 0; i < 1 ; i++) //!!!
            {
                for (int j = 0; j < ar[i].Length; j++)
                {
                    Console.Write(" mas[" + i + "," + j + "]: " + ar[i][j] + "\t");
                }
                Console.WriteLine();
                Console.WriteLine();
                Console.WriteLine();
            }
        }

        public void getMaxSerias(int indexSource, int[] row, ref int[][] maxSeries)
        {
            bool ok = true;
            int indexRow = 0;
            int[] index_begin_end = new int[2];
            int i = 0;

            index_begin_end[0] = row[indexRow];
            while (indexRow < row.Length - 1)           
            {
                if(row[indexRow] < 0)
                {
                    indexRow++;
                    continue;
                }                
                if (row[indexRow] < row[indexRow + 1])
                {
                    index_begin_end[i] = row[indexRow];
                    i++;
                    Array.Resize(ref index_begin_end, i + 1);
                    index_begin_end[i] = row[indexRow + 1];                                    
                }
                else
                {
                    ok = false;
                }
                    indexRow++;
                {
                    if (!ok && maxSeries[indexSource].Length < index_begin_end.Length)
                    {                        
                        Array.Resize(ref maxSeries, index_begin_end.Length);   //меняем длину исходного массива и присваем максимальную серию
                        maxSeries[indexSource] = index_begin_end;                     
                        i = 0;
                        index_begin_end = new int[1]; //1 вставить
                        ok = true;
                    }
                }                                                       
            }        
        Array.Resize(ref maxSeries, index_begin_end.Length);
        maxSeries[indexSource] = index_begin_end;              
        }

        public void getMaxSerias2(int indexSource, int[] row, ref int[][] maxSeries)
        {
            bool ok = true;
            int[] index_begin_end = new int[2];
            int max;
            int lenMax = max = 0;
            for(int indexRow = 0; indexRow < row.Length; indexRow++)
            {
                
                if(row[indexRow] < 0)
                {

                    continue;
                }          
                    
                
                if (row[indexRow] < row[indexRow + 1])
                {
                    lenMax++;
                }
                    
            }
        }




        public int[][] searchMaxSeriases()
        {
            int[][] seriasMax = new int[sizeM][]; //массив массивов максимальных серий
            for (int i = 0; i < sizeM; i++)
                seriasMax[i] = new int[0];

            for (int i = 0; i < test; i++)
            {
                //индекс определяет строку исходного массива
                getMaxSerias(i, matr[i], ref seriasMax);  //проходим по строке
            }

            return seriasMax;
        }
    }
}
