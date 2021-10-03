using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Students
{
    public partial class MainForm : Form
    {
        List<Student> students = new List<Student>();
        string PATH = "";
        

        public MainForm()
        {
            InitializeComponent();
        }


        //добавление нового студента
        private void addToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            InputInfo inputInfo = new InputInfo(Choice.ADD);
            inputInfo.ShowDialog();
            students.Add(inputInfo.getStudent());
            Redraw();
        }

        private void Redraw()        //вывод всех студентов
        {
            TableStudent.Rows.Clear();
            List<Student> list = students;
            if (list.Count > 0)
            {
                TableStudent.RowCount = list.Count;
                dataGridViewMarks.ColumnCount = 2;
                for (int i = 0; i < TableStudent.RowCount; i++)
                {
                    TableStudent.Rows[i].Cells[0].Value = list[i].Name;
                    TableStudent.Rows[i].Cells[1].Value = list[i].NumCourse;
                    TableStudent.Rows[i].Cells[2].Value = list[i].NumGroup;
                }
            }
        }      

 

        //сохрание в бинарный файл
        private void SaveToFileBynary()
        {
            saveFileDialog1.ShowDialog();
            PATH = saveFileDialog1.FileName;
            FileStream stream = null;
           try
            {
                stream = File.Open(PATH, FileMode.OpenOrCreate);
                BinaryFormatter formatter = new BinaryFormatter();
                formatter.Serialize(stream, students);
            }
            catch
            {               
                MessageBox.Show("Ошибка ввода файла");
            }
            finally
            {
                if(stream != null)
                {
                    stream.Close();
                } 
            }
            
        }

        private void SaveToFileBynary(string path)
        {
            FileStream stream = null;
            try
            {
                stream = File.Open(PATH, FileMode.OpenOrCreate);
                BinaryFormatter formatter = new BinaryFormatter();
                formatter.Serialize(stream, students);
            }
            catch
            {
                MessageBox.Show("Ошибка ввода файла");
            }
            finally
            {
                if (stream != null)
                {
                    stream.Close();
                }
            }
        }

        private List<Student> OpenFileBynary()
        {
            openFileDialog1.ShowDialog();
            PATH = openFileDialog1.FileName;
            List<Student> students = new List<Student>();
            FileStream stream = null;
            BinaryFormatter formatter = new BinaryFormatter();
            try
            {
                stream = File.OpenRead(PATH);
                students = (List<Student>)formatter.Deserialize(stream);
            }
            catch
            {
                MessageBox.Show("Ошибка файла");
            }
            finally
            {
               if(stream != null) 
                    stream.Close();
            }
            return students;
        }

        private void createFileToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (PATH == "")
            {
                SaveToFileBynary();
            }
            else
            {
                SaveToFileBynary(PATH);
            }
        }

        //открытие бинарного файла
        private void bynaryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            students =  OpenFileBynary();
            Redraw();
        }

        private void saveFileAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveToFileBynary();
        }

        private void taskToolStripMenuItem_Click(object sender, EventArgs e)
        {
            HashSet<string> set = getSubjectGood();
            dataGridViewMarks.Rows.Clear();
            dataGridViewMarks.RowCount = set.Count;
            int i = 0;
            MessageBox.Show("Предметы, по которым нет двоек, представлены в таблице");     
            foreach(string sj in set)
            {
                dataGridViewMarks.Rows[i].Cells[0].Value = sj;
                i++;
            }
        }

        private HashSet<string> getSubjectGood()
        {
            HashSet<string> set = new HashSet<string>();
            HashSet<string> failSet = new HashSet<string>();
                     
            foreach (Student student in students)
            {
                foreach (Progres progres in student.progress)
                {
                    if(progres == null)
                    {
                        break;
                    }
                    if (progres.mark == 2)
                    {
                        failSet.Add(progres.nameSubject);
                    } else
                    {
                        set.Add(progres.nameSubject);
                    }                                                                                     
                }
            }
            set.ExceptWith(failSet);
            return set;
        }


        private string foundName()
        {
            
            InputInfo inputInfo = new InputInfo(Choice.SEARCH);
            inputInfo.ShowDialog();
            return inputInfo.getStudentName();
        }

        private void editToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool search = false;
            string nameStudent = foundName();
            foreach(Student student in students)
            {
                if(student.Name == nameStudent)
                {
                    students.Remove(student);
                    InputInfo inputInfo = new InputInfo(Choice.EDIT, student);
                    inputInfo.ShowDialog();
                    students.Add(inputInfo.getStudent());
                    search = true;
                    break;
                }
            }
            if (!search)
            {
                MessageBox.Show("Студента не найдено");
            }
            Redraw();
        }

        private void deleteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            bool search = false;
            string nameStudent = foundName();
            foreach (Student student in students)
            {
                if (student.Name == nameStudent)
                {
                    students.Remove(student);
                    search = true;
                    break;
                }
            }
            if (!search)
            {
                MessageBox.Show("Студента не найдено");
            }
            Redraw();
        }

        private void marksToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
            bool search = false;
            string nameStudent = foundName();
            foreach (Student student in students)
            {
                if (student.Name == nameStudent)
                {
                    dataGridViewMarks.RowCount = student.progress.Length;
                    MessageBox.Show("Оценки студента с именем " + student.Name);
                    for (int i = 0; i < student.progress.Length; i++)
                    {
                        if (student.progress[i] != null)
                        {
                            dataGridViewMarks.Rows[i].Cells[0].Value = student.progress[i].nameSubject;
                            dataGridViewMarks.Rows[i].Cells[1].Value = student.progress[i].mark;
                        }
                    }
                    search = true;
                }
            }
            if (!search)
            {
                MessageBox.Show("Студента не найдено");
            }
        }
    }
}
