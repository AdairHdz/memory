// Skipping function LoadCardDecksInfo(), it contains poisonous unsupported syntaxes

// Skipping function CreateGameButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.CreateGame.CreateNewMatch$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :98 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoadCardDeck
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :100 :12) // LoadCardDeck() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :101 :25) // new MemoryGameService.DataTransferObjects.MatchDto()              {                  MaxNumberOfPlayers = _numberOfPlayersDesiredForMatch,                  Host = _username,                  HasStarted = false,                  CardDeckDto = _cardDeck                  } (ObjectCreationExpression)
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :103 :37) // Not a variable of known type: _numberOfPlayersDesiredForMatch
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :104 :23) // Not a variable of known type: _username
%4 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :105 :29) // false
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :106 :30) // Not a variable of known type: _cardDeck
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :110 :16) // new MemoryGameService.MatchCreationServiceClient() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :112 :12) // Not a variable of known type: _matchCreationServiceClient
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :112 :55) // Not a variable of known type: _gameMatch
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :112 :12) // _matchCreationServiceClient.CreateNewMatch(_gameMatch) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.CreateGame.LoadCardDeck$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :115 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :118 :16) // new MemoryGameService.CardDeckRetrieverServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :119 :24) // Not a variable of known type: cardDeckRetrieverServiceClient
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :119 :75) // Not a variable of known type: _selectedCardDeckId
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :119 :24) // cardDeckRetrieverServiceClient.GetCardDeckAndCards(_selectedCardDeckId) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.CreateGame.GoToWaitingRoom$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :122 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :124 :42) // new WaitingRoom()              {                  GameMatchDto = _gameMatch              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :126 :31) // Not a variable of known type: _gameMatch
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :129 :12) // Not a variable of known type: waitingRoomView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :129 :12) // waitingRoomView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :130 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :130 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.CreateGame.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :133 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :133 :38)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :133 :38)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :133 :53)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :133 :53)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :135 :36) // new MainMenu() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :136 :12) // Not a variable of known type: mainMenuView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :136 :12) // mainMenuView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :137 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\CreateGame.xaml.cs" :137 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
