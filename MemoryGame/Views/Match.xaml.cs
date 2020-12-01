using System;
using System.Collections.Generic;
using System.Linq;
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
    public partial class Match : Window
    {

        public Match()
        {
            InitializeComponent();
            MemoryGameService.ShufflingCardServiceClient shufflingCardServiceClient =
                new MemoryGameService.ShufflingCardServiceClient();
            MemoryGameService.DataTransferObjects.CardDTO[] cardsDTO =
                new MemoryGameService.DataTransferObjects.CardDTO[10];
            cardsDTO = shufflingCardServiceClient.ShuffleCards();

            string list = "";

            for(int i = 0; i < cardsDTO.Length; i++)
            {
                list += cardsDTO[i].CardId + ", ";
            }
            MessageBox.Show(list);
        }

        private void CreateRectangles()
        {
            int[] cards = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            for (int i = 0; i < cards.Length; i++)
            {




            }
        }
    }
}
