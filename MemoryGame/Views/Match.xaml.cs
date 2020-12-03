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
    [CallbackBehavior(UseSynchronizationContext = false)]
    public partial class Match : Window, MemoryGameService.ITimerServiceCallback
    {
        private InstanceContext _context = null;
        private MemoryGameService.TimerServiceClient timerServiceClient;

        public Match()
        {
            InitializeComponent();
            _context = new InstanceContext(this);
            timerServiceClient = new MemoryGameService.TimerServiceClient(_context);
            /*
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
            */
            timerServiceClient.UpdateTimer();
        }

        public void DisplayTimerValue(int timerValue)
        {
            MessageBox.Show("Valor: " + timerValue);
        }
    }
}
