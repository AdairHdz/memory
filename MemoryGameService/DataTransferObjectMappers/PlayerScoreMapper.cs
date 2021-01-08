using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;

namespace MemoryGameService.DataTransferObjectMappers
{
    public static class PlayerScoreMapper
    {
        public static PlayerScoreDTO createDTO(Player player)
        {
            PlayerScoreDTO playerScoreDTO = new PlayerScoreDTO()
            {
                /*Username = player.UserName,
                TotalScore = player.TotalScore*/
            };

            return playerScoreDTO;
        }

        public static Player createEntity(PlayerScoreDTO playerScoreDTO)
        {
            Player player = new Player()
            {
                //UserName = playerScoreDTO.Username,
                Score = playerScoreDTO.TotalScore
            };

            return player;
        }
    }
}
