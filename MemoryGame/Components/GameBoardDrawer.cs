using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace MemoryGame.Components
{
    public class GameBoardDrawer
    {
        public int NumberOfColumns { get; set; }
        public MemoryGameService.DataTransferObjects.CardDeckDTO CardDeck { get; set; }
        public Grid GridToBeDrawnOn { get; set; }
        public IList<ImageCard> ImageCards { get; set; }

        public GameBoardDrawer() { }

        public void Draw()
        {
            DrawColumns();
            DrawRows();
            DrawImages();
        }

        private void DrawColumns()
        {
            for (int numberOfCurrentColumn = 0; numberOfCurrentColumn < NumberOfColumns; numberOfCurrentColumn++)
            {
                GridToBeDrawnOn.ColumnDefinitions.Add(new ColumnDefinition());
            }
        }

        private void DrawRows()
        {
            int numberOfCards = CardDeck.Cards.Count;
            int numberOfColumnsDrawn = GridToBeDrawnOn.ColumnDefinitions.Count;

            int numberOfRequiredRows = (int)Math.Ceiling(Convert.ToDouble(numberOfCards / numberOfColumnsDrawn)) + 1;
            for (int numberOfCurrentRow = 0; numberOfCurrentRow < numberOfRequiredRows; numberOfCurrentRow++)
            {
                GridToBeDrawnOn.RowDefinitions.Add(new RowDefinition());
            }
        }

        private void PopulateImageCards()
        {
            IList<MemoryGameService.DataTransferObjects.CardDto> cards = CardDeck.Cards;
            string backImageOfCards = CardDeck.BackImage;
            BitmapImage backImage = new BitmapImage(new Uri(backImageOfCards));

            for (int numberOfActualCard = 0; numberOfActualCard < cards.Count; numberOfActualCard++)
            {
                MemoryGameService.DataTransferObjects.CardDto actualCard = CardDeck.Cards[numberOfActualCard];

                string frontImageOfActualCard = actualCard.FrontImage;

                BitmapImage frontImage = new BitmapImage(new Uri(frontImageOfActualCard));
                ImageCard imageCard = new ImageCard()
                {
                    FrontImage = frontImage,
                    BackImage = backImage,
                    Source = backImage,
                    CardId = actualCard.CardId,
                    CardDto = actualCard
                };
                ImageCards.Add(imageCard);
            }

        }

        private void DrawImages()
        {
            PopulateImageCards();
            int rowIndex = 0;
            int columnIndex = 0;
            int columnCount = GridToBeDrawnOn.ColumnDefinitions.Count;

            for (int numberOfActualCard = 0; numberOfActualCard < ImageCards.Count; numberOfActualCard++)
            {
                if (columnIndex >= columnCount)
                {
                    columnIndex = 0;
                    rowIndex++;
                }

                Grid.SetRow(ImageCards[numberOfActualCard], rowIndex);
                Grid.SetColumn(ImageCards[numberOfActualCard], columnIndex);
                ImageCards[numberOfActualCard].Margin = new Thickness(8);
                GridToBeDrawnOn.Children.Add(ImageCards[numberOfActualCard]);
                columnIndex++;
            }
        }

        public void SetEventOnCardClicked(MouseButtonEventHandler eventHandler)
        {
            for (int numberOfActualCard = 0; numberOfActualCard < ImageCards.Count; numberOfActualCard++)
            {
                ImageCards[numberOfActualCard].MouseDown += eventHandler;
            }
        }
    }
}
