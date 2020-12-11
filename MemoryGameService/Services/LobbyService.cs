using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Single,
       InstanceContextMode = InstanceContextMode.Single)]
    public partial class LobbyService : IJoinGameService, IWaitingRoomService
    {
        private Dictionary<string, GameSettings> _games = new Dictionary<string, GameSettings>();
        private Dictionary<IJoinGameServiceCallback, string> _playersLookingForJoinGame = new Dictionary<IJoinGameServiceCallback, string>();

        public void CreateGame(string username, int numOfPlayers)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IWaitingRoomServiceCallback>();
            GameSettings gameSettings = new GameSettings();
            gameSettings.addToMembersDictionary(connection, username);
            gameSettings.NumberOfPlayers = numOfPlayers;
            _games.Add(username, gameSettings);
            foreach (var other in _playersLookingForJoinGame.Keys)
            {
                other.NewGameCreated(username);
            }
        }

        public bool AskForJoinGame(string gameHostUsername)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IJoinGameServiceCallback>();
            GameSettings gameSettings = new GameSettings();
            _games.TryGetValue(gameHostUsername, out gameSettings);
            Dictionary<IWaitingRoomServiceCallback, string> _members = gameSettings.getMembersDictionary();
            int numOfPlayers = _members.Count;
            if (numOfPlayers == gameSettings.NumberOfPlayers)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public void JoinGame(string gameHostUsername, string newPlayerUsername)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IWaitingRoomServiceCallback>();
            GameSettings gameSettings = new GameSettings();
            _games.TryGetValue(gameHostUsername, out gameSettings);
            Dictionary<IWaitingRoomServiceCallback, string> _members = gameSettings.getMembersDictionary();
            foreach (var other in _members.Keys)
            {
                other.NewPlayerJoined(newPlayerUsername);
            }
            gameSettings.addToMembersDictionary(connection, newPlayerUsername);
        }

        public void LeaveGame(string gameHostUsername, string username)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IWaitingRoomServiceCallback>();
            GameSettings gameSettings = new GameSettings();
            _games.TryGetValue(gameHostUsername, out gameSettings);
            Dictionary<IWaitingRoomServiceCallback, string> _members = gameSettings.getMembersDictionary();
            if (gameHostUsername == username)
            {

                foreach (var player in _members.Keys)
                {
                    if (player == connection)
                    {
                        continue;
                    }
                    player.HostLeaveGame();
                }
                _games.Remove(gameHostUsername);

                foreach (var other in _playersLookingForJoinGame.Keys)
                {
                    other.RemoveGameFromList(gameHostUsername);
                }
            }
            else
            {
                _members.Remove(connection);
                gameSettings.setMembersDictionary(_members);
                foreach (var player in _members.Keys)
                {
                    player.PlayerLeaveGame(username);
                }
            }
        }

        public void JoinGameLobby(string usernme)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IJoinGameServiceCallback>();
            _playersLookingForJoinGame.Add(connection, usernme);
        }

        public void LeaveGameLobby()
        {
            var connection = OperationContext.Current.GetCallbackChannel<IJoinGameServiceCallback>();
            _playersLookingForJoinGame.Remove(connection);
        }

        public void RecoverAvailableGames()
        {
            var connection = OperationContext.Current.GetCallbackChannel<IJoinGameServiceCallback>();
            foreach (var gameHost in _games.Keys)
            {
                connection.ReciveAvailableGames(gameHost);
            }
        }

        public void RecoverGameMembers(string gameHostUsername)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IWaitingRoomServiceCallback>();
            GameSettings gameSettings = new GameSettings();
            _games.TryGetValue(gameHostUsername, out gameSettings);
            Dictionary<IWaitingRoomServiceCallback, string> _members = gameSettings.getMembersDictionary();
            foreach (var playerUsername in _members.Values)
            {
                connection.ReciveGameMembers(playerUsername);
            }
        }
    }
}
