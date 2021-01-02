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
        public GameMatchConfigDto _gameMatchDto { get; set; }
        public WaitingRoom()
        {
            InitializeComponent();
            context = new InstanceContext(this);
            _lobbyServiceClient = new MemoryGameService.LobbyServiceClient(context);
        }

        public void LeaveButtonClicked(object sender, RoutedEventArgs e)
        {
            LobbyRequestDto lobbyRequestDto = new LobbyRequestDto()
            {
                Host = _gameMatchDto.Host,
                Username = playerSesion.Username
            };
            _lobbyServiceClient.LeaveLobby(lobbyRequestDto);

            string matchHost = _gameMatchDto.Host;

            if (matchHost.Equals(Sesion.GetSesion.Username))
            {
                _lobbyServiceClient.DeleteMatch(matchHost);
            }
            else
            {
                JoinGame joinGameView = new JoinGame();
                joinGameView.Show();
                this.Close();
            }

        }

        public void StartButtonClicked(object sender, RoutedEventArgs e)
        {
            _lobbyServiceClient.StartGame(_gameMatchDto);
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
            IList<string> activePlayers = _lobbyServiceClient.GetActivePlayersInLobby(_gameMatchDto);
            players.AddRange(activePlayers);
            WaitingRoomDataGrid.ItemsSource = players;

            if (!_gameMatchDto.Host.Equals(playerSesion.Username))
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

        public void TakePlayersToMatchView(string[] playersInMatch)
        {
            Views.Match matchView = new Views.Match()
            {
                Players = playersInMatch,
                MatchHost = _gameMatchDto.Host,
                CardDeck = _gameMatchDto.CardDeckDto
            };
            matchView.Show();
            this.Close();
        }

        public void TakePlayersOutOfLobby()
        {
            if (Sesion.GetSesion.Username.Equals(_gameMatchDto.Host))
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