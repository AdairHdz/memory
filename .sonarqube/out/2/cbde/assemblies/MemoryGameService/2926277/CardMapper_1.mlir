func @_MemoryGameService.DataTransferObjectMappers.CardMapper.CreateDTO$DataAccess.Entities.Card$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :7 :8) {
^entry (%_card : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :7 :40)
cbde.store %_card, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :7 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :9 :30) // new CardDto()              {                  CardId = card.CardId,                  FrontImage = card.FrontImage              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :11 :25) // Not a variable of known type: card
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :11 :25) // card.CardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :12 :29) // Not a variable of known type: card
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :12 :29) // card.FrontImage (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :15 :19) // Not a variable of known type: cardDto
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.DataTransferObjectMappers.CardMapper.CreateEntity$MemoryGame.MemoryGameService.DataTransferObjects.CardDto$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :18 :8) {
^entry (%_cardDto : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :18 :40)
cbde.store %_cardDto, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :18 :40)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :20 :24) // new Card()              {                  CardId = cardDto.CardId,                  FrontImage = cardDto.FrontImage              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :22 :25) // Not a variable of known type: cardDto
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :22 :25) // cardDto.CardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :23 :29) // Not a variable of known type: cardDto
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :23 :29) // cardDto.FrontImage (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :26 :19) // Not a variable of known type: card
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjectMappers\\CardMapper.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
