using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace MemoryGame.Components
{
    /// <summary>
    /// The <c>ImageCard</c> class.
    /// This is a helper class that contains the necessary data of the card to
    /// be drawn on the gameboard.
    /// </summary>
    public class ImageCard : Image
    {
        /// <summary>
        /// The id of the card
        /// </summary>
        public int CardId { set; get; }

        /// <summary>
        /// The front image of the card.
        /// </summary>
        public BitmapImage FrontImage { get; set; }

        /// <summary>
        /// The back image of the card.
        /// </summary>
        public BitmapImage BackImage { get; set; }

        /// <summary>
        /// The CardDto that this card contains.
        /// </summary>
        public CardDto CardDto { get; set; }
    }
}
