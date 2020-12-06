using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract(SessionMode = SessionMode.Required,
                 CallbackContract = typeof(ITimerServiceCallback))]
    public interface ITimerService
    {
        [OperationContract(IsOneWay = true)]
        void UpdateTimer();
    }

    public interface ITimerServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void DisplayTimerValue(int timerValue);
    }
}
