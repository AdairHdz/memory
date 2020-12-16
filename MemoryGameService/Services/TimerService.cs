using MemoryGameService.Contracts;
using System.ServiceModel;
using System.Timers;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ITimerService
    {
        private int _maxCounter = 60;
        public void UpdateTimer()
        {
            //Timer timer = SingletonTimer.GetInstance();            
            
            Timer timer = new Timer()
            {                
                Interval = 1000,
                Enabled = true,
                AutoReset = true
            };
            
            var channel = OperationContext.Current.GetCallbackChannel<ITimerServiceCallback>();
            timer.Elapsed += (sender, args) =>
            {
                _maxCounter--;
                channel.DisplayTimerValue(_maxCounter);
            };
            timer.Start();
            //Timer timer = SingletonTimer.GetInstance();
        }

        static void HandleElapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            
        }
    }
}
