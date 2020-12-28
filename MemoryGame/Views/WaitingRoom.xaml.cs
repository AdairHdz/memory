using System.Windows;
using System.ServiceModel;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para WaitingRoom.xaml
    /// </summary>
    public partial class WaitingRoom : Window, MemoryGameService.ILobbyServiceCallback
    {
        private MemoryGameService.LobbyServiceClient _lobbyServiceClient = null;
        private InstanceContext context = null;
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<string> players = new ObservableCollection<string>();
        bool isHost = false;
        public GameMatchDto _gameMatchDto { get; set; }
        public WaitingRoom()
        {
            InitializeComponent();
            context = new InstanceContext(this);
            _lobbyServiceClient = new MemoryGameService.LobbyServiceClient(context);
        }

        public void LeaveButtonClicked(object sender, RoutedEventArgs e)
        {            
            if (isHost)
            {
                _lobbyServiceClient.DeleteMatch(_gameMatchDto);
                //_lobbyServiceClient.LeaveLobby(_gameMatchDto.Host, playerSesion.Username);
                MainMenu mainMenuView = new MainMenu();
                mainMenuView.Show();
                this.Close();
            }
            else
            {
                LobbyRequestDto lobbyRequestDto = new LobbyRequestDto()
                {
                    Host = _gameMatchDto.Host,
                    Username = playerSesion.Username
                };
                _lobbyServiceClient.LeaveLobby(lobbyRequestDto);
                JoinGame joinGameView = new JoinGame();
                joinGameView.Show();
                this.Close();
            }            
        }

        public void StartButtonClicked(object sender, RoutedEventArgs e)
        {            
            //server.StarGame(gameHostUsername);
        }

        public void NotifyNewPlayerEntered(string username)
        {
            players.Add(username);
        }

        public void NotifyPlayerLeft(string username)
        {
            players.Remove(username);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {            
            IList<string> activePlayers = _lobbyServiceClient.GetActivePlayersFromMatch(_gameMatchDto);
            players.AddRange(activePlayers);
            WaitingRoomDataGrid.ItemsSource = players;

            if (_gameMatchDto.Host.Equals(playerSesion.Username))
            {
                _lobbyServiceClient.CreateNewMatch(_gameMatchDto);
            }
            else
            {
                StarButton.Visibility = System.Windows.Visibility.Collapsed;
            }
            LobbyRequestDto lobbyRequestDto = new LobbyRequestDto()
            {
                Host = _gameMatchDto.Host,
                Username = playerSesion.Username
            };
            _lobbyServiceClient.JoinLobby(lobbyRequestDto);
        }
    }
}