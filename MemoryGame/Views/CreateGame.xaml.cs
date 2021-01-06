using System.Windows;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using System;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.ServiceModel;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class CreateGame : Window
    {
        public ObservableCollection<string> ListOfnumberOfPlayers = new ObservableCollection<string>();
        private string _username;
        private int _numberOfPlayersDesiredForMatch;
        private MemoryGameService.DataTransferObjects.GameMatchDto _gameMatch;
        private MemoryGameService.DataTransferObjects.CardDeckDTO _cardDeck;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("CreateGame.xaml.cs");
        public CreateGame()
        {
            InitializeComponent();
            _username = Sesion.GetSesion.Username;
            ListOfnumberOfPlayers.Add("2");
            ListOfnumberOfPlayers.Add("3");
            ListOfnumberOfPlayers.Add("4");
            ComboBoxNumberOfPlayers.ItemsSource = ListOfnumberOfPlayers;
        }

        public void CreateGameButtonClicked(object sender, RoutedEventArgs e)
        {
            var selectedItem = ComboBoxNumberOfPlayers.SelectedItem;
            if (selectedItem == null)
            {
                MessageBox.Show(Properties.Langs.Resources.NumberOfPlayersForMatchWereNotSelected);                
            }
            else
            {
                _numberOfPlayersDesiredForMatch = Int32.Parse(selectedItem.ToString());
                try
                {
                    CreateNewMatch();
                    GoToWaitingRoom();
                }
                catch (EndpointNotFoundException endpointNotFoundException)
                {
                    _logger.Error(endpointNotFoundException);
                    MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
                }
                catch (TimeoutException timeoutException)
                {
                    _logger.Error(timeoutException);
                    MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
                }
                catch (FaultException<MemoryGame.MemoryGameService.Faults.CardDeckRetrievingFault> cardDeckRetrievingFault)
                {
                    _logger.Error(cardDeckRetrievingFault);
                    MessageBox.Show(Properties.Langs.Resources.CardDeckRetrievingError);
                }
            }

        }

        private void CreateNewMatch()
        {                   
            LoadCardDeck();
            _gameMatch = new MemoryGameService.DataTransferObjects.GameMatchDto()
                {
                    MaxNumberOfPlayers = _numberOfPlayersDesiredForMatch,
                    Host = _username,
                    HasStarted = false,
                    CardDeckDto = _cardDeck
                };

            MemoryGameService.MatchCreationServiceClient _matchCreationServiceClient =
                new MemoryGameService.MatchCreationServiceClient();

            _matchCreationServiceClient.CreateNewMatch(_gameMatch);
        }

        private void LoadCardDeck()
        {
            MemoryGameService.CardDeckRetrieverServiceClient cardDeckRetrieverServiceClient =
                new MemoryGameService.CardDeckRetrieverServiceClient();

            _cardDeck = cardDeckRetrieverServiceClient.GetCardDeckAndCards(1);
        }

        private void GoToWaitingRoom()
        {
            WaitingRoom waitingRoomView = new WaitingRoom()
            {
                GameMatchDto = _gameMatch
            };

            waitingRoomView.Show();
            this.Close();
        }

        public void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }
}