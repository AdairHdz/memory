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
        public GameMatchDto GameMatchDto { get; set; }
        private ObservableCollection<string> _players;
        private InstanceContext _context;
        private MemoryGameService.LobbyServiceClient _lobbyServiceClient;
        private string _username;        
        private bool _thisPlayerIsHost;
        private bool _windowIsBeingClosedByTheCloseButton;
        
        public WaitingRoom()
        {
            InitializeComponent();
            _context = new InstanceContext(this);
            _lobbyServiceClient = new MemoryGameService.LobbyServiceClient(_context);
            _username = Sesion.GetSesion.Username;            
            _windowIsBeingClosedByTheCloseButton = true;            
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            DetermineIfPlayerIsHost();
            if (!_thisPlayerIsHost)
            {
                StarButton.Visibility = System.Windows.Visibility.Collapsed;
            }

            try
            {
                LoadActivePlayersInLobby();
                CallJoinLobbyService();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }

        }

        private void DetermineIfPlayerIsHost()
        {
            if (_username.Equals(GameMatchDto.Host))
            {
                _thisPlayerIsHost = true;
            }
            else
            {
                _thisPlayerIsHost = false;
            }
        }

        private void LoadActivePlayersInLobby()
        {
            IList<string> activePlayers = _lobbyServiceClient.GetActivePlayersInLobby(GameMatchDto);
            _players.AddRange(activePlayers);
            WaitingRoomDataGrid.ItemsSource = _players;
        }

        private void CallJoinLobbyService()
        {
            LobbyRequestDto lobbyRequestDto = new LobbyRequestDto()
            {
                Host = GameMatchDto.Host,
                Username = _username
            };
            _lobbyServiceClient.JoinLobby(lobbyRequestDto);
        }

        public void LeaveButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                CallLeaveLobbyService();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            finally
            {
                if (_thisPlayerIsHost)
                {
                    GoToMainMenuView();
                }
                else
                {
                    GoToJoinGameView();
                }
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
                Host = GameMatchDto.Host,
                Username = _username
            };
            _lobbyServiceClient.LeaveLobby(lobbyRequestDto);
        }

        public void StartButtonClicked(object sender, RoutedEventArgs e)
        {
            _lobbyServiceClient.StartGame(GameMatchDto);
        }

        public void NotifyNewPlayerEntered(string username)
        {
            //_players.Add(username);
            _players.Add(null);
        }

        public void NotifyPlayerLeft(string username)
        {
            _players.Remove(username);
        }

        public void TakePlayersToMatchView(string[] playersInMatch)
        {
            _windowIsBeingClosedByTheCloseButton = false;
            Views.Match matchView = new Views.Match()
            {
                Players = playersInMatch,
                MatchHost = GameMatchDto.Host,
                CardDeck = GameMatchDto.CardDeckDto
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
    }
}