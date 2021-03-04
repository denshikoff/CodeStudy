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
        public MainForm()
        {
            InitializeComponent();
            hashtable = new Hashtable();
        }

        private void studentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            form = new OutStudents();
            form.ShowDialog();
            student = form.GetInfo();
            hashtable.Add(student.num, student);
            tableStudents
        }
    }
}
