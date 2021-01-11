using System.Windows;
using System.ServiceModel;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para WaitingRoom.xaml
    /// </summary>
    public partial class WaitingRoom : Window, MemoryGameService.ILobbyServiceCallback
    {
        public MemoryGameService.DataTransferObjects.MatchDto GameMatchDto { get; set; }
        private ObservableCollection<string> _players;
        private InstanceContext _context;
        private MemoryGameService.LobbyServiceClient _lobbyServiceClient;
        private string _username;        
        private bool _thisPlayerIsHost;
        private bool _windowIsBeingClosedByTheCloseButton;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("WaitingRoom.xaml.cs");

        public WaitingRoom()
        {
            InitializeComponent();
            _context = new InstanceContext(this);
            _lobbyServiceClient = new MemoryGameService.LobbyServiceClient(_context);
            _username = Sesion.GetSesion.Username;            
            _windowIsBeingClosedByTheCloseButton = true;
            _players = new ObservableCollection<string>();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            DetermineIfPlayerIsHost();
            if (!_thisPlayerIsHost)
            {
                StarButton.Visibility = Visibility.Collapsed;
            }

            try
            {
                LoadActivePlayersInLobby();
                CallJoinLobbyService();
            }
            catch (TimeoutException timeoutException)
            {
                _logger.Fatal(timeoutException);
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (EndpointNotFoundException endpointNotFoundException)
            {
                _logger.Fatal(endpointNotFoundException);
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (CommunicationException communicationException)
            {
                _logger.Fatal(communicationException);
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
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
            IList<string> activePlayers = _lobbyServiceClient.GetActivePlayersInLobby(GameMatchDto.Host);
            foreach(var oneActivePlayer in activePlayers)
            {
                _players.Add(oneActivePlayer);
            }            
            WaitingRoomDataGrid.ItemsSource = _players;
        }

        private void CallJoinLobbyService()
        {
            _lobbyServiceClient.JoinLobby(GameMatchDto.Host, _username);
        }

        public void LeaveButtonClicked(object sender, RoutedEventArgs e)
        {
            try
            {
                CallLeaveLobbyService();
            }
            catch (TimeoutException timeoutException)
            {
                _logger.Fatal(timeoutException);
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (EndpointNotFoundException endpointNotFoundException)
            {
                _logger.Fatal(endpointNotFoundException);
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (CommunicationException communicationException)
            {
                _logger.Fatal(communicationException);
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
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
            _lobbyServiceClient.LeaveLobby(GameMatchDto.Host, _username);
        }

        public void StartButtonClicked(object sender, RoutedEventArgs e)
        {
            if(_players.Count < 2)
            {
                MessageBox.Show(Properties.Langs.Resources.InsufficientNumberOfPlayers);
            }
            else
            {
                StartGame();
            }            
        }

        private void StartGame()
        {
            try
            {
                _lobbyServiceClient.StartGame(GameMatchDto.Host);
            }
            catch (TimeoutException timeoutException)
            {
                _logger.Fatal(timeoutException);
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (EndpointNotFoundException endpointNotFoundException)
            {
                _logger.Fatal(endpointNotFoundException);
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (CommunicationException communicationException)
            {
                _logger.Fatal(communicationException);
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }

        }

        public void NotifyNewPlayerEntered(string username)
        {           
            if(username != null)
            {
                _players.Add(username);
            }
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