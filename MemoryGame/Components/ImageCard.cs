using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Windows.Controls;
using System.Windows.Media.Imaging;

namespace MemoryGame.Components
{
    public class ImageCard : Image
    {
        public int CardId { set; get; }
        public BitmapImage FrontImage { get; set; }
        public BitmapImage BackImage { get; set; }
        public CardDto CardDto { get; set; }
    }
}
