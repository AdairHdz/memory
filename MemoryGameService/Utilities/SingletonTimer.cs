using MemoryGameService.Contracts;
using System;
using System.ServiceModel;
using System.Timers;

namespace MemoryGameService.Utilities
{
    public class SingletonTimer
    {
        private static Timer _timer;
        private int _maxCounter;
        private SingletonTimer()
        {
            _maxCounter = 60;   
        }

        public static Timer GetInstance()
        {
            if(_timer == null)
            {
                _timer = new Timer();
                _timer.Interval = 1000;
                _timer.Enabled = true;
                //_timer.AutoReset = false;                
            }
            //_timer.Start();
            var channel = OperationContext.Current.GetCallbackChannel<ITimerServiceCallback>();
            _timer.Elapsed += (sender, args) =>
            {
                channel.DisplayTimerValue(2);
            };
            return _timer;
        }
    }
}
