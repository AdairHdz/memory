using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para ExpelPlayer.xaml
    /// </summary>
    public partial class ExpelPlayer : Window
    {
        public ExpelPlayer()
        {
            InitializeComponent();
        }

        private void ExpelPlayerButtonClicked(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Funcion no implementada aun");
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            GameOptions gameOptionsView = new GameOptions();
            gameOptionsView.Show();
            this.Close();
        }
    }
}
