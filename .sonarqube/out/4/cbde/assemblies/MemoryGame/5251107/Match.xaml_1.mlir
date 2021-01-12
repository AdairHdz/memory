func @_MemoryGame.Views.Match.DrawPlayersNames$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :60 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :62 :42) // new UserBoxDrawer()              {                  GridToBeDrawnOn = MainGrid,                  PlayersUsernames = Players              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :64 :34) // Not a variable of known type: MainGrid
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :65 :35) // Not a variable of known type: Players
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :67 :12) // Not a variable of known type: userBoxDrawer
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :67 :12) // userBoxDrawer.Draw() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.DrawGameBoard$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :72 :46) // new GameBoardDrawer()              {                  GridToBeDrawnOn = GameBoardGrid,                  ImageCards = _imageCards,                  CardDeck = CardDeck,                  NumberOfColumns = 5              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :74 :34) // Not a variable of known type: GameBoardGrid
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :75 :29) // Not a variable of known type: _imageCards
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :76 :27) // Not a variable of known type: CardDeck
%4 = constant 5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :77 :34)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :79 :15) // Not a variable of known type: gameBoardDrawer
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :79 :15) // gameBoardDrawer.Draw() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :80 :15) // Not a variable of known type: gameBoardDrawer
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetClickedCard
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :80 :15) // gameBoardDrawer.SetEventOnCardClicked(GetClickedCard) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetClickedCard(none, none), it contains poisonous unsupported syntaxes

// Skipping function FlipCard(none), it contains poisonous unsupported syntaxes

// Skipping function EndMovement(), it contains poisonous unsupported syntaxes

func @_MemoryGame.Views.Match.HasFormedAPair$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :168 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :16) // Not a variable of known type: _cardsFlippedInCurrentTurn
%1 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :43)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :16) // _cardsFlippedInCurrentTurn[0] (ElementAccessExpression)
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :16) // _cardsFlippedInCurrentTurn[0].CardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :56) // Not a variable of known type: _cardsFlippedInCurrentTurn
%5 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :83)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :56) // _cardsFlippedInCurrentTurn[1] (ElementAccessExpression)
%7 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :56) // _cardsFlippedInCurrentTurn[1].CardId (SimpleMemberAccessExpression)
%8 = cmpi "eq", %3, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :16)
cond_br %8, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :16)

^1: // JumpBlock
%9 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :172 :23) // true
return %9 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :172 :16)

^2: // JumpBlock
%10 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :174 :19) // false
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :174 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Views.Match.OptionsButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :42)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :42)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :57)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :57)
br ^0

^0: // SimpleBlock
%2 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :179 :51) // false
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :180 :42) // new GameOptions()              {                  MatchHost = this.MatchHost,                  NumberOfPlayersInMatch = NumberOfPlayers,                  PlayerUsername = Sesion.GetSesion.Username,                  Context = this._context              } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :182 :28) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :182 :28) // this.MatchHost (SimpleMemberAccessExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :183 :41) // Not a variable of known type: NumberOfPlayers
// Entity from another assembly: Sesion
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :184 :33) // Sesion.GetSesion (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :184 :33) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :26) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :26) // this._context (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :187 :12) // Not a variable of known type: gameOptionsView
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :187 :12) // gameOptionsView.Show() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.WindowLoaded$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :190 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :190 :34)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :190 :34)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :190 :49)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :190 :49)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawPlayersNames
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :192 :12) // DrawPlayersNames() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawGameBoard
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :193 :12) // DrawGameBoard() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :194 :16) // Not a variable of known type: MatchHost
// Entity from another assembly: Sesion
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :194 :33) // Sesion.GetSesion (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :194 :33) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :194 :16) // MatchHost.Equals(Sesion.GetSesion.Username) (InvocationExpression)
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :194 :16)

^1: // SimpleBlock
%8 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :196 :44)
br ^3

^2: // SimpleBlock
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :200 :44)
br ^3

^3: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :12) // Not a variable of known type: TurnLabel
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :12) // TurnLabel.Content (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :32) // Properties.Langs.Resources.TurnMessage (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :73) // ": " (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": "
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :80) // Not a variable of known type: MatchHost
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :202 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": " + MatchHost
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :203 :12) // Not a variable of known type: _matchServiceClient
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :203 :43) // Not a variable of known type: MatchHost
// Entity from another assembly: Sesion
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :203 :54) // Sesion.GetSesion (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :203 :54) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :203 :12) // _matchServiceClient.EnterMatch(MatchHost, Sesion.GetSesion.Username) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :204 :30) // Not a variable of known type: Players
%24 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :204 :30) // Players.Length (SimpleMemberAccessExpression)
br ^4

