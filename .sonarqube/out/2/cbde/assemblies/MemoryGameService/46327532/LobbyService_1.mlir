func @_MemoryGameService.Services.MemoryGameService.GetActivePlayersInLobby$string$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :8 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :8 :53)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :8 :53)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :10 :38) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :10 :29) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :11 :15) // Not a variable of known type: match
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :11 :24) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :11 :15) // comparison of unknown type: match != null
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :11 :15)

^1: // JumpBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :13 :30) // Not a variable of known type: match
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :13 :30) // match.Lobby (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :14 :55) // Not a variable of known type: lobby
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :14 :55) // lobby.GetUsernamesOfPlayersConnectedToLobby() (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :15 :23) // Not a variable of known type: activePlayersFromMatch
return %13 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :15 :16)

^2: // JumpBlock
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :18 :18) // new System.Exception() (ObjectCreationExpression)
cbde.throw %14 :  none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :18 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.JoinLobby$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :21 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :21 :30)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :21 :30)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :21 :43)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :21 :43)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :23 :38) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :23 :29) // GetMatch(host) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :24 :15) // Not a variable of known type: match
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :24 :24) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :24 :15) // comparison of unknown type: match != null
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :24 :15)

^1: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :26 :30) // Not a variable of known type: match
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :26 :30) // match.Lobby (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :27 :16) // Not a variable of known type: lobby
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :27 :39) // Not a variable of known type: host
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :27 :45) // Not a variable of known type: username
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :27 :16) // lobby.AddPlayerToLobby(host, username) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :28 :16) // Not a variable of known type: lobby
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :28 :50) // Not a variable of known type: username
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :28 :16) // lobby.NotifyNewPlayerEnteredLobby(username) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.LeaveLobby$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :36 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :36 :31)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :36 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :36 :44)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :36 :44)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :38 :38) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :38 :29) // GetMatch(host) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :39 :15) // Not a variable of known type: match
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :39 :24) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :39 :15) // comparison of unknown type: match != null
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :39 :15)

^1: // BinaryBranchBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :41 :30) // Not a variable of known type: match
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :41 :30) // match.Lobby (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :42 :16) // Not a variable of known type: lobby
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :42 :44) // Not a variable of known type: username
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :42 :16) // lobby.RemovePlayerFromLobby(username) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :20) // Not a variable of known type: host
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :32) // Not a variable of known type: username
%16 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :20) // host.Equals(username) (InvocationExpression)
cond_br %16, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :20)

^3: // SimpleBlock
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :45 :20) // Not a variable of known type: lobby
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :45 :20) // lobby.NotifyPlayersMatchHasBeenDeleted() (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :46 :20) // Not a variable of known type: _matches
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :46 :36) // Not a variable of known type: match
%21 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :46 :20) // _matches.Remove(match) (InvocationExpression)
br ^2

^4: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :50 :20) // Not a variable of known type: lobby
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :50 :51) // Not a variable of known type: username
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :50 :20) // lobby.NotifyOnePlayerLeftLobby(username) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.StartGame$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :55 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :55 :30)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :55 :30)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :57 :38) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :57 :29) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :15) // Not a variable of known type: match
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :24) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :15) // comparison of unknown type: match != null
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :15)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :60 :16) // Not a variable of known type: match
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :60 :16) // match.StartMatch() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function GetMatch(none), it contains poisonous unsupported syntaxes

