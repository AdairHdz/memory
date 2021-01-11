func @_MemoryGame.GameOptions.WindowLoaded$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :22 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :22 :34)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :22 :34)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :22 :49)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :22 :49)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :24 :75) // Not a variable of known type: Context
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :24 :34) // new MemoryGameService.MatchServiceClient(Context) (ObjectCreationExpression)
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :25 :16) // Not a variable of known type: NumberOfPlayersInMatch
%5 = constant 3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :25 :41)
%6 = cmpi "slt", %4, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :25 :16)
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :25 :16)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :27 :16) // Not a variable of known type: ExpelPlayerButton
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :27 :16) // ExpelPlayerButton.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: Visibility
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :27 :47) // Visibility.Collapsed (SimpleMemberAccessExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function LeaveGameButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.GameOptions.ExpelPlayerButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :55 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :55 :46)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :55 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :55 :61)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :55 :61)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :57 :42) // new ExpelPlayer()              {                  MatchHost = this.MatchHost,                  NumberOfPlayersInMatch = this.NumberOfPlayersInMatch,                  PlayerUsername = this.PlayerUsername,                  Context = this.Context              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :59 :28) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :59 :28) // this.MatchHost (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :60 :41) // this (ThisExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :60 :41) // this.NumberOfPlayersInMatch (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :61 :33) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :61 :33) // this.PlayerUsername (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :62 :26) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :62 :26) // this.Context (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :64 :12) // Not a variable of known type: expelPlayerView
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :64 :12) // expelPlayerView.Show() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :65 :12) // this (ThisExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :65 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.GameOptions.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :68 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :68 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :68 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :68 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :68 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :70 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\GameOptions.xaml.cs" :70 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
