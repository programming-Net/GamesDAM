using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using static GamesDAM.Bussines.GamesDAMDataSet;

namespace GamesDAM.Bussines.APIs
{
    public enum ColumnConsoles { 
    
        Id = 0,
        Code = 1,
        Description = 2

    }


    public interface IConsolasAPI {

        DataRow NovaInstancia();
        string TABLENAME { get;}
        int QuantitatCanvis();
        bool GuardarCanvis();
        DataTable ObtenirTots();
        DataRow ObtenirUna(int id);
        DataTable Seleccionar(string codi, string descripcio);
        List<string> ObtenirNomColumnes();
        string Incloure(DataRow row);
        string Eliminar(int idConsola);
    }
    public class ConsolasAPI : IConsolasAPI
    {

        private static IConsolasAPI IApi;
        private GamesDAMDataSet dataset = new GamesDAMDataSet();
        private GamesDAMDataSetTableAdapters.consolasTableAdapter consolasTableAdapter;
        public readonly string TABLENAME = "consolas";
        
        string IConsolasAPI.TABLENAME { get => TABLENAME;}

        private ConsolasAPI()
        {
            dataset = new GamesDAMDataSet();
            consolasTableAdapter = new GamesDAMDataSetTableAdapters.consolasTableAdapter();
            consolasTableAdapter.Fill(dataset.consolas);
        }

        public static IConsolasAPI GetInstance() {
            if (IApi == null) {
                IApi = new ConsolasAPI();
            }
            return IApi;
        
        }

        public List<string> ObtenirNomColumnes()
        {
            var enumerator = dataset.consolas.Columns.GetEnumerator();
            var list = new List<string>();
            while (enumerator.MoveNext())
            {
                list.Add(enumerator.Current.ToString());
            }
            return list;
        }

        public DataTable ObtenirTots()
        {
            var listData = dataset.consolas.Where(x => x.RowState != DataRowState.Deleted).Select(x => new string[3] { x.id.ToString(), x.codigo, x.descripcion }).ToList();
            var listColumns = ObtenirNomColumnes();
            return DataSetManagement.CreateDataTable(listColumns, listData, TABLENAME);
        }

        public DataTable Seleccionar(string codi, string descripcio)
        {
           var listData2 = dataset.consolas
                            .Where(x => x.codigo.ToLower().Contains(codi.ToLower()) &&
                                       x.descripcion.ToLower().Contains(descripcio.ToLower()) &&
                                       x.RowState != DataRowState.Deleted)
                           .Select(x => new string[3] { x.id.ToString(), x.codigo, x.descripcion })
                           .ToList();
                           
           var listColumns = ObtenirNomColumnes();
           return DataSetManagement.CreateDataTable(listColumns, listData2, TABLENAME);
        }

        public String Incloure(DataRow row)
        {
            try{
                consolasRow consolasRow = null;
                int idConsola = Int16.Parse(row.ItemArray[(int)ColumnConsoles.Id].ToString());
                if (idConsola < 0)
                {
                    consolasRow = dataset.consolas.NewconsolasRow();
                }
                else {
                    consolasRow = dataset.consolas.FindByid(idConsola);
                }
                
                consolasRow.codigo = row.ItemArray[(int)ColumnConsoles.Code].ToString();
                consolasRow.descripcion = row.ItemArray[(int)ColumnConsoles.Description].ToString();
               
                if (idConsola < 0)
                {
                    dataset.consolas.AddconsolasRow(consolasRow);
                }
               
                
                return "La consola amb codi '" + consolasRow.codigo + "' s'ha actualitzat o guardat correctament";
            }
            catch(Exception e) {
                Console.WriteLine(e.Message);
                return "Error: " + e.Message;
            }


        }

        public bool GuardarCanvis()
        {
            try {
                consolasTableAdapter.Update(dataset);
                dataset.AcceptChanges();
                return true;
            }
            catch ( Exception e) {
                dataset.RejectChanges();
                return false;
            }
        }

        public int QuantitatCanvis() {
            if (dataset.HasChanges())
            {
                return dataset.consolas.GetChanges().Rows.Count;
            }
            else 
            {
                return 0;
            }
            
        }

        public DataRow ObtenirUna(int id)
        {
            try
            {
                var listData = dataset.consolas
                            .Where(x => x.id == id &&
                                       x.RowState != DataRowState.Deleted)
                           .Select(x => new string[3] { x.id.ToString(), x.codigo, x.descripcion })
                           .ToList();             
                var listColumns = ObtenirNomColumnes();
                return DataSetManagement.CreateDataTable(listColumns, listData, TABLENAME).Rows[0];
            } catch (Exception e) {
               return NovaInstancia();
            }

        }

        public DataRow NovaInstancia()
        {
            DataRow dt = dataset.consolas.NewRow();
            dt.ItemArray[(int)ColumnConsoles.Id] = "-1";
            return dt;
        }

        public string Eliminar(int idConsola)
        {

            try
            {
                DataRow dataRow = dataset.consolas.Where(x => x.id == idConsola).FirstOrDefault();
                string codiConsola = dataRow.ItemArray[(int)ColumnConsoles.Code].ToString();
                dataRow.Delete();
                return "La consola " + codiConsola + "ha estat borrada correctament";
            }
            catch (Exception e) {
                return "Error: " + e.Message;
            }
        }
    }
}
