using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace Students
{
    public class Student
    {
        public Student(string editFIO, int editNum, ArrayList list)
        {
            Name = editFIO;
            Num = editNum;
            Exam = list;
        }
        public Student()
        {
            
        }

        public string Name { get; set; }
        
        public int Num { get; set; }

        public ArrayList Exam { get; set; }
      
        public static int countFailMark(ArrayList mark)
        {
            int count = 0;
            foreach(object i in mark)
            {
                if (i.ToString() == "2")
                {
                    count++;
                }
            }
            return count;
        }

        public override string ToString()
        {
            return Name + " " + Num + " " + countFailMark(Exam);
        }
    }
}
