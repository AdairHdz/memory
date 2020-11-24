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

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {            
            InitializeComponent();
        }

        private void GetRegisteredButtonClicked(object sender, RoutedEventArgs e)
        {
            Register registerView = new Register();
            registerView.Show();
            this.Close();
        }



        private void ConfigurationButtonClicked(object sender, RoutedEventArgs e)
        {
            Settings settingsView = new Settings();
            settingsView.Show();
            this.Close();
        }

        private void LoginButtonClicked(object sender, RoutedEventArgs e)
        {
            Login loginView = new Login();
            loginView.Show();
            this.Close();
        }
    }
}
