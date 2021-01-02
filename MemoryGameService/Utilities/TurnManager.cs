using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService.Utilities
{
    public class TurnManager
    {
        public string PlayerWithCurrentTurn { get; set; }
        private int _indexOfPlayerWithCurrentTurn;
        private GameMatchConfigDto _gameMatch;

        public string PassTurnToNextPlayer(IList<PlayerInMatchDto> players)
        {
            if(_indexOfPlayerWithCurrentTurn == players.Count)
            {
                _indexOfPlayerWithCurrentTurn = 0;
            }
            else
            {
                _indexOfPlayerWithCurrentTurn++;
            }
            PlayerInMatchDto player = players.ElementAt(_indexOfPlayerWithCurrentTurn);
            PlayerWithCurrentTurn = player.Username;
            return player.Username;
        }
    }
}
