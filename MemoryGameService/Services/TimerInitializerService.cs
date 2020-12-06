using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ITimerInitializerService
    {
        public void InitializeTimer()
        {
            Timer timer = SingletonTimer.GetInstance();
            timer.Start();
        }
    }
}
