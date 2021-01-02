using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    public partial class MemoryGameService : ILobbyService
    {
        public void DeleteMatch(string matchHost)
        {
            GameMatchDto gameMatch = GetMatch(matchHost);            
            IList<LobbyRequestDto> playersConnectedToLobby = gameMatch.GetPlayersConnectedToLobby();
            foreach(var player in playersConnectedToLobby)
            {
                var channel = player.Connection;
                channel.TakePlayersOutOfLobby();
            }
            _matches.Remove(gameMatch);
        }

        public IList<string> GetActivePlayersInLobby(GameMatchDto gameMatchDto)
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
            GameMatchDto gameMatch = GetMatch(host);
            MatchLobby matchLobbyDto = gameMatch.Lobby;
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
            GameMatchDto gameMatch = GetMatch(host);

            MatchLobby matchLobby = gameMatch.Lobby;            
            matchLobby.RemovePlayerFromLobby(lobbyRequestDto);

            IList<LobbyRequestDto> requests = matchLobby.GetLobbyRequests();

            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.NotifyPlayerLeft(username);

            }
        }

        public void StartGame(GameMatchDto gameMatchDto)
        {
            GameMatchDto gameMatch = GetMatch(gameMatchDto.Host);
            MatchLobby matchLobby = gameMatch.Lobby;
                                    
            IList<LobbyRequestDto> requests = matchLobby.GetLobbyRequests();
            IList<string> playersInMatch = gameMatch.GetUsernamesOfPlayersConnectedToLobby();

            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.TakePlayersToMatchView(playersInMatch);
            }

            gameMatch.HasStarted = true;

        }

        private GameMatchDto GetMatch(string host)
        {
            GameMatchDto gameMatch = null;
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
