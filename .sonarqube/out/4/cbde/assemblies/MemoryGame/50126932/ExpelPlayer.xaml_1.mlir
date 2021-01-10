// Skipping function WindowLoaded(none, none), it contains poisonous unsupported syntaxes

// Skipping function LoadUsernamesToBeVoted(), it contains poisonous unsupported syntaxes

// Skipping function ExpelPlayerButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.ExpelPlayer.VoteToExpelPlayer$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :96 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :98 :36) // Not a variable of known type: ExpelPlayerDataGrid
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :98 :36) // ExpelPlayerDataGrid.SelectedItem (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :98 :36) // ExpelPlayerDataGrid.SelectedItem.ToString() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :12) // Not a variable of known type: _matchServiceClient
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :44) // Not a variable of known type: MatchHost
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :55) // Not a variable of known type: selectedPlayer
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :71) // Not a variable of known type: PlayerUsername
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :12) // _matchServiceClient.ExpelPlayer(MatchHost, selectedPlayer, PlayerUsername) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ExpelPlayer.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :102 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :102 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :102 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :102 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :102 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :104 :42) // new GameOptions()              {                  MatchHost = this.MatchHost,                  NumberOfPlayersInMatch = this.NumberOfPlayersInMatch,                  PlayerUsername = this.PlayerUsername,                  Context = this.Context              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :106 :28) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :106 :28) // this.MatchHost (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :107 :41) // this (ThisExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :107 :41) // this.NumberOfPlayersInMatch (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :108 :33) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :108 :33) // this.PlayerUsername (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :109 :26) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :109 :26) // this.Context (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :111 :12) // Not a variable of known type: gameOptionsView
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :111 :12) // gameOptionsView.Show() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :112 :12) // this (ThisExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :112 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
