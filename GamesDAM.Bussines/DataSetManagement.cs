using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamesDAM.Bussines
{
    public class DataSetManagement
    {
        public static DataSet CreateDataSet(List<string> nomColumnes, List<string[]> dades, string nomTaula) {
            DataSet ds = new DataSet();
            DataTable dt = CreateDataTable(nomColumnes, dades,nomTaula);
            ds.Tables.Add(dt);
            return ds;
        }

        public static DataTable CreateDataTable( List<string> nomColumnes, List<string[]> dades, string nomTaula) {
            DataTable dt = new DataTable(nomTaula);
            nomColumnes.ForEach(x => {
                dt.Columns.Add(x);
            });

            dades.ForEach(x => {
                dt.Rows.Add(x);
            });
            return dt;
        }

        public static DataTable CreateDataTable( IEnumerable<DataRow> dades)
        {
            DataTable dt = new DataTable();
            dades.ToList().ForEach(x => {
                dt.Rows.Add();
            });
            return dt;
        }
    }
}
