using System.Windows;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para RecoverPassword.xaml
    /// </summary>
    public partial class MainMenu : Window
    {
        public MainMenu()
        {
            InitializeComponent();
        }

        private void CreateGameButtonClicked(object sender, RoutedEventArgs e)
        {
            CreateGame createGameView = new CreateGame();
            createGameView.Show();
            this.Close();
        }

        private void JoinGameButtonClicked(object sender, RoutedEventArgs e)
        {
            JoinGame joinGameView = new JoinGame();
            joinGameView.Show();
            this.Close();
        }

        private void ScoreTableButtonClicked(object sender, RoutedEventArgs e)
        {
            ScoreTable scoreTableView = new ScoreTable();
            scoreTableView.Show();
            this.Close();
        }

        private void ChangeUsernameButtonClicked(object sender, RoutedEventArgs e)
        {
            ChangeUsername changeUsernameView = new ChangeUsername();
            changeUsernameView.Show();
            this.Close();
        }

    }
}