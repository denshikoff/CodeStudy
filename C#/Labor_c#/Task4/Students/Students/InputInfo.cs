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
using static System.Convert;

namespace Students
{
    public partial class InputInfo : Form
    {
        private Student student = new Student();
        private Choice choice;
        public InputInfo(Choice choice, Student student = null)
        {
            InitializeComponent();           
            dataGridViewMarks.ColumnCount = 2;
            dataGridViewMarks.RowCount = 40;
            this.choice = choice;
            switch (choice)
            {
                case Choice.ADD:
                    {
                        AddFIO.ReadOnly = false;
                        AddGroup.ReadOnly = false;
                        AddCourse.DropDownStyle = ComboBoxStyle.DropDown;
                        Text = "Add student";
                        break;
                    }
                case Choice.EDIT:
                    {
                        this.student = student;
                        AddFIO.Text = student.Name;
                        AddCourse.Text = student.NumCourse.ToString();
                        AddGroup.Text = student.NumGroup.ToString();
                        dataGridViewMarks.RowCount = student.progress.Length;
                
                        for (int i = 0; i < student.progress.Length; i++)
                        {
                            if (student.progress[i] != null)
                            {
                                dataGridViewMarks.Rows[i].Cells[0].Value = student.progress[i].nameSubject;
                                dataGridViewMarks.Rows[i].Cells[1].Value = student.progress[i].mark;
                            }                        
                        }
                        Text = "Edit student";
                        break;
                    }
                case Choice.SEARCH:
                    {
                        AddFIO.ReadOnly = false;
                        AddGroup.ReadOnly = true;                       
                        AddCourse.DropDownStyle = ComboBoxStyle.DropDownList;
                        Text = "Search student";
                        break;
                    }
            }
        }

       

        public Student getStudent()
        {
            Random random = new Random();
            student.Name = AddFIO.Text;
            student.NumCourse = ToInt32(AddCourse.Text);
            student.NumGroup = ToInt32(AddGroup.Text);
       
            for(int i = 0; i < dataGridViewMarks.RowCount; i++)
            {
                if (dataGridViewMarks.Rows[i].Cells[0].Value != null && dataGridViewMarks.Rows[i].Cells[1].Value != null)
                {
                    student.progress[i] = new Progres();
                    student.progress[i].nameSubject = dataGridViewMarks.Rows[i].Cells[0].Value.ToString().ToLower().Trim();
                    student.progress[i].mark = Convert.ToInt32(dataGridViewMarks.Rows[i].Cells[1].Value.ToString());
                }     
            }
            return student;
        }


        private void button1_Click(object sender, EventArgs e)
        {
            if(AddFIO.Text != "" && AddGroup.Text != "" && AddCourse.Text != "" || choice == Choice.SEARCH )
            {
                this.Close();
            }  else
            {
                MessageBox.Show("Введены не все данные");
            }
        }

        public string getStudentName()
        {
            return AddFIO.Text;     
        }

        private void AddGroup_KeyPress(object sender, KeyPressEventArgs e)
        {
            char number = e.KeyChar;
            if (!Char.IsDigit(number))
                e.Handled = true;
        }

        private void AddFIO_KeyPress(object sender, KeyPressEventArgs e)
        {
            char number = e.KeyChar;
            if (!Char.IsLetter(number))
                e.Handled = true;
        }
    }
}
