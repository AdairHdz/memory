func @_MemoryGame.Components.UserBox.SetUsername$System.Windows.Controls.TextBlock$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :15 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :15 :32)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :15 :32)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Grid
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :17 :27) // Not a variable of known type: username
%2 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :17 :37)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :17 :12) // Grid.SetColumn(username, 0) (InvocationExpression)
// Entity from another assembly: Grid
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :18 :24) // Not a variable of known type: username
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :18 :34)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :18 :12) // Grid.SetRow(username, 0) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :19 :12) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :19 :12) // this.Children (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :19 :30) // Not a variable of known type: username
%10 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\UserBox.cs" :19 :12) // this.Children.Add(username) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
