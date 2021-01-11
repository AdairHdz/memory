using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(SessionMode = SessionMode.Required,
        CallbackContract = typeof(ILobbyServiceCallback))]
    public interface ILobbyService
    {
        [OperationContract(IsOneWay = true)]
        void JoinLobby(string host, string username);
        [OperationContract(IsOneWay = true)]
        void LeaveLobby(string host, string username);
        [OperationContract]
        IList<string> GetActivePlayersInLobby(string host);
        [OperationContract(IsOneWay = true)]
        void StartGame(string host);
    }

    [ServiceContract]
    public interface ILobbyServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void NotifyNewPlayerEntered(string username);
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerLeft(string username);
        [OperationContract(IsOneWay = true)]
        void TakePlayersToMatchView(IList<string> playersInMatch);
        [OperationContract(IsOneWay = true)]
        void TakePlayersOutOfLobby();
    }
}
