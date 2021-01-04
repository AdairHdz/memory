using System.Windows;
using DataAccess.Entities;
using System.Collections.ObjectModel;
using System;

namespace MemoryGame
{
    /// <summary>
    /// Lógica de interacción para JoinGame.xaml
    /// </summary>
    public partial class CreateGame : Window
    {
        Sesion playerSesion = Sesion.GetSesion;
        public ObservableCollection<string> numberOfPlayers = new ObservableCollection<string>();
        public CreateGame()
        {
            InitializeComponent();
            numberOfPlayers.Add("2");
            numberOfPlayers.Add("3");
            numberOfPlayers.Add("4");
            ComboBoxNumberOfPlayers.ItemsSource = numberOfPlayers;
        }

        public void CreateGameButtonClicked(object sender, RoutedEventArgs e)
        {
            int numberOfPlayers = Int32.Parse(ComboBoxNumberOfPlayers.SelectedItem.ToString());
            MemoryGameService.DataTransferObjects.CardDeckDTO cardDeck = GetCardDeckDtoForMatch();
            MemoryGameService.DataTransferObjects.GameMatchDto matchSettingsDto =
                new MemoryGameService.DataTransferObjects.GameMatchDto()
                {
                    MaxNumberOfPlayers = numberOfPlayers,
                    Host = Sesion.GetSesion.Username,
                    HasStarted = false,
                    CardDeckDto = cardDeck
                };

            MemoryGameService.MatchCreationServiceClient _matchCreationServiceClient =
                new MemoryGameService.MatchCreationServiceClient();

            _matchCreationServiceClient.CreateNewMatch(matchSettingsDto);

            WaitingRoom waitingRoomView = new WaitingRoom(){
                _gameMatchDto = matchSettingsDto
            };

            waitingRoomView.Show();
            this.Close();
        }

        private MemoryGameService.DataTransferObjects.CardDeckDTO GetCardDeckDtoForMatch()
        {
            MemoryGameService.CardDeckRetrieverServiceClient cardDeckRetrieverServiceClient =
                new MemoryGameService.CardDeckRetrieverServiceClient();

            return cardDeckRetrieverServiceClient.GetCardDeckAndCards(1);
        }

        public void BackButtonClicked(object sender, RoutedEventArgs e)
        {
            MainMenu mainMenuView = new MainMenu();
            mainMenuView.Show();
            this.Close();
        }
    }
}