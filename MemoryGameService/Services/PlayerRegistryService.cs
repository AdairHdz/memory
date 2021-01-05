using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System.Linq;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System.Collections.Generic;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IPlayerRegistryService
    {
        public bool RegisterNewPlayer(PlayerDTO playerDTO)
        {
            Player newPlayer = PlayerMapper.CreateEntity(playerDTO);
            newPlayer.EmailWasVerified = false;
            newPlayer.TotalScore = 0;
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            unitOfWork.Players.Add(newPlayer);
            int playerWasRegistered = unitOfWork.Complete();
            unitOfWork.Dispose();
            return playerWasRegistered == 1;
        }

        public bool EmailAddressIsAvailable(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            Player playerWithTheSpecifiedEmailAddress = unitOfWork.Players.Get(emailAddress);
            unitOfWork.Dispose();
            if (playerWithTheSpecifiedEmailAddress == null)
            {
                return true;
            }
            return false;           
        }

        public bool UserNameIsAvailable(string username)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            IEnumerable<Player> player = unitOfWork.Players.Find(playerToFind => playerToFind.UserName == username);
            int playersWhichHaveThatUserName = player.Count();
            unitOfWork.Dispose();
            if (playersWhichHaveThatUserName == 0)
            {
                return true;
            }
            return false;            
        }


    }
}
