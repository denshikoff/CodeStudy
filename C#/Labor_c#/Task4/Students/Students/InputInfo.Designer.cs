
namespace Students
{
    partial class InputInfo
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.AddFIO = new System.Windows.Forms.TextBox();
            this.AddCourse = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.AddGroup = new System.Windows.Forms.TextBox();
            this.InfoAboutExam = new System.Windows.Forms.Label();
            this.dataGridViewMarks = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewMarks)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(46, 345);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(140, 32);
            this.button1.TabIndex = 0;
            this.button1.Text = "Ввод ";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(61, 70);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(47, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "ФИО";
            // 
            // AddFIO
            // 
            this.AddFIO.Location = new System.Drawing.Point(46, 102);
            this.AddFIO.Name = "AddFIO";
            this.AddFIO.Size = new System.Drawing.Size(195, 26);
            this.AddFIO.TabIndex = 2;
            this.AddFIO.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.AddFIO_KeyPress);
            // 
            // AddCourse
            // 
            this.AddCourse.FormattingEnabled = true;
            this.AddCourse.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4",
            "5",
            "6"});
            this.AddCourse.Location = new System.Drawing.Point(46, 189);
            this.AddCourse.Name = "AddCourse";
            this.AddCourse.Size = new System.Drawing.Size(121, 28);
            this.AddCourse.TabIndex = 3;
            this.AddCourse.Text = "1";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(44, 256);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(61, 20);
            this.label5.TabIndex = 7;
            this.label5.Text = "Группа";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(61, 166);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(43, 20);
            this.label6.TabIndex = 8;
            this.label6.Text = "Курс";
            // 
            // AddGroup
            // 
            this.AddGroup.Location = new System.Drawing.Point(46, 279);
            this.AddGroup.Name = "AddGroup";
            this.AddGroup.Size = new System.Drawing.Size(100, 26);
            this.AddGroup.TabIndex = 9;
            this.AddGroup.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.AddGroup_KeyPress);
            // 
            // InfoAboutExam
            // 
            this.InfoAboutExam.AutoSize = true;
            this.InfoAboutExam.Location = new System.Drawing.Point(273, 180);
            this.InfoAboutExam.Name = "InfoAboutExam";
            this.InfoAboutExam.Size = new System.Drawing.Size(0, 20);
            this.InfoAboutExam.TabIndex = 11;
            // 
            // dataGridViewMarks
            // 
            this.dataGridViewMarks.AllowUserToDeleteRows = false;
            this.dataGridViewMarks.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewMarks.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2});
            this.dataGridViewMarks.Location = new System.Drawing.Point(319, 70);
            this.dataGridViewMarks.Name = "dataGridViewMarks";
            this.dataGridViewMarks.RowHeadersWidth = 62;
            this.dataGridViewMarks.RowTemplate.Height = 28;
            this.dataGridViewMarks.Size = new System.Drawing.Size(514, 359);
            this.dataGridViewMarks.TabIndex = 12;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Предмет";
            this.Column1.MinimumWidth = 8;
            this.Column1.Name = "Column1";
            this.Column1.Width = 150;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Оценка";
            this.Column2.MinimumWidth = 8;
            this.Column2.Name = "Column2";
            this.Column2.Width = 150;
            // 
            // InputInfo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(961, 590);
            this.Controls.Add(this.dataGridViewMarks);
            this.Controls.Add(this.InfoAboutExam);
            this.Controls.Add(this.AddGroup);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.AddCourse);
            this.Controls.Add(this.AddFIO);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Name = "InputInfo";
            this.Text = "Ввод данных";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewMarks)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox AddFIO;
        private System.Windows.Forms.ComboBox AddCourse;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox AddGroup;
        private System.Windows.Forms.Label InfoAboutExam;
        private System.Windows.Forms.DataGridView dataGridViewMarks;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
    }
}