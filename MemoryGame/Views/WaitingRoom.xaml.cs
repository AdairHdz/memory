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
        }

        public void StartButtonClicked(object sender, RoutedEventArgs e)
        {
            LobbyRequestDto lobbyRequestDto = new LobbyRequestDto()
            {
                Host = _gameMatchDto.Host,
                Username = playerSesion.Username
            };
            _lobbyServiceClient.StartGame(lobbyRequestDto);
        }

        public void NotifyNewPlayerEntered(string username)
        {
            players.Add(username);
        }

        public void NotifyPlayerLeft(string username)
        {
            players.Remove(username);
            if (_gameMatchDto.Host.Equals(username))
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

        public void TakePlayersToMatchView()
        {
            IList<PlayerInMatchDto> playersInMatchDtos = new List<PlayerInMatchDto>();
            foreach(var player in players)
            {
                PlayerInMatchDto playerToBeIncludedInMatch = new PlayerInMatchDto()
                {
                    Username = player.ToString(),
                    Score = 0
                };

                playersInMatchDtos.Add(playerToBeIncludedInMatch);
            }
            Views.Match matchView = new Views.Match(playersInMatchDtos);
            matchView.Show();
            this.Close();
        }
    }
}