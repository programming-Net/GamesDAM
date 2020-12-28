using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TendaJocs.juegosDAMDataSetTableAdapters;

namespace TendaJocs
{
    static class ConecBd
    {
        private static void reiniciar_filter() {

        }

        public static String consulta(String codi, String descripcio, BindingSource bs) {
            if (!codi.Equals("") && !descripcio.Equals("")) {
                return "Per buscar nomes es necesari omplir un camp, no els dos!";
            }

            if (!codi.Equals("") && descripcio.Equals(""))
            {
                buidar_filter(bs);
                bs.Filter = String.Format("codigo='{0}'", codi);
                return "";
            }

            if (!codi.Equals("") && descripcio.Equals(""))
            {
                buidar_filter(bs);
                bs.Filter = String.Format("codigo='{0}'", codi);
                return "";
            }

            if (codi.Equals("") && !descripcio.Equals(""))
            {
                buidar_filter(bs);
                bs.Filter = String.Format("descripcion like '%{0}%'", descripcio);
                return "";
            }

            if (codi.Equals("") && descripcio.Equals(""))
            {
                buidar_filter(bs);
                return "";
            }
            return "";
        }

        public static void cerca(String codi, String descripcio, BindingSource bs) {

            buidar_filter(bs);
            bs.Filter = String.Format("codigo='{0}'", codi);

        }

        private static void buidar_filter(BindingSource bs) {
            bs.RemoveFilter();
        }

        public static String insert(String codi, String Desc, BindingSource bs, juegosDAMDataSet jd, consolasTableAdapter ta) {

            String mst = "";

            //BindingSource newbs = bs;
            juegosDAMDataSet.consolasRow new_consola = jd.consolas.NewconsolasRow();
            new_consola.codigo = codi;
            new_consola.descripcion = Desc;
            //Missatge.missatge_informacio(mst + "1");
            try
            {
                jd.consolas.Rows.Add(new_consola);
                ta.Update(jd);
                jd.AcceptChanges();

            }
            catch (SqlException ex)
            {
                mst = Error(ex);
                jd.RejectChanges();
            }

            return mst;

        }

        public static void delete(juegosDAMDataSet jd, consolasTableAdapter ta) {
            try
            {
                ta.Update(jd);
            }
            catch (SqlException ex)
            {
                Missatge.missatge_error(ConecBd.Error(ex));
            }

        }

        public static String Error(SqlException sqlEx)
        {

            String mensaje = "";

            switch (sqlEx.Number)
            {

                case 547:
                    mensaje = sqlEx.Number + " - No s'ha pogut fer lacció per que hi han dades relacionades.";
                    break;

                case 2627:
                    mensaje = sqlEx.Number + " - L'element introduit ja qexisteix en la base de dades. Siusplau canvieu el nom.";
                    break;

                default:
                    mensaje = "Numero de error: " + sqlEx.Number + "; Error: " + sqlEx.Message;
                    break;
            }

            return mensaje;

        }

        public static void act_grid(juegosDAMDataSet jd, consolasTableAdapter ta) {
            ta.Fill(jd.consolas);
        }

        public static juegosDAMDataSet.juegosRow buscar_joc(int id, BindingSource bs, juegosDAMDataSet jd, juegosTableAdapter ta) {
            juegosDAMDataSet.juegosRow joc = null;
            joc = jd.juegos.FindByid(id);
            String image = joc.image.ToString();

            joc.image = (String)joc.image;
            return joc;
        }

        public static void cercar_id(int id, BindingSource bs) {
            //buidar_filter(bs);
            bs.Filter = String.Format("id={0}", id);
        }

        public static List<int> jocxconsola(int id, juegosDAMDataSet jd_jue_con) {


            List<int> ids = new List<int>();

            for (int i = 0; i < jd_jue_con.jue_consola.Count; i++) {
                // var jue = jd_jue_con.jue_consola.Rows;
                if ((int)jd_jue_con.jue_consola.Rows[i].ItemArray[0] == id) {
                    ids.Add((int)jd_jue_con.jue_consola.Rows[i].ItemArray[1]);
                }

            }

            return ids;
        }

        public static bool omplirjocs(List<int> ids, BindingSource bs)
        {

            if (ids.Count > 0)
            {

                String consulta = "id In(";

                foreach (int num in ids)
                {
                    consulta = consulta + num + ",";
                }

                consulta = consulta + ")";


                buidar_filter(bs);
                bs.Filter = String.Format(consulta);

                return false;

            }
            else {
                buidar_filter(bs);

                return true;
            }

        }

        public static juegosDAMDataSet.juegosRow crear_obj_joc(Joc j, juegosDAMDataSet jd) {
            juegosDAMDataSet.juegosRow joc = jd.juegos.NewjuegosRow();
            joc.titulo = j.titol;
            joc.descripcion = j.descripcio;
            joc.id_edad = j.edat;
            joc.id_fabricante = j.fabricant;
            if (j.url == null)
            {
                joc.image = null;
            }
            else
            {
                joc.image = j.url[2];
            }
            //joc.image = j.url[2];
            joc.precio = j.preu;
            joc.en_linea = j.online;
            return joc;
        }

        public static String alta_joc(String[] urls, BindingSource bs, juegosDAMDataSet jd, juegosTableAdapter ta, juegosDAMDataSet.juegosRow joc) {

            //guarda imatge
            if (urls != null)
            {

                PictureBox jn = new PictureBox();
                jn.Image = (Bitmap)Image.FromFile(urls[0]);
                jn.Image.Save(urls[1]);

            }
            else {
                joc.image = null;
            }


            String mst = "";

            jd.juegos.AddjuegosRow(joc);

            try
            {
                // jd.juegos.AddjuegosRow(joc);
                ta.Update(jd);
                jd.AcceptChanges();
            }
            catch (SqlException ex)
            {
                mst = Error(ex);
                jd.RejectChanges();
            }

            return mst;

        }

        public static String alta_joc_consoles(List<int> id_consoles, BindingSource bs, juegosDAMDataSet jd, jue_consolaTableAdapter ta, juegosDAMDataSet.juegosRow joc)
        {

            String mst = "";

            

            for (int i = 0; i < id_consoles.Count; i++)
            {
                juegosDAMDataSet.jue_consolaRow joc_consola = jd.jue_consola.Newjue_consolaRow();
                joc_consola.id_consola = id_consoles[i];
                joc_consola.id_juego = joc.id;
                jd.jue_consola.Addjue_consolaRow(joc_consola);
            }

            try
            {
                ta.Update(jd);
                jd.AcceptChanges();
            }
            catch (SqlException ex)
            {
                mst = Error(ex);
                jd.RejectChanges();
            }

            return mst;

        }
        public static String alta_joc_genere(int id_genere, BindingSource bs, juegosDAMDataSet jd, jue_generoTableAdapter ta, juegosDAMDataSet.juegosRow joc)
        {
            String mst = "";

            juegosDAMDataSet.jue_generoRow joc_genere= jd.jue_genero.Newjue_generoRow();

            joc_genere.id_genero = id_genere;
            joc_genere.id_juego = joc.id;

            try
            {
                jd.jue_genero.Addjue_generoRow(joc_genere);
                ta.Update(jd);
                jd.AcceptChanges();
            }
            catch (SqlException ex)
            {
                mst = Error(ex);
                jd.RejectChanges();
            }

            return mst;

        }

    }
}

