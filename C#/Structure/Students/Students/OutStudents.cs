using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Students
{
    public partial class OutStudents : Form
    {

        public OutStudents()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
           if (EditFIO.Text != "" && EditNum.Text != "")
            {
                this.Close();
            }
        }

        public Student GetInfo()
        {
            Hashtable marks = new Hashtable();
            marks.Add(labelMark1.Text, comboBox1.SelectedItem);
            marks.Add(labelMark2.Text, comboBox3.SelectedItem);
            marks.Add(labelMark3.Text, comboBox2.SelectedItem);
            marks.Add(labelMark4.Text, comboBox4.SelectedItem);
            return new Student(EditFIO.Text, Convert.ToInt32(EditNum.Text), marks);
        }
        public int GetKey()
        {
            return Convert.ToInt32(EditNum);
        }

        private void EditFIO_KeyPress(object sender, KeyPressEventArgs e)
        {
            char letter = e.KeyChar;
            if (!Char.IsLetter(letter))
            {
                e.Handled = true;   //если не буква, то необрабатываем(игнорируем)
            } 
        }

        private void EditNum_KeyPress(object sender, KeyPressEventArgs e)
        {
            char number = e.KeyChar;
            if (!Char.IsDigit(number))    //если не цифра, то необрабатываем(игнорируем)
            {
                e.Handled = true;
            } 
        }
    }
}
