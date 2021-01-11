using System.Globalization;
using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            LoadCultureInfo();
            InitializeComponent();
        }

        private void LoadCultureInfo()
        {
            try
            {
                System.Threading.Thread.CurrentThread.CurrentUICulture = new CultureInfo(Properties.Settings.Default.LanguageSettings);
            }
            catch (CultureNotFoundException)
            {
                MessageBox.Show("No se encontró recurso");
            }
            
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
