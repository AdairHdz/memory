using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.Utilities;
using System;
using System.Collections.Generic;
using System.ServiceModel;
using System.Windows;
using System.Windows.Controls;
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
        public MemoryGameService.DataTransferObjects.CardDeckDTO _cardDeck { get; set; }
        private MemoryGameService.CardUncoveringServiceClient _cardUncoveringService;
        private List<ImageCard> _imageCards;
        public Match()
        {
            InitializeComponent();            
        }

        private void LoadCardDeck()
        {
            MemoryGameService.CardDeckRetrieverServiceClient cardDeckRetrieverServiceClient =
                new MemoryGameService.CardDeckRetrieverServiceClient();

            _cardDeck = cardDeckRetrieverServiceClient.GetCardDeckAndCards(1);           
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
            int numberOfCards = _cardDeck.Cards.Count;
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
            IList<MemoryGameService.DataTransferObjects.CardDto> cards = _cardDeck.Cards;
            string backImageOfCards = _cardDeck.BackImage;
            BitmapImage backImage = new BitmapImage(new Uri("pack://application:,,,/MemoryGameService;component/" + backImageOfCards));

            for (int numberOfActualCard = 0; numberOfActualCard < cards.Count; numberOfActualCard++)
            {
                MemoryGameService.DataTransferObjects.CardDto actualCard = _cardDeck.Cards[numberOfActualCard];

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
            /*if (cardClicked.Source != cardClicked.FrontImage)
            {

            }
            */
            int cardIndex = _imageCards.IndexOf(cardClicked);
            _cardUncoveringService
                .NotifyCardWasUncovered(cardIndex);
        }

        public void UncoverCard(int cardIndex)
        {
            /**
             * Esto solo destapa la carta en uno de los clientes.
             * Seguramente tiene que ver con que cada cliente tiene un diferente
             * orden de las cartas. Modificar Game Settings para que allí se pase el mazo y poder verificar
             * que este método funcione como debería
             */
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
            DrawGameBoard();
        }
    }
}
