func @_MemoryGame.MainMenu.CreateGameButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :17 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :17 :45)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :17 :45)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :17 :60)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :17 :60)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :19 :40) // new CreateGame() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :20 :12) // Not a variable of known type: createGameView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :20 :12) // createGameView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :21 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :21 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.MainMenu.JoinGameButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :24 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :24 :43)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :24 :43)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :24 :58)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :24 :58)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :26 :36) // new JoinGame() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :27 :12) // Not a variable of known type: joinGameView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :27 :12) // joinGameView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :28 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :28 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.MainMenu.ScoreTableButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :31 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :31 :45)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :31 :45)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :31 :60)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :31 :60)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :33 :40) // new ScoreTable() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :34 :12) // Not a variable of known type: scoreTableView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :34 :12) // scoreTableView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :35 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :35 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.MainMenu.ChangeUsernameButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :38 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :38 :49)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :38 :49)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :38 :64)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :38 :64)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :40 :48) // new ChangeUsername() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :41 :12) // Not a variable of known type: changeUsernameView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :41 :12) // changeUsernameView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :42 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\MainMenu.xaml.cs" :42 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
