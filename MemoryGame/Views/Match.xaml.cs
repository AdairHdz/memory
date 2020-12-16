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
        private MemoryGameService.DataTransferObjects.CardDeckDTO _cardDeck;
        private MemoryGameService.CardUncoveringServiceClient _cardUncoveringService;    
        public Match()
        {
            InitializeComponent();
            DrawGameBoard();
            _context = new InstanceContext(this);
            _timerServiceClient = new MemoryGameService.TimerServiceClient(_context);
            _cardUncoveringService = new MemoryGameService.CardUncoveringServiceClient(_context);
            _cardUncoveringService.Subscribe();
            _timerServiceClient.UpdateTimer();
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
            int rowIndex = 0;
            int columnIndex = 0;
            int columnCount = GameBoardGrid.ColumnDefinitions.Count;
            IList<MemoryGameService.DataTransferObjects.CardDto> cards = _cardDeck.Cards;
            string backImageOfCards = _cardDeck.BackImage;
            BitmapImage backImage = new BitmapImage(new Uri("pack://application:,,,/MemoryGameService;component/" + backImageOfCards));
            for (int numberOfActualCard = 0; numberOfActualCard < cards.Count; numberOfActualCard++)
            {
                if(columnIndex >= columnCount)
                {
                    columnIndex = 0;
                    rowIndex++;
                }

                MemoryGameService.DataTransferObjects.CardDto actualCard = _cardDeck.Cards[numberOfActualCard];
                
                string frontImageOfActualCard = actualCard.FrontImage;


                BitmapImage frontImage = new BitmapImage(new Uri("pack://application:,,,/MemoryGameService;component/" + frontImageOfActualCard));
                ImageCard imageCard = new ImageCard()
                {
                    FrontImage = frontImage,
                    BackImage = backImage,
                    Source = backImage,
                    CardId = actualCard.CardId
                };

                Grid.SetRow(imageCard, rowIndex);
                Grid.SetColumn(imageCard, columnIndex);
                imageCard.Margin = new Thickness(8);
                imageCard.MouseDown += GetClickedCard;
                GameBoardGrid.Children.Add(imageCard);                
                columnIndex++;
            }
        }

        public void DisplayTimerValue(int timerValue)
        {
            TimerLabel.Content = timerValue;            
        }

        private void GetClickedCard(object sender, EventArgs e)
        {
            ImageCard cardClicked = ((ImageCard)sender);
            if(cardClicked.Source != cardClicked.FrontImage)
            {
                cardClicked.Source = cardClicked.FrontImage;
                _cardUncoveringService.NotifyCardWasUncovered(cardClicked.CardId);
            }            
        }

        public void UncoverCard(int cardId)
        {
            MessageBox.Show("Id de la carta descubierta: " + cardId);
        }

        private class ImageCard : Image
        {
            public int CardId { set; get; }
            public BitmapImage FrontImage { get; set; }
            public BitmapImage BackImage { get; set; }
        }
    }
}
