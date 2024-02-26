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
            BasicLoader();
        }

        private void BasicLoader()
        {

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
    }
}