^4: // ExitBlock
return

}
// Skipping function Window_Closed(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.Views.Match.UncoverCardd$int$(i32) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :226 :8) {
^entry (%_cardIndex : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :226 :33)
cbde.store %_cardIndex, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :226 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :12) // Not a variable of known type: _imageCards
%2 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :24)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :12) // _imageCards[cardIndex] (ElementAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :12) // _imageCards[cardIndex].Source (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :44) // Not a variable of known type: _imageCards
%6 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :56)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :44) // _imageCards[cardIndex] (ElementAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :228 :44) // _imageCards[cardIndex].FrontImage (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function FlipBothCardsAgain(none), it contains poisonous unsupported syntaxes

func @_MemoryGame.Views.Match.NotifyTurnHasEnded$string.MemoryGame.MemoryGameService.DataTransferObjects.CardPairDto$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :243 :8) {
^entry (%_username : none, %_cardPairDto : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :243 :39)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :243 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :243 :56)
cbde.store %_cardPairDto, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :243 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :12) // Not a variable of known type: TurnLabel
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :12) // TurnLabel.Content (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :32) // Properties.Langs.Resources.TurnMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :73) // ": " (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": "
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :80) // Not a variable of known type: username
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": " + username
// Entity from another assembly: Sesion
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :247 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :247 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :247 :49) // Not a variable of known type: username
%13 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :247 :16) // Sesion.GetSesion.Username.Equals(username) (InvocationExpression)
cond_br %13, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :247 :16)

^1: // SimpleBlock
%14 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :249 :44)
br ^2

^2: // BinaryBranchBlock
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :252 :16) // Not a variable of known type: cardPairDto
%16 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :252 :16) // cardPairDto.BothCardsAreEqual (SimpleMemberAccessExpression)
%17 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :252 :15) // !cardPairDto.BothCardsAreEqual (LogicalNotExpression)
cond_br %17, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :252 :15)

^3: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: FlipBothCardsAgain
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :254 :35) // Not a variable of known type: cardPairDto
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :254 :16) // FlipBothCardsAgain(cardPairDto) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_MemoryGame.Views.Match.ShowWinners$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :262 :8) {
^entry (%_winner : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :262 :32)
cbde.store %_winner, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :262 :32)
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :264 :28) // Not a variable of known type: winner
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :264 :37) // " " (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :264 :28) // Binary expression on unsupported types winner + " "
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :264 :43) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :264 :43) // Properties.Langs.Resources.WinMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :264 :28) // Binary expression on unsupported types winner + " " + Properties.Langs.Resources.WinMessage
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :264 :12) // MessageBox.Show(winner + " " + Properties.Langs.Resources.WinMessage) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.MatchHasEnded$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :270 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainMenuView
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :272 :12) // GoToMainMenuView() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.NotifyPlayerWasExpel$string.int$$$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :280 :8) {
^entry (%_expelPlayerUsername : none, %_cardsUncovered : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :280 :41)
cbde.store %_expelPlayerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :280 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :280 :69)
cbde.store %_cardsUncovered, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :280 :69)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Sesion
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :49) // Not a variable of known type: expelPlayerUsername
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :16) // Sesion.GetSesion.Username.Equals(expelPlayerUsername) (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainMenuView
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :16) // GoToMainMenuView() (InvocationExpression)
br ^3

^2: // ForInitializerBlock
%7 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :33)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :25) // index
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :25)
br ^4

^4: // BinaryBranchBlock
%9 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :36)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :44) // Not a variable of known type: cardsUncovered
%11 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :44) // cardsUncovered.Length (SimpleMemberAccessExpression)
%12 = cmpi "slt", %9, %11 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :36)
cond_br %12, ^5, ^6 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :36)

^5: // SimpleBlock
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :20) // Not a variable of known type: _imageCards
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :32) // Not a variable of known type: cardsUncovered
%15 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :47)
%16 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :32) // cardsUncovered[index] (ElementAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :20) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :20) // _imageCards[cardsUncovered[index]].Source (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :64) // Not a variable of known type: _imageCards
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :76) // Not a variable of known type: cardsUncovered
%21 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :91)
%22 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :76) // cardsUncovered[index] (ElementAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :64) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :290 :64) // _imageCards[cardsUncovered[index]].BackImage (SimpleMemberAccessExpression)
br ^7

