using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Web;
using System.Web.Services.Description;
using System.Windows;
using System.Net;
using System.IO;
using System.Threading.Tasks;

namespace wipief
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            string imya = "";
            DoctorMenu doctorMenu = new DoctorMenu(imya);
            doctorMenu.Show();
            Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            List<users> logMass = App.dd.users.ToList();

            string namesStr = "";
            string passStr = "";
            string logStr = "";
            string typeStr = "";

            foreach (var i in logMass)
            {
                namesStr += i.name + ",";
            }

            foreach (var i in logMass)
            {
                passStr += i.password + ",";
            }

            foreach (var i in logMass)
            {
                logStr += i.login + ",";
            }

            foreach (var i in logMass)
            {
                typeStr += i.type + ",";
            }

            string[] imyaMass = namesStr.Split(',');
            string[] passMass = passStr.Split(',');
            string[] loginMass = logStr.Split(',');
            string[] typeMass = typeStr.Split(',');

            for (int i = 0; i < App.dd.users.Count(); i++)
            {
                if (loginMass[i] == login.Text)
                {

                    MyPasswordBox.Visibility = Visibility.Collapsed;
                    password.Visibility = Visibility.Visible;
                    password.Text = MyPasswordBox.Password;

                    if (passMass[i] == password.Text)
                    {
                        if (Convert.ToInt32(typeMass[i]) == 1)
                        {
                            adminMenu adminMenu = new adminMenu(imyaMass[i]);
                            adminMenu.Show();
                            Close();
                            break;
                        }
                        else if (Convert.ToInt32(typeMass[i]) == 2)
                        {
                            laborant laborant = new laborant(imyaMass[i]);
                            laborant.Show();
                            Close();
                            break;
                        }
                        else if (Convert.ToInt32(typeMass[i]) == 3)
                        {
                            DoctorMenu doctorMenu = new DoctorMenu(imyaMass[i]);
                            doctorMenu.Show();
                            Close();
                            break;
                        }
                        MessageBox.Show("Вы успешно авторизировались в системе!");
                    }
                }
            }
        }
        private void ShowPasswordCharsCheckBox_Checked(object sender, RoutedEventArgs e)
        {
            MyPasswordBox.Visibility = Visibility.Collapsed;
            password.Visibility = Visibility.Visible;
            password.Text = MyPasswordBox.Password;
        }

        private void ShowPasswordCharsCheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            MyPasswordBox.Visibility = Visibility.Visible;
            password.Visibility = Visibility.Collapsed;
            MyPasswordBox.Password = password.Text;
        }
    }
}
