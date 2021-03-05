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
            name = editFIO;
            num = editNum;
            exam = hash;
        }

        public string name { get; set; }
        
        public int num { get; set; }

        private Hashtable exam { get; set; }

        public override string ToString()
        {
            return name + " Номер студбилета:" + num + " Последняя сессия:" + toStringFromHash(exam) + 
                " Количество несданных работ:" + countFailMark(exam);
        }

        private string toStringFromHash(Hashtable hashtable)
        {
            string s = "";
            foreach(DictionaryEntry de in exam)
            {
                s += de.Key.ToString() + " " + de.Value.ToString()  + ", ";
            }
            return s;
        }


        private int countFailMark(Hashtable mark)
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
    }
}
