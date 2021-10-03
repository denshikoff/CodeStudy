using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WorkMatr
{
    public partial class Form1 : Form
    {
        //6. Удалить строки, сумма элементов которых максимальна
        private int N, M;
        private MatrMake matr;
        
        public Form1()
        {
            InitializeComponent();
        }

        private void EditSize_TextChanged(object sender, EventArgs e)
        {
            //установка размера матрицы и DataGridView
            int i;
            if(EditSizeCol.Text == "")
            {
                N = M = Int32.Parse(EditSizeRow.Text);
            }  else
            {
                M = Int32.Parse(EditSizeCol.Text);
                N = Int32.Parse(EditSizeRow.Text);
            }
           
            DataTable matr = new DataTable("matr");
            DataColumn[] cols = new DataColumn[N];
            for (i = 0; i < M; i++)
            {
                cols[i] = new DataColumn(i.ToString());
                matr.Columns.Add(cols[i]);
            }
            for (i = 0; i < N; i++)
            {
                DataRow newRow;
                newRow = matr.NewRow();
                matr.Rows.Add(newRow);
            }
            dataGridView.DataSource = matr;
            for (i = 0; i < M; i++)
                dataGridView.Columns[i].Width = 50;
            }

        private void button1_Click(object sender, EventArgs e)
        {
            if(N == M)
            {
                matr = new MatrMake(N);
            } else
            {
                matr = new MatrMake(N, M);
            }

               
            matr.GridToMatrix(dataGridView);          
            matr.MatrixToGrid(dataGridView);
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            matr.StrWithSumMax();
            matr.MatrixToGrid(dataGridView);
        }

        private void EditSize_KeyPress(object sender, KeyPressEventArgs e)
        {
            char number = e.KeyChar;
            if (!Char.IsDigit(number))
                e.Handled = true;
        }
    }
}

