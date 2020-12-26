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

        public void JoinLobby(string host, string username)
        {
            foreach(var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    match.AddNewPlayer(username);
                    var channel = OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>();
                    channel.NotifyNewPlayerEntered(username);
                    break;
                }
            }
        }

        public void LeaveLobby(string host, string username)
        {
            foreach (var match in _matches)
            {
                if (match.Host.Equals(host))
                {
                    match.RemovePlayer(username);
                    var channel = OperationContext.Current.GetCallbackChannel<ILobbyServiceCallback>();
                    channel.NotifyPlayerLeft(username);
                    break;
                }
            }
        }
    }
}
