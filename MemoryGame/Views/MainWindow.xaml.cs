using System.Globalization;
using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("MainWindow.xaml.cs");
        
        /// <summary>
        /// The <c>MainWindow</c> constructor.
        /// </summary>
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
                _logger.Fatal("There was a problem while loading the culture resources");
                this.Close();
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
