using MemoryGame.MemoryGameService.DataTransferObjects;
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
        IList<PlayerInMatch> GetPlayersConnectedToMatch(string host);
        [OperationContract(IsOneWay = true)]
        void NotifyMatchHasEnded(string host);
        [OperationContract(IsOneWay = true)]
        void LeaveMatch(string host, string username);
        [OperationContract(IsOneWay = true)]
        void ExpelPlayer(string host, string expelPlayerUsername, string playerUsername);
        [OperationContract]
        IList<string> GetUsernamesOfPlayersConnectedToMatch(string host);
        [OperationContract]
        IList<string> GetPlayersVoted(string host, string username);
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
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerWasExpel(string expelPlayerUsername, IList<int> cardsUncovered);
        [OperationContract(IsOneWay = true)]
        void EndTurnOfExpelPlayer(string nextPlayerUsername);
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerLeaveMatch(string username, IList<int> cardsUncovered);
        [OperationContract(IsOneWay = true)]
        void MatchHasEnded();
    }

}
