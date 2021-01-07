using MemoryGame.Components;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("MainWindow.xaml.cs");
        public MainWindow()
        {
            System.Threading.Thread.CurrentThread.CurrentUICulture = new System.Globalization.CultureInfo(Properties.Settings.Default.LanguageSettings);
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
