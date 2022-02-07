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
using Newtonsoft.Json;
using System.IO;
using System.Collections;
using System.Net;
using System.Text.RegularExpressions;

namespace wipief
{
    /// <summary>
    /// Логика взаимодействия для DoctorMenu.xaml
    /// </summary>
    public partial class DoctorMenu : Window
    {
        public DoctorMenu(string imya)
        {
            InitializeComponent();
            name.Text = imya;
            update();
        }

        public void update()
        {
            list.ItemsSource = App.dd.users.ToList();
            list.SelectedItem = list.Items[1];
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }

        static public WebRequest ledetect = WebRequest.Create("http://localhost:5000/api/analyzer/Ledetect");

        public void Request_Click(object sender, RoutedEventArgs e)
        {
            users listMass = list.SelectedItem as users;

            var request = ledetect;

            string code = Regex.Replace(listMass.services, @"\D", "");

            string data = "{ \"patient\": \""+ listMass.id +"\", \"services\": [{ \"serviceCode\":" + code + "}] }";

            MessageBox.Show("Запрос составлен.\nПациент: " +listMass.id + "\nСервисы: " + code);

            byte[] byteArray = Encoding.UTF8.GetBytes(data);

            request.Method = "POST";

            request.ContentType = "application/json";

            request.ContentLength = byteArray.Length;

            using (Stream dataStream = request.GetRequestStream())
            {
                dataStream.Write(byteArray, 0, byteArray.Length);
            }

            WebResponse response = request.GetResponse();

            response.Close();
        }

        private void getRequest_click(object sender, RoutedEventArgs e)
        {
            var request = ledetect;

            request.Method = "GET";

            WebResponse response = request.GetResponse();

            using (Stream stream = response.GetResponseStream())
            {
                using (StreamReader reader = new StreamReader(stream))
                {
                    if (Regex.IsMatch(reader.ReadToEnd(), "progress"))
                    {
                        Match data = Regex.Match(reader.ReadToEnd(), @"""\d*.""");
                        MessageBox.Show("Прогресс исследования равен: " + data.ToString());
                    }
                    if (Regex.IsMatch(reader.ReadToEnd(), "patient"))
                    {
                        string data = Regex.Match(reader.ReadToEnd(), @"""\d*.""").ToString();
                        string data2 = Regex.Match(reader.ReadToEnd(), @" \d*,").ToString();
                        MessageBox.Show("ID пользователя: " + data + " Сервисы пользователя" + data2);
                    }
                }
            }
            response.Close();
        }

        private void RequestTest_Click(object sender, RoutedEventArgs e)
        { 

            var request = ledetect;

            string data = "{ \"patient\": \"3\", \"services\": [{ \"serviceCode\":543}]}";

            MessageBox.Show("Запрос составлен.\nПациент: " + 3 + "\nСервисы: " + 543);

            byte[] byteArray = Encoding.UTF8.GetBytes(data);

            request.Method = "POST";

            request.ContentType = "application/json";

            request.ContentLength = byteArray.Length;

            using (Stream dataStream = request.GetRequestStream())
            {
                dataStream.Write(byteArray, 0, byteArray.Length);
            }

            WebResponse response = request.GetResponse();

            response.Close();
        }
    }
}
