func @_MemoryGameService.DataTransferObjectMappers.PlayerScoreMapper.createDTO$DataAccess.Entities.Player$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :7 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :7 :47)
cbde.store %_player, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :7 :47)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :9 :44) // new PlayerScoreDTO()              {                  /*Username = player.UserName,                  TotalScore = player.TotalScore*/              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :15 :19) // Not a variable of known type: playerScoreDTO
return %3 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.DataTransferObjectMappers.PlayerScoreMapper.createEntity$MemoryGame.MemoryGameService.DataTransferObjects.PlayerScoreDTO$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :18 :8) {
^entry (%_playerScoreDTO : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :18 :42)
cbde.store %_playerScoreDTO, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :18 :42)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :20 :28) // new Player()              {                  //UserName = playerScoreDTO.Username,                  Score = playerScoreDTO.TotalScore              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :23 :24) // Not a variable of known type: playerScoreDTO
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :23 :24) // playerScoreDTO.TotalScore (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :26 :19) // Not a variable of known type: player
return %5 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\PlayerScoreMapper.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
