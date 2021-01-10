func @_MemoryGameService.PlayerMapper.CreateDTO$DataAccess.Entities.Player$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :7 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :7 :42)
cbde.store %_player, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :7 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :9 :34) // new PlayerDTO()              {                  /*                  EmailAddress = player.EmailAddress,                  Username = player.Username,                  Password = player.Password,                  VerificationToken = player.ActivationToken                  */              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :18 :19) // Not a variable of known type: mappedDTO
return %3 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.PlayerMapper.CreateEntity$MemoryGame.MemoryGameService.DataTransferObjects.PlayerDTO$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :21 :8) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :21 :42)
cbde.store %_dto, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :21 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :23 :34) // new Player()              {  //                EmailAddress = dto.EmailAddress,                  //UserName = dto.Username,                  //Password = dto.Password,                  //ActivationToken = dto.VerificationToken              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :30 :19) // Not a variable of known type: mappedEntity
return %3 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :30 :12)

^1: // ExitBlock
cbde.unreachable

}
