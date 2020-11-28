using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IMemoryGameCallback))]
    public interface IMemoryGameService
    {
        [OperationContract(IsOneWay = true)]
        void GetActivePlayers();        
    }

    public interface IMemoryGameCallback
    {
        [OperationContract(IsOneWay = true)]
        void ShowActivePlayers(List<string> activePlayers);
    }

}
