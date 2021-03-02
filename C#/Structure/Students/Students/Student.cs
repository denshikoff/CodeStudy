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
        private TextBox editFIO;
        private TextBox editNum;
        private List<int> list;

        public Student(TextBox editFIO, TextBox editNum, List<int> list)
        {
            this.editFIO = editFIO;
            this.editNum = editNum;
            this.list = list;
        }

        Student(string name, int num, List<int> list)
        {
            this.name = name;
            this.num = num;
            this.listMark = list;
        }
        public string name { get; set; }
        
        public int num { get; set; }

        List<int> listMark { get; set; }
    }
}
