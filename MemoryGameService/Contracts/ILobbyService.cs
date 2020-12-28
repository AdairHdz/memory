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
        [OperationContract(IsOneWay = true)]
        void CreateNewMatch(GameMatchDto gameMatchDto);
        [OperationContract(IsOneWay = true)]
        void DeleteMatch(GameMatchDto gameMatchDto);
        [OperationContract]
        IList<string> GetActivePlayersFromMatch(GameMatchDto gameMatchDto);
    }

    [ServiceContract]
    public interface ILobbyServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void NotifyNewPlayerEntered(string username);
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerLeft(string username);
    }
}
