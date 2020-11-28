using DataAccess;
using DataAccess.Units_of_work;
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
        public bool ChangeUsername(string emailAddress, string newUsername)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.UserName = newUsername;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }

        public bool SetNewPassword(string emailAddress, string password)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.Password = password;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }
    }
}
