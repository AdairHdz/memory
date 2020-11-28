using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IMatchServiceCallback))]
    public interface IMatchService
    {
        [OperationContract(IsOneWay = true)]
        void GetActivePlayers();        
    }

    public interface IMatchServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void ShowActivePlayers(List<string> activePlayers);
    }

}
