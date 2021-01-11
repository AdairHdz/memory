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
func @_MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.AddExpelVote$string$(none) -> i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :81 :8) {
^entry (%_playerUsername : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :81 :32)
cbde.store %_playerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :81 :32)
br ^0

^0: // ForInitializerBlock
%1 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :83 :35)
%2 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :83 :16) // playerExpelVotes
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :83 :16)
%3 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :36)
%4 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :21) // currentIndex
cbde.store %3, %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :21)
br ^1

^1: // BinaryBranchBlock
%5 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :39)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :54) // Not a variable of known type: _players
%7 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :54) // _players.Count (SimpleMemberAccessExpression)
%8 = cmpi "slt", %5, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :39)
cond_br %8, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :39)

^2: // BinaryBranchBlock
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :86 :20) // Not a variable of known type: _players
%10 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :86 :29)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :86 :20) // _players[currentIndex] (ElementAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :86 :20) // _players[currentIndex].Username (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :86 :59) // Not a variable of known type: playerUsername
%14 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :86 :20) // _players[currentIndex].Username.Equals(playerUsername) (InvocationExpression)
cond_br %14, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :86 :20)

^4: // SimpleBlock
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :88 :20) // Not a variable of known type: _players
%16 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :88 :29)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :88 :20) // _players[currentIndex] (ElementAccessExpression)
%18 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :88 :20) // _players[currentIndex].ExpulsionVotes (SimpleMemberAccessExpression)
%19 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :88 :20) // Inc/Decrement of unknown identifier
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :89 :39) // Not a variable of known type: _players
%21 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :89 :48)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :89 :39) // _players[currentIndex] (ElementAccessExpression)
%23 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :89 :39) // _players[currentIndex].ExpulsionVotes (SimpleMemberAccessExpression)
cbde.store %23, %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :89 :20)
br ^5

^5: // SimpleBlock
%24 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :70)
%25 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :70)
%26 = addi %24, %25 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :70)
cbde.store %26, %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :84 :70)
br ^1

^3: // JumpBlock
%27 = cbde.load %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :92 :19)
return %27 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :92 :12)

^6: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.RemovePlayer$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :95 :8) {
^entry (%_playerUsername : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :95 :33)
cbde.store %_playerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :95 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :97 :43) // this (ThisExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :97 :58) // Not a variable of known type: playerUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :97 :43) // this.GetPlayer(playerUsername) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :98 :12) // Not a variable of known type: _players
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :98 :28) // Not a variable of known type: playerToRemove
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataTransferObjects\\MatchDto.cs" :98 :12) // _players.Remove(playerToRemove) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
