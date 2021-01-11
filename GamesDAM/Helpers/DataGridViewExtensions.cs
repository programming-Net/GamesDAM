using GamesDAM.Bussines;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GamesDAM.Helpers
{
    public enum ColumnNamesManagement { 
        Modificar = 1,
        Eliminar = 2
    }


    public static class DataGridViewExtensions
    {
        public static DataGridView GridConsolas(this DataGridView dataGrid) {
            int width = dataGrid.Width/10;
            dataGrid.Columns[0].Visible = false;
            //dataGrid.Columns[0].Width = ;
            dataGrid.Columns[1].Width = width + (width / 2);
            dataGrid.Columns[2].Width = (width * 5);
            dataGrid.Columns[3].Width = width + (width / 2) ;
            dataGrid.Columns[4].Width = width + 4;
            return dataGrid;
        }

        public static DataGridView addColumnButton(this DataGridView dataGrid, string NameButton) {
            DataGridViewButtonColumn btnColumn = new DataGridViewButtonColumn();
            btnColumn.Name = "";
            btnColumn.Text = NameButton;
            btnColumn.UseColumnTextForButtonValue = true;
            dataGrid.Columns.Add(btnColumn);
            return dataGrid;
        }

        public static DataGridView ClearColumns(this DataGridView dataGrid)
        {
            if(dataGrid.Columns.Count > 0){
                dataGrid.Columns.Clear();
            }
            return dataGrid;
        }

        public static DataGridView LoadData(this DataGridView dataGrid, DataTable dades) {
            dataGrid.ClearColumns();
            BindingSource bs = new BindingSource();
            bs.DataSource = dades;
            dataGrid.DataSource = bs;
            dataGrid.addColumnButton("Modificar").addColumnButton("Eliminar").GridConsolas();
            dataGrid.ClearSelection();


            return dataGrid;
        }
    }
}
