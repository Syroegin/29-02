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
using Air.Entity;
using Air.Classes;

namespace Air.Page
{
    /// <summary>
    /// Логика взаимодействия для Menu.xaml
    /// </summary>
    public partial class Menu : Page
    {
        public Menu()
        {
            InitializeComponent();
        }
        private void BtnMoveFirst_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new FirstPage());
        }
        private void BtnMoveSecond_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new SecondPage());
        }
        private void BtnMoveThird_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new ThirdPage());
        }
        private void BtnMoveFor_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new ForPage());
        }
        private void BtnMoveFive_OnClick(object sender, RoutedEventArgs e)
        {
            Manager.MainFrame.Navigate(new FivePage());
        }

    }
    }
}
