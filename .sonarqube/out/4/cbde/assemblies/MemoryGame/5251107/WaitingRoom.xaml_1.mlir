// Skipping function Window_Loaded(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.DetermineIfPlayerIsHost$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :66 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :68 :16) // Not a variable of known type: _username
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :68 :33) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :68 :33) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :68 :16) // _username.Equals(GameMatchDto.Host) (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :68 :16)

^1: // SimpleBlock
%4 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :70 :36) // true
br ^3

^2: // SimpleBlock
%5 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :74 :36) // false
br ^3

^3: // ExitBlock
return

}
// Skipping function LoadActivePlayersInLobby(), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.CallJoinLobbyService$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :88 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :90 :12) // Not a variable of known type: _lobbyServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :90 :42) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :90 :42) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :90 :61) // Not a variable of known type: _username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :90 :12) // _lobbyServiceClient.JoinLobby(GameMatchDto.Host, _username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LeaveButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.GoToJoinGameView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :129 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :131 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :132 :36) // new JoinGame() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :133 :12) // Not a variable of known type: joinGameView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :133 :12) // joinGameView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :134 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :134 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.GoToMainMenuView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :137 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :139 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :140 :36) // new MainMenu() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :12) // Not a variable of known type: mainMenuView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :12) // mainMenuView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :142 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :142 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.CallLeaveLobbyService$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :145 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :147 :12) // Not a variable of known type: _lobbyServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :147 :43) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :147 :43) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :147 :62) // Not a variable of known type: _username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :147 :12) // _lobbyServiceClient.LeaveLobby(GameMatchDto.Host, _username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.StartButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :155 :8) {
^entry (%_sender : none, %_routedEventArgs : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :155 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :155 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :155 :54)
cbde.store %_routedEventArgs, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :155 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :157 :15) // Not a variable of known type: _players
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :157 :15) // _players.Count (SimpleMemberAccessExpression)
%4 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :157 :32)
%5 = cmpi "slt", %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :157 :15)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :157 :15)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :159 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :159 :32) // Properties.Langs.Resources.InsufficientNumberOfPlayers (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :159 :16) // MessageBox.Show(Properties.Langs.Resources.InsufficientNumberOfPlayers) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: StartGame
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :163 :16) // StartGame() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function StartGame(), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.NotifyNewPlayerEntered$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :43)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :43)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :194 :15) // Not a variable of known type: username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :194 :27) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :194 :15) // comparison of unknown type: username != null
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :194 :15)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :196 :16) // Not a variable of known type: _players
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :196 :29) // Not a variable of known type: username
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :196 :16) // _players.Add(username) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.NotifyPlayerLeft$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :204 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :204 :37)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :204 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :206 :12) // Not a variable of known type: _players
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :206 :28) // Not a variable of known type: username
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :206 :12) // _players.Remove(username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.TakePlayersToMatchView$string$$$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :209 :8) {
^entry (%_playersInMatch : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :209 :43)
cbde.store %_playersInMatch, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :209 :43)
br ^0

^0: // SimpleBlock
%1 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :211 :51) // false
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :212 :36) // new Views.Match()              {                  Players = playersInMatch,                  MatchHost = GameMatchDto.Host,                  CardDeck = GameMatchDto.CardDeckDto              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :214 :26) // Not a variable of known type: playersInMatch
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :215 :28) // Not a variable of known type: GameMatchDto
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :215 :28) // GameMatchDto.Host (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :216 :27) // Not a variable of known type: GameMatchDto
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :216 :27) // GameMatchDto.CardDeckDto (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :218 :12) // Not a variable of known type: matchView
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :218 :12) // matchView.Show() (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :219 :12) // this (ThisExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :219 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.TakePlayersOutOfLobby$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :225 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToJoinGameView
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :227 :12) // GoToJoinGameView() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.Window_Closed$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :230 :8) {
^entry (%_sender : none, %_eventArgs : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :230 :35)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :230 :35)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :230 :50)
cbde.store %_eventArgs, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :230 :50)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :232 :16) // Not a variable of known type: _windowIsBeingClosedByTheCloseButton
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :232 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CallLeaveLobbyService
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :234 :16) // CallLeaveLobbyService() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
