using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LopushokApp.Materials.Classes
{
    public class ListProduct
    {
        public int Articul { get; set; }           
        public string NameProduct { get; set; }
        public int IdTypeProduct { get; set; }
        public string TypeProduct { get; set; }
        public string Materials { get; set; }
        public string Price { get; set; }
        public string ImagePath { get; set; } = "/Materials/picture.png";
    }
}
