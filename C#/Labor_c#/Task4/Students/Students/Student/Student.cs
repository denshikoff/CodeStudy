using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Students
{
    [Serializable]
    public class Student
    {
        public string Name { get; set; }
        private const int maxSj = 40;
        public int NumCourse { get; set; }
        public int NumGroup { get; set; }
        public Progres[] progress { get; set;} = new Progres[maxSj];       //каждая сессия      

        public Student()
        {

        }

        public Student(string name, int numCourse, int numGroup, Progres[] progress, int numStudent)
        {
            Name = name;
            NumCourse = numCourse;
            NumGroup = numGroup;
            this.progress = progress;
            
        }
    }
}
