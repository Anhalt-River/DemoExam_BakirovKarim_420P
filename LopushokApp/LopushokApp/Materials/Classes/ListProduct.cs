using System.Windows.Media;

namespace LopushokApp.Materials.Classes
{
    public class ListProduct
    {
        public int Articul { get; set; }           
        public string NameProduct { get; set; }
        public int? IdTypeProduct { get; set; }
        public string TypeProduct { get; set; }
        public string Materials { get; set; } = "Материалы:";
        public string Price { get; set; }
        public string ImagePath { get; set; } = "/Materials/picture.png";
        public ImageSource Image { get; set; }
    }
}
