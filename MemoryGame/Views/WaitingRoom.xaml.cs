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
        private bool _windowIsBeingClosedByTheCloseButton;
        public GameMatchDto _gameMatchDto { get; set; }
        public WaitingRoom()
        {
            InitializeComponent();
            context = new InstanceContext(this);
            _lobbyServiceClient = new MemoryGameService.LobbyServiceClient(context);
            _windowIsBeingClosedByTheCloseButton = true;
        }
        public void LeaveButtonClicked(object sender, RoutedEventArgs e)
        {
            CallLeaveLobbyService();
            string matchHost = _gameMatchDto.Host;

            if (matchHost.Equals(Sesion.GetSesion.Username))
            {
                GoToMainMenuView();
            }
            else
            {
                GoToJoinGameView();
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
            _windowIsBeingClosedByTheCloseButton = false;
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
            GoToJoinGameView();
        }

        private void Window_Closed(object sender, System.EventArgs e)
        {
            if (_windowIsBeingClosedByTheCloseButton)
            {
                CallLeaveLobbyService();
            }            
        }

        private void GoToJoinGameView()
        {
            _windowIsBeingClosedByTheCloseButton = false;
            JoinGame joinGameView = new JoinGame();
            joinGameView.Show();
            this.Close();
        }

        private void GoToMainMenuView()
        {
            _windowIsBeingClosedByTheCloseButton = false;
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }

        private void CallLeaveLobbyService()
        {
            LobbyRequestDto lobbyRequestDto = new LobbyRequestDto()
            {
                Host = _gameMatchDto.Host,
                Username = playerSesion.Username
            };
            _lobbyServiceClient.LeaveLobby(lobbyRequestDto);
        }
    }
}