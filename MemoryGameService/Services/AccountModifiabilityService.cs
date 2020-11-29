using DataAccess;
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
    public partial class MemoryGameService : IAccountModifiabilityService
    {
        public bool ChangeUsername(PlayerCredentialsDTO playerCredentialsDTO)
        {
            string emailAddress = playerCredentialsDTO.EmailAddress;
            string newUsername = playerCredentialsDTO.Username;
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.UserName = newUsername;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }

        public bool SetNewPassword(PlayerCredentialsDTO playerCredentialsDTO)
        {
            string emailAddress = playerCredentialsDTO.EmailAddress;
            string password = playerCredentialsDTO.Password;
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.Password = password;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }
    }
}
