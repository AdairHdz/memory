using System.Windows;
using System.Collections.ObjectModel;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class JoinGame : Window
    {
        private MemoryGameService.MatchDiscoveryServiceClient _matchDiscoveryServiceClient = null;        
        private GameMatchDto _selectedMatch;

        public JoinGame()
        {
            InitializeComponent();
            _matchDiscoveryServiceClient = new MemoryGameService.MatchDiscoveryServiceClient();
            LoadActiveMatches();                        
        }

        private void LoadActiveMatches()
        {
            try
            {
                ObservableCollection<GameMatchDto> listOfActiveMatches = new ObservableCollection<GameMatchDto>();
                GameMatchDto[] activeMatches = _matchDiscoveryServiceClient.GetActiveMatches();
                listOfActiveMatches.AddRange(activeMatches);
                GamesDataGrid.ItemsSource = listOfActiveMatches;
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
        }

        private void JoinButtonClicked(object sender, RoutedEventArgs e)
        {
            _selectedMatch = (GameMatchDto)GamesDataGrid.SelectedItem;
            try
            {
                JoinMatch();
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
        }

        private void JoinMatch()
        {
            if (_selectedMatch == null)
            {
                MessageBox.Show(Properties.Langs.Resources.NoMatchWasSelected);
            }
            else
            {                
                if (PlayerCanJoinToGame())
                {
                    GoToWaitingRoom();
                }
                else
                {
                    MessageBox.Show(Properties.Langs.Resources.FullGameMessage);
                }
            }
        }

        private bool PlayerCanJoinToGame()
        {
            string matchHost = _selectedMatch.Host;
            bool canJoinToGame = _matchDiscoveryServiceClient.CanJoin(matchHost);
            return canJoinToGame;
        }

        private void GoToWaitingRoom()
        {
            WaitingRoom waitingRoomView = new WaitingRoom()
            {
                GameMatchDto = _selectedMatch
            };
            waitingRoomView.Show();
            this.Close();
        }

        private void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }
}
