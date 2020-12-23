using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract]
    public interface IChatClient
    {
        [OperationContract(IsOneWay = true)]
        void ReciveMessage(string username, string message);
        [OperationContract(IsOneWay = true)]
        void NotifyUserHasEnteredTheChat(string username);

    }
}