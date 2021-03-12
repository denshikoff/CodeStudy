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
       
        

        public Student(string editFIO, int editNum, Hashtable hash)
        {
            Name = editFIO;
            Num = editNum;
            Exam = hash;
        }

        public string Name { get; set; }
        
        public int Num { get; set; }

        public Hashtable Exam { get; set; }
      
        public static int countFailMark(Hashtable mark)
        {
            int count = 0;
            foreach (DictionaryEntry de in mark)
            {
                if (de.Value.ToString() == "2")
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
