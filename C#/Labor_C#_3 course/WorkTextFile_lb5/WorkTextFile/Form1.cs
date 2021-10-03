using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WorkTextFile
{
    public partial class MainForm : Form
    {
        string fileName = "";
        StreamReader f_In;
        public MainForm()
        {
            InitializeComponent();
        }


        private void openFileToolStripMenuItem_Click(object sender, EventArgs e)
        {          
                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    f_In = new StreamReader(openFileDialog1.FileName);
                    in_TextBox.Text = f_In.ReadToEnd();
                    f_In.Close();
                }
            
        }

        private void taskToolStripMenuItem_Click(object sender, EventArgs e)
        {
            StringBuilder str_result = new StringBuilder();
            for (int i = 0; i < in_TextBox.Lines.Length; i++)
            {
                
                if(in_TextBox.Lines[i] != "")
                {
                    str_result.Append(in_TextBox.Lines[i] + "\n");
                }
            }
            out_TextBox.Text = str_result.ToString();
        }

        private void SaveToFile()
        {
            openFileDialog1.ShowDialog();
            fileName = openFileDialog1.FileName;
            StreamWriter f_Out = new StreamWriter(fileName);
            StringBuilder str_result = new StringBuilder();
            for (int i = 0; i < in_TextBox.Lines.Length; i++)
            {

                if (in_TextBox.Lines[i] != "")
                {
                    f_Out.WriteLine(in_TextBox.Lines[i]);
                    str_result.Append(in_TextBox.Lines[i] + "\n");
                }
            }
            out_TextBox.Text = str_result.ToString();
            f_Out.Close();
        }

        private void SaveToFile(string path)
        {
            openFileDialog1.ShowDialog();
            path = openFileDialog1.FileName;
            StreamWriter f_Out = new StreamWriter(path);
            StringBuilder str_result = new StringBuilder();
            for (int i = 0; i < in_TextBox.Lines.Length; i++)
            {

                if (in_TextBox.Lines[i] != "" || IsEmptyOrWhitespace(in_TextBox.Lines[i]))
                {
                    f_Out.WriteLine(in_TextBox.Lines[i]);
                    str_result.Append(in_TextBox.Lines[i] + "\n");
                }
            }
            out_TextBox.Text = str_result.ToString();
            f_Out.Close();
        }


        private bool IsEmptyOrWhitespace(string s)
        {
            if (s == null || s.Length == 0) return true;
            for (int i = 0; i < s.Length; i++) if (!char.IsWhiteSpace(s[i])) return false;
            return true;
        }


        private void saveToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (fileName == "")
            {
                SaveToFile();
            }
            else
            {
                SaveToFile(fileName);
            }
        }

        private void saveASToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveToFile();    
        }

        private void cleanToolStripMenuItem_Click(object sender, EventArgs e)
        {
            out_TextBox.Text = "";
        }
    }
}
