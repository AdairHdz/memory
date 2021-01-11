func @_MemoryGameService.Services.MemoryGameService.EnterMatch$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :31)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :44)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :44)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :15 :42) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :15 :33) // GetMatch(host) (InvocationExpression)
%5 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :17 :33) // false
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :17 :17) // hasActiveTurn
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :17 :17)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :18 :16) // Not a variable of known type: host
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :18 :28) // Not a variable of known type: username
%9 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :18 :16) // host.Equals(username) (InvocationExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :18 :16)

^1: // SimpleBlock
%10 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :20 :32) // true
cbde.store %10, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :20 :16)
br ^2

^2: // SimpleBlock
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :23 :35) // new PlayerInMatch()              {                  Username = username,                  Score = 0,                  HasActiveTurn = hasActiveTurn,                  MatchServiceConnection = OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>(),                  ExpulsionVotes = 0              } (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :25 :27) // Not a variable of known type: username
%13 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :26 :24)
%14 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :27 :32)
// Entity from another assembly: OperationContext
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :28 :41) // OperationContext.Current (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :28 :41) // OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>() (InvocationExpression)
%17 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :29 :33)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :31 :12) // Not a variable of known type: gameMatch
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :31 :32) // Not a variable of known type: player
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :31 :12) // gameMatch.AddPlayer(player) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.GetPlayersConnectedToMatch$string$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :34 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :34 :63)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :34 :63)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :36 :38) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :36 :29) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :37 :19) // Not a variable of known type: match
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :37 :19) // match.GetPlayersConnectedToMatch() (InvocationExpression)
return %5 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :37 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function NotifyCardWasUncoveredd(none), it contains poisonous unsupported syntaxes

// Skipping function NotifyMatchHasEnded(none), it contains poisonous unsupported syntaxes

// Skipping function EndTurn(none, none, none), it contains poisonous unsupported syntaxes

// Skipping function LeaveMatch(none, none), it contains poisonous unsupported syntaxes

// Skipping function ExpelPlayer(none), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Services.MemoryGameService.GetUsernamesOfPlayersConnectedToMatch$string$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :247 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :247 :67)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :247 :67)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :249 :42) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :249 :33) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :251 :43) // Not a variable of known type: gameMatch
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :251 :43) // gameMatch.GetUsernamesOfPlayersConnectedToMatch() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :253 :19) // Not a variable of known type: playerUsername
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :253 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.GetPlayersVoted$string.string$(none, none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :256 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :256 :45)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :256 :45)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :256 :58)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :256 :58)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :258 :42) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :258 :33) // GetMatch(host) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :260 :35) // Not a variable of known type: gameMatch
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :260 :55) // Not a variable of known type: username
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :260 :35) // gameMatch.GetPlayer(username) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :261 :41) // Not a variable of known type: player
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :261 :41) // player.GetPlayersVoted() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :263 :19) // Not a variable of known type: playersVoted
return %12 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :263 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.ChangeTurn$MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.int$(none, i32) -> i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :266 :8) {
^entry (%_gameMatch : none, %_indexOfPlayerWithCurrentTurn : i32):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :266 :30)
cbde.store %_gameMatch, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :266 :30)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :266 :50)
cbde.store %_indexOfPlayerWithCurrentTurn, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :266 :50)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :16)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :49) // Not a variable of known type: gameMatch
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :49) // gameMatch.GetPlayersConnectedToMatch() (InvocationExpression)
%5 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :49) // gameMatch.GetPlayersConnectedToMatch().Count (SimpleMemberAccessExpression)
%6 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :96)
%7 = subi %5, %6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :49)
%8 = cmpi "eq", %2, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :16)
cond_br %8, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :268 :16)

^1: // SimpleBlock
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :270 :47)
cbde.store %9, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :270 :16)
br ^3

^2: // SimpleBlock
%10 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :274 :16)
%11 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :274 :16)
%12 = addi %10, %11 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :274 :16)
cbde.store %12, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :274 :16)
br ^3

^3: // JumpBlock
%13 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :277 :19)
return %13 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :277 :12)

^4: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.RemovePairs$MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.System.Collections.Generic.IList$int$$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :280 :8) {
^entry (%_gameMatch : none, %_cardsUncovered : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :280 :32)
cbde.store %_gameMatch, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :280 :32)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :280 :52)
cbde.store %_cardsUncovered, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :280 :52)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :282 :17) // Not a variable of known type: cardsUncovered
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :282 :17) // cardsUncovered.Count (SimpleMemberAccessExpression)
%4 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :282 :40)
%5 = remis %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :282 :17)
%6 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :282 :46)
%7 = cmpi "eq", %5, %6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :282 :16)
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :282 :16)

^1: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :16) // Not a variable of known type: gameMatch
%9 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :16) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :39) // Not a variable of known type: gameMatch
%11 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :39) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :63) // Not a variable of known type: cardsUncovered
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :63) // cardsUncovered.Count (SimpleMemberAccessExpression)
%14 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :86)
%15 = divis %13, %14 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :63)
%16 = subi %11, %15 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :284 :39)
br ^3

^2: // SimpleBlock
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :16) // Not a variable of known type: gameMatch
%18 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :16) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :39) // Not a variable of known type: gameMatch
%20 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :39) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :64) // Not a variable of known type: cardsUncovered
%22 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :64) // cardsUncovered.Count (SimpleMemberAccessExpression)
%23 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :87)
%24 = subi %22, %23 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :64)
%25 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :92)
%26 = divis %24, %25 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :63)
%27 = subi %20, %26 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :288 :39)
br ^3

^3: // ExitBlock
return

}
