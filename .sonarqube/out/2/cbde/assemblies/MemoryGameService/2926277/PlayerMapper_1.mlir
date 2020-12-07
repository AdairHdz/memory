func @_MemoryGameService.PlayerMapper.CreateDTO$DataAccess.Entities.Player$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :7 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :7 :42)
cbde.store %_player, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :7 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :9 :34) // new PlayerDTO()              {                  EmailAddress = player.EmailAddress,                  Username = player.UserName,                  Password = player.Password,                  VerificationToken = player.ActivationToken              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :11 :31) // Not a variable of known type: player
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :11 :31) // player.EmailAddress (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :12 :27) // Not a variable of known type: player
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :12 :27) // player.UserName (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :13 :27) // Not a variable of known type: player
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :13 :27) // player.Password (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :14 :36) // Not a variable of known type: player
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :14 :36) // player.ActivationToken (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :16 :19) // Not a variable of known type: mappedDTO
return %11 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :16 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.PlayerMapper.CreateEntity$MemoryGame.MemoryGameService.DataTransferObjects.PlayerDTO$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :19 :8) {
^entry (%_dto : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :19 :42)
cbde.store %_dto, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :19 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :21 :34) // new Player()              {                  EmailAddress = dto.EmailAddress,                  UserName = dto.Username,                  Password = dto.Password,                  ActivationToken = dto.VerificationToken              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :23 :31) // Not a variable of known type: dto
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :23 :31) // dto.EmailAddress (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :24 :27) // Not a variable of known type: dto
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :24 :27) // dto.Username (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :25 :27) // Not a variable of known type: dto
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :25 :27) // dto.Password (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :26 :34) // Not a variable of known type: dto
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :26 :34) // dto.VerificationToken (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :28 :19) // Not a variable of known type: mappedEntity
return %11 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerMapper.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
