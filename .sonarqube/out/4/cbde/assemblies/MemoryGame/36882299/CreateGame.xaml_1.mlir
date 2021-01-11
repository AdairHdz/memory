// Skipping function CreateGameButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.CreateGame.CreateNewMatch$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :75 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoadCardDeck
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :77 :12) // LoadCardDeck() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :78 :25) // new MemoryGameService.DataTransferObjects.MatchDto()              {                  MaxNumberOfPlayers = _numberOfPlayersDesiredForMatch,                  Host = _username,                  HasStarted = false,                  CardDeckDto = _cardDeck,                  TotalPairs = 0                  } (ObjectCreationExpression)
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :80 :37) // Not a variable of known type: _numberOfPlayersDesiredForMatch
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :81 :23) // Not a variable of known type: _username
%4 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :82 :29) // false
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :83 :30) // Not a variable of known type: _cardDeck
%6 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :84 :29)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :88 :16) // new MemoryGameService.MatchCreationServiceClient() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :90 :12) // Not a variable of known type: _matchCreationServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :90 :55) // Not a variable of known type: _gameMatch
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :90 :12) // _matchCreationServiceClient.CreateNewMatch(_gameMatch) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.CreateGame.LoadCardDecksInfo$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :93 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :96 :16) // new MemoryGameService.CardDeckRetrieverServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :99 :16) // Not a variable of known type: cardDeckRetrieverServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :99 :16) // cardDeckRetrieverServiceClient.GetCardDecksInfo() (InvocationExpression)
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :28)
%6 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :20) // index
cbde.store %5, %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :20)
br ^1

^1: // BinaryBranchBlock
%7 = cbde.load %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :31)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :39) // Not a variable of known type: cardDecksInfo
%9 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :39) // cardDecksInfo.Length (SimpleMemberAccessExpression)
%10 = cmpi "slt", %7, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :31)
cond_br %10, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :31)

^2: // SimpleBlock
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :103 :16) // Not a variable of known type: _cardDecksInfoList
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :103 :39) // Not a variable of known type: cardDecksInfo
%13 = cbde.load %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :103 :53)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :103 :39) // cardDecksInfo[index] (ElementAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :103 :16) // _cardDecksInfoList.Add(cardDecksInfo[index]) (InvocationExpression)
br ^4

^4: // SimpleBlock
%16 = cbde.load %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :61)
%17 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :61)
%18 = addi %16, %17 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :61)
cbde.store %18, %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :61)
br ^1

^3: // SimpleBlock
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :105 :12) // Not a variable of known type: CardDeckComboBox
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :105 :12) // CardDeckComboBox.ItemsSource (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :105 :43) // Not a variable of known type: _cardDecksInfoList
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :106 :12) // Not a variable of known type: CardDeckComboBox
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :106 :12) // CardDeckComboBox.DisplayMemberPath (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :106 :49) // "CardDeckName" (StringLiteralExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :107 :12) // Not a variable of known type: CardDeckComboBox
%26 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :107 :12) // CardDeckComboBox.SelectedValuePath (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :107 :49) // "CardDeckId" (StringLiteralExpression)
br ^5

^5: // ExitBlock
return

}
func @_MemoryGame.CreateGame.LoadCardDeck$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :110 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :113 :16) // new MemoryGameService.CardDeckRetrieverServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :114 :24) // Not a variable of known type: cardDeckRetrieverServiceClient
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :114 :75) // Not a variable of known type: _selectedCardDeckId
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :114 :24) // cardDeckRetrieverServiceClient.GetCardDeckAndCards(_selectedCardDeckId) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.CreateGame.GoToWaitingRoom$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :117 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :119 :42) // new WaitingRoom()              {                  GameMatchDto = _gameMatch              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :121 :31) // Not a variable of known type: _gameMatch
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :124 :12) // Not a variable of known type: waitingRoomView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :124 :12) // waitingRoomView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :125 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :125 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.CreateGame.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :128 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :128 :38)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :128 :38)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :128 :53)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :128 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :130 :36) // new MainMenu() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :131 :12) // Not a variable of known type: mainMenuView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :131 :12) // mainMenuView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :132 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :132 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
