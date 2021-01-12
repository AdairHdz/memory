using System.Runtime.Serialization;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    /// <summary>
    /// The <c>PlayerScoreDto</c> class.
    /// It is used to map the information of a Player etity when consulting the table of best scores.
    /// </summary>
    [DataContract]
    public class PlayerScoreDto
    {
        /// <summary>
        /// Player username.
        /// </summary>
        [DataMember]
        public string Username { get; set; }
        /// <summary>
        /// Player registed score.
        /// </summary>
        [DataMember]
        public int TotalScore { get; set; }
    }
}
