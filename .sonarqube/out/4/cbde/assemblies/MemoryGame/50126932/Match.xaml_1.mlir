func @_MemoryGame.Views.Match.DrawPlayersNames$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :40 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :42 :42) // new UserBoxDrawer()              {                  GridToBeDrawnOn = MainGrid,                  PlayersUsernames = Players              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :44 :34) // Not a variable of known type: MainGrid
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :45 :35) // Not a variable of known type: Players
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :12) // Not a variable of known type: userBoxDrawer
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :12) // userBoxDrawer.Draw() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.DrawGameBoard$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :52 :46) // new GameBoardDrawer()              {                  GridToBeDrawnOn = GameBoardGrid,                  ImageCards = _imageCards,                  CardDeck = CardDeck,                  NumberOfColumns = 5              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :54 :34) // Not a variable of known type: GameBoardGrid
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :55 :29) // Not a variable of known type: _imageCards
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :56 :27) // Not a variable of known type: CardDeck
%4 = constant 5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :57 :34)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :59 :12) // Not a variable of known type: gameBoardDrawer
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :59 :12) // gameBoardDrawer.Draw() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :60 :12) // Not a variable of known type: gameBoardDrawer
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetClickedCard
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :60 :12) // gameBoardDrawer.SetEventOnCardClicked(GetClickedCard) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GetClickedCard(none, none), it contains poisonous unsupported syntaxes

// Skipping function FlipCard(none), it contains poisonous unsupported syntaxes

// Skipping function EndMovement(), it contains poisonous unsupported syntaxes

func @_MemoryGame.Views.Match.HasFormedAPair$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :151 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :16) // Not a variable of known type: _cardsFlippedInCurrentTurn
%1 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :43)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :16) // _cardsFlippedInCurrentTurn[0] (ElementAccessExpression)
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :16) // _cardsFlippedInCurrentTurn[0].CardId (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :56) // Not a variable of known type: _cardsFlippedInCurrentTurn
%5 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :83)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :56) // _cardsFlippedInCurrentTurn[1] (ElementAccessExpression)
%7 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :56) // _cardsFlippedInCurrentTurn[1].CardId (SimpleMemberAccessExpression)
%8 = cmpi "eq", %3, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :16)
cond_br %8, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :153 :16)

^1: // JumpBlock
%9 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :155 :23) // true
return %9 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :155 :16)

^2: // JumpBlock
%10 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :157 :19) // false
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :157 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Views.Match.OptionsButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :160 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :160 :42)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :160 :42)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :160 :57)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :160 :57)
br ^0

^0: // SimpleBlock
%2 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :162 :51) // false
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :163 :42) // new GameOptions()              {                  MatchHost = this.MatchHost,                  NumberOfPlayersInMatch = NumberOfPlayers,                  PlayerUsername = Sesion.GetSesion.Username,                  Context = this._context              } (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :165 :28) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :165 :28) // this.MatchHost (SimpleMemberAccessExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :166 :41) // Not a variable of known type: NumberOfPlayers
// Entity from another assembly: Sesion
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :167 :33) // Sesion.GetSesion (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :167 :33) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :168 :26) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :168 :26) // this._context (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :12) // Not a variable of known type: gameOptionsView
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :170 :12) // gameOptionsView.Show() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.WindowLoaded$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :173 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :173 :34)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :173 :34)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :173 :49)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :173 :49)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawPlayersNames
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :175 :12) // DrawPlayersNames() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawGameBoard
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :176 :12) // DrawGameBoard() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :16) // Not a variable of known type: MatchHost
// Entity from another assembly: Sesion
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :33) // Sesion.GetSesion (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :33) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :16) // MatchHost.Equals(Sesion.GetSesion.Username) (InvocationExpression)
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :177 :16)

^1: // SimpleBlock
%8 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :179 :44)
br ^3

^2: // SimpleBlock
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :183 :44)
br ^3

^3: // SimpleBlock
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :12) // Not a variable of known type: TurnLabel
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :12) // TurnLabel.Content (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :32) // Properties.Langs.Resources.TurnMessage (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :73) // ": " (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": "
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :80) // Not a variable of known type: MatchHost
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :185 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": " + MatchHost
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :186 :12) // Not a variable of known type: _matchServiceClient
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :186 :43) // Not a variable of known type: MatchHost
// Entity from another assembly: Sesion
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :186 :54) // Sesion.GetSesion (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :186 :54) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :186 :12) // _matchServiceClient.EnterMatch(MatchHost, Sesion.GetSesion.Username) (InvocationExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :187 :30) // Not a variable of known type: Players
%24 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :187 :30) // Players.Length (SimpleMemberAccessExpression)
br ^4

