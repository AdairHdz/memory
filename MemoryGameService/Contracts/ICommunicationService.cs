using System.ServiceModel;

namespace MemoryGameService.Contracts
{

    [ServiceContract(SessionMode = SessionMode.Required,
        CallbackContract = typeof(IChatClient))]
    public interface ICommunicationService
    {
        [OperationContract(IsOneWay = false, IsInitiating = true)]
        void SubscribeToCommunicationService(string username);
        [OperationContract(IsOneWay = false, IsTerminating = true)]
        void UnsubscribeFromCommunicationService();
        //[OperationContract(IsOneWay = true)]
        //void Join(string username);

        [OperationContract(IsOneWay = true)]
        void SendMessage(string sender, string message);
    }
}
