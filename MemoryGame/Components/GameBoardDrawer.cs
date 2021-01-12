using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media.Imaging;

namespace MemoryGame.Components
{
    /// <summary>
    /// The <c>GameBoardDrawer</c> class.
    /// This a helper class to draw the gameboard for the match.
    /// </summary>
    public class GameBoardDrawer
    {
        /// <summary>
        /// Number of columns to be drawn.
        /// </summary>
        public int NumberOfColumns { get; set; }
        /// <summary>
        /// The card deck to be drawn on the game board.
        /// </summary>
        public MemoryGameService.DataTransferObjects.CardDeckDto CardDeck { get; set; }

        /// <summary>
        /// The Grid on which this class will draw the cards.
        /// </summary>
        public Grid GridToBeDrawnOn { get; set; }

        /// <summary>
        /// The cards to be drawn on the game board.
        /// </summary>
        public IList<ImageCard> ImageCards { get; set; }

        /// <summary>
        /// The <c>GameBoardDrawer</c> constructor.
        /// </summary>
        public GameBoardDrawer() { }

        /// <summary>
        /// Draws the cards on the gameboard.
        /// </summary>
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

        /// <summary>
        /// Sets the event to be triggered when a card
        /// is clicked by the user.
        /// </summary>
        /// <param name="eventHandler"></param>
        public void SetEventOnCardClicked(MouseButtonEventHandler eventHandler)
        {
            for (int numberOfActualCard = 0; numberOfActualCard < ImageCards.Count; numberOfActualCard++)
            {
                ImageCards[numberOfActualCard].MouseDown += eventHandler;
            }
        }
    }
}
