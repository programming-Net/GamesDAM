using GamesDAM.Forms.Consoles;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GamesDAM.Forms.Consoles
{
    public partial class FormConsola : Form
    {
        public FormConsola()
        {
            InitializeComponent();
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Btn_new_Click(object sender, EventArgs e)
        {
            FormAddConsola addConsola = new FormAddConsola();
            addConsola.Show();
        }

        private void Consoles_Load(object sender, EventArgs e)
        {
            

        }
    }
}
