using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Tusk1
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }                           

        private void ClickForm(object sender, EventArgs e)
        {
            List<Icon> list = new List<Icon>();
            Random rnd = new Random();
            list.Add(new Icon("icon1.ico"));
            list.Add(new Icon("icon2.ico"));
            list.Add(new Icon("icon3.ico"));
            list.Add(new Icon("icon4.ico"));
            int i = rnd.Next(0, 4);
            this.Icon = list[i];
            switch (i)
            {
                case 0: this.Text = "icon1";
                    break;
                case 1: this.Text = "icon2";
                    break;
                case 2: this.Text = "icon3";
                    break;
                case 3:
                    this.Text = "icon4";
                    break;
            }
        }
    }
}
