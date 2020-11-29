using DataAccess.Entities;
using MemoryGame.MemoryGameService.DataTransferObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MemoryGameService
{
    public static class PlayerMapper
    {
        public static PlayerDTO CreateDTO(Player player)
        {
            PlayerDTO mappedDTO = new PlayerDTO()
            {
                EmailAddress = player.EmailAddress,
                Username = player.UserName,
                Password = player.Password,
                VerificationToken = player.ActivationToken
            };
            return mappedDTO;
        }

        public static Player CreateEntity(PlayerDTO dto)
        {
            Player mappedEntity = new Player()
            {
                EmailAddress = dto.EmailAddress,
                UserName = dto.Username,
                Password = dto.Password,
                ActivationToken = dto.VerificationToken
            };
            return mappedEntity;
        }
    }
}
