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
        private static IList<GameMatchDto> _matches = new List<GameMatchDto>();

        public void CreateNewMatch(GameMatchDto gameMatchDto)
        {    
            _matches.Add(gameMatchDto);
        }

        public void DeleteMatch(GameMatchDto gameMatchDto)
        {
            GameMatchDto gameMatch = null;
            foreach(var match in _matches)
            {
                if (match.Host.Equals(gameMatchDto.Host))
                {
                    gameMatch = match;
                    break;
                }
            }
            _matches.Remove(gameMatch);
        }



        public IList<string> GetActivePlayersFromMatch(GameMatchDto gameMatchDto)
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
            GameMatchDto gameMatch = null;
            string host = lobbyRequestDto.Host;
            string username = lobbyRequestDto.Username;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                    break;                                      
                }
            }

            gameMatch.AddNewPlayer(lobbyRequestDto);
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
            GameMatchDto gameMatch = null;
            string host = lobbyRequestDto.Host;
            string username = lobbyRequestDto.Username;
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    gameMatch = match;
                    break;                                      
                }
            }

            gameMatch.RemovePlayer(lobbyRequestDto);
            IList<LobbyRequestDto> requests = gameMatch.GetLobbyRequests();
            foreach (var request in requests)
            {
                var channel = request.Connection;
                channel.NotifyPlayerLeft(username);
            }
        }
    }
}
