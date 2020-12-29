using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchDiscoveryService
    {
        public bool CanJoin(GameMatchConfigDto gameMatchDto)
        {
            int numberOfPlayersConnectedToMatch = gameMatchDto.GetNumberOfPlayersConnected();
            int numberOfPlayersRequired = gameMatchDto.MaxNumberOfPlayers;
            bool matchHasStarted = gameMatchDto.HasStarted;
            bool ThereIsSpaceForAnotherPlayer = false;

            if (numberOfPlayersConnectedToMatch < numberOfPlayersRequired)
            {
                ThereIsSpaceForAnotherPlayer = true;
            }

            if (ThereIsSpaceForAnotherPlayer && !matchHasStarted)
            {
                return true;
            }
            return false;
        }

        public void DiscoverActiveMatches()
        {
            //_matches is located at LobbyService
            IList<GameMatchConfigDto> matches = _matches;
            var channel = OperationContext.Current.GetCallbackChannel<IMatchDiscoveryServiceCallback>();
            channel.ShowActiveMatches(_matches);
        }
    }
}
