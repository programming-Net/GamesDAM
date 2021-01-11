using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GamesDAM.Bussines.APIs
{
    public class ModelData
    {
        public List<string[]> dades { get; set; }
        public List<string> nomColumnes { get; set; }
        public string nomTaula { get; set; }

        public static ModelData createModelData(List<string[]> dades, List<string> nomColumnes, string nomTaula) {
            ModelData md = new ModelData();
            md.dades = dades;
            md.nomColumnes = nomColumnes;
            md.nomTaula = nomTaula;
            return md;
        }
    }
}
