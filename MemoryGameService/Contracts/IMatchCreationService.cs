using MemoryGame.MemoryGameService.DataTransferObjects;
using System.ServiceModel;

namespace MemoryGameService.Contracts
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
    [ServiceContract]
    public interface IMatchCreationService
    {
        /// <summary>
        /// Creates a new match in the game and adds it to the list.
        /// </summary>
        /// <param name="gameMatchDto">It contains the necessary data for the creation of the match</param>
        [OperationContract(IsOneWay = true)]
        void CreateNewMatch(MatchDto gameMatchDto);
    }
}
