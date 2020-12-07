using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
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
