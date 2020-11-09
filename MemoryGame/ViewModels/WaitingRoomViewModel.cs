using MemoryGameService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.ViewModels
{

    public class WaitingRoomViewModel : MemoryGameService.IMemoryGameServiceCallback
    {

        public WaitingRoomViewModel()
        {
            InstanceContext instanceContext = new InstanceContext(this);
            MemoryGameService.MemoryGameServiceClient client = new MemoryGameService.MemoryGameServiceClient(instanceContext);
            client.GetActivePlayers();            
        }


        public void ShowActivePlayers(string[] activePlayers)
        {
            foreach (var activePlayer in activePlayers)
            {
                Console.WriteLine(activePlayer);
            }
        }
    }
}
