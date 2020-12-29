using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;
using System;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /*[ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Single,
       InstanceContextMode = InstanceContextMode.Single)]*/

    public partial class MemoryGameService : ILobbyService
    {
        private static IList<GameMatchConfigDto> _matches = new List<GameMatchConfigDto>();

        public void CreateNewMatch(GameMatchConfigDto gameMatchDto)
        {    
            _matches.Add(gameMatchDto);
        }

        public void DeleteMatch(GameMatchConfigDto gameMatchDto)
        {
            //GameMatchDto gameMatch = null;
            foreach(var match in _matches)
            {
                if (match.Host.Equals(gameMatchDto.Host))
                {
                    _matches.Remove(match);
                    break;
                }
            }
        }



        public IList<string> GetActivePlayersFromMatch(GameMatchConfigDto gameMatchDto)
        {
            IList<string> activePlayersFromMatch = new List<string>();
            foreach(var match in _matches)
            {
                if (match.Host.Equals(gameMatchDto.Host))
                {
                    activePlayersFromMatch = match.GetPlayers();
                    break;
                }
            }
            return activePlayersFromMatch;
        }

        public void JoinLobby(LobbyRequestDto lobbyRequestDto)
        {
            //gameMatch podría ser null si no encuentra la partida. Refactorizar
            lobbyRequestDto.Connection = OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>(); ;
            
            string host = lobbyRequestDto.Host;
            string username = lobbyRequestDto.Username;
            GameMatchConfigDto gameMatch = GetMatch(host);

            gameMatch.AddLobbyRequest(lobbyRequestDto);
            IList<LobbyRequestDto> requests = gameMatch.GetLobbyRequests();
            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.NotifyNewPlayerEntered(username);
            }
        }

        public void LeaveLobby(LobbyRequestDto lobbyRequestDto)
        {
            //gameMatch podría ser null si no encuentra la partida. Refactorizar
            lobbyRequestDto.Connection = OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>();
            
            string host = lobbyRequestDto.Host;
            string username = lobbyRequestDto.Username;
            GameMatchConfigDto gameMatch = GetMatch(host);

            IList<LobbyRequestDto> requests = gameMatch.GetLobbyRequests();
            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.NotifyPlayerLeft(username);
            }

            gameMatch.RemoveLobbyRequest(lobbyRequestDto);

            if (lobbyRequestDto.Username.Equals(gameMatch.Host))
            {
                _matches.Remove(gameMatch);
            }

        }

        public void StartGame(LobbyRequestDto lobbyRequestDto)
        {
            string host = lobbyRequestDto.Host;
            GameMatchConfigDto gameMatch = GetMatch(host);
            
            IList<LobbyRequestDto> requests = gameMatch.GetLobbyRequests();
            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.TakePlayersToMatchView();
            }
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
