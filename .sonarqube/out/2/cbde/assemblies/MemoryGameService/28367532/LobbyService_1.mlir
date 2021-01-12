func @_MemoryGameService.Services.MemoryGameService.GetActivePlayersInLobby$string$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :40 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :40 :53)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :40 :53)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :42 :38) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :42 :29) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :15) // Not a variable of known type: match
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :24) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :15) // comparison of unknown type: match != null
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :43 :15)

^1: // JumpBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :45 :30) // Not a variable of known type: match
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :45 :30) // match.Lobby (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :46 :55) // Not a variable of known type: lobby
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :46 :55) // lobby.GetUsernamesOfPlayersConnectedToLobby() (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :47 :23) // Not a variable of known type: activePlayersFromMatch
return %13 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :47 :16)

^2: // JumpBlock
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :50 :18) // new System.Exception() (ObjectCreationExpression)
cbde.throw %14 :  none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :50 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.JoinLobby$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :30)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :30)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :43)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :58 :43)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :60 :38) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :60 :29) // GetMatch(host) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :61 :15) // Not a variable of known type: match
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :61 :24) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :61 :15) // comparison of unknown type: match != null
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :61 :15)

^1: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :63 :30) // Not a variable of known type: match
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :63 :30) // match.Lobby (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :64 :16) // Not a variable of known type: lobby
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :64 :39) // Not a variable of known type: host
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :64 :45) // Not a variable of known type: username
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :64 :16) // lobby.AddPlayerToLobby(host, username) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :65 :16) // Not a variable of known type: lobby
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :65 :50) // Not a variable of known type: username
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :65 :16) // lobby.NotifyNewPlayerEnteredLobby(username) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.LeaveLobby$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :74 :8) {
^entry (%_host : none, %_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :74 :31)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :74 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :74 :44)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :74 :44)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :76 :38) // Not a variable of known type: host
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :76 :29) // GetMatch(host) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :77 :15) // Not a variable of known type: match
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :77 :24) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :77 :15) // comparison of unknown type: match != null
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :77 :15)

^1: // BinaryBranchBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :79 :30) // Not a variable of known type: match
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :79 :30) // match.Lobby (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :80 :16) // Not a variable of known type: lobby
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :80 :44) // Not a variable of known type: username
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :80 :16) // lobby.RemovePlayerFromLobby(username) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :81 :20) // Not a variable of known type: host
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :81 :32) // Not a variable of known type: username
%16 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :81 :20) // host.Equals(username) (InvocationExpression)
cond_br %16, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :81 :20)

^3: // SimpleBlock
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :83 :20) // Not a variable of known type: lobby
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :83 :20) // lobby.NotifyPlayersMatchHasBeenDeleted() (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :84 :20) // Not a variable of known type: _matches
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :84 :36) // Not a variable of known type: match
%21 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :84 :20) // _matches.Remove(match) (InvocationExpression)
br ^2

^4: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :88 :20) // Not a variable of known type: lobby
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :88 :51) // Not a variable of known type: username
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :88 :20) // lobby.NotifyOnePlayerLeftLobby(username) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.StartGame$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :97 :8) {
^entry (%_host : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :97 :30)
cbde.store %_host, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :97 :30)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :99 :38) // Not a variable of known type: host
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :99 :29) // GetMatch(host) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :100 :15) // Not a variable of known type: match
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :100 :24) // null (NullLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :100 :15) // comparison of unknown type: match != null
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :100 :15)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :102 :16) // Not a variable of known type: match
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\LobbyService.cs" :102 :16) // match.StartMatch() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function GetMatch(none), it contains poisonous unsupported syntaxes

