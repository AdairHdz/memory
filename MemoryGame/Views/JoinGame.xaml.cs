using System.Windows;
using System.ServiceModel;
using DataAccess.Entities;
using System.Collections.ObjectModel;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class JoinGame : Window, Proxy.IJoinGameServiceCallback
    {
        private Proxy.JoinGameServiceClient server = null;
        private InstanceContext context = null;
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<string> matches = new ObservableCollection<string>();


        public JoinGame()
        {
            InitializeComponent();
            context = new InstanceContext(this);
            server = new Proxy.JoinGameServiceClient(context);
            GamesDataGrid.ItemsSource = matches;
            server.JoinGameLobby(playerSesion.Username);
            server.RecoverAvailableGames();
        }

        public void NewGameCreated(string gameHostUsername)
        {
            matches.Add(gameHostUsername);
        }

        public void ReciveAvailableGames(string gameHostUsername)
        {
            matches.Add(gameHostUsername);
        }

        public void RemoveGameFromList(string gameHostUsername)
        {
            matches.Remove(gameHostUsername);
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }

        private void JoinButtonClicked(object sender, RoutedEventArgs e)
        {
            string hostUsername = GamesDataGrid.SelectedItem.ToString();
            bool isHost = false;
            bool gameIsAvailable = server.AskForJoinGame(hostUsername);
            if (gameIsAvailable)
            {
                WaitingRoom mainMenuView = new WaitingRoom(isHost, hostUsername, 0);
                mainMenuView.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("La partida esta llena, espera a que se abra un lugar o ingresa a otra partida");
            }
        }
    }
}
