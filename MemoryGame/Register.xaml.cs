using System.Windows;
using System.Windows.Controls;
using ViewModel;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para Register.xaml
    /// </summary>
    public partial class Register : Window
    {
        public Register()
        {            
            InitializeComponent();
            DataContext = new RegisterViewModel();

        }

        private void RegisterButtonClicked(object sender, RoutedEventArgs e)
        {
            
            
        }

        private void CancelButtonClicked(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindowView = new MainWindow();
            mainWindowView.Show();
            this.Close();
        }

    }
}
