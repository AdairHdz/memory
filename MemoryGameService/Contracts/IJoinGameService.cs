using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(SessionMode = SessionMode.Required,
        CallbackContract = typeof(IJoinGameServiceCallback))]
    public interface IJoinGameService
    {
        [OperationContract(IsOneWay = true)]
        void JoinGameLobby(string username);
        [OperationContract(IsOneWay = true)]
        void LeaveGameLobby();
        [OperationContract(IsOneWay = true)]
        void RecoverAvailableGames();
        [OperationContract]
        bool AskForJoinGame(string gameHostUsername);
    }

    [ServiceContract]
    public interface IJoinGameServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void NewGameCreated(string gameHostUsername);
        [OperationContract(IsOneWay = true)]
        void ReciveAvailableGames(string gameHostUsername);
        [OperationContract(IsOneWay = true)]
        void RemoveGameFromList(string gameHostUsername);
    }
}
