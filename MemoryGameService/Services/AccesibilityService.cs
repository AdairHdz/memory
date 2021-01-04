using DataAccess;
using DataAccess.Units_of_work;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjectMappers;
using System.Linq;
using System.ServiceModel;
using MemoryGame.MemoryGameService.Faults;
using System;

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

        public string GetUsername(string emailAddress)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
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
            var player = unitOfWork.Players.Find(x => x.UserName == username && x.EmailWasVerified);
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

        public PlayerCredentialsDTO GetPlayerCredentials(string username)
        {
            try
            {
                PlayerCredentialsDTO playerCredentials = TryGetPlayerCredentials(username);
                return playerCredentials;
            }
            catch (FaultException faultException)
            {
                Console.WriteLine(faultException);
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                nonExistentUserFault.Details = "Details";
                nonExistentUserFault.Error = "Error";
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
            }
        }

        private PlayerCredentialsDTO TryGetPlayerCredentials(string username)
        {
            var unitOfWork = new UnitOfWork(new MemoryGameContext());
            var players = unitOfWork.Players.Find(x => x.UserName == username);
            //unitOfWork.Dispose();
            if (players.Count() == 0)
            {
                NonExistentUserFault nonExistentUserFault = new NonExistentUserFault();
                nonExistentUserFault.Error = "";
                throw new FaultException<NonExistentUserFault>(nonExistentUserFault);
            }

            var player = players.First();
            PlayerCredentialsDTO playerCredentials = PlayerCredentialsMapper.CreateDTO(player);
            return playerCredentials;
        }
    }
}
