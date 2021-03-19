
namespace WorkMatr
{
    partial class Form1
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.dataGridView = new System.Windows.Forms.DataGridView();
            this.button = new System.Windows.Forms.Button();
            this.EditSizeRow = new System.Windows.Forms.TextBox();
            this.EditSizeCol = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView
            // 
            this.dataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView.Location = new System.Drawing.Point(12, 12);
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.RowHeadersWidth = 62;
            this.dataGridView.RowTemplate.Height = 28;
            this.dataGridView.Size = new System.Drawing.Size(526, 340);
            this.dataGridView.TabIndex = 0;
            // 
            // button
            // 
            this.button.Location = new System.Drawing.Point(276, 360);
            this.button.Name = "button";
            this.button.Size = new System.Drawing.Size(213, 36);
            this.button.TabIndex = 1;
            this.button.Text = "Заполнить матрицу";
            this.button.UseVisualStyleBackColor = true;
            this.button.Click += new System.EventHandler(this.button1_Click);
            // 
            // EditSizeRow
            // 
            this.EditSizeRow.Location = new System.Drawing.Point(35, 370);
            this.EditSizeRow.Name = "EditSizeRow";
            this.EditSizeRow.Size = new System.Drawing.Size(100, 26);
            this.EditSizeRow.TabIndex = 2;
            this.EditSizeRow.TextChanged += new System.EventHandler(this.EditSize_TextChanged);
            this.EditSizeRow.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.EditSize_KeyPress);
            // 
            // EditSizeCol
            // 
            this.EditSizeCol.Location = new System.Drawing.Point(35, 413);
            this.EditSizeCol.Name = "EditSizeCol";
            this.EditSizeCol.Size = new System.Drawing.Size(100, 26);
            this.EditSizeCol.TabIndex = 3;
            this.EditSizeCol.TextChanged += new System.EventHandler(this.EditSize_TextChanged);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(322, 413);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(131, 36);
            this.button1.TabIndex = 4;
            this.button1.Text = "выполнить";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(551, 471);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.EditSizeCol);
            this.Controls.Add(this.EditSizeRow);
            this.Controls.Add(this.button);
            this.Controls.Add(this.dataGridView);
            this.Name = "Form1";
            this.Text = "Работа с матрицами";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView;
        private System.Windows.Forms.Button button;
        private System.Windows.Forms.TextBox EditSizeRow;
        private System.Windows.Forms.TextBox EditSizeCol;
        private System.Windows.Forms.Button button1;
    }
}

