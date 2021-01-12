// Skipping function LoadActiveMatches(), it contains poisonous unsupported syntaxes

func @_MemoryGame.JoinGame.PopulateTableWithActiveMatches$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :46 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :48 :65) // new ObservableCollection<MatchDto>() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :49 :39) // Not a variable of known type: _matchDiscoveryServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :49 :39) // _matchDiscoveryServiceClient.GetActiveMatches() (InvocationExpression)
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :42)
%6 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :21) // indexOfActualMatch
cbde.store %5, %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :21)
br ^1

^1: // BinaryBranchBlock
%7 = cbde.load %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :45)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :66) // Not a variable of known type: activeMatches
%9 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :66) // activeMatches.Length (SimpleMemberAccessExpression)
%10 = cmpi "slt", %7, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :45)
cond_br %10, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :45)

^2: // SimpleBlock
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :53 :16) // Not a variable of known type: listOfActiveMatches
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :53 :40) // Not a variable of known type: activeMatches
%13 = cbde.load %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :53 :54)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :53 :40) // activeMatches[indexOfActualMatch] (ElementAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :53 :16) // listOfActiveMatches.Add(activeMatches[indexOfActualMatch]) (InvocationExpression)
br ^4

^4: // SimpleBlock
%16 = cbde.load %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :88)
%17 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :88)
%18 = addi %16, %17 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :88)
cbde.store %18, %6 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :51 :88)
br ^1

^3: // SimpleBlock
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :56 :12) // Not a variable of known type: GamesDataGrid
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :56 :12) // GamesDataGrid.ItemsSource (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :56 :40) // Not a variable of known type: listOfActiveMatches
br ^5

^5: // ExitBlock
return

}
// Skipping function JoinButtonClicked(none, none), it contains poisonous unsupported syntaxes

// Skipping function JoinMatch(), it contains poisonous unsupported syntaxes

func @_MemoryGame.JoinGame.PlayerCanJoinToGame$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :118 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :120 :31) // Not a variable of known type: _selectedMatch
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :120 :31) // _selectedMatch.Host (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :121 :33) // Not a variable of known type: _matchDiscoveryServiceClient
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :121 :70) // Not a variable of known type: matchHost
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :121 :33) // _matchDiscoveryServiceClient.CanJoin(matchHost) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :121 :17) // canJoinToGame
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :121 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :122 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :122 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.JoinGame.GoToWaitingRoom$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :125 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :127 :42) // new WaitingRoom()              {                  GameMatchDto = _selectedMatch              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :129 :31) // Not a variable of known type: _selectedMatch
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :131 :12) // Not a variable of known type: waitingRoomView
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :131 :12) // waitingRoomView.Show() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :132 :12) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :132 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.JoinGame.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :135 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :135 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :135 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :135 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :135 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :137 :36) // new MainMenu() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :138 :12) // Not a variable of known type: mainMenuView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :138 :12) // mainMenuView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :139 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\JoinGame.xaml.cs" :139 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
