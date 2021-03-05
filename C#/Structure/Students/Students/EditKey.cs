using System;
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
    public partial class EditKey : Form
    {
        public EditKey()
        {
            InitializeComponent();
        }


        public int getKey()
        { 
            return Convert.ToInt32(EditNumKey.Text);
        }

        private void buttonReadKey_Click(object sender, EventArgs e)
        {
            if (EditNumKey.Text != "")
            {
               this.Close();
            }  
        }

        private void EditNumKey_KeyPress(object sender, KeyPressEventArgs e)
        {
            char number = e.KeyChar;
            if (!Char.IsDigit(number))    //если не цифра, то необрабатываем(игнорируем)
            {
                e.Handled = true;
            }
        }
    }
}
