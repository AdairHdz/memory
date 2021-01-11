func @_MemoryGameService.DataTransferObjectMappers.CardDeckMapper.CreateDTO$DataAccess.Entities.CardDeck$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :8 :8) {
^entry (%_cardDeckEntity : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :8 :44)
cbde.store %_cardDeckEntity, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :8 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :10 :38) // new CardDeckDTO()              {                  CardDeckId = cardDeckEntity.CardDeckId,                  Name = cardDeckEntity.Name,                  BackImage = cardDeckEntity.BackImage,                  NumberOfPairs = cardDeckEntity.NumberOfPairs,                  Cards = new List<CardDto>()              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :12 :29) // Not a variable of known type: cardDeckEntity
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :12 :29) // cardDeckEntity.CardDeckId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :13 :23) // Not a variable of known type: cardDeckEntity
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :13 :23) // cardDeckEntity.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :14 :28) // Not a variable of known type: cardDeckEntity
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :14 :28) // cardDeckEntity.BackImage (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :15 :32) // Not a variable of known type: cardDeckEntity
%9 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :15 :32) // cardDeckEntity.NumberOfPairs (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :16 :24) // new List<CardDto>() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :19 :19) // Not a variable of known type: cardDeckDTO
return %12 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.DataTransferObjectMappers.CardDeckMapper.CreateEntity$MemoryGame.MemoryGameService.DataTransferObjects.CardDeckDTO$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :22 :8) {
^entry (%_cardDeckDTO : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :22 :44)
cbde.store %_cardDeckDTO, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :22 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :24 :32) // new CardDeck()              {                  CardDeckId = cardDeckDTO.CardDeckId,                  Name = cardDeckDTO.Name,                  BackImage = cardDeckDTO.BackImage,                  NumberOfPairs = cardDeckDTO.NumberOfPairs              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :26 :29) // Not a variable of known type: cardDeckDTO
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :26 :29) // cardDeckDTO.CardDeckId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :27 :23) // Not a variable of known type: cardDeckDTO
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :27 :23) // cardDeckDTO.Name (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :28 :28) // Not a variable of known type: cardDeckDTO
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :28 :28) // cardDeckDTO.BackImage (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :29 :32) // Not a variable of known type: cardDeckDTO
%9 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :29 :32) // cardDeckDTO.NumberOfPairs (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :31 :19) // Not a variable of known type: cardDeck
return %11 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardDeckMapper.cs" :31 :12)

^1: // ExitBlock
cbde.unreachable

}
