using System.Globalization;
using System.Threading;
using System.Windows;
using System.Windows.Controls;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Settings.xaml
    /// </summary>
    public partial class Settings : Window
    {
        private string _selectedTag;
        public Settings()
        {                        
            InitializeComponent();
        }

        public void SaveChangesButtonClicked(object sender, RoutedEventArgs e)
        {            
            _selectedTag = ((ComboBoxItem)ComboBoxLanguageSelection.SelectedItem).Tag.ToString();            
            try
            {
                var culture = new CultureInfo(_selectedTag);
                Thread.CurrentThread.CurrentCulture = culture;
                Thread.CurrentThread.CurrentUICulture = culture;
                Properties.Settings.Default.LanguageSettings = _selectedTag;
                Properties.Settings.Default.Save();
                MessageBox.Show(Properties.Langs.Resources.ChangeLanguageSettingsSuccess);
            }
            catch (CultureNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ChangeLanguageSettingsError);
            }
            
            GoToMainWindow();
        }

        public void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            GoToMainWindow();
        }

        private void GoToMainWindow()
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }
    }
}
