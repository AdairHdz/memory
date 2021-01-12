using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;

namespace MemoryGameService.Services
{
    /// <inheritdoc/>
    public partial class MemoryGameService : IMatchCreationService
    {
        /// <inheritdoc/>
        public void CreateNewMatch(MatchDto gameMatchDto)
        {
            _matches.Add(gameMatchDto);
        }
    }
}
