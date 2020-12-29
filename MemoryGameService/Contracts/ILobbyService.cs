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
        void CreateNewMatch(GameMatchConfigDto gameMatchDto);
        [OperationContract(IsOneWay = true)]
        void DeleteMatch(GameMatchConfigDto gameMatchDto);
        [OperationContract]
        IList<string> GetActivePlayersFromMatch(GameMatchConfigDto gameMatchDto);
        [OperationContract(IsOneWay = true)]
        void StartGame(LobbyRequestDto lobbyRequestDto);
    }

    [ServiceContract]
    public interface ILobbyServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void NotifyNewPlayerEntered(string username);
        [OperationContract(IsOneWay = true)]
        void NotifyPlayerLeft(string username);
        [OperationContract(IsOneWay = true)]
        void TakePlayersToMatchView();
    }
}
