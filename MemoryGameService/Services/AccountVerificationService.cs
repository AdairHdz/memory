using DataAccess;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System.Linq;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IAccountVerificationService
    {
        public bool SetAccountAsVerified(string emailAddress)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.EmailWasVerified = true;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }

        public bool AssignNewVerificationToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Get(emailAddress);
            player.ActivationToken = verificationToken;
            int rowsModified = unitOfWork.Complete();
            unitOfWork.Dispose();
            return rowsModified == 1;
        }

        public bool VerifyToken(string emailAddress, string verificationToken)
        {
            UnitOfWork unitOfWork = new UnitOfWork(new MemoryGameContext());
            var player = unitOfWork.Players.Find(playerToFind => playerToFind.EmailAddress ==
            emailAddress && playerToFind.ActivationToken == verificationToken);
            int matches = player.Count();
            unitOfWork.Dispose();
            return matches == 1;
        }
    }
}
