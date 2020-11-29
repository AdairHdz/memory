using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class PlayerScoreDTO
    {
        public string Username { get; set; }
        public int TotalScore { get; set; }
    }
}
