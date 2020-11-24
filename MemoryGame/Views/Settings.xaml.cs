using System.Globalization;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;

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
            var culture = new CultureInfo(_selectedTag);
            Thread.CurrentThread.CurrentCulture = culture;
            Thread.CurrentThread.CurrentUICulture = culture;            
        }

        public void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }
    }
}
