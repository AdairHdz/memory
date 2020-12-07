using DataAccess;
using DataAccess.Entities;
using DataAccess.Units_of_work;
using MemoryGameService.Contracts;
using System.Linq;
using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IPlayerRegistryService
    {
        public bool RegisterNewPlayer(PlayerDTO playerDTO)
        {
            /*
            try
            {

            }
            catch (EndpointNotFoundException)
            {
                EndpointNotFoundFault endpointNotFoundFault = new EndpointNotFoundFault();
                endpointNotFoundFault.Error = "Endpoint no encontrado (falta hacerlo un resource)";
                endpointNotFoundFault.Details = "Detalles (falta hacerlo un resource)";
                throw new FaultException<EndpointNotFoundFault>(endpointNotFoundFault);
            }
            catch (SocketException)
            {
                EndpointNotFoundFault endpointNotFoundFault = new EndpointNotFoundFault();
                endpointNotFoundFault.Error = "Endpoint no encontrado (falta hacerlo un resource)";
                endpointNotFoundFault.Details = "Detalles (falta hacerlo un resource)";
                throw new FaultException<EndpointNotFoundFault>(endpointNotFoundFault);
            }
            */
            Player newPlayer = PlayerMapper.CreateEntity(playerDTO);
            newPlayer.EmailWasVerified = false;
            newPlayer.TotalScore = 0;
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