^7: // SimpleBlock
%25 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :67)
%26 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :67)
%27 = addi %25, %26 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :67)
cbde.store %27, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :67)
br ^4

^6: // SimpleBlock
// Entity from another assembly: MessageBox
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :32) // Not a variable of known type: expelPlayerUsername
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :54) // " " (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :32) // Binary expression on unsupported types expelPlayerUsername + " "
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :60) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :60) // Properties.Langs.Resources.ExpelMessage (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :32) // Binary expression on unsupported types expelPlayerUsername + " " + Properties.Langs.Resources.ExpelMessage
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :16) // MessageBox.Show(expelPlayerUsername + " " + Properties.Langs.Resources.ExpelMessage) (InvocationExpression)
%35 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :293 :16) // Not a variable of known type: NumberOfPlayers
%36 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :293 :16) // Inc/Decrement of field or property NumberOfPlayers
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.Views.Match.NotifyPlayerLeaveMatch$string.int$$$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :302 :8) {
^entry (%_username : none, %_cardsUncovered : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :302 :43)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :302 :43)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :302 :60)
cbde.store %_cardsUncovered, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :302 :60)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Sesion
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :304 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :304 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :304 :49) // Not a variable of known type: username
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :304 :16) // Sesion.GetSesion.Username.Equals(username) (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :304 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainMenuView
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :306 :16) // GoToMainMenuView() (InvocationExpression)
br ^3

^2: // ForInitializerBlock
%7 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :33)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :25) // index
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :25)
br ^4

^4: // BinaryBranchBlock
%9 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :36)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :44) // Not a variable of known type: cardsUncovered
%11 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :44) // cardsUncovered.Length (SimpleMemberAccessExpression)
%12 = cmpi "slt", %9, %11 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :36)
cond_br %12, ^5, ^6 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :36)

^5: // SimpleBlock
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :20) // Not a variable of known type: _imageCards
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :32) // Not a variable of known type: cardsUncovered
%15 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :47)
%16 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :32) // cardsUncovered[index] (ElementAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :20) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :20) // _imageCards[cardsUncovered[index]].Source (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :64) // Not a variable of known type: _imageCards
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :76) // Not a variable of known type: cardsUncovered
%21 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :91)
%22 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :76) // cardsUncovered[index] (ElementAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :64) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :312 :64) // _imageCards[cardsUncovered[index]].BackImage (SimpleMemberAccessExpression)
br ^7

^7: // SimpleBlock
%25 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :67)
%26 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :67)
%27 = addi %25, %26 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :67)
cbde.store %27, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :310 :67)
br ^4

^6: // SimpleBlock
// Entity from another assembly: MessageBox
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :314 :32) // Not a variable of known type: username
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :314 :43) // " " (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :314 :32) // Binary expression on unsupported types username + " "
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :314 :49) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :314 :49) // Properties.Langs.Resources.LeaveMatchMessage (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :314 :32) // Binary expression on unsupported types username + " " + Properties.Langs.Resources.LeaveMatchMessage
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :314 :16) // MessageBox.Show(username + " " + Properties.Langs.Resources.LeaveMatchMessage) (InvocationExpression)
%35 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :315 :16) // Not a variable of known type: NumberOfPlayers
%36 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :315 :16) // Inc/Decrement of field or property NumberOfPlayers
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.Views.Match.EndTurnOfExpelPlayer$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :323 :8) {
^entry (%_nextPlayerUsername : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :323 :41)
cbde.store %_nextPlayerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :323 :41)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :12) // Not a variable of known type: TurnLabel
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :12) // TurnLabel.Content (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :32) // Properties.Langs.Resources.TurnMessage (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :73) // ": " (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": "
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :80) // Not a variable of known type: nextPlayerUsername
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :325 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": " + nextPlayerUsername
// Entity from another assembly: Sesion
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :327 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :327 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :327 :49) // Not a variable of known type: nextPlayerUsername
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :327 :16) // Sesion.GetSesion.Username.Equals(nextPlayerUsername) (InvocationExpression)
cond_br %12, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :327 :16)

^1: // SimpleBlock
%13 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :329 :44)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.Views.Match.GoToMainMenuView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :333 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :335 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :336 :36) // new MainMenu() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :337 :12) // Not a variable of known type: mainMenuView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :337 :12) // mainMenuView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :338 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :338 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
