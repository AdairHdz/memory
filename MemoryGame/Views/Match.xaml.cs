using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace MemoryGame.Views
{
    /// <summary>
    /// Lógica de interacción para Match.xaml
    /// </summary>
    //[CallbackBehavior(UseSynchronizationContext = false)]
    public partial class Match : Window, MemoryGameService.ITimerServiceCallback,
        MemoryGameService.ICardUncoveringServiceCallback
    {
        public int TimerValue { get; set; } = 60;
        private InstanceContext _context = null;
        private MemoryGameService.TimerServiceClient _timerServiceClient;
        public MemoryGameService.DataTransferObjects.CardDeckDTO CardDeck { get; set; }
        private MemoryGameService.CardUncoveringServiceClient _cardUncoveringService;
        private List<ImageCard> _imageCards;
        private List<string> _players;
        private int _numberOfMovementsAllowed = 2;
        private bool _isPlayerTurn = false;
        public Match()
        {
            InitializeComponent();
            _players = new List<string>();
            _players.Add("AdairHz");
            _players.Add("Baltix2K");
            _players.Add("Bataco");
            _players.Add("Navys230");
        }

        private void DrawPlayersNames()
        {
            int rowIndex = 0;
            int columnIndex = 0;
            
            foreach(string playerName in _players)
            {
                Grid usernameContainer = new Grid()
                {
                    Background = new SolidColorBrush(Color.FromRgb(239, 71, 111))
                    
                };



                TextBlock username = new TextBlock()
                {
                    Text = playerName,
                    Foreground = new SolidColorBrush(Color.FromRgb(255, 255, 255)),
                    VerticalAlignment = VerticalAlignment.Center,
                    HorizontalAlignment = HorizontalAlignment.Center,
                    FontSize = 20,
                    TextTrimming = TextTrimming.CharacterEllipsis
                };

                Grid.SetColumn(username, 0);
                Grid.SetRow(username, 0);
                usernameContainer.Children.Add(username);

                Grid.SetColumn(usernameContainer, rowIndex);
                Grid.SetRow(usernameContainer, columnIndex);
                //Grid.SetColumnSpan(usernameContainer, 2);
                MainGrid.Children.Add(usernameContainer);

                if(columnIndex == 8)
                {
                    rowIndex = 8;
                    columnIndex = 0;
                }
                else
                {
                    columnIndex = 8;
                }
                


            }
        }

        private void LoadCardDeck()
        {
            MemoryGameService.CardDeckRetrieverServiceClient cardDeckRetrieverServiceClient =
                new MemoryGameService.CardDeckRetrieverServiceClient();

            CardDeck = cardDeckRetrieverServiceClient.GetCardDeckAndCards(1);           
        }      

            private void DrawGameBoard()
        {
            LoadCardDeck();
            DrawColumns();
            DrawRows();
            DrawImages();
        }

        private void DrawRows()
        {
            int numberOfCards = CardDeck.Cards.Count;
            int numberOfColumnsDrawn = GameBoardGrid.ColumnDefinitions.Count;
            
            //Comportamiento extraño. Ceiling no funciona
            int numberOfRequiredRows = (int)Math.Ceiling(Convert.ToDouble(numberOfCards / numberOfColumnsDrawn)) + 1;
            for (int i = 0; i < numberOfRequiredRows; i++)
            {
                GameBoardGrid.RowDefinitions.Add(new RowDefinition());
            }
        }

        private void DrawColumns()
        {
            for (int i = 0; i < 5; i++)
            {
                GameBoardGrid.ColumnDefinitions.Add(new ColumnDefinition());
            }
        }

        private void DrawImages()
        {
            PopulateImageCards();
            int rowIndex = 0;
            int columnIndex = 0;
            int columnCount = GameBoardGrid.ColumnDefinitions.Count;
            
            for (int numberOfActualCard = 0; numberOfActualCard < _imageCards.Count; numberOfActualCard++)
            {
                if(columnIndex >= columnCount)
                {
                    columnIndex = 0;
                    rowIndex++;
                }

                Grid.SetRow(_imageCards[numberOfActualCard], rowIndex);
                Grid.SetColumn(_imageCards[numberOfActualCard], columnIndex);
                _imageCards[numberOfActualCard].Margin = new Thickness(8);
                _imageCards[numberOfActualCard].MouseDown += GetClickedCard;
                GameBoardGrid.Children.Add(_imageCards[numberOfActualCard]);                
                columnIndex++;
            }
        }

        private void PopulateImageCards()
        {
            IList<MemoryGameService.DataTransferObjects.CardDto> cards = CardDeck.Cards;
            string backImageOfCards = CardDeck.BackImage;
            BitmapImage backImage = new BitmapImage(new Uri("pack://application:,,,/MemoryGameService;component/" + backImageOfCards));

            for (int numberOfActualCard = 0; numberOfActualCard < cards.Count; numberOfActualCard++)
            {
                MemoryGameService.DataTransferObjects.CardDto actualCard = CardDeck.Cards[numberOfActualCard];

                string frontImageOfActualCard = actualCard.FrontImage;


                BitmapImage frontImage = new BitmapImage(new Uri("pack://application:,,,/MemoryGameService;component/" + frontImageOfActualCard));
                ImageCard imageCard = new ImageCard()
                {
                    FrontImage = frontImage,
                    BackImage = backImage,
                    Source = backImage,
                    CardId = actualCard.CardId,
                    CardDto = actualCard
                };
                _imageCards.Add(imageCard);
            }

        }

        public void DisplayTimerValue(int timerValue)
        {
            TimerLabel.Content = timerValue;            
        }

        private void GetClickedCard(object sender, EventArgs e)
        {
            ImageCard cardClicked = ((ImageCard)sender);
            bool cardHasNotBeenFlipped = cardClicked.Source != cardClicked.FrontImage;
            bool playerStillHasMovements = _numberOfMovementsAllowed > 0;

            if (cardHasNotBeenFlipped && playerStillHasMovements)
            {
                int cardIndex = _imageCards.IndexOf(cardClicked);
                _cardUncoveringService
                    .NotifyCardWasUncovered(cardIndex);
                _numberOfMovementsAllowed--;
            }            
        }

        public void UncoverCard(int cardIndex)
        {
            _imageCards[cardIndex].Source = _imageCards[cardIndex].FrontImage;
        }

        public class ImageCard : Image
        {
            public int CardId { set; get; }
            public BitmapImage FrontImage { get; set; }
            public BitmapImage BackImage { get; set; }
            public CardDto CardDto { get; set; }
        }

        private void OptionsButtonClicked(object sender, RoutedEventArgs e)
        {
            GameOptions registerView = new GameOptions();
            registerView.Show();
        }

        private void WindowLoaded(object sender, EventArgs e)
        {
            _imageCards = new List<ImageCard>();
            _context = new InstanceContext(this);
            _timerServiceClient = new MemoryGameService.TimerServiceClient(_context);
            _cardUncoveringService = new MemoryGameService.CardUncoveringServiceClient(_context);
            _cardUncoveringService.SubscribeToCardUncoveringService();
            //_timerServiceClient.UpdateTimer();
            DrawPlayersNames();
            DrawGameBoard();
        }
    }
}
