func @_MemoryGame.GameOptions.WindowLoaded$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :39 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :39 :34)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :39 :34)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :39 :49)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :39 :49)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :41 :16) // Not a variable of known type: NumberOfPlayersInMatch
%3 = constant 3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :41 :41)
%4 = cmpi "slt", %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :41 :16)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :41 :16)

^1: // SimpleBlock
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :43 :16) // Not a variable of known type: ExpelPlayerButton
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :43 :16) // ExpelPlayerButton.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :43 :47) // Visibility.Collapsed (SimpleMemberAccessExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function LeaveGameButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.GameOptions.ExpelPlayerButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :72 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :72 :46)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :72 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :72 :61)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :72 :61)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :74 :42) // new ExpelPlayer()              {                  MatchHost = this.MatchHost,                  NumberOfPlayersInMatch = this.NumberOfPlayersInMatch,                  PlayerUsername = this.PlayerUsername,                  Context = this.Context              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :76 :28) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :76 :28) // this.MatchHost (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :77 :41) // this (ThisExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :77 :41) // this.NumberOfPlayersInMatch (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :78 :33) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :78 :33) // this.PlayerUsername (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :79 :26) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :79 :26) // this.Context (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :81 :12) // Not a variable of known type: expelPlayerView
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :81 :12) // expelPlayerView.Show() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :82 :12) // this (ThisExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :82 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.GameOptions.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :85 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :85 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :85 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :85 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :85 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :87 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :87 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
