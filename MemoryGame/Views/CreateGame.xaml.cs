using System.Windows;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using System;
using System.Windows.Controls;
using System.ServiceModel;

namespace MemoryGame
{
    /// <summary>
    /// Interaction logic for JoinGame.xaml
    /// </summary>
    public partial class CreateGame : Window
    {
        private ObservableCollection<MemoryGameService.DataTransferObjects.CardDeckInfoDto> _cardDecksInfoList;
        private int _selectedCardDeckId;
        private string _username;
        private int _numberOfPlayersDesiredForMatch;
        private MemoryGameService.DataTransferObjects.MatchDto _gameMatch;
        private MemoryGameService.DataTransferObjects.CardDeckDto _cardDeck;
        
        /// <summary>
        /// The <c>CreateGame</c> constructor.
        /// </summary>
        public CreateGame()
        {
            InitializeComponent();
            _cardDecksInfoList = new ObservableCollection<MemoryGameService.DataTransferObjects.CardDeckInfoDto>();
            LoadCardDecksInfo();            
            _username = Sesion.GetSesion.Username;            
        }

        private void LoadCardDecksInfo()
        {
            try
            {
                MemoryGameService.CardDeckRetrieverServiceClient cardDeckRetrieverServiceClient =
                new MemoryGameService.CardDeckRetrieverServiceClient();

                MemoryGameService.DataTransferObjects.CardDeckInfoDto[] cardDecksInfo =
                    cardDeckRetrieverServiceClient.GetCardDecksInfo();

                for (int index = 0; index < cardDecksInfo.Length; index++)
                {
                    _cardDecksInfoList.Add(cardDecksInfo[index]);
                }
                CardDeckComboBox.ItemsSource = _cardDecksInfoList;
                CardDeckComboBox.DisplayMemberPath = "CardDeckName";
                CardDeckComboBox.SelectedValuePath = "CardDeckId";
            }
            catch (EndpointNotFoundException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
            }
            catch (TimeoutException)
            {
                MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
            }
            catch (CommunicationException)
            {
                MessageBox.Show(Properties.Langs.Resources.CommunicationInterrupted);
            }
        }

        /// <summary>
        /// This method specifies what gets executed when the "Create Game" button
        /// is clicked.
        /// </summary>
        /// <param name="sender">The sender of the event</param>
        /// <param name="routedEventArgs">The event arguments</param>
        public void CreateGameButtonClicked(object sender, RoutedEventArgs routedEventArgs)
        {
            MemoryGameService.DataTransferObjects.CardDeckInfoDto cardDeckForMatch =
                ((MemoryGameService.DataTransferObjects.CardDeckInfoDto)CardDeckComboBox.SelectedItem);
            
            var numberOfPlayersSelectedItem = ((ComboBoxItem)NumberOfPlayersComboBox.SelectedItem).Tag;
            
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
                catch (EndpointNotFoundException)
                {
                    MessageBox.Show(Properties.Langs.Resources.ServerConnectionLost);
                }
                catch (TimeoutException)
                {
                    MessageBox.Show(Properties.Langs.Resources.ServerTimeoutError);
                }
                catch (CommunicationException)
                {
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

        /// <summary>
        /// This method specifies what gets executed when the "Back" button
        /// is clicked.
        /// </summary>
        /// <param name="sender">The sender of the event</param>
        /// <param name="routedEventArgs">The event arguments</param>
        public void BackButtonClicked(object sender, RoutedEventArgs routedEventArgs)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }
}