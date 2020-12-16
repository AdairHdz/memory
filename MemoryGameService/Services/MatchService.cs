using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchService
    {
        public void GetActivePlayers()
        {
            List<string> activePlayers = new List<string>();
            activePlayers.Add(DateTime.Now.ToString());
            OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>().ShowActivePlayers(activePlayers);
        }
    }
}
