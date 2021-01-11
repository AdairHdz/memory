using System.ServiceModel;

namespace MemoryGameService.Contracts
{

    [ServiceContract(SessionMode = SessionMode.Required,
        CallbackContract = typeof(ICommunicationServiceCallback))]
    public interface ICommunicationService
    {
        [OperationContract(IsOneWay = false, IsInitiating = true)]
        void SubscribeToCommunicationService(string username);
        [OperationContract(IsOneWay = false, IsTerminating = true)]
        void UnsubscribeFromCommunicationService();
        [OperationContract(IsOneWay = true)]
        void SendMessage(string sender, string message);
    }

    [ServiceContract]
    public interface ICommunicationServiceCallback
    {
        [OperationContract(IsOneWay = true)]
        void ReciveMessage(string username, string message);
        [OperationContract(IsOneWay = true)]
        void NotifyUserHasEnteredTheChat(string username);

    }
}
