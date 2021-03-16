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
        private int N;
        public Form1()
        {
            InitializeComponent();
        }

        private void EditSize_TextChanged(object sender, EventArgs e)
        {
            //установка размера матрицы и DataGridView
            int i;
            N = Int32.Parse(EditSize.Text);
            DataTable matr = new DataTable("matr");
            DataColumn[] cols = new DataColumn[N];
            for (i = 0; i < N; i++)
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
            for (i = 0; i < N; i++)
                dataGridView.Columns[i].Width = 50;
            }

        private void button1_Click(object sender, EventArgs e)
        {
           
            MatrMake matr = new MatrMake(N);
            matr.GridToMatrix(dataGridView);
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

