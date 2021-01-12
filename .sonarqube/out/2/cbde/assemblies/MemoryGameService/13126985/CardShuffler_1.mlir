func @_MemoryGameService.Utilities.CardShuffler.ShuffleCards$System.Collections.Generic.IList$MemoryGame.MemoryGameService.DataTransferObjects.CardDto$$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\CardShuffler.cs" :25 :8) {
^entry (%_cardDeck : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\CardShuffler.cs" :25 :33)
cbde.store %_cardDeck, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\CardShuffler.cs" :25 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\CardShuffler.cs" :27 :12) // Not a variable of known type: _shufflerAlgorithm
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\CardShuffler.cs" :27 :39) // Not a variable of known type: cardDeck
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\CardShuffler.cs" :27 :12) // _shufflerAlgorithm.Shuffle(cardDeck) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
