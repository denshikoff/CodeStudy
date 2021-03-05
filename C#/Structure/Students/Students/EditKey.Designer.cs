
namespace Students
{
    partial class EditKey
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
            this.buttonReadKey = new System.Windows.Forms.Button();
            this.EditNumKey = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // buttonReadKey
            // 
            this.buttonReadKey.Location = new System.Drawing.Point(80, 122);
            this.buttonReadKey.Name = "buttonReadKey";
            this.buttonReadKey.Size = new System.Drawing.Size(113, 30);
            this.buttonReadKey.TabIndex = 0;
            this.buttonReadKey.Text = "Найти";
            this.buttonReadKey.UseVisualStyleBackColor = true;
            this.buttonReadKey.Click += new System.EventHandler(this.buttonReadKey_Click);
            // 
            // EditNumKey
            // 
            this.EditNumKey.Location = new System.Drawing.Point(53, 67);
            this.EditNumKey.Name = "EditNumKey";
            this.EditNumKey.Size = new System.Drawing.Size(166, 26);
            this.EditNumKey.TabIndex = 1;
            this.EditNumKey.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.EditNumKey_KeyPress);
            // 
            // EditKey
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(303, 209);
            this.ControlBox = false;
            this.Controls.Add(this.EditNumKey);
            this.Controls.Add(this.buttonReadKey);
            this.Name = "EditKey";
            this.Text = "Ввод номера студбилета";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button buttonReadKey;
        private System.Windows.Forms.TextBox EditNumKey;
    }
}