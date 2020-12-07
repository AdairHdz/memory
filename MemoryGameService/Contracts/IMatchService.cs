using System.Collections.Generic;
using System.ServiceModel;

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
