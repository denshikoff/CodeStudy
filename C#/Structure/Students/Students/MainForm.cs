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
    public partial class MainForm : System.Windows.Forms.Form
    {
        private OutStudents form;
        private Hashtable hashtable;
        private Student student;

        public MainForm()  //создание хэштаблицы, элементов формы
        {
            InitializeComponent();
            hashtable = new Hashtable();
            ListStudent.Lines = new string[20];
        }

        private void studentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            form = new OutStudents();            //открытие формы ввода, 
            form.ShowDialog();                                     
            student = form.GetInfo();          //введение данных
            hashtable.Add(student.num, student);  //добавление в хэштаблицу
        }

        private void addOnForm(int key)         //вывод данных о студенте на форму
        {
            if (hashtable.ContainsKey(key))
            {
               ListStudent.Text = hashtable[key].ToString();
            }  else
            {
               ListStudent.Text = "Студента не найдено"; 
            }
                       
        }

        private void studentToolStripMenuItem1_Click(object sender, EventArgs e)  //поиск и вывод по студ билету
        {
            EditKey editKey = new EditKey();
            editKey.ShowDialog();
            addOnForm(editKey.getKey());
        }

    }
}
