using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    [ServiceContract]
    public interface ICommunicationService
    {
        [OperationContract]
        void SendMessage(string message);
        [OperationContract]
        string GetMessage();
    }
}
