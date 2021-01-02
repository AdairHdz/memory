using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ILobbyService
    {
        public void DeleteMatch(string matchHost)
        {
            GameMatchConfigDto gameMatch = GetMatch(matchHost);
            _matches.Remove(gameMatch);

            IList<LobbyRequestDto> playersConnectedToLobby = gameMatch.GetPlayersConnectedToLobby();
            foreach(var player in playersConnectedToLobby)
            {
                var channel = player.Connection;
                channel.TakePlayersOutOfLobby();
            }

        }

        public IList<string> GetActivePlayersInLobby(GameMatchConfigDto gameMatchDto)
        {
            IList<string> activePlayersFromMatch = new List<string>();
            foreach(var match in _matches)
            {
                if (match.Host.Equals(gameMatchDto.Host))
                {                    
                    activePlayersFromMatch = match.GetUsernamesOfPlayersConnectedToLobby();
                    break;
                }
            }
            return activePlayersFromMatch;
        }

        public void JoinLobby(LobbyRequestDto lobbyRequestDto)
        {
            lobbyRequestDto.Connection = OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>();
            
            string host = lobbyRequestDto.Host;
            string username = lobbyRequestDto.Username;
            GameMatchConfigDto gameMatch = GetMatch(host);
            MatchLobbyDto matchLobbyDto = gameMatch.Lobby;
            matchLobbyDto.AddPlayerToLobby(lobbyRequestDto);
            IList<LobbyRequestDto> requests = gameMatch.Lobby.GetLobbyRequests();
            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.NotifyNewPlayerEntered(username);
            }
        }

        public void LeaveLobby(LobbyRequestDto lobbyRequestDto)
        {            
            string host = lobbyRequestDto.Host;
            string username = lobbyRequestDto.Username;
            GameMatchConfigDto gameMatch = GetMatch(host);

            MatchLobbyDto matchLobby = gameMatch.Lobby;            
            matchLobby.RemovePlayerFromLobby(lobbyRequestDto);

            IList<LobbyRequestDto> requests = matchLobby.GetLobbyRequests();

            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.NotifyPlayerLeft(username);

            }
        }

        public void StartGame(GameMatchConfigDto gameMatchDto)
        {
            GameMatchConfigDto gameMatch = GetMatch(gameMatchDto.Host);
            MatchLobbyDto matchLobby = gameMatch.Lobby;
                                    
            IList<LobbyRequestDto> requests = matchLobby.GetLobbyRequests();
            IList<string> playersInMatch = gameMatch.GetUsernamesOfPlayersConnectedToLobby();

            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.TakePlayersToMatchView(playersInMatch);
            }

            gameMatch.HasStarted = true;

        }

        private GameMatchConfigDto GetMatch(string host)
        {
            GameMatchConfigDto gameMatch = null;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                    break;
                }
            }
            return gameMatch;
        }
    }
}
