using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IPlayerRegistryService
    {
        public bool RegisterNewPlayer(string emailAddress, string username, string password, string verificationToken)
        {
            Player newPlayer = new Player()
            {
                EmailAddress = emailAddress,
                UserName = username,
                Password = password,
                TotalScore = 0,
                EmailWasVerified = false,
                ActivationToken = verificationToken

            };
            var unityOfWork = new UnitOfWork(new MemoryGameContext());
            unityOfWork.Players.Add(newPlayer);
            int playerWasRegistered = unityOfWork.Complete();
            unityOfWork.Dispose();
            return playerWasRegistered == 1;
        }

        public bool EmailAddressIsAvailable(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            unitOfWork.Dispose();
            return player == null;
        }

        public bool UserNameIsAvailable(string username)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(playerToFind => playerToFind.UserName == username);
            int playersWhichHaveThatUserName = player.Count();
            unitOfWork.Dispose();
            return playersWhichHaveThatUserName == 0;
        }
    }
}
