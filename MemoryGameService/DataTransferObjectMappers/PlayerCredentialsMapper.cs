using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGameService.DataTransferObjectMappers
{
    public static class PlayerCredentialsMapper
    {
        public static PlayerCredentialsDTO CreateDTO(Player player)
        {
            PlayerCredentialsDTO playerCredentialsDTO = new PlayerCredentialsDTO()
            {
                Username = player.UserName,
                Password = player.Password
            };

            return playerCredentialsDTO;
        }

        public static Player CreateEntity(PlayerCredentialsDTO playerCredentialsDTO)
        {
            Player player = new Player()
            {
                UserName = playerCredentialsDTO.Username,
                Password = playerCredentialsDTO.Password
            };

            return player;
        }
    }
}
