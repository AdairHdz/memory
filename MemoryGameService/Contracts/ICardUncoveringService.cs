using System.ServiceModel;

namespace MemoryGameService.Contracts
{
    [ServiceContract(SessionMode=SessionMode.Required,
        CallbackContract = typeof(ICardUncoveringCallback))]
    public interface ICardUncoveringService
    {
        [OperationContract(IsOneWay = false, IsInitiating = true)]
        void Subscribe(string username);
        [OperationContract(IsOneWay = false, IsTerminating = true)]
        void Unsubscribe();
        [OperationContract(IsOneWay = true)]
        void NotifyCardWasUncovered(int cardIndex);
    }

    public interface ICardUncoveringCallback
    {
        [OperationContract(IsOneWay = true)]
        void UncoverCard(int cardIndex);
    }
}
