using DataAccess.Context;
using DataAccess.Models;
using DataAccess.Units_of_work;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    public class MemoryGameService : IMemoryGameService, ICommunicationService, IAccessibilityService
    {
        public string GetMessage()
        {
            throw new NotImplementedException();
        }

        public bool HasAccessRights(string username, string password)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());          
            var player = unitOfWork.Players.Find(x => x.Username == username && x.Password == password);
            return player.Count() == 1;
        }

        public void SendMessage(string message)
        {
            throw new NotImplementedException();
        }

        public void GetActivePlayers()
        {            
            List<string> activePlayers = new List<string>();
            activePlayers.Add(DateTime.Now.ToString());
            OperationContext.Current.GetCallbackChannel<IMemoryGameCallback>().ShowActivePlayers(activePlayers);            
        }

        public bool RegisterNewPlayer(string emailAddress, string username, string password)
        {
            Player newPlayer = new Player();
            newPlayer.EmailAddress = emailAddress;
            newPlayer.Username = username;
            newPlayer.Password = password;
            newPlayer.TotalScore = 0;
            newPlayer.EmailWasVerified = false;
            var unityOfWork = new UnitOfWork(new MemoryGameContext());
            unityOfWork.Players.Add(newPlayer);
            return unityOfWork.Complete() == 1;
        }
    }
}
