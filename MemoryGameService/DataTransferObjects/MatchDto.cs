using System;
using System.Collections.Generic;

namespace MemoryGame.MemoryGameService.DataTransferObjects
{
    public class MatchDto
    {
        public int MaxNumberOfPlayers { get; set; }
        public CardDeckDTO CardDeckDto { get; set; }
        public string Host { get; set; }
        public bool HasStarted { get; set; }
        public Lobby Lobby { get; set; }
        private IList<PlayerInMatch> _players;
        public int TotalPairs { get; set; }

        public MatchDto()
        {
            Lobby = new Lobby();
            _players = new List<PlayerInMatch>();
        }

        public IList<PlayerInMatch> GetPlayersConnectedToMatch()
        {            
            return _players;
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

        public void AddPlayer(PlayerInMatch player)
        {
            _players.Add(player);
        }

        public PlayerInMatch GetPlayer(string username)
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


        public void StartMatch()
        {            
            IList<PlayerInLobby> playersConnectedToLobby = Lobby.GetPlayersConnectedToLobby();
            IList<string> usernamesOfPlayersConnectedToLobby = Lobby.GetUsernamesOfPlayersConnectedToLobby();
            foreach (var playerInLobby in playersConnectedToLobby)
            {
                var channel = playerInLobby.Connection;
                channel.TakePlayersToMatchView(usernamesOfPlayersConnectedToLobby);
            }
            HasStarted = true;
        }

        public PlayerInMatch GetPlayerWithBestScore()
        {
            PlayerInMatch playerWithBestScore = _players[0];

            for(int currentIndex = 0; currentIndex < _players.Count - 1; currentIndex++)
            {
                if(playerWithBestScore.Score < _players[currentIndex + 1].Score)
                {
                    playerWithBestScore = _players[currentIndex + 1];
                }
            }
            return playerWithBestScore;
        }

        public int AddExpelVote(string playerUsername)
        {
            int playerExpelVotes = 0;
            for (int currentIndex = 0; currentIndex < _players.Count; currentIndex++)
            {
                if (_players[currentIndex].Username.Equals(playerUsername))
                {
                    _players[currentIndex].ExpulsionVotes++;
                    playerExpelVotes = _players[currentIndex].ExpulsionVotes;
                }
            }
            return playerExpelVotes;
        }

        public void RemovePlayer(string playerUsername)
        {
            PlayerInMatch playerToRemove = this.GetPlayer(playerUsername);
            _players.Remove(playerToRemove);
        }

    }
}
