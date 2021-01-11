func @_MemoryGame.MemoryGameService.DataTransferObjects.PlayerInMatch.GetPlayersVoted$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :21 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :23 :19) // Not a variable of known type: _playersVoted
return %0 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.MemoryGameService.DataTransferObjects.PlayerInMatch.AddPlayerVoted$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :26 :8) {
^entry (%_playerUsername : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :26 :35)
cbde.store %_playerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :26 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :28 :12) // Not a variable of known type: _playersVoted
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :28 :30) // Not a variable of known type: playerUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :28 :12) // _playersVoted.Add(playerUsername) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.MemoryGameService.DataTransferObjects.PlayerInMatch.GetUncoveredCards$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :31 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :33 :19) // Not a variable of known type: _uncoveredCards
return %0 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :33 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.MemoryGameService.DataTransferObjects.PlayerInMatch.AddUncoveredCard$int$(i32) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :36 :8) {
^entry (%_cardIndex : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :36 :37)
cbde.store %_cardIndex, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :36 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :38 :12) // Not a variable of known type: _uncoveredCards
%2 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :38 :32)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :38 :12) // _uncoveredCards.Add(cardIndex) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.MemoryGameService.DataTransferObjects.PlayerInMatch.RemoveUncoveredCard$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :41 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :43 :34) // Not a variable of known type: _uncoveredCards
%1 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :43 :34) // _uncoveredCards.Count (SimpleMemberAccessExpression)
%2 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :43 :58)
%3 = subi %1, %2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :43 :34)
%4 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :43 :16) // indexOfLastCard
cbde.store %3, %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :43 :16)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :44 :12) // Not a variable of known type: _uncoveredCards
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :44 :35) // Not a variable of known type: _uncoveredCards
%7 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :44 :51)
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :44 :35) // _uncoveredCards[indexOfLastCard] (ElementAccessExpression)
%9 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\PlayerInMatch.cs" :44 :12) // _uncoveredCards.Remove(_uncoveredCards[indexOfLastCard]) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