^4: // ExitBlock
return

}
// Skipping function Window_Closed(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.Views.Match.UncoverCardd$int$(i32) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :206 :8) {
^entry (%_cardIndex : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :206 :33)
cbde.store %_cardIndex, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :206 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :12) // Not a variable of known type: _imageCards
%2 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :24)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :12) // _imageCards[cardIndex] (ElementAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :12) // _imageCards[cardIndex].Source (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :44) // Not a variable of known type: _imageCards
%6 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :56)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :44) // _imageCards[cardIndex] (ElementAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :208 :44) // _imageCards[cardIndex].FrontImage (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function FlipBothCardsAgain(none), it contains poisonous unsupported syntaxes

func @_MemoryGame.Views.Match.NotifyTurnHasEnded$string.MemoryGame.MemoryGameService.DataTransferObjects.CardPairDto$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :218 :8) {
^entry (%_username : none, %_cardPairDto : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :218 :39)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :218 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :218 :56)
cbde.store %_cardPairDto, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :218 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :12) // Not a variable of known type: TurnLabel
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :12) // TurnLabel.Content (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :32) // Properties.Langs.Resources.TurnMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :73) // ": " (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": "
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :80) // Not a variable of known type: username
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :220 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": " + username
// Entity from another assembly: Sesion
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :222 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :222 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :222 :49) // Not a variable of known type: username
%13 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :222 :16) // Sesion.GetSesion.Username.Equals(username) (InvocationExpression)
cond_br %13, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :222 :16)

^1: // SimpleBlock
%14 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :224 :44)
br ^2

^2: // BinaryBranchBlock
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :227 :16) // Not a variable of known type: cardPairDto
%16 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :227 :16) // cardPairDto.BothCardsAreEqual (SimpleMemberAccessExpression)
cond_br %16, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :227 :16)

^3: // SimpleBlock
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :229 :39) // Not a variable of known type: _imageCards
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :229 :51) // Not a variable of known type: cardPairDto
%19 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :229 :51) // cardPairDto.IndexOfCard1 (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :229 :39) // _imageCards[cardPairDto.IndexOfCard1] (ElementAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :230 :39) // Not a variable of known type: _imageCards
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :230 :51) // Not a variable of known type: cardPairDto
%24 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :230 :51) // cardPairDto.IndexOfCard2 (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :230 :39) // _imageCards[cardPairDto.IndexOfCard2] (ElementAccessExpression)
br ^5

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: FlipBothCardsAgain
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :234 :35) // Not a variable of known type: cardPairDto
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :234 :16) // FlipBothCardsAgain(cardPairDto) (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_MemoryGame.Views.Match.ShowWinners$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :238 :8) {
^entry (%_winner : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :238 :32)
cbde.store %_winner, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :238 :32)
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :240 :28) // Not a variable of known type: winner
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :240 :37) // " " (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :240 :28) // Binary expression on unsupported types winner + " "
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :240 :43) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :240 :43) // Properties.Langs.Resources.WinMessage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :240 :28) // Binary expression on unsupported types winner + " " + Properties.Langs.Resources.WinMessage
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :240 :12) // MessageBox.Show(winner + " " + Properties.Langs.Resources.WinMessage) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.MatchHasEnded$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :243 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainMenuView
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :245 :12) // GoToMainMenuView() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.NotifyPlayerWasExpel$string.int$$$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :248 :8) {
^entry (%_expelPlayerUsername : none, %_cardsUncovered : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :248 :41)
cbde.store %_expelPlayerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :248 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :248 :69)
cbde.store %_cardsUncovered, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :248 :69)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Sesion
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :250 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :250 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :250 :49) // Not a variable of known type: expelPlayerUsername
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :250 :16) // Sesion.GetSesion.Username.Equals(expelPlayerUsername) (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :250 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainMenuView
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :252 :16) // GoToMainMenuView() (InvocationExpression)
br ^3

^2: // ForInitializerBlock
%7 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :33)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :25) // index
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :25)
br ^4

^4: // BinaryBranchBlock
%9 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :36)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :44) // Not a variable of known type: cardsUncovered
%11 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :44) // cardsUncovered.Length (SimpleMemberAccessExpression)
%12 = cmpi "slt", %9, %11 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :36)
cond_br %12, ^5, ^6 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :36)

^5: // SimpleBlock
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :20) // Not a variable of known type: _imageCards
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :32) // Not a variable of known type: cardsUncovered
%15 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :47)
%16 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :32) // cardsUncovered[index] (ElementAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :20) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :20) // _imageCards[cardsUncovered[index]].Source (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :64) // Not a variable of known type: _imageCards
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :76) // Not a variable of known type: cardsUncovered
%21 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :91)
%22 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :76) // cardsUncovered[index] (ElementAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :64) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :258 :64) // _imageCards[cardsUncovered[index]].BackImage (SimpleMemberAccessExpression)
br ^7

