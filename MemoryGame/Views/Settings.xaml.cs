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
        
        /// <summary>
        /// The <c>Settings</c> constructor.
        /// </summary>
        public Settings()
        {                        
            InitializeComponent();
        }

        /// <summary>
        /// Specifies the behavior for then the "Save changes" button is clicked.
        /// </summary>
        /// <param name="sender">The sender of the event.</param>
        /// <param name="routedEventArgs">The arguments of the event.</param>
        public void SaveChangesButtonClicked(object sender, RoutedEventArgs routedEventArgs)
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

        /// <summary>
        /// Specifies the behavior for when the "Back" button is clicked.
        /// </summary>
        /// <param name="sender">The sender of the event</param>
        /// <param name="routedEventArgs">The arguments for the event</param>
        public void BackButtonClicked(object sender, RoutedEventArgs routedEventArgs)
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
