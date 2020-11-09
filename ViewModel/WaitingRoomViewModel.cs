using MemoryGameService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ViewModel
{
    public class WaitingRoomViewModel : IMemoryGameCallback
    {

        public WaitingRoomViewModel()
        {
            InstanceContext instanceContext = new InstanceContext(this);
            
            
            //MemoryGameService.IMemoryGameService c = new MemoryGameService.IMemoryGameService();
            //MemoryGameService.IMemoryGameCallback client = new MemoryGameService.IMemoryGameCallback();
        }

        public void ShowActivePlayers(List<string> activePlayers)
        {
            foreach(var activePlayer in activePlayers)
            {
                Console.WriteLine(activePlayer);
            }
        }
    }
}
