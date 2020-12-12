using System.Windows;
using System.ServiceModel;
using DataAccess.Entities;
using System.Collections.ObjectModel;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para WaitingRoom.xaml
    /// </summary>
    public partial class WaitingRoom : Window, Proxy.IWaitingRoomServiceCallback
    {
        private Proxy.WaitingRoomServiceClient server = null;
        private InstanceContext context = null;
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<string> players = new ObservableCollection<string>();
        string gameHostUsername;
        bool isHost;
        public WaitingRoom(bool isHost, string gameHostUsername, int maxNumOfPlayers)
        {
            InitializeComponent();
            context = new InstanceContext(this);
            server = new Proxy.WaitingRoomServiceClient(context);
            WaitingRoomDataGrid.ItemsSource = players;
            this.gameHostUsername = gameHostUsername;
            this.isHost = isHost;
            if (isHost)
            {
                server.CreateGame(playerSesion.Username, maxNumOfPlayers);
            }
            else
            {
                server.JoinGame(gameHostUsername, playerSesion.Username);
                StarButton.Visibility = System.Windows.Visibility.Collapsed;
            }

            server.RecoverGameMembers(gameHostUsername);
        }

        public void HostLeaveGame()
        {
            JoinGame joinGameMenuView = new JoinGame();
            joinGameMenuView.Show();
            this.Close();
        }

        public void PlayerLeaveGame(string playerUsername)
        {
            players.Remove(playerUsername);
        }

        public void NewPlayerJoined(string newPlayerUsername)
        {
            players.Add(newPlayerUsername);
        }

        public void ReciveGameMembers(string memberUsername)
        {
            players.Add(memberUsername);
        }

        public void LeaveButtonClicked(object sender, RoutedEventArgs e)
        {
            server.LeaveGame(gameHostUsername, playerSesion.Username);
            if (isHost)
            {
                MainMenu mainMenuView = new MainMenu();
                mainMenuView.Show();
                this.Close();
            }
            else
            {
                JoinGame joinGameView = new JoinGame();
                joinGameView.Show();
                this.Close();
            }
        }
    }
}