func @_MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.GetPlayersConnectedToMatch$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :21 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :23 :19) // Not a variable of known type: _players
return %0 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetUsernamesOfPlayersConnectedToMatch(), it contains poisonous unsupported syntaxes

func @_MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.AddPlayer$MemoryGame.MemoryGameService.DataTransferObjects.PlayerInMatch$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :36 :8) {
^entry (%_player : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :36 :30)
cbde.store %_player, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :36 :30)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :38 :12) // Not a variable of known type: _players
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :38 :25) // Not a variable of known type: player
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :38 :12) // _players.Add(player) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetPlayer(none), it contains poisonous unsupported syntaxes

// Skipping function StartMatch(), it contains poisonous unsupported syntaxes

func @_MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.GetPlayerWithBestScore$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :67 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :69 :48) // Not a variable of known type: _players
%1 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :69 :57)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :69 :48) // _players[0] (ElementAccessExpression)
%4 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :35)
%5 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :20) // currentIndex
cbde.store %4, %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :20)
br ^1

^1: // BinaryBranchBlock
%6 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :38)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :53) // Not a variable of known type: _players
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :53) // _players.Count (SimpleMemberAccessExpression)
%9 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :70)
%10 = subi %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :53)
%11 = cmpi "slt", %6, %10 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :38)
cond_br %11, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :38)

^2: // BinaryBranchBlock
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :19) // Not a variable of known type: playerWithBestScore
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :19) // playerWithBestScore.Score (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :47) // Not a variable of known type: _players
%15 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :56)
%16 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :71)
%17 = addi %15, %16 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :56)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :47) // _players[currentIndex + 1] (ElementAccessExpression)
%19 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :47) // _players[currentIndex + 1].Score (SimpleMemberAccessExpression)
%20 = cmpi "slt", %13, %19 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :19)
cond_br %20, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :73 :19)

^4: // SimpleBlock
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :75 :42) // Not a variable of known type: _players
%22 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :75 :51)
%23 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :75 :66)
%24 = addi %22, %23 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :75 :51)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :75 :42) // _players[currentIndex + 1] (ElementAccessExpression)
br ^5

^5: // SimpleBlock
%26 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :73)
%27 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :73)
%28 = addi %26, %27 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :73)
cbde.store %28, %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :71 :73)
br ^1

^3: // JumpBlock
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :78 :19) // Not a variable of known type: playerWithBestScore
return %29 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :78 :12)

^6: // ExitBlock
cbde.unreachable

}
// Skipping function AddExpelVote(none), it contains poisonous unsupported syntaxes

func @_MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.RemovePlayer$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :96 :8) {
^entry (%_playerUsername : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :96 :33)
cbde.store %_playerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :96 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :98 :43) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :98 :58) // Not a variable of known type: playerUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :98 :43) // this.GetPlayer(playerUsername) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :99 :12) // Not a variable of known type: _players
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :99 :28) // Not a variable of known type: playerToRemove
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :99 :12) // _players.Remove(playerToRemove) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetPlyerWithActiveTurn(), it contains poisonous unsupported syntaxes

