using LopushokApp.AppData;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using LopushokApp.Materials.Classes;
using System.Windows.Media.Media3D;
using System.IO;

namespace LopushokApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для ProductListPage.xaml
    /// </summary>
    public partial class ProductListPage : Page
    {
        public ProductListPage()
        {
            InitializeComponent();
            ListRemake();
        }

        List<ListProduct> all_products;
        private void ListRemake()
        {
            all_products = new List<ListProduct>();

            var row_products = App.Connection.Products.ToList();
            foreach (var row_prod in row_products)
            {
                ListProduct new_prod = new ListProduct();
                new_prod.Articul = row_prod.Articul_Product;
                new_prod.NameProduct = row_prod.Name_Product;

                if (row_prod.Id_TypeProduct != null)
                {
                    new_prod.IdTypeProduct = row_prod.Id_TypeProduct;
                    var TypeProduct = App.Connection.Type_Product.
                        Where(x=> x.Id_TypeProduct == new_prod.IdTypeProduct).
                        FirstOrDefault();
                    new_prod.TypeProduct = TypeProduct.Name_TypeProduct;
                }

                var search_allMaterials = App.Connection.ProductMaterial.
                    Where(x=> x.Articul_Product == new_prod.Articul).ToList();
                double? final_price = 0;
                foreach (var material in search_allMaterials)
                {
                    int? count_materials = material.Count_Material;
                    if (count_materials != null && count_materials != 0)
                    {
                        var search_material = App.Connection.Materials.
                            Where(x=> x.Id_Material == material.Id_Material).
                            FirstOrDefault();
                        new_prod.Materials += $"{search_material.Name_Material}, ";

                        double? price_for_one = search_material.Price;

                        if (price_for_one != null && price_for_one != 0)
                        {
                            final_price += price_for_one * count_materials;
                        }
                    }
                }
                new_prod.Price = final_price.ToString();

                if (row_prod.Image != "нет")
                {
                    string take_path = row_prod.Image;
                    new_prod.ImagePath = $"/Materials/Products/{take_path}";
                }

                new_prod.Image = new BitmapImage(new Uri($"pack://application:,,,{new_prod.ImagePath}"));



                all_products.Add(new_prod);
            }

            ProductsList.ItemsSource = all_products;
        }

        private void SearchBox_MouseEnter(object sender, MouseEventArgs e)
        {
            if (SearchBox.Text.Length == 0)
            {
                SearchBox.Text = "Введите для поиска";
            }

            if (SearchBox.Text == "Введите для поиска")
            {
                SearchBox.Text = "";
            }
        }

        private void SearchBox_MouseLeave(object sender, MouseEventArgs e)
        {
            if (SearchBox.Text.Length == 0)
            {
                SearchBox.Text = "Введите для поиска";
            }
        }

        private void SearchBox_TextChanged(object sender, TextChangedEventArgs e)
        {

            /*List<ListProduct> new_list = new List<ListProduct>();
            foreach (var product in all_products)
            {
                if (product.NameProduct.Contains(SearchBox.Text))
                {
                    new_list.Add(product);
                }
            }

            all_products.Clear();
            all_products = new_list;
            ProductsList.ItemsSource = null;
            ProductsList.ItemsSource = all_products;*/
        }

        //Переработчик для фильтрации и поиска
        private void ListRemake(string search_text)
        {
            all_products = new List<ListProduct>();

            var row_products = App.Connection.Products.Where(x=> x.Name_Product.Contains(search_text)).ToList();
            foreach (var row_prod in row_products)
            {
                ListProduct new_prod = new ListProduct();
                new_prod.Articul = row_prod.Articul_Product;
                new_prod.NameProduct = row_prod.Name_Product;

                if (row_prod.Id_TypeProduct != null)
                {
                    new_prod.IdTypeProduct = row_prod.Id_TypeProduct;
                    var TypeProduct = App.Connection.Type_Product.
                        Where(x => x.Id_TypeProduct == new_prod.IdTypeProduct).
                        FirstOrDefault();
                    new_prod.TypeProduct = TypeProduct.Name_TypeProduct;
                }

                var search_allMaterials = App.Connection.ProductMaterial.
                    Where(x => x.Articul_Product == new_prod.Articul).ToList();
                double? final_price = 0;
                foreach (var material in search_allMaterials)
                {
                    int? count_materials = material.Count_Material;
                    if (count_materials != null && count_materials != 0)
                    {
                        var search_material = App.Connection.Materials.
                            Where(x => x.Id_Material == material.Id_Material).
                            FirstOrDefault();
                        new_prod.Materials += $"{search_material.Name_Material}, ";

                        double? price_for_one = search_material.Price;

                        if (price_for_one != null && price_for_one != 0)
                        {
                            final_price += price_for_one * count_materials;
                        }
                    }
                }
                new_prod.Price = final_price.ToString();

                if (row_prod.Image != "нет")
                {
                    string take_path = row_prod.Image;
                    new_prod.ImagePath = $"/Materials/Products/{take_path}";
                }

                new_prod.Image = new BitmapImage(new Uri($"pack://application:,,,{new_prod.ImagePath}"));



                all_products.Add(new_prod);
            }

            ProductsList.ItemsSource = all_products;
        }

        private void SearchBox_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (SearchBox.Text.Length == 0)
            {
                SearchBox.Text = "Введите для поиска";
                return;
            }

            if (SearchBox.Text == "Введите для поиска")
            {
                SearchBox.Text = "";
                return;
            }

            ListRemake(SearchBox.Text);
        }
    }
}
