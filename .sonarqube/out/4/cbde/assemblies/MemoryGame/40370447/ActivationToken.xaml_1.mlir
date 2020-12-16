func @_MemoryGame.ActivationToken.OkButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :23 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :23 :37)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :23 :37)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :23 :52)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :23 :52)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenIsCorrect
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :26 :16) // TokenIsCorrect() (InvocationExpression)
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :26 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AccountWasSuccessfullyVerified
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :28 :20) // AccountWasSuccessfullyVerified() (InvocationExpression)
cond_br %3, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :28 :20)

^3: // SimpleBlock
// Entity from another assembly: MessageBox
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :30 :36) // "Cuenta activada exitosamente" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :30 :20) // MessageBox.Show("Cuenta activada exitosamente") (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :32 :38) // new Login() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :33 :20) // Not a variable of known type: loginView
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :33 :20) // loginView.Show() (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :34 :20) // this (ThisExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :34 :20) // this.Close() (InvocationExpression)
br ^5

^4: // SimpleBlock
// Entity from another assembly: MessageBox
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :38 :36) // "No se pudo activar la cuenta" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :38 :20) // MessageBox.Show("No se pudo activar la cuenta") (InvocationExpression)
br ^5

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :43 :32) // "El código introducido no concuerda con el que enviamos a su correo electrónico" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :43 :16) // MessageBox.Show("El código introducido no concuerda con el que enviamos a su correo electrónico") (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_MemoryGame.ActivationToken.SendNewCodeButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :47 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :47 :46)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :47 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :47 :61)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :47 :61)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :51 :16) // new MemoryGameService.TokenGeneratorClient() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :52 :30) // Not a variable of known type: tokenGeneratorClient
%5 = constant 6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :52 :65)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :52 :30) // tokenGeneratorClient.GenerateToken(6) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :55 :16) // new MemoryGameService.AccountVerificationServiceClient() (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :56 :12) // Not a variable of known type: accountVerificationServiceClient
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :56 :72) // Not a variable of known type: _emailAddress
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :56 :87) // Not a variable of known type: newToken
%13 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :56 :12) // accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, newToken) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :59 :16) // new MemoryGameService.MailingServiceClient() (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :60 :12) // Not a variable of known type: mailingServiceClient
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :60 :55) // Not a variable of known type: _username
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :60 :66) // Not a variable of known type: _emailAddress
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :60 :81) // Not a variable of known type: newToken
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :60 :12) // mailingServiceClient.SendVerificationToken(_username, _emailAddress, newToken) (InvocationExpression)
// Entity from another assembly: MessageBox
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :62 :28) // "Nuevo código enviado" (StringLiteralExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :62 :12) // MessageBox.Show("Nuevo código enviado") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ActivationToken.TokenIsCorrect$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :66 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :69 :16) // new MemoryGameService.AccountVerificationServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :70 :19) // Not a variable of known type: accountVerificationServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :70 :64) // Not a variable of known type: _emailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :70 :79) // Not a variable of known type: TextBoxToken
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :70 :79) // TextBoxToken.Text (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :70 :19) // accountVerificationServiceClient.VerifyToken(_emailAddress, TextBoxToken.Text) (InvocationExpression)
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :70 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ActivationToken.AccountWasSuccessfullyVerified$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :73 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :76 :16) // new MemoryGameService.AccountVerificationServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :77 :19) // Not a variable of known type: accountVerificationServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :77 :73) // Not a variable of known type: _emailAddress
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :77 :19) // accountVerificationServiceClient.SetAccountAsVerified(_emailAddress) (InvocationExpression)
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :77 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ActivationToken.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :80 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :80 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :80 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :80 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :80 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :82 :40) // new MainWindow() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :83 :12) // Not a variable of known type: mainWindowView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :83 :12) // mainWindowView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :84 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :84 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
