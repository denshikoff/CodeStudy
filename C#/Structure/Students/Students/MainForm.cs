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
        private HashTable hashtable;
        private Student student;
        private int row = 0;
      

        public MainForm()  //создание хэштаблицы, элементов формы
        {
            InitializeComponent();
            hashtable = new HashTable(50);            
        }

        private void studentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            form = new OutStudents();            //открытие формы ввода, 
            form.ShowDialog();                                     
            student = form.GetInfo();          //введение данных
            if (hashtable.Add(student))  //добавление в хэштаблицу
            {
                TableStudent.Rows.Add();
                TableStudent[0, row].Value = student.Name;
                TableStudent[1, row].Value = student.Num;
                TableStudent[2, row].Value = Student.countFailMark(student.Exam);
                row++;
            }  else
            {
                MessageBox.Show("Данные не добавлены");
            }
                  
            
        }

        private void addOnForm(int key)         //вывод данных о студенте на форму
        {
            if (hashtable.ContainsKey(key))    //если ключ есть то добавляем
            {
                Student student = hashtable.Find(key);
                TableStudent.Rows.Add();
                TableStudent[0, row].Value = student.Name;
                TableStudent[1, row].Value = student.Num;
                TableStudent[2, row].Value = Student.countFailMark(student.Exam);            
                row++;
            }  else
            {
                MessageBox.Show("Студент не найден");
            }
        }

        private void studentToolStripMenuItem1_Click(object sender, EventArgs e)  //поиск и вывод по студ билету
        {
            EditKey editKey = new EditKey();
            editKey.ShowDialog();
            addOnForm(editKey.getKey());
        }

        private void createFileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            hashtable.HashInputFile(); 
        }

        private void forReadingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormPath formPath = new FormPath();
            formPath.ShowDialog();
            hashtable.HashOutputFile(formPath.getPath());
        }

        private void forWritingToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormPath formPath = new FormPath();
            formPath.ShowDialog();
            hashtable.HashInputFile(formPath.getPath());
        }
    }
}
