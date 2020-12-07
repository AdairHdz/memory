func @_MemoryGame.Chat.ReciveMessage$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :24 :8) {
^entry (%_username : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :24 :34)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :24 :34)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :24 :51)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :24 :51)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :26 :28) // "\n" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :26 :35) // Not a variable of known type: username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :26 :28) // Binary expression on unsupported types "\n" + username
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :26 :46) // ": " (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :26 :28) // Binary expression on unsupported types "\n" + username + ": "
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :26 :53) // Not a variable of known type: message
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :26 :28) // Binary expression on unsupported types "\n" + username + ": " + message
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :12) // Not a variable of known type: ChatBox
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :31) // Not a variable of known type: format
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :27 :12) // ChatBox.AppendText(format) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :28 :12) // Not a variable of known type: ChatBox
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :28 :12) // ChatBox.ScrollToEnd() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Chat.SendMessageClickedButton$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :31 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :31 :46)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :31 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :31 :61)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :31 :61)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :33 :29) // Not a variable of known type: TextBoxMessageContent
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :33 :29) // TextBoxMessageContent.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :34 :17) // string (PredefinedType)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :34 :38) // Not a variable of known type: message
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :34 :17) // string.IsNullOrEmpty(message) (InvocationExpression)
%8 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :34 :16) // !string.IsNullOrEmpty(message) (LogicalNotExpression)
cond_br %8, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :34 :16)

^1: // SimpleBlock
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :36 :16) // Not a variable of known type: server
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :36 :35) // Not a variable of known type: message
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :36 :16) // server.SendMessage(message) (InvocationExpression)
br ^2

^2: // SimpleBlock
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :28) // "\n" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :35) // Not a variable of known type: playerSesion
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :35) // playerSesion.Username (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :28) // Binary expression on unsupported types "\n" + playerSesion.Username
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :59) // ": " (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :28) // Binary expression on unsupported types "\n" + playerSesion.Username + ": "
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :66) // Not a variable of known type: message
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :39 :28) // Binary expression on unsupported types "\n" + playerSesion.Username + ": " + message
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :40 :12) // Not a variable of known type: ChatBox
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :40 :31) // Not a variable of known type: format
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :40 :12) // ChatBox.AppendText(format) (InvocationExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :41 :12) // Not a variable of known type: ChatBox
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :41 :12) // ChatBox.ScrollToEnd() (InvocationExpression)
%26 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :42 :12) // Not a variable of known type: TextBoxMessageContent
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :42 :12) // TextBoxMessageContent.Clear() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.Chat.EnterKeyPressed$object.System.Windows.Input.KeyEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :45 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :45 :38)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :45 :38)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :45 :53)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :45 :53)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :47 :16) // Not a variable of known type: e
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :47 :16) // e.Key (SimpleMemberAccessExpression)
// Entity from another assembly: Key
%4 = constant unit loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :47 :25) // Key.Enter (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :47 :16) // comparison of unknown type: e.Key == Key.Enter
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :47 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SendMessageClickedButton
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :49 :41) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :49 :47) // new RoutedEventArgs() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Chat.xaml.cs" :49 :16) // SendMessageClickedButton(this, new RoutedEventArgs()) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
