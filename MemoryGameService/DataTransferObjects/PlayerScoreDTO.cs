namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerScoreDto</c> class.
    /// It is used to map the information of a Player etity when consulting the table of best scores.
    /// </summary>
    public class PlayerScoreDTO
    {
        /// <summary>
        /// Player username.
        /// </summary>
        public string Username { get; set; }
        /// <summary>
        /// Player registed score.
        /// </summary>
        public int TotalScore { get; set; }
    }
}
