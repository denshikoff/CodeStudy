using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WorkMatr
{
    class MatrMake
    {
        private int n_str, //количество строк
                    n_col; //количество столбцов
        private int[,] matrix; // обрабатываемая матрица
        public MatrMake(int n)
        {
            n_str = n; // на входе матрица квадратная
            n_col = n;
            matrix = new int[n, n];
        }
        //заполнение матрицы из DataGridView
        public void GridToMatrix(DataGridView dgv)
        {
            DataGridViewCell txtCell;
            for (int i = 0; i < n_str; i++)
            {
                for (int j = 0; j < n_col; j++)
                {
                    txtCell = dgv.Rows[i].Cells[j];
                    string s = txtCell.Value.ToString();
                    if (s == "")
                        matrix[i, j] = 0;
                    else
                        matrix[i, j] = Int32.Parse(s);
                }
            }
        }
        //вывод матрицы в DataGridView
        public void MatrixToGrid(DataGridView dgv)
        {
             //установка размеров
             int i;
             DataTable matr = new DataTable("matr");
             DataColumn[] cols = new DataColumn[n_col];
             for (i = 0; i<n_col; i++)
             {
                cols[i] = new DataColumn(i.ToString());
                matr.Columns.Add(cols[i]);
             }

             for (i = 0; i<n_str; i++)
             {
                 DataRow newRow;
                 newRow = matr.NewRow();
                 matr.Rows.Add(newRow);
             }

             dgv.DataSource = matr;
             for (i = 0; i < n_col; i++)
                dgv.Columns[i].Width = 50;
            
             // занесение значений
             DataGridViewCell txtCell;
             for (i = 0; i < n_str; i++)
             {
                for (int j = 0; j < n_col; j++)
                {
                    txtCell = dgv.Rows[i].Cells[j];
                    txtCell.Value = matrix[i, j].ToString();
                }
             }
        }
        // удаление строк, содержащих нули
        public bool DelStrWithNull()//true, если результат пустая матрица
        {
    
         int i, j;
         bool ok;
         i = 0;
         while (i < n_str)
         {
            ok = true;
            for (j = 0; j < n_col && ok; j++)
                if (matrix[i, j] == 0)
                    ok = false;
                if (!ok)
                {
                    //удалить i строку
                    for (int k = i; k < n_str - 1; k++)
                        for (j = 0; j < n_col; j++)
                            matrix[k, j] = matrix[k + 1, j];
                    n_str--;
                }
                else i++;
          }
          if (n_str == 0)
              return true;
          else
              return false;
        }


        public void StrWithSumMax()
        {
            int[] sumMax = new int[n_str];     //массив с набором сумм строк
            int[] ar = new int[n_str];         //массив для каждой строки
            
            //подчет сумм строк
            for(int i = 0; i < n_str; i++)
            {
                for(int j = 0; j < n_str; j++)
                {
                    ar[j] = matrix[i, j]; 
                }

                sumMax[i] = SumInStr(ar);   
            }
            int max = Max(sumMax);    //поиск максимума
            for(int i = n_str-1; i >= 0; i--)        //удаление строк с максимальной суммой
            {
                if(sumMax[i] == max)
                {
                    DelStr(i);
                }
            }
            
        }

        private int SumInStr(int[] ar)       //метод суммы строк
        {
            int s = 0;
            for(int i = 0; i < n_str; i++)
            {
                s += ar[i];
            }
            return s;
        }

        private int Max(int[] ar)  //метод поиск максимума
        {
            int max = ar[0];

            for(int i = 1; i < n_str; i++)
            {
                if(max < ar[i])
                {
                    max = ar[i];
                }
            }
            return max;
        }

        private void DelStr(int i) //метод удаления строки               
        {
            for (int k = i; k < n_str - 1; k++)
                for (int j = 0; j < n_col; j++)
                    matrix[k, j] = matrix[k + 1, j];
            n_str--;
        }
    }
        
}
