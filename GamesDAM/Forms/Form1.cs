using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using GamesDAM.Forms.Consoles;

namespace GamesDAM.Forms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            
        }

       

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void consolaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FormConsola consola = new FormConsola();
            consola.Show();

        }

        private void sortirToolStripMenuItem_Click(object sender, EventArgs e)
        {


           
                      
            
        }

        private void jocsPerFabToolStripMenuItem_Click(object sender, EventArgs e)
        {
          
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
          
          
        }

        private void jocsPerConsolaToolStripMenuItem_Click(object sender, EventArgs e)
        {
          
        }

        private void sobreAixoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void jocsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }


    }
    
}
