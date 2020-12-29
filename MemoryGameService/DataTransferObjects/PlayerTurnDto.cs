using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.DataTransferObjects
{
    public class PlayerTurnDto
    {
        /**
 * Host
 * PlayerInMatch (username, score)
 * TurnsLeft
 * IMatchServiceCallback
 * */
        public string Host { get; set; }
        public PlayerInMatchDto player { get; set; }
        public int TurnsLeft { get; set; }
        public IMatchServiceCallback MatchServiceCallback { get; set; }
    }
}
