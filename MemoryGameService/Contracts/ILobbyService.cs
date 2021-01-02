using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(SessionMode = SessionMode.Required,
        CallbackContract = typeof(ILobbyServiceCallback))]
    public interface ILobbyService
    {
        [OperationContract(IsOneWay = true)]
        void JoinLobby(LobbyRequestDto lobbyRequestDto);
        [OperationContract(IsOneWay = true)]
        void LeaveLobby(LobbyRequestDto lobbyRequestDto);
        [OperationContract]
        IList<string> GetActivePlayersInLobby(GameMatchConfigDto gameMatchDto);
        [OperationContract(IsOneWay = true)]
        void StartGame(GameMatchConfigDto gameMatchDto);
        [OperationContract(IsOneWay = true)]
        void DeleteMatch(string matchHost);
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
