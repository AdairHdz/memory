using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IAccessibilityService
    {
        public string GetUserEmailAddress(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.UserName == username);
            string emailAddress = player.ElementAt(0).EmailAddress;
            unitOfWork.Dispose();
            return emailAddress;
        }

        public string GetUsername(string emailAdress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAdress);
            string username = player.UserName;
            unitOfWork.Dispose();
            return username;
        }

        public bool HasAccessRights(PlayerCredentialsDTO playerCredentialsDTO)
        {
            string username = playerCredentialsDTO.Username;
            string password = playerCredentialsDTO.Password;

            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.UserName == username && x.Password == password);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public bool IsVerified(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.UserName == username && x.EmailWasVerified == true);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }

        public bool ItsRegistered(string emailAddress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(x => x.EmailAddress == emailAddress);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }
    }
}
