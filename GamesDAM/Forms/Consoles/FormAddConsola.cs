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
    public partial class FormAddConsola : Form
    {
        public FormAddConsola()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void AddConsola_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if(!txt_name.Text.Equals(String.Empty) && !txt_description.Text.Equals(String.Empty))
            {
                gamesDAMDataSet.consolasRow rowConsola = gamesDAMDataSet.consolas.NewconsolasRow();
                rowConsola.codigo = txt_name.Text;
                rowConsola.descripcion = txt_description.Text;

                try
                {
                    gamesDAMDataSet.consolas.Rows.Add(rowConsola);
                }
                catch (SqlException ex) 
                {
                    gamesDAMDataSet.RejectChanges();
                
                }
            }
        }
    }
}
