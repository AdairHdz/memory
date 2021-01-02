
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class PlayerMovementDto
    {
        /**
 * Host
 * PlayerInMatch (username, score)
 * TurnsLeft
 * IMatchServiceCallback
 * */
        public string Host { get; set; }
        public string Username { get; set; }
        public bool HasFormedAPair { get; set; }
        public int CardIndex { get; set; }
        public int MovementsLeft { get; set; }
    }
}
