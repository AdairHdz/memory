// Skipping function PopulateTableWithBestScores(), it contains poisonous unsupported syntaxes

func @_MemoryGame.ScoreTable.LoadBestScores$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :49 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :51 :58) // new MemoryGameService.ScoreServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :52 :26) // Not a variable of known type: client
%3 = constant 10 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :52 :57)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :52 :26) // client.GetPlayersWithBestScore(10) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ScoreTable.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :55 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :55 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :55 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :55 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :55 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :57 :36) // new MainMenu() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :58 :12) // Not a variable of known type: mainMenuView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :58 :12) // mainMenuView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :59 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :59 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
