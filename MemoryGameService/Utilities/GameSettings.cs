using System.Collections.Generic;
using MemoryGameService.Contracts;

namespace MemoryGameService.Utilities
{
    class GameSettings
    {
        public int NumberOfPlayers { get; set; }

        private Dictionary<IWaitingRoomServiceCallback, string> members;

        public GameSettings()
        {
            members = new Dictionary<IWaitingRoomServiceCallback, string>();
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
