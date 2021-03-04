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
        public bool DelStr()//true, если результат пустая матрица
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


        public void DelStrWithSumMax()
        {
            int[] sumMax = new int[n_str];
           
            
            for(int i = 0; i < n_str; i++)
            {
                for(int j = 0; j < n_str; j++)
                {
                    sumMax[i] = matrix[i, j]; 
                }

                sumMax[i] = SumInStr(sumMax);
            }
            int max = Max(sumMax);

            for(int i = 0; i < n_str; i++)
        }

        private int SumInStr(int[] ar)
        {
            int s = 0;
            for(int i = 0; i < n_str; i++)
            {
                s += ar[i];
            }
            return s;
        }

        private int Max(int[] ar)
        {
            int max = ar[0];
            for(int i = 1; i < n_str; i++)
            {
                if(max < ar[i])
                {
                    ar[i] = max;
                }
            }
            return max;
        }


    }
        
}
