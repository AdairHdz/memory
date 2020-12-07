func @_DataAccess.Repositories.CardDeckRepository.GetCardDeckAndCards$int$(i32) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :18 :8) {
^entry (%_cardDeckId : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :18 :44)
cbde.store %_cardDeckId, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :18 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :20 :32) // Not a variable of known type: MemoryGameContext
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :20 :32) // MemoryGameContext.CardDecks (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :20 :68) // "Cards" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :20 :32) // MemoryGameContext.CardDecks.Include("Cards") (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :20 :32) // MemoryGameContext.CardDecks.Include("Cards")                  .First() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :22 :19) // Not a variable of known type: cardDeck
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Repositories\\CardDeckRepository.cs" :22 :12)

^1: // ExitBlock
cbde.unreachable

}
