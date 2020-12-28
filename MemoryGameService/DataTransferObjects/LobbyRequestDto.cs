using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class LobbyRequestDto
    {
        public string Host { get; set; }
        public string Username { get; set; }
        public ILobbyServiceCallback Connection { get; set; }
    }
}
