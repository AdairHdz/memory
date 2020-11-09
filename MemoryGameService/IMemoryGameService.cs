using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    [ServiceContract(CallbackContract = typeof(IMemoryGameCallback))]
    public interface IMemoryGameService
    {
        [OperationContract]
        void GetActivePlayers();
        
    }

    public interface IMemoryGameCallback
    {
        [OperationContract]
        void ShowActivePlayers(List<string> activePlayers);
    }
}
