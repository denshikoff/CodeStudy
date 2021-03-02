using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Students
{
    public class Student
    {
        private string editFIO;
        private int editNum;
        private List<int> list;

        public Student(string editFIO, int editNum, List<int> list)
        {
            this.editFIO = editFIO;
            this.editNum = editNum;
            this.list = list;
        }

        public string name { get; set; }
        
        public int num { get; set; }

        List<int> listMark { get; set; }
    }
}
