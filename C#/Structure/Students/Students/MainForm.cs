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
        private Form form;
        private Hashtable hashtable;
        public MainForm()
        {
            InitializeComponent();
        }

        private void studentToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form form = new OutStudents();
            form.ShowDialog();
        }
    }
}
