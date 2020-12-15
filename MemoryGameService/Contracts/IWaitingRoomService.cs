using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(CallbackContract = typeof(IWaitingRoomServiceCallback))]
    public interface IWaitingRoomService
    {
        [OperationContract(IsOneWay = true)]
        void CreateGame(string username, int maxNumOfPlayers);
        [OperationContract(IsOneWay = true)]
        void RecoverGameMembers(string gameHostUsername);
        [OperationContract(IsOneWay = true)]
        void JoinGame(string gameHostUsername, string newPlayerUsername);
        [OperationContract(IsOneWay = true)]
        void LeaveGame(string gameHostUsername, string username);
        [OperationContract(IsOneWay = true)]
        void StarGame(string gameHostUsername);
    }

    [ServiceContract]
    public interface IWaitingRoomServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void NewPlayerJoined(string newPlayerUsername);
        [OperationContract(IsOneWay = true)]
        void ReciveGameMembers(string memberUsername);
        [OperationContract(IsOneWay = true)]
        void HostLeaveGame();
        [OperationContract(IsOneWay = true)]
        void PlayerLeaveGame(string playerUsername);
        [OperationContract(IsOneWay = true)]
        void GameStarted();
    }
}
