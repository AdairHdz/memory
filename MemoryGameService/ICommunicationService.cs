using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{

    [ServiceContract(CallbackContract = typeof(IChatClient))]
    public interface ICommunicationService
    {
        [OperationContract(IsOneWay = true)]
        void Join(string username);

        [OperationContract(IsOneWay = true)]
        void SendMessage(string message);
    }
}
