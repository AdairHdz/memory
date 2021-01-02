using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : IMatchCreationService
    {
        public void CreateNewMatch(GameMatchDto gameMatchDto)
        {
            _matches.Add(gameMatchDto);
        }
    }
}
