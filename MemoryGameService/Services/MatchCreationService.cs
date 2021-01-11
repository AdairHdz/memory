using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;

namespace MemoryGameService.Services
{
    /// <summary>
    /// The <c>MatchCreation</c> service.
    /// Is used to create a new match in the game.
    /// The only operation it contains is:
    /// <list type="bullet">
    /// <item>
    /// <term>CreateNewMatch</term>
    /// <description>Creates a new match.</description>
    /// </item>
    /// </list>
    /// </summary>
    public partial class MemoryGameService : IMatchCreationService
    {
        /// <summary>
        /// Creates a new match in the game and adds it to the list.
        /// </summary>
        /// <param name="gameMatchDto">It contains the necessary data for the creation of the match</param>
        public void CreateNewMatch(MatchDto gameMatchDto)
        {
            _matches.Add(gameMatchDto);
        }
    }
}