^7: // SimpleBlock
%25 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :67)
%26 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :67)
%27 = addi %25, %26 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :67)
cbde.store %27, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :256 :67)
br ^4

^6: // SimpleBlock
// Entity from another assembly: MessageBox
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :260 :32) // Not a variable of known type: expelPlayerUsername
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :260 :54) // " " (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :260 :32) // Binary expression on unsupported types expelPlayerUsername + " "
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :260 :60) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :260 :60) // Properties.Langs.Resources.ExpelMessage (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :260 :32) // Binary expression on unsupported types expelPlayerUsername + " " + Properties.Langs.Resources.ExpelMessage
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :260 :16) // MessageBox.Show(expelPlayerUsername + " " + Properties.Langs.Resources.ExpelMessage) (InvocationExpression)
%35 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :261 :16) // Not a variable of known type: NumberOfPlayers
%36 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :261 :16) // Inc/Decrement of field or property NumberOfPlayers
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.Views.Match.NotifyPlayerLeaveMatch$string.int$$$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :265 :8) {
^entry (%_playerUsername : none, %_cardsUncovered : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :265 :43)
cbde.store %_playerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :265 :43)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :265 :66)
cbde.store %_cardsUncovered, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :265 :66)
br ^0

^0: // BinaryBranchBlock
// Entity from another assembly: Sesion
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :267 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :267 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :267 :49) // Not a variable of known type: playerUsername
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :267 :16) // Sesion.GetSesion.Username.Equals(playerUsername) (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :267 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainMenuView
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :269 :16) // GoToMainMenuView() (InvocationExpression)
br ^3

^2: // ForInitializerBlock
%7 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :33)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :25) // index
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :25)
br ^4

^4: // BinaryBranchBlock
%9 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :36)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :44) // Not a variable of known type: cardsUncovered
%11 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :44) // cardsUncovered.Length (SimpleMemberAccessExpression)
%12 = cmpi "slt", %9, %11 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :36)
cond_br %12, ^5, ^6 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :36)

^5: // SimpleBlock
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :20) // Not a variable of known type: _imageCards
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :32) // Not a variable of known type: cardsUncovered
%15 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :47)
%16 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :32) // cardsUncovered[index] (ElementAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :20) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :20) // _imageCards[cardsUncovered[index]].Source (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :64) // Not a variable of known type: _imageCards
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :76) // Not a variable of known type: cardsUncovered
%21 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :91)
%22 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :76) // cardsUncovered[index] (ElementAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :64) // _imageCards[cardsUncovered[index]] (ElementAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :275 :64) // _imageCards[cardsUncovered[index]].BackImage (SimpleMemberAccessExpression)
br ^7

^7: // SimpleBlock
%25 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :67)
%26 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :67)
%27 = addi %25, %26 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :67)
cbde.store %27, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :273 :67)
br ^4

^6: // SimpleBlock
// Entity from another assembly: MessageBox
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :277 :32) // Not a variable of known type: playerUsername
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :277 :49) // " " (StringLiteralExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :277 :32) // Binary expression on unsupported types playerUsername + " "
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :277 :55) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :277 :55) // Properties.Langs.Resources.LeaveMatchMessage (SimpleMemberAccessExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :277 :32) // Binary expression on unsupported types playerUsername + " " + Properties.Langs.Resources.LeaveMatchMessage
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :277 :16) // MessageBox.Show(playerUsername + " " + Properties.Langs.Resources.LeaveMatchMessage) (InvocationExpression)
%35 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :278 :16) // Not a variable of known type: NumberOfPlayers
%36 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :278 :16) // Inc/Decrement of field or property NumberOfPlayers
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.Views.Match.EndTurnOfExpelPlayer$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :8) {
^entry (%_nextPlayerUsername : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :41)
cbde.store %_nextPlayerUsername, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :282 :41)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :12) // Not a variable of known type: TurnLabel
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :12) // TurnLabel.Content (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :32) // Properties.Langs.Resources.TurnMessage (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :73) // ": " (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": "
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :80) // Not a variable of known type: nextPlayerUsername
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :284 :32) // Binary expression on unsupported types Properties.Langs.Resources.TurnMessage + ": " + nextPlayerUsername
// Entity from another assembly: Sesion
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :286 :16) // Sesion.GetSesion (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :286 :16) // Sesion.GetSesion.Username (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :286 :49) // Not a variable of known type: nextPlayerUsername
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :286 :16) // Sesion.GetSesion.Username.Equals(nextPlayerUsername) (InvocationExpression)
cond_br %12, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :286 :16)

^1: // SimpleBlock
%13 = constant 2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :288 :44)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.Views.Match.GoToMainMenuView$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :292 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :294 :51) // false
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :295 :36) // new MainMenu() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :296 :12) // Not a variable of known type: mainMenuView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :296 :12) // mainMenuView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :297 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :297 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
