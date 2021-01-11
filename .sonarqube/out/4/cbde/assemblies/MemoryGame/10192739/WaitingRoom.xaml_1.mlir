// Skipping function Window_Loaded(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.DetermineIfPlayerIsHost$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :64 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :66 :16) // Not a variable of known type: _username
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :66 :33) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :66 :33) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :66 :16) // _username.Equals(GameMatchDto.Host) (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :66 :16)

^1: // SimpleBlock
%4 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :68 :36) // true
br ^3

^2: // SimpleBlock
%5 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :72 :36) // false
br ^3

^3: // ExitBlock
return

}
// Skipping function LoadActivePlayersInLobby(), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.CallJoinLobbyService$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :86 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :88 :12) // Not a variable of known type: _lobbyServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :88 :42) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :88 :42) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :88 :61) // Not a variable of known type: _username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :88 :12) // _lobbyServiceClient.JoinLobby(GameMatchDto.Host, _username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LeaveButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.GoToJoinGameView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :125 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :127 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :128 :36) // new JoinGame() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :129 :12) // Not a variable of known type: joinGameView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :129 :12) // joinGameView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :130 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :130 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.GoToMainMenuView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :133 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :135 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :136 :36) // new MainMenu() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :137 :12) // Not a variable of known type: mainMenuView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :137 :12) // mainMenuView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :138 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :138 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.CallLeaveLobbyService$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :12) // Not a variable of known type: _lobbyServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :43) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :43) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :62) // Not a variable of known type: _username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :12) // _lobbyServiceClient.LeaveLobby(GameMatchDto.Host, _username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.StartButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :146 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :146 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :146 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :146 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :146 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :148 :15) // Not a variable of known type: _players
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :148 :15) // _players.Count (SimpleMemberAccessExpression)
%4 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :148 :32)
%5 = cmpi "slt", %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :148 :15)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :148 :15)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :150 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :150 :32) // Properties.Langs.Resources.InsufficientNumberOfPlayers (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :150 :16) // MessageBox.Show(Properties.Langs.Resources.InsufficientNumberOfPlayers) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: StartGame
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :154 :16) // StartGame() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function StartGame(), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.NotifyNewPlayerEntered$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :182 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :182 :43)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :182 :43)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :184 :15) // Not a variable of known type: username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :184 :27) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :184 :15) // comparison of unknown type: username != null
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :184 :15)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :186 :16) // Not a variable of known type: _players
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :186 :29) // Not a variable of known type: username
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :186 :16) // _players.Add(username) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.NotifyPlayerLeft$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :190 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :190 :37)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :190 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :12) // Not a variable of known type: _players
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :28) // Not a variable of known type: username
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :12) // _players.Remove(username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.TakePlayersToMatchView$string$$$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :195 :8) {
^entry (%_playersInMatch : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :195 :43)
cbde.store %_playersInMatch, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :195 :43)
br ^0

^0: // SimpleBlock
%1 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :197 :51) // false
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :198 :36) // new Views.Match()              {                  Players = playersInMatch,                  MatchHost = GameMatchDto.Host,                  CardDeck = GameMatchDto.CardDeckDto              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :200 :26) // Not a variable of known type: playersInMatch
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :201 :28) // Not a variable of known type: GameMatchDto
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :201 :28) // GameMatchDto.Host (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :202 :27) // Not a variable of known type: GameMatchDto
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :202 :27) // GameMatchDto.CardDeckDto (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :204 :12) // Not a variable of known type: matchView
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :204 :12) // matchView.Show() (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :205 :12) // this (ThisExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :205 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.TakePlayersOutOfLobby$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :208 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToJoinGameView
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :210 :12) // GoToJoinGameView() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.Window_Closed$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :213 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :213 :35)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :213 :35)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :213 :50)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :213 :50)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :215 :16) // Not a variable of known type: _windowIsBeingClosedByTheCloseButton
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :215 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CallLeaveLobbyService
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :217 :16) // CallLeaveLobbyService() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
