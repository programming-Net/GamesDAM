namespace GamesDAM.Forms
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.dadesMestresToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.consolaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.sortirToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.conusltesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.jocsPerFabToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.jocsPerConsolaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.BackColor = System.Drawing.Color.Azure;
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dadesMestresToolStripMenuItem,
            this.conusltesToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1736, 28);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // dadesMestresToolStripMenuItem
            // 
            this.dadesMestresToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.consolaToolStripMenuItem,
            this.toolStripSeparator1,
            this.sortirToolStripMenuItem});
            this.dadesMestresToolStripMenuItem.Name = "dadesMestresToolStripMenuItem";
            this.dadesMestresToolStripMenuItem.Size = new System.Drawing.Size(120, 24);
            this.dadesMestresToolStripMenuItem.Text = "Dades Mestres";
            // 
            // consolaToolStripMenuItem
            // 
            this.consolaToolStripMenuItem.Name = "consolaToolStripMenuItem";
            this.consolaToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.C)));
            this.consolaToolStripMenuItem.Size = new System.Drawing.Size(196, 26);
            this.consolaToolStripMenuItem.Text = "Consola";
            this.consolaToolStripMenuItem.Click += new System.EventHandler(this.consolaToolStripMenuItem_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(193, 6);
            // 
            // sortirToolStripMenuItem
            // 
            this.sortirToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("sortirToolStripMenuItem.Image")));
            this.sortirToolStripMenuItem.Name = "sortirToolStripMenuItem";
            this.sortirToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.S)));
            this.sortirToolStripMenuItem.Size = new System.Drawing.Size(196, 26);
            this.sortirToolStripMenuItem.Text = "Sortir";
            this.sortirToolStripMenuItem.Click += new System.EventHandler(this.sortirToolStripMenuItem_Click);
            // 
            // conusltesToolStripMenuItem
            // 
            this.conusltesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.jocsPerFabToolStripMenuItem,
            this.jocsPerConsolaToolStripMenuItem});
            this.conusltesToolStripMenuItem.Name = "conusltesToolStripMenuItem";
            this.conusltesToolStripMenuItem.Size = new System.Drawing.Size(86, 24);
            this.conusltesToolStripMenuItem.Text = "Consultes";
            // 
            // jocsPerFabToolStripMenuItem
            // 
            this.jocsPerFabToolStripMenuItem.Name = "jocsPerFabToolStripMenuItem";
            this.jocsPerFabToolStripMenuItem.Size = new System.Drawing.Size(208, 26);
            this.jocsPerFabToolStripMenuItem.Text = "Jocs per fabricant";
            this.jocsPerFabToolStripMenuItem.Click += new System.EventHandler(this.jocsPerFabToolStripMenuItem_Click);
            // 
            // jocsPerConsolaToolStripMenuItem
            // 
            this.jocsPerConsolaToolStripMenuItem.Name = "jocsPerConsolaToolStripMenuItem";
            this.jocsPerConsolaToolStripMenuItem.Size = new System.Drawing.Size(208, 26);
            this.jocsPerConsolaToolStripMenuItem.Text = "Jocs per consola";
            this.jocsPerConsolaToolStripMenuItem.Click += new System.EventHandler(this.jocsPerConsolaToolStripMenuItem_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1736, 630);
            this.Controls.Add(this.menuStrip1);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form1";
            this.Text = "Tenda Jocs";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem dadesMestresToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consolaToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem sortirToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem conusltesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem jocsPerConsolaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem jocsPerFabToolStripMenuItem;
    }
}

