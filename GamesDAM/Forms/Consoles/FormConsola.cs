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
using GamesDAM;
using GamesDAM.Bussines;
using GamesDAM.Bussines.APIs;
using GamesDAM.Helpers;

namespace GamesDAM.Forms.Consoles
{
    public partial class FormConsola : Form
    {

        IConsolasAPI api;
        Boolean closeForm;
        Boolean activated;

        public FormConsola()
        {
            InitializeComponent();
            api = ConsolasAPI.GetInstance();
            closeForm = false;
            activated = false;
        }

        private void Btn_new_Click(object sender, EventArgs e)
        {
            ObrirFormAddConsola(FormEstat.Nou, api.NovaInstancia());
        }

        private void Consoles_Load(object sender, EventArgs e)
        {
            gridConsolas.LoadData(api.ObtenirTots());
        }

        private void cercar() {
            string codi = txt_name.Text.Trim();
            string descripcio = txt_description.Text.Trim();

            if (codi.Equals(string.Empty) && descripcio.Equals(string.Empty))
            {
                gridConsolas.LoadData(api.ObtenirTots());
            }
            else
            {
                gridConsolas.LoadData(api.Seleccionar(txt_name.Text, txt_description.Text));
            } 
        }

        private void btn_cercar_Click(object sender, EventArgs e)
        {
            cercar();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cercar();
        }

        private void FormConsola_Activated(object sender, EventArgs e)
        {
            if (activated)
            {
                gridConsolas.LoadData(api.ObtenirTots());
                updateStatusBar();
                activated = false;
            }
        }

        private void btn_guardar_Click(object sender, EventArgs e)
        {
            if (MessageHelper.QuestionMessage("Estas segur que vols guardar els canvis?"))
            {
                if (api.GuardarCanvis())
                {
                    MessageHelper.InfoMessage("Tota la informació modifciada ha estat guardar al sistema.");
                }
                else 
                {
                    MessageHelper.ErrorMessage("Hi ha hagut un error durant el process de guardar, " +
                                               "Les modificacions no han estat salvades");
                }
                updateStatusBar();
            }
        }

        private void updateStatusBar() 
        {
            StatusMessage.Text = "Linies modificades per guardar: " + api.QuantitatCanvis();
        }

        private void btnSortir_Click(object sender, EventArgs e)
        {
            if (formTancar())
            {
                this.closeForm = true;
                this.Close();
            }
        }

        private void FormConsola_FormClosing(object sender, FormClosingEventArgs e)
        {

            if (!closeForm)
            {
                if (!formTancar()) {
                    e.Cancel = true;
                }
            }
           
        }


        private bool formTancar() {
            Boolean sortir = true;
            if (api.QuantitatCanvis()>0)
            {
                bool resposta = MessageHelper.StandardMessage("Estas segur que vols sortir sense guardar els canvis actuals?", "Sortir", MessageBoxIcon.Information);
            }
            return sortir;
        }

        private void gridConsolas_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int id = Int16.Parse(gridConsolas.Rows[e.RowIndex].Cells[0].Value.ToString());
            if (e.ColumnIndex == 3) {

                ObrirFormAddConsola(FormEstat.Modificacio, api.ObtenirUna(id));
            }

            if (e.ColumnIndex == 4) { 
                string codiConsola = gridConsolas.Rows[e.RowIndex].Cells[1].Value.ToString();
                if (MessageHelper.QuestionMessage("Vols eliminar la consola:" + codiConsola + "?")) {
                    this.activated = true;
                    MessageHelper.InfoMessage(api.Eliminar(id));
                    
                }
            }
           
        }

        private void ObrirFormAddConsola(FormEstat estat, DataRow linia) {
            activated = true;
            FormAddConsola addConsola = new FormAddConsola(estat, linia);
            addConsola.Show();
        }
    }
}
