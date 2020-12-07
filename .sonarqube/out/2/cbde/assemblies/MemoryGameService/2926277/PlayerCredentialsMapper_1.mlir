func @_MemoryGameService.DataTransferObjectMappers.PlayerCredentialsMapper.CreateDTO$DataAccess.Entities.Player$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :7 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :7 :53)
cbde.store %_player, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :7 :53)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :9 :56) // new PlayerCredentialsDTO()              {                  Username = player.UserName,                  Password = player.Password              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :11 :27) // Not a variable of known type: player
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :11 :27) // player.UserName (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :12 :27) // Not a variable of known type: player
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :12 :27) // player.Password (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :15 :19) // Not a variable of known type: playerCredentialsDTO
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.DataTransferObjectMappers.PlayerCredentialsMapper.CreateEntity$MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :18 :8) {
^entry (%_playerCredentialsDTO : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :18 :42)
cbde.store %_playerCredentialsDTO, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :18 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :20 :28) // new Player()              {                  UserName = playerCredentialsDTO.Username,                  Password = playerCredentialsDTO.Password              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :22 :27) // Not a variable of known type: playerCredentialsDTO
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :22 :27) // playerCredentialsDTO.Username (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :23 :27) // Not a variable of known type: playerCredentialsDTO
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :23 :27) // playerCredentialsDTO.Password (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :26 :19) // Not a variable of known type: player
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerCredentialsMapper.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
