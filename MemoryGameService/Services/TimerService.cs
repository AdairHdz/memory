using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace MemoryGameService.Services
{
    //[ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class MemoryGameService : ITimerService
    {
        public void UpdateTimer()
        {
            Timer timer = SingletonTimer.GetInstance();            
            OperationContext.Current.GetCallbackChannel<ITimerServiceCallback>().DisplayTimerValue(30);



        }
    }
}
