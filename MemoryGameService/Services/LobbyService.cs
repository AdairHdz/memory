﻿using MemoryGameService.Contracts;
using MemoryGameService.Utilities;
using System.Collections.Generic;
using System.ServiceModel;

namespace MemoryGameService.Services
{
    /*[ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Single,
       InstanceContextMode = InstanceContextMode.Single)]*/
    public partial class MemoryGameService : IJoinGameService, IWaitingRoomService
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
            foreach (var playerJoinGameConnection in _playersLookingForJoinGame.Keys)
            {
                playerJoinGameConnection.NewGameCreated(username);
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
            foreach (var playerConnection in _members.Keys)
            {
                playerConnection.NewPlayerJoined(newPlayerUsername);
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

                foreach (var playerConnection in _members.Keys)
                {
                    if (playerConnection == connection)
                    {
                        continue;
                    }
                    playerConnection.HostLeaveGame();
                }
                _games.Remove(gameHostUsername);

                foreach (var playerJoinGameConnection in _playersLookingForJoinGame.Keys)
                {
                    playerJoinGameConnection.RemoveGameFromList(gameHostUsername);
                }
            }
            else
            {
                _members.Remove(connection);
                gameSettings.setMembersDictionary(_members);
                foreach (var playerConnection in _members.Keys)
                {
                    playerConnection.PlayerLeaveGame(username);
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
            GameSettings gameSettings;;
            foreach (var gameHost in _games.Keys)
            {
                _games.TryGetValue(gameHost, out gameSettings);
                if(gameSettings.MatchWasStarted == false)
                {
                    connection.ReciveAvailableGames(gameHost);
                }               
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

        public void StarGame(string gameHostUsername)
        {
            var connection = OperationContext.Current.GetCallbackChannel<IWaitingRoomServiceCallback>();
            GameSettings gameSettings = new GameSettings();
            _games.TryGetValue(gameHostUsername, out gameSettings);
            Dictionary<IWaitingRoomServiceCallback, string> _members = gameSettings.getMembersDictionary();
            foreach (var playerConnection in _members.Keys)
            {
                if (playerConnection == connection)
                {
                    continue;
                }
                playerConnection.GameStarted();
            }
            gameSettings.MatchWasStarted = true;
            foreach (var playerJoinGameConnection in _playersLookingForJoinGame.Keys)
            {
                playerJoinGameConnection.RemoveGameFromList(gameHostUsername);
            }
        }
    }
}