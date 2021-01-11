using GamesDAM.Bussines.APIs;
using GamesDAM.Helpers;
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
    public enum FormEstat {
       Nou = 0,
       Modificacio = 1
    }


    public partial class FormAddConsola : Form
    {

        IConsolasAPI api;
        DataRow _model;
        FormEstat _estat;


        public FormAddConsola(FormEstat estat, DataRow model)
        {
            InitializeComponent();
            api = ConsolasAPI.GetInstance();
            _estat = estat;
            _model = model;


        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void AddConsola_Load(object sender, EventArgs e)
        {
           this.Name = (_estat is FormEstat.Nou) ? "Incloure Consola": "Modificar Consola";
           omplirCamps();
        }

        private void omplirCamps()
        {
            txt_name.Text = _model.ItemArray[1].ToString();
            txt_description.Text = _model.ItemArray[2].ToString();
        }

        
        private void btn_save_Click(object sender, EventArgs e)
        {
            OmplirModel();
            if (ValidateModel()) {
                MessageHelper.InfoMessage(api.Incloure(_model));
                this.Close();
            }

        }

        private Boolean ValidateModel() {

            Boolean valid = true;
            if (_model.ItemArray[1].Equals(string.Empty))
            {
                errorName.SetError(txt_name, "Has d'introduir un codi per la consola");
                valid = false;
            }
            if (_model.ItemArray[2].Equals(string.Empty))
            {
                errorDescription.SetError(txt_description, "Has d'introduir una descripció per la consola");
                valid = false;
            }
            return valid;
        }

        private void OmplirModel() {

            String[] items = new String[3];
            items[0] = _model.ItemArray[0].ToString();
            items[1] = txt_name.Text.Trim();
            items[2] = txt_description.Text.Trim();
            _model.ItemArray = items;

            //_model.ItemArray[1] = txt_name.Text.Trim(); 
            //_model.ItemArray[2] = txt_description.Text.Trim(); 
        }
    }
}
