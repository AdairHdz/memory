using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGame.MemoryGameService.Faults;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IMatchServiceCallback))]
    public interface IMatchService
    {
        [OperationContract(IsOneWay = true)]
        void NotifyCardWasUncoveredd(PlayerMovementDto playerMovementDto);
        
        [OperationContract(IsOneWay = true)]
        void EnterMatch(string host, string username);
        [OperationContract(IsOneWay = true)]
        void EndTurn(string host, string username, CardPairDto cardPairDto);
        [OperationContract]
        IList<PlayerInMatchDto> GetPlayersConnectedToMatch(string host);
        [OperationContract(IsOneWay = true)]
        void NotifyMatchHasEnded(string host);
    }

    [ServiceContract]
    public interface IMatchServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void UncoverCardd(int cardIndex);
        [OperationContract(IsOneWay = true)]
        void NotifyTurnHasEnded(string username, CardPairDto cardPairDto);
        [OperationContract(IsOneWay = true)]
        void ShowWinners(string winner);
    }

}
