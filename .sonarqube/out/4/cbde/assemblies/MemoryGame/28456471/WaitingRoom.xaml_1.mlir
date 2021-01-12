// Skipping function Window_Loaded(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.DetermineIfPlayerIsHost$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :60 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :62 :16) // Not a variable of known type: _username
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :62 :33) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :62 :33) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :62 :16) // _username.Equals(GameMatchDto.Host) (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :62 :16)

^1: // SimpleBlock
%4 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :64 :36) // true
br ^3

^2: // SimpleBlock
%5 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :68 :36) // false
br ^3

^3: // ExitBlock
return

}
// Skipping function LoadActivePlayersInLobby(), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.CallJoinLobbyService$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :82 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :84 :12) // Not a variable of known type: _lobbyServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :84 :42) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :84 :42) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :84 :61) // Not a variable of known type: _username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :84 :12) // _lobbyServiceClient.JoinLobby(GameMatchDto.Host, _username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LeaveButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.GoToJoinGameView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :118 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :120 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :121 :36) // new JoinGame() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :122 :12) // Not a variable of known type: joinGameView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :122 :12) // joinGameView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :123 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :123 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.GoToMainMenuView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :126 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :128 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :129 :36) // new MainMenu() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :130 :12) // Not a variable of known type: mainMenuView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :130 :12) // mainMenuView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :131 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :131 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.CallLeaveLobbyService$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :134 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :136 :12) // Not a variable of known type: _lobbyServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :136 :43) // Not a variable of known type: GameMatchDto
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :136 :43) // GameMatchDto.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :136 :62) // Not a variable of known type: _username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :136 :12) // _lobbyServiceClient.LeaveLobby(GameMatchDto.Host, _username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.StartButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :139 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :139 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :139 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :139 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :139 :54)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :15) // Not a variable of known type: _players
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :15) // _players.Count (SimpleMemberAccessExpression)
%4 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :32)
%5 = cmpi "slt", %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :15)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :141 :15)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :32) // Properties.Langs.Resources.InsufficientNumberOfPlayers (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :143 :16) // MessageBox.Show(Properties.Langs.Resources.InsufficientNumberOfPlayers) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: StartGame
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :147 :16) // StartGame() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function StartGame(), it contains poisonous unsupported syntaxes

func @_MemoryGame.WaitingRoom.NotifyNewPlayerEntered$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :172 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :172 :43)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :172 :43)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :174 :15) // Not a variable of known type: username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :174 :27) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :174 :15) // comparison of unknown type: username != null
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :174 :15)

^1: // SimpleBlock
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :176 :16) // Not a variable of known type: _players
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :176 :29) // Not a variable of known type: username
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :176 :16) // _players.Add(username) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.NotifyPlayerLeft$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :180 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :180 :37)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :180 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :182 :12) // Not a variable of known type: _players
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :182 :28) // Not a variable of known type: username
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :182 :12) // _players.Remove(username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.TakePlayersToMatchView$string$$$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :185 :8) {
^entry (%_playersInMatch : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :185 :43)
cbde.store %_playersInMatch, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :185 :43)
br ^0

^0: // SimpleBlock
%1 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :187 :51) // false
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :188 :36) // new Views.Match()              {                  Players = playersInMatch,                  MatchHost = GameMatchDto.Host,                  CardDeck = GameMatchDto.CardDeckDto              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :190 :26) // Not a variable of known type: playersInMatch
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :191 :28) // Not a variable of known type: GameMatchDto
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :191 :28) // GameMatchDto.Host (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :27) // Not a variable of known type: GameMatchDto
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :192 :27) // GameMatchDto.CardDeckDto (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :194 :12) // Not a variable of known type: matchView
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :194 :12) // matchView.Show() (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :195 :12) // this (ThisExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :195 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.TakePlayersOutOfLobby$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :198 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToJoinGameView
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :200 :12) // GoToJoinGameView() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.WaitingRoom.Window_Closed$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :203 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :203 :35)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :203 :35)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :203 :50)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :203 :50)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :205 :16) // Not a variable of known type: _windowIsBeingClosedByTheCloseButton
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :205 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CallLeaveLobbyService
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\WaitingRoom.xaml.cs" :207 :16) // CallLeaveLobbyService() (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
