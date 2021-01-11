using DataAccess.Entities;

namespace DataAccess.Repositories
{
    /// <summary>
    /// The <c>PlayerRepository</c> interface.
    /// Defines the operations that the implementer of this interface will need to address.
    /// These operations must work on the <c>Player</c> entity.
    /// </summary>
    public interface IPlayerRepository : IRepository<Player>
    {
        /// <summary>
        /// Updates the score of the <c>Player</c> entity with the specified username.
        /// </summary>
        /// <param name="username">The username of the <c>Player</c> entity you want to update the score</param>
        /// <param name="score">The score that you want to set to the <c>Player</c> entity.</param>
        void UpdateScoreOfPlayersAfterMatch(string username, int score);

        /// <summary>
        /// Retrieves the <c>Player</c> entity with the specified username.
        /// </summary>
        /// <param name="username">The username of the <c>Player</c> entity you want to get.</param>
        /// <returns>the <c>Player</c> entity with the specified username, or null if there were no matches.</returns>
        Player FindPlayerByUsername(string username);
    }
}
