func @_MemoryGame.Chat.ReciveMessage$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :25 :8) {
^entry (%_username : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :25 :34)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :25 :34)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :25 :51)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :25 :51)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :28) // "\n" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :35) // Not a variable of known type: username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :28) // Binary expression on unsupported types "\n" + username
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :46) // ": " (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :28) // Binary expression on unsupported types "\n" + username + ": "
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :53) // Not a variable of known type: message
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :28) // Binary expression on unsupported types "\n" + username + ": " + message
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :28 :12) // Not a variable of known type: ChatBox
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :28 :31) // Not a variable of known type: format
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :28 :12) // ChatBox.AppendText(format) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :29 :12) // Not a variable of known type: ChatBox
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :29 :12) // ChatBox.ScrollToEnd() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Chat.SendMessageClickedButton$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :32 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :32 :46)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :32 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :32 :61)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :32 :61)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :34 :29) // Not a variable of known type: TextBoxMessageContent
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :34 :29) // TextBoxMessageContent.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :35 :17) // string (PredefinedType)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :35 :38) // Not a variable of known type: message
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :35 :17) // string.IsNullOrEmpty(message) (InvocationExpression)
%8 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :35 :16) // !string.IsNullOrEmpty(message) (LogicalNotExpression)
cond_br %8, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :35 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :37 :16) // Not a variable of known type: server
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :37 :35) // Not a variable of known type: playerSesion
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :37 :35) // playerSesion.Username (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :37 :58) // Not a variable of known type: message
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :37 :16) // server.SendMessage(playerSesion.Username, message) (InvocationExpression)
br ^2

^2: // SimpleBlock
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :12) // Not a variable of known type: TextBoxMessageContent
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :12) // TextBoxMessageContent.Clear() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.Chat.EnterKeyPressed$object.System.Windows.Input.KeyEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :42 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :42 :38)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :42 :38)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :42 :53)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :42 :53)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :44 :16) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :44 :16) // e.Key (SimpleMemberAccessExpression)
// Entity from another assembly: Key
%4 = constant unit loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :44 :25) // Key.Enter (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :44 :16) // comparison of unknown type: e.Key == Key.Enter
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :44 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SendMessageClickedButton
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :46 :41) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :46 :47) // new RoutedEventArgs() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :46 :16) // SendMessageClickedButton(this, new RoutedEventArgs()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.Chat.NotifyUserHasEnteredTheChat$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :50 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :50 :48)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :50 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :52 :28) // "\n" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :52 :35) // Not a variable of known type: username
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :52 :28) // Binary expression on unsupported types "\n" + username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :52 :46) // " entró al chat" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :52 :28) // Binary expression on unsupported types "\n" + username + " entró al chat"
// Entity from another assembly: Console
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :55 :30) // Not a variable of known type: format
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :55 :12) // Console.WriteLine(format) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
