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
        private int _timerValue = 50;

        public void UpdateTimer()
        {
            Timer timer = SingletonTimer.GetInstance();
            timer.Start();
            timer.Elapsed += (sender, e) =>
            {
                OperationContext.Current.GetCallbackChannel<ITimerServiceCallback>().DisplayTimerValue(30);
                _timerValue--;                
            };
            
            

        }
    }
}
