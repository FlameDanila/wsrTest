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
using System.Windows.Shapes;

namespace wipief
{
    /// <summary>
    /// Логика взаимодействия для adminMenu.xaml
    /// </summary>
    public partial class adminMenu : Window
    {
        public adminMenu(string imya)
        {
            InitializeComponent();
            name.Text = $"Добро пожаловать, {imya}";
            update();
        }

        public void update()
        {
            list.ItemsSource = App.dd.users.ToList();
        }

        private void del_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var del = (users)button.DataContext;

            App.dd.users.Remove(del);
            App.dd.SaveChanges();
            update();
        }

        private void del2_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var del = (users)button.DataContext;

            App.dd.users.Remove(del);
            App.dd.SaveChanges();
            update();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }

        private void delete_Click(object sender, RoutedEventArgs e)
        {
            list.Visibility = Visibility.Visible;
            vanish.Visibility = Visibility.Visible;
        }

        private void slejka_Click(object sender, RoutedEventArgs e)
        {
            vanish.Visibility = Visibility.Visible;
        }

        private void data_Click(object sender, RoutedEventArgs e)
        {
            dataList.ItemsSource = App.dd.services.ToList();
            dataList.Visibility = Visibility.Visible;
            vanish.Visibility = Visibility.Visible;
        }

        private void report_Click(object sender, RoutedEventArgs e)
        {
            vanish.Visibility = Visibility.Visible;
        }

        private void vanish_Click(object sender, RoutedEventArgs e)
        {
            list.Visibility = Visibility.Hidden;
            vanish.Visibility = Visibility.Hidden;
            dataList.Visibility = Visibility.Hidden;
        }
    }
}
