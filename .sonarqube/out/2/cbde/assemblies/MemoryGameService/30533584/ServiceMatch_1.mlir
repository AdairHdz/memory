func @_MemoryGameService.Logic.ServiceMatch.GetPlayersConnectedToMatch$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :92 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :94 :19) // Not a variable of known type: _players
return %0 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :94 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetUsernamesOfPlayersConnectedToMatch(), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Logic.ServiceMatch.AddPlayer$MemoryGameService.Logic.ServicePlayer$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :115 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :115 :30)
cbde.store %_player, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :115 :30)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :117 :12) // Not a variable of known type: _players
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :117 :25) // Not a variable of known type: player
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :117 :12) // _players.Add(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetPlayer(none), it contains poisonous unsupported syntaxes

// Skipping function StartMatch(), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Logic.ServiceMatch.GetPlayerWithBestScore$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :157 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :159 :48) // Not a variable of known type: _players
%1 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :159 :57)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :159 :48) // _players[0] (ElementAccessExpression)
%4 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :36)
%5 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :21) // currentIndex
cbde.store %4, %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :21)
br ^1

^1: // BinaryBranchBlock
%6 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :39)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :54) // Not a variable of known type: _players
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :54) // _players.Count (SimpleMemberAccessExpression)
%9 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :71)
%10 = subi %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :54)
%11 = cmpi "slt", %6, %10 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :39)
cond_br %11, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :39)

^2: // BinaryBranchBlock
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :20) // Not a variable of known type: playerWithBestScore
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :20) // playerWithBestScore.Score (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :48) // Not a variable of known type: _players
%15 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :57)
%16 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :72)
%17 = addi %15, %16 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :57)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :48) // _players[currentIndex + 1] (ElementAccessExpression)
%19 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :48) // _players[currentIndex + 1].Score (SimpleMemberAccessExpression)
%20 = cmpi "slt", %13, %19 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :20)
cond_br %20, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :163 :20)

^4: // SimpleBlock
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :165 :42) // Not a variable of known type: _players
%22 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :165 :51)
%23 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :165 :66)
%24 = addi %22, %23 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :165 :51)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :165 :42) // _players[currentIndex + 1] (ElementAccessExpression)
br ^5

^5: // SimpleBlock
%26 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :74)
%27 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :74)
%28 = addi %26, %27 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :74)
cbde.store %28, %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :161 :74)
br ^1

^3: // JumpBlock
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :168 :19) // Not a variable of known type: playerWithBestScore
return %29 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :168 :12)

^6: // ExitBlock
cbde.unreachable

}
// Skipping function AddExpelVote(none), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Logic.ServiceMatch.RemovePlayer$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :195 :8) {
^entry (%_playerUsername : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :195 :33)
cbde.store %_playerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :195 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :197 :43) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :197 :58) // Not a variable of known type: playerUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :197 :43) // this.GetPlayer(playerUsername) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :198 :12) // Not a variable of known type: _players
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :198 :28) // Not a variable of known type: playerToRemove
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Logic\\ServiceMatch.cs" :198 :12) // _players.Remove(playerToRemove) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetPlyerWithActiveTurn(), it contains poisonous unsupported syntaxes

