// Skipping function GetCardDeckAndCards(i32), it contains poisonous unsupported syntaxes

// Skipping function GetCardDecksInfo(), it contains poisonous unsupported syntaxes

// Skipping function PopulateCardDeckDtoWithCards(), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Services.MemoryGameService.ShuffleCards$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :122 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :124 :40) // new CardShuffler() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :125 :12) // Not a variable of known type: cardShuffler
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :125 :38) // Not a variable of known type: _cardDeckDTO
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :125 :38) // _cardDeckDTO.Cards (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :125 :12) // cardShuffler.ShuffleCards(_cardDeckDTO.Cards) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
