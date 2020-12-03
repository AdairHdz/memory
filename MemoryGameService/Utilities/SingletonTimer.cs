using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace MemoryGameService.Utilities
{
    public class SingletonTimer
    {
        private static Timer _timer;

        private SingletonTimer()
        {
            
        }

        public static Timer GetInstance()
        {
            if(_timer == null)
            {
                _timer = new Timer();
                _timer.Elapsed += null;
                _timer.Interval = 1000;
                _timer.Enabled = true;
                _timer.Start();
                //_timer.Enabled = true;
                //_timer.AutoReset = false;                
            }
            return _timer;
        }

        void HandleElapsed(object sender, System.Timers.ElapsedEventArgs e)
        {
            Console.WriteLine(DateTime.Now.ToString());
        }

    }
}
