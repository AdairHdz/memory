using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using MemoryGameService.DataTransferObjects;
using System.Collections.Generic;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchService
    {
        /**
         * Host: string
         * Username: string
         * HasFormedAPair: bool
         * CardIndex: int
         * */

        private IList<PlayerTurnDto> _playersTurnDtos = new List<PlayerTurnDto>();

        public void EnterMatch(PlayerTurnDto playerTurnDto)
        {
            _playersTurnDtos.Add(playerTurnDto);
        }

        public void NotifyCardWasUncoveredd(PlayerTurnDto playerTurnDto)
        {
            string host = playerTurnDto.Host;
            GameMatchConfigDto gameMatch = GetMatch(host);
            

            throw new System.NotImplementedException();
        }
    }
}
