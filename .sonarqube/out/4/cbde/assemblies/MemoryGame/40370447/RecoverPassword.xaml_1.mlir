func @_MemoryGame.RecoverPassword.CancelButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :16 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :16 :41)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :16 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :16 :56)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :16 :56)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :18 :30) // new Login() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :19 :12) // Not a variable of known type: loginView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :19 :12) // loginView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :20 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :20 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RecoverPassword.EmailIsRegistered$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :23 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :25 :48) // new AccessibilityServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :27 :34) // Not a variable of known type: TextBoxEmail
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :27 :34) // TextBoxEmail.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :29 :19) // Not a variable of known type: client
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :29 :40) // Not a variable of known type: emailAddress
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :29 :19) // client.ItsRegistered(emailAddress) (InvocationExpression)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RecoverPassword.GetUsername$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :32 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :34 :48) // new AccessibilityServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :36 :34) // Not a variable of known type: TextBoxEmail
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :36 :34) // TextBoxEmail.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :38 :19) // Not a variable of known type: client
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :38 :38) // Not a variable of known type: emailAddress
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :38 :19) // client.GetUsername(emailAddress) (InvocationExpression)
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RecoverPassword.GenerateVerificationToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :41 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :43 :42) // new TokenGeneratorClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :33) // Not a variable of known type: client
%3 = constant 6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :54)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :33) // client.GenerateToken(6) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RecoverPassword.SendVerificationCode$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :47 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :50 :16) // new MailingServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :51 :12) // Not a variable of known type: client
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :51 :41) // GetUsername() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :51 :56) // Not a variable of known type: TextBoxEmail
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :51 :56) // TextBoxEmail.Text (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :51 :75) // Not a variable of known type: _verificationToken
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :51 :12) // client.SendVerificationToken(GetUsername(), TextBoxEmail.Text, _verificationToken) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :54 :16) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :55 :12) // Not a variable of known type: accountVerificationServiceClient
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :55 :72) // Not a variable of known type: TextBoxEmail
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :55 :72) // TextBoxEmail.Text (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :55 :91) // Not a variable of known type: _verificationToken
%14 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :55 :12) // accountVerificationServiceClient.AssignNewVerificationToken(TextBoxEmail.Text, _verificationToken) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RecoverPassword.SendCodeButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :58 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :58 :43)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :58 :43)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :58 :58)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :58 :58)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EmailIsRegistered
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :60 :16) // EmailIsRegistered() (InvocationExpression)
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :60 :16)

^1: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateVerificationToken
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :62 :16) // GenerateVerificationToken() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SendVerificationCode
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :63 :16) // SendVerificationCode() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :65 :40) // Not a variable of known type: TextBoxEmail
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :65 :40) // TextBoxEmail.Text (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetUsername
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :65 :59) // GetUsername() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :65 :20) // new RestorePassword(TextBoxEmail.Text, GetUsername()) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :66 :16) // Not a variable of known type: restorePasswordWindow
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :66 :16) // restorePasswordWindow.Show() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :67 :16) // this (ThisExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :67 :16) // this.Close() (InvocationExpression)
br ^3

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :71 :32) // "El email proporcionado no se encuentra registrado" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :71 :16) // MessageBox.Show("El email proporcionado no se encuentra registrado") (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
