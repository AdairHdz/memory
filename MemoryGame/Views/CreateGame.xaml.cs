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
        private ObservableCollection<MemoryGameService.DataTransferObjects.CardDeckInfoDto> _cardDecksInfoList;
        private int _selectedCardDeckId;
        private string _username;
        private int _numberOfPlayersDesiredForMatch;
        private MemoryGameService.DataTransferObjects.MatchDto _gameMatch;
        private MemoryGameService.DataTransferObjects.CardDeckDTO _cardDeck;
        private static readonly log4net.ILog _logger = log4net.LogManager.GetLogger("CreateGame.xaml.cs");
        public CreateGame()
        {
            InitializeComponent();
            _cardDecksInfoList = new ObservableCollection<MemoryGameService.DataTransferObjects.CardDeckInfoDto>();
            LoadCardDecksInfo();            
            _username = Sesion.GetSesion.Username;            
        }

        public void CreateGameButtonClicked(object sender, RoutedEventArgs e)
        {
            MemoryGameService.DataTransferObjects.CardDeckInfoDto cardDeckForMatch =
                ((MemoryGameService.DataTransferObjects.CardDeckInfoDto)CardDeckComboBox.SelectedItem);
            
            var numberOfPlayersSelectedItem = ((ComboBoxItem)ComboBoxNumberOfPlayers.SelectedItem).Tag;
            
            if (numberOfPlayersSelectedItem == null)
            {
                MessageBox.Show(Properties.Langs.Resources.NumberOfPlayersForMatchWereNotSelected);                
            }else if(cardDeckForMatch == null)
            {
                MessageBox.Show(Properties.Langs.Resources.NoCardDeckHasBeenSelected);
            }
            else
            {
                _numberOfPlayersDesiredForMatch = Int32.Parse(numberOfPlayersSelectedItem.ToString());
                _selectedCardDeckId = cardDeckForMatch.CardDeckId;
                try
                {
                    CreateNewMatch();
                    GoToWaitingRoom();
                }
                catch (EndpointNotFoundException endpointNotFoundException)
                {
                    _logger.Fatal(endpointNotFoundException);
                    MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
                }
                catch (TimeoutException timeoutException)
                {
                    _logger.Fatal(timeoutException);
                    MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
                }
                catch (FaultException<MemoryGame.MemoryGameService.Faults.CardDeckRetrievingFault> cardDeckRetrievingFault)
                {
                    _logger.Fatal(cardDeckRetrievingFault);
                    MessageBox.Show(Properties.Langs.Resources.CardDeckRetrievingError);
                }
                catch (CommunicationException communicationException)
                {
                    _logger.Fatal(communicationException);
                    MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
                }
            }
        }

        private void CreateNewMatch()
        {                   
            LoadCardDeck();
            _gameMatch = new MemoryGameService.DataTransferObjects.MatchDto()
            {
                MaxNumberOfPlayers = _numberOfPlayersDesiredForMatch,
                Host = _username,
                HasStarted = false,
                CardDeckDto = _cardDeck,
                TotalPairs = 0
                };

            MemoryGameService.MatchCreationServiceClient _matchCreationServiceClient =
                new MemoryGameService.MatchCreationServiceClient();

            _matchCreationServiceClient.CreateNewMatch(_gameMatch);
        }

        private void LoadCardDecksInfo()
        {
            MemoryGameService.CardDeckRetrieverServiceClient cardDeckRetrieverServiceClient =
                new MemoryGameService.CardDeckRetrieverServiceClient();

            MemoryGameService.DataTransferObjects.CardDeckInfoDto[] cardDecksInfo =
                cardDeckRetrieverServiceClient.GetCardDecksInfo();

            for(int index = 0; index < cardDecksInfo.Length; index++)
            {
                _cardDecksInfoList.Add(cardDecksInfo[index]);
            }
            CardDeckComboBox.ItemsSource = _cardDecksInfoList;
            CardDeckComboBox.DisplayMemberPath = "CardDeckName";
            CardDeckComboBox.SelectedValuePath = "CardDeckId";
        }

        private void LoadCardDeck()
        {
            MemoryGameService.CardDeckRetrieverServiceClient cardDeckRetrieverServiceClient =
                new MemoryGameService.CardDeckRetrieverServiceClient();
            _cardDeck = cardDeckRetrieverServiceClient.GetCardDeckAndCards(_selectedCardDeckId);
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