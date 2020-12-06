using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace MemoryGame.Views
{
    /// <summary>
    /// Lógica de interacción para Match.xaml
    /// </summary>
    //[CallbackBehavior(UseSynchronizationContext = false)]
    public partial class Match : Window//, MemoryGameService.ITimerServiceCallback
    {
        private InstanceContext _context = null;
        //private MemoryGameService.TimerServiceClient timerServiceClient;
        private MemoryGameService.DataTransferObjects.CardDeckDTO _cardDeck;
        public Match()
        {
            InitializeComponent();
            DrawGameBoard();
            _context = new InstanceContext(this);
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
            Console.WriteLine("ROWS: " + numberOfRequiredRows);
            Console.WriteLine("CARTAS: " + numberOfCards);
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
            IList<MemoryGameService.DataTransferObjects.CardDTO> cards = _cardDeck.Cards;
            for (int numberOfActualCard = 0; numberOfActualCard < cards.Count; numberOfActualCard++)
            {
                if(columnIndex >= columnCount)
                {
                    columnIndex = 0;
                    rowIndex++;
                }

                MemoryGameService.DataTransferObjects.CardDTO actualCard = _cardDeck.Cards[numberOfActualCard];
                string frontImageOfActualCard = actualCard.FrontImage;

                var imageSource = new BitmapImage(new Uri("pack://application:,,,/MemoryGameService;component/" + frontImageOfActualCard));

                ImageCard imageCard = new ImageCard()
                {
                    Source = imageSource,
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
            MessageBox.Show("Valor: " + timerValue);
        }

        private void GetClickedCard(object sender, EventArgs e)
        {
            int cardId = ((ImageCard)sender).CardId;
            MessageBox.Show(cardId + "");
        }

        private class ImageCard : Image
        {
            public int CardId { set; get; }
        }
    }
}
