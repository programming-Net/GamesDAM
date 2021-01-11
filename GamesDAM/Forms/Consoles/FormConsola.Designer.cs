namespace GamesDAM.Forms.Consoles
{
    partial class FormConsola
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormConsola));
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.Btn_new = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.btn_guardar = new System.Windows.Forms.ToolStripButton();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.btnSortir = new System.Windows.Forms.ToolStripButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.lbl_description = new System.Windows.Forms.Label();
            this.lbl_name = new System.Windows.Forms.Label();
            this.txt_description = new System.Windows.Forms.TextBox();
            this.txt_name = new System.Windows.Forms.TextBox();
            this.gridConsolas = new System.Windows.Forms.DataGridView();
            this.lbl_name_list = new System.Windows.Forms.Label();
            this.StatusBar = new System.Windows.Forms.StatusStrip();
            this.StatusMessage = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStrip1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridConsolas)).BeginInit();
            this.StatusBar.SuspendLayout();
            this.SuspendLayout();
            // 
            // toolStrip1
            // 
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Btn_new,
            this.toolStripButton1,
            this.btn_guardar,
            this.toolStripSeparator1,
            this.btnSortir});
            this.toolStrip1.Location = new System.Drawing.Point(0, 0);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(1116, 27);
            this.toolStrip1.TabIndex = 0;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // Btn_new
            // 
            this.Btn_new.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.Btn_new.Image = ((System.Drawing.Image)(resources.GetObject("Btn_new.Image")));
            this.Btn_new.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.Btn_new.Name = "Btn_new";
            this.Btn_new.Size = new System.Drawing.Size(29, 24);
            this.Btn_new.Text = "Nova";
            this.Btn_new.Click += new System.EventHandler(this.Btn_new_Click);
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton1.Image = ((System.Drawing.Image)(resources.GetObject("toolStripButton1.Image")));
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(29, 24);
            this.toolStripButton1.Text = "Cercar";
            this.toolStripButton1.Click += new System.EventHandler(this.btn_cercar_Click);
            // 
            // btn_guardar
            // 
            this.btn_guardar.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btn_guardar.Image = ((System.Drawing.Image)(resources.GetObject("btn_guardar.Image")));
            this.btn_guardar.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btn_guardar.Name = "btn_guardar";
            this.btn_guardar.Size = new System.Drawing.Size(29, 24);
            this.btn_guardar.Text = "Guardar";
            this.btn_guardar.Click += new System.EventHandler(this.btn_guardar_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(6, 27);
            // 
            // btnSortir
            // 
            this.btnSortir.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.btnSortir.Image = ((System.Drawing.Image)(resources.GetObject("btnSortir.Image")));
            this.btnSortir.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.btnSortir.Name = "btnSortir";
            this.btnSortir.Size = new System.Drawing.Size(29, 24);
            this.btnSortir.Text = "Tancar";
            this.btnSortir.Click += new System.EventHandler(this.btnSortir_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.Transparent;
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.lbl_description);
            this.groupBox1.Controls.Add(this.lbl_name);
            this.groupBox1.Controls.Add(this.txt_description);
            this.groupBox1.Controls.Add(this.txt_name);
            this.groupBox1.Font = new System.Drawing.Font("Candara", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.ForeColor = System.Drawing.Color.Black;
            this.groupBox1.Location = new System.Drawing.Point(31, 92);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(322, 310);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Cercar";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(170, 247);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(100, 31);
            this.button1.TabIndex = 7;
            this.button1.Text = "Cercar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // lbl_description
            // 
            this.lbl_description.AutoSize = true;
            this.lbl_description.Location = new System.Drawing.Point(26, 119);
            this.lbl_description.Name = "lbl_description";
            this.lbl_description.Size = new System.Drawing.Size(104, 24);
            this.lbl_description.TabIndex = 6;
            this.lbl_description.Text = "Descripció:";
            // 
            // lbl_name
            // 
            this.lbl_name.AutoSize = true;
            this.lbl_name.Location = new System.Drawing.Point(26, 28);
            this.lbl_name.Name = "lbl_name";
            this.lbl_name.Size = new System.Drawing.Size(56, 24);
            this.lbl_name.TabIndex = 5;
            this.lbl_name.Text = "Nom:";
            // 
            // txt_description
            // 
            this.txt_description.Location = new System.Drawing.Point(57, 146);
            this.txt_description.Multiline = true;
            this.txt_description.Name = "txt_description";
            this.txt_description.Size = new System.Drawing.Size(230, 72);
            this.txt_description.TabIndex = 4;
            // 
            // txt_name
            // 
            this.txt_name.Location = new System.Drawing.Point(57, 55);
            this.txt_name.Name = "txt_name";
            this.txt_name.Size = new System.Drawing.Size(230, 32);
            this.txt_name.TabIndex = 3;
            // 
            // gridConsolas
            // 
            this.gridConsolas.AllowUserToAddRows = false;
            this.gridConsolas.AllowUserToDeleteRows = false;
            this.gridConsolas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridConsolas.Location = new System.Drawing.Point(393, 104);
            this.gridConsolas.MultiSelect = false;
            this.gridConsolas.Name = "gridConsolas";
            this.gridConsolas.ReadOnly = true;
            this.gridConsolas.RowHeadersWidth = 51;
            this.gridConsolas.RowTemplate.Height = 24;
            this.gridConsolas.RowTemplate.ReadOnly = true;
            this.gridConsolas.RowTemplate.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.gridConsolas.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.gridConsolas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridConsolas.Size = new System.Drawing.Size(676, 298);
            this.gridConsolas.TabIndex = 3;
            this.gridConsolas.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.gridConsolas_CellClick);
            // 
            // lbl_name_list
            // 
            this.lbl_name_list.AutoSize = true;
            this.lbl_name_list.BackColor = System.Drawing.Color.Transparent;
            this.lbl_name_list.Font = new System.Drawing.Font("Candara", 12F, System.Drawing.FontStyle.Bold);
            this.lbl_name_list.ForeColor = System.Drawing.Color.Black;
            this.lbl_name_list.Location = new System.Drawing.Point(389, 59);
            this.lbl_name_list.Name = "lbl_name_list";
            this.lbl_name_list.Size = new System.Drawing.Size(190, 24);
            this.lbl_name_list.TabIndex = 7;
            this.lbl_name_list.Text = "Consoles disponibles:";
            // 
            // StatusBar
            // 
            this.StatusBar.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.StatusBar.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.StatusMessage});
            this.StatusBar.Location = new System.Drawing.Point(0, 432);
            this.StatusBar.Name = "StatusBar";
            this.StatusBar.Size = new System.Drawing.Size(1116, 26);
            this.StatusBar.TabIndex = 8;
            this.StatusBar.Text = "statusStrip1";
            // 
            // StatusMessage
            // 
            this.StatusMessage.Name = "StatusMessage";
            this.StatusMessage.Size = new System.Drawing.Size(66, 20);
            this.StatusMessage.Text = "Example";
            // 
            // FormConsola
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1116, 458);
            this.Controls.Add(this.StatusBar);
            this.Controls.Add(this.lbl_name_list);
            this.Controls.Add(this.gridConsolas);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.toolStrip1);
            this.DoubleBuffered = true;
            this.ForeColor = System.Drawing.Color.Black;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "FormConsola";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Consoles";
            this.Activated += new System.EventHandler(this.FormConsola_Activated);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormConsola_FormClosing);
            this.Load += new System.EventHandler(this.Consoles_Load);
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridConsolas)).EndInit();
            this.StatusBar.ResumeLayout(false);
            this.StatusBar.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton Btn_new;
        private System.Windows.Forms.ToolStripButton toolStripButton1;
        private System.Windows.Forms.ToolStripButton btn_guardar;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripButton btnSortir;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lbl_description;
        private System.Windows.Forms.Label lbl_name;
        private System.Windows.Forms.TextBox txt_description;
        private System.Windows.Forms.TextBox txt_name;
        private System.Windows.Forms.DataGridView gridConsolas;
        private System.Windows.Forms.Label lbl_name_list;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.StatusStrip StatusBar;
        private System.Windows.Forms.ToolStripStatusLabel StatusMessage;
    }
}