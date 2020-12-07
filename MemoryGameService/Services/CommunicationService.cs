using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Single,
       InstanceContextMode = InstanceContextMode.Single)]
    public partial class MemoryGameService : ICommunicationService
    {
        private Dictionary<IChatClient, string> _players = new Dictionary<IChatClient, string>();
        public void SendMessage(string message)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IChatClient>();
            string player;
            if (!_players.TryGetValue(connection, out player))
            {
                return;
            }
            foreach (var other in _players.Keys)
            {
                if (other == connection)
                {
                    continue;
                }
                other.ReciveMessage(player, message);
            }

        }
        public void Join(string username)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IChatClient>();
            _players[connection] = username;
        }
    }
}
