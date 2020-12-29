using MemoryGameService.DataTransferObjects;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IMatchServiceCallback))]
    public interface IMatchService
    {
        [OperationContract(IsOneWay = true)]
        void NotifyCardWasUncoveredd(PlayerTurnDto playerTurnDto);
        [OperationContract(IsOneWay = true)]
        void EnterMatch(PlayerTurnDto playerTurnDto);
    }

    [ServiceContract]
    public interface IMatchServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void UncoverCardd(PlayerTurnDto playerTurnDto);
    }

}
