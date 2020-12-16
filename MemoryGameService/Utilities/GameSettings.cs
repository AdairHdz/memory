using System.Collections.Generic;
using MemoryGame.MemoryGameService.DataTransferObjects;
using MemoryGameService.Contracts;

namespace MemoryGameService.Utilities
{
    class GameSettings
    {
        public int NumberOfPlayers { get; set; }
        public CardDeckDTO CardDeckDto { get; set; }
        private Dictionary<IWaitingRoomServiceCallback, string> members;

        public bool MatchWasStarted { get; set; }

        public GameSettings()
        {
            this.members = new Dictionary<IWaitingRoomServiceCallback, string>();
            this.MatchWasStarted = false;
        }


        public Dictionary<IWaitingRoomServiceCallback, string> getMembersDictionary()
        {
            return this.members;
        }

        public void addToMembersDictionary(IWaitingRoomServiceCallback connection, string username)
        {
            this.members.Add(connection, username);
        }

        public void setMembersDictionary(Dictionary<IWaitingRoomServiceCallback, string> newMembersDictionary)
        {
            this.members = newMembersDictionary;
        }
    }
}
