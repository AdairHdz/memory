using MemoryGameService.Contracts;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public class CommunicationEventArgs
    {
        public string Sender { get; set; }
        public string Message { get; set; }
    }

    public partial class MemoryGameService : ICommunicationService
    {

        public static event MessageSentEventHandler MessageSentEvent;
        public delegate void MessageSentEventHandler(object sender,
            CommunicationEventArgs communicationEventArgs);
        ICommunicationServiceCallback _communicationServiceCallback = null;
        MessageSentEventHandler _messageSentHandler = null;

        public void SendMessage(string sender, string message)
        {

            CommunicationEventArgs communicationEventArgs = new CommunicationEventArgs()
            {
                Sender = sender,
                Message = message
            };
            MessageSentEvent(this, communicationEventArgs);
        }

        public void SubscribeToCommunicationService(string username)
        {
            _communicationServiceCallback = OperationContext.Current.GetCallbackChannel<ICommunicationServiceCallback>();
            _messageSentHandler = new MessageSentEventHandler(MessageSentHandler);            
            MessageSentEvent += _messageSentHandler;
        }

        public void UnsubscribeFromCommunicationService()
        {
            MessageSentEvent -= _messageSentHandler;
        }

        public void MessageSentHandler(object sender,
            CommunicationEventArgs communicationEventArgs)
        {
            _communicationServiceCallback.ReciveMessage(communicationEventArgs.Sender,
                communicationEventArgs.Message);
        }

    }
}
