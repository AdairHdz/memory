using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para GameOptions.xaml
    /// </summary>
    public partial class GameOptions : Window
    {
        public GameOptions()
        {
            InitializeComponent();
        }

        private void LeaveGameButtonClicked(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Funcion no implementada aun");
        }

        private void ExpelPlayerButtonClicked(object sender, RoutedEventArgs e)
        {
            ExpelPlayer expelPlayerView = new ExpelPlayer();
            expelPlayerView.Show();
            this.Close();
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
