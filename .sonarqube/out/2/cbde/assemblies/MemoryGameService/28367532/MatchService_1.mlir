func @_MemoryGameService.Services.MemoryGameService.EnterMatch$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :71 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :71 :31)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :71 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :71 :44)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :71 :44)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :73 :42) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :73 :33) // GetMatch(host) (InvocationExpression)
%5 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :75 :33) // false
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :75 :17) // hasActiveTurn
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :75 :17)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :76 :16) // Not a variable of known type: host
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :76 :28) // Not a variable of known type: username
%9 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :76 :16) // host.Equals(username) (InvocationExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :76 :16)

^1: // SimpleBlock
%10 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :78 :32) // true
cbde.store %10, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :78 :16)
br ^2

^2: // SimpleBlock
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :81 :35) // new PlayerInMatch()              {                  Username = username,                  Score = 0,                  HasActiveTurn = hasActiveTurn,                  MatchServiceConnection = OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>(),                  ExpulsionVotes = 0              } (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :83 :27) // Not a variable of known type: username
%13 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :84 :24)
%14 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :85 :32)
// Entity from another assembly: OperationContext
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :86 :41) // OperationContext.Current (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :86 :41) // OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>() (InvocationExpression)
%17 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :87 :33)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :89 :12) // Not a variable of known type: gameMatch
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :89 :32) // Not a variable of known type: player
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :89 :12) // gameMatch.AddPlayer(player) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.GetPlayersConnectedToMatch$string$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :97 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :97 :63)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :97 :63)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :99 :38) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :99 :29) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :100 :19) // Not a variable of known type: match
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :100 :19) // match.GetPlayersConnectedToMatch() (InvocationExpression)
return %5 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :100 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function NotifyCardWasUncoveredd(none), it contains poisonous unsupported syntaxes

// Skipping function NotifyMatchHasEnded(none), it contains poisonous unsupported syntaxes

// Skipping function EndTurn(none, none, none), it contains poisonous unsupported syntaxes

// Skipping function LeaveMatch(none, none), it contains poisonous unsupported syntaxes

// Skipping function ExpelPlayer(none), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Services.MemoryGameService.GetUsernamesOfPlayersConnectedToMatch$string$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :350 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :350 :67)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :350 :67)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :352 :42) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :352 :33) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :354 :43) // Not a variable of known type: gameMatch
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :354 :43) // gameMatch.GetUsernamesOfPlayersConnectedToMatch() (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :356 :19) // Not a variable of known type: playerUsername
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :356 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.GetPlayersVoted$string.string$(none, none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :365 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :365 :45)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :365 :45)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :365 :58)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :365 :58)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :367 :42) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :367 :33) // GetMatch(host) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :369 :35) // Not a variable of known type: gameMatch
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :369 :55) // Not a variable of known type: username
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :369 :35) // gameMatch.GetPlayer(username) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :370 :41) // Not a variable of known type: player
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :370 :41) // player.GetPlayersVoted() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :372 :19) // Not a variable of known type: playersVoted
return %12 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :372 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.ChangeTurn$MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.int$(none, i32) -> i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :381 :8) {
^entry (%_gameMatch : none, %_indexOfPlayerWithCurrentTurn : i32):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :381 :30)
cbde.store %_gameMatch, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :381 :30)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :381 :50)
cbde.store %_indexOfPlayerWithCurrentTurn, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :381 :50)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :16)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :49) // Not a variable of known type: gameMatch
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :49) // gameMatch.GetPlayersConnectedToMatch() (InvocationExpression)
%5 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :49) // gameMatch.GetPlayersConnectedToMatch().Count (SimpleMemberAccessExpression)
%6 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :96)
%7 = subi %5, %6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :49)
%8 = cmpi "eq", %2, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :16)
cond_br %8, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :383 :16)

^1: // SimpleBlock
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :385 :47)
cbde.store %9, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :385 :16)
br ^3

^2: // SimpleBlock
%10 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :389 :16)
%11 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :389 :16)
%12 = addi %10, %11 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :389 :16)
cbde.store %12, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :389 :16)
br ^3

^3: // JumpBlock
%13 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :392 :19)
return %13 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :392 :12)

^4: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.RemovePairs$MemoryGame.MemoryGameService.DataTransferObjects.MatchDto.System.Collections.Generic.IList$int$$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :401 :8) {
^entry (%_gameMatch : none, %_cardsUncovered : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :401 :32)
cbde.store %_gameMatch, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :401 :32)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :401 :52)
cbde.store %_cardsUncovered, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :401 :52)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :403 :17) // Not a variable of known type: cardsUncovered
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :403 :17) // cardsUncovered.Count (SimpleMemberAccessExpression)
%4 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :403 :40)
%5 = remis %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :403 :17)
%6 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :403 :46)
%7 = cmpi "eq", %5, %6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :403 :16)
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :403 :16)

^1: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :16) // Not a variable of known type: gameMatch
%9 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :16) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :39) // Not a variable of known type: gameMatch
%11 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :39) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :63) // Not a variable of known type: cardsUncovered
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :63) // cardsUncovered.Count (SimpleMemberAccessExpression)
%14 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :86)
%15 = divis %13, %14 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :63)
%16 = subi %11, %15 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :405 :39)
br ^3

^2: // SimpleBlock
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :16) // Not a variable of known type: gameMatch
%18 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :16) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :39) // Not a variable of known type: gameMatch
%20 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :39) // gameMatch.TotalPairs (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :64) // Not a variable of known type: cardsUncovered
%22 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :64) // cardsUncovered.Count (SimpleMemberAccessExpression)
%23 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :87)
%24 = subi %22, %23 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :64)
%25 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :92)
%26 = divis %24, %25 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :63)
%27 = subi %20, %26 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :409 :39)
br ^3

^3: // ExitBlock
return

}
