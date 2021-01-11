// Skipping function WindowLoaded(none, none), it contains poisonous unsupported syntaxes

// Skipping function LoadUsernamesToBeVoted(), it contains poisonous unsupported syntaxes

// Skipping function ExpelPlayerButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.ExpelPlayer.VoteToExpelPlayer$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :97 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :36) // Not a variable of known type: ExpelPlayerDataGrid
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :36) // ExpelPlayerDataGrid.SelectedItem (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :99 :36) // ExpelPlayerDataGrid.SelectedItem.ToString() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :100 :37) // new ExpelVoteDto()              {                  Host = MatchHost,                  UsernameOfExpelPlayer = selectedPlayer,                  UsernameOfVoterPlayer = PlayerUsername              } (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :102 :23) // Not a variable of known type: MatchHost
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :103 :40) // Not a variable of known type: selectedPlayer
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :104 :40) // Not a variable of known type: PlayerUsername
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :106 :12) // Not a variable of known type: _matchServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :106 :44) // Not a variable of known type: expelVote
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :106 :12) // _matchServiceClient.ExpelPlayer(expelVote) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ExpelPlayer.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :109 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :109 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :109 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :109 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :109 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :111 :42) // new GameOptions()              {                  MatchHost = this.MatchHost,                  NumberOfPlayersInMatch = this.NumberOfPlayersInMatch,                  PlayerUsername = this.PlayerUsername,                  Context = this.Context              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :113 :28) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :113 :28) // this.MatchHost (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :114 :41) // this (ThisExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :114 :41) // this.NumberOfPlayersInMatch (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :115 :33) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :115 :33) // this.PlayerUsername (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :116 :26) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :116 :26) // this.Context (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :118 :12) // Not a variable of known type: gameOptionsView
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :118 :12) // gameOptionsView.Show() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :119 :12) // this (ThisExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :119 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
