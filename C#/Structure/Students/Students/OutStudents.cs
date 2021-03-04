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
            List<int> list = new List<int>();
            list.Add(Convert.ToInt32(comboBox1.Text));
            list.Add(Convert.ToInt32(comboBox2.Text));
            list.Add(Convert.ToInt32(comboBox3.Text));
            list.Add(Convert.ToInt32(comboBox4.Text));
            return new Student(EditFIO.Text, Convert.ToInt32(EditNum.Text), list);
        }
        public int GetKey()
        {
            return Convert.ToInt32(EditNum);
        }
    }
}
