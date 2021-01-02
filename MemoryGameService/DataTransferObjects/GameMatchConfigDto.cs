using MemoryGameService.Utilities;
using System;
using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class GameMatchConfigDto
    {
        public int MaxNumberOfPlayers { get; set; }
        public CardDeckDTO CardDeckDto { get; set; }
        public string Host { get; set; }
        public bool HasStarted { get; set; }
        private IList<PlayerInMatchDto> _players { get; set; }
        public MatchLobbyDto Lobby { get; set; }

        public GameMatchConfigDto()
        {
            Lobby = new MatchLobbyDto();
            _players = new List<PlayerInMatchDto>();
        }

        public IList<LobbyRequestDto> GetPlayersConnectedToLobby()
        {
            IList<LobbyRequestDto> lobbyRequests = Lobby.GetLobbyRequests();
            return lobbyRequests;
        }

        public IList<PlayerInMatchDto> GetPlayersConnectedToMatch()
        {            
            return _players;
        }

        public IList<string> GetUsernamesOfPlayersConnectedToLobby()
        {
            IList<string> usernamesOfPlayersConnectedToLobby = new List<string>();
            IList<LobbyRequestDto> lobbyRequests = Lobby.GetLobbyRequests();
            foreach(var request in lobbyRequests)
            {
                usernamesOfPlayersConnectedToLobby.Add(request.Username);
            }
            return usernamesOfPlayersConnectedToLobby;
        }

        public IList<string> GetUsernamesOfPlayersConnectedToMatch()
        {
            IList<string> usernamesOfPlayersConnectedToMatch = new List<string>();
            foreach(var player in _players)
            {
                usernamesOfPlayersConnectedToMatch.Add(player.Username);
            }
            return usernamesOfPlayersConnectedToMatch;
        }

        public void AddPlayer(PlayerInMatchDto player)
        {
            _players.Add(player);
        }

        public PlayerInMatchDto GetPlayer(string username)
        {
            foreach(var player in _players)
            {
                if (player.Username.Equals(username))
                {
                    return player;
                }                
            }
            //No se encontró al jugador. Hacer excepción personalizada
            throw new Exception("");
        }

        public PlayerInMatchDto GetPlayerWithBestScore()
        {
            PlayerInMatchDto playerWithBestScore = _players[0];

            for(int currentIndex = 0; currentIndex < _players.Count - 1; currentIndex++)
            {
                if(playerWithBestScore.Score < _players[currentIndex + 1].Score)
                {
                    playerWithBestScore = _players[currentIndex + 1];
                }
            }
            return playerWithBestScore;
        }

    }
}
