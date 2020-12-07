func @_MemoryGame.RestorePassword.SetNewPassword$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :25 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: MD5Encryption
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :27 :52) // Not a variable of known type: NewPasswordBox
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :27 :52) // NewPasswordBox.Password (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :27 :30) // MD5Encryption.Encrypt(NewPasswordBox.Password) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :30 :16) // new AccountModifiabilityServiceClient() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :33 :16) // new MemoryGameService.DataTransferObjects.PlayerCredentialsDTO()                  {                      EmailAddress = _emailAddress,                      Password = password                  } (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :35 :35) // Not a variable of known type: _emailAddress
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :36 :31) // Not a variable of known type: password
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :39 :19) // Not a variable of known type: accountModifiabilityServiceClient
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :39 :68) // Not a variable of known type: playerCredentialsDTO
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :39 :19) // accountModifiabilityServiceClient.SetNewPassword(playerCredentialsDTO) (InvocationExpression)
return %12 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :39 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RestorePassword.OkButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :37)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :37)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :52)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :52)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenIsCorrect
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :16) // TokenIsCorrect() (InvocationExpression)
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetNewPassword
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :47 :40) // SetNewPassword() (InvocationExpression)
%4 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :47 :21) // passwordRestored
cbde.store %3, %4 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :47 :21)
%5 = cbde.load %4 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :48 :20)
cond_br %5, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :48 :20)

^3: // SimpleBlock
// Entity from another assembly: MessageBox
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :36) // "Contraseña restablecida exitosamente" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :20) // MessageBox.Show("Contraseña restablecida exitosamente") (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :52 :38) // new Login() (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :53 :20) // Not a variable of known type: loginView
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :53 :20) // loginView.Show() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :54 :20) // this (ThisExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :54 :20) // this.Close() (InvocationExpression)
br ^5

^4: // SimpleBlock
// Entity from another assembly: MessageBox
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :58 :36) // "No se pudo restablecer la contraseña" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :58 :20) // MessageBox.Show("No se pudo restablecer la contraseña") (InvocationExpression)
br ^5

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :63 :32) // "El código introducido no concuerda con el que enviamos a su correo electrónico" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :63 :16) // MessageBox.Show("El código introducido no concuerda con el que enviamos a su correo electrónico") (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.SendNewCodeButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :67 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :67 :46)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :67 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :67 :61)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :67 :61)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :71 :16) // new TokenGeneratorClient() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :72 :30) // Not a variable of known type: tokenGeneratorClient
%5 = constant 6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :72 :65)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :72 :30) // tokenGeneratorClient.GenerateToken(6) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :16) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :12) // Not a variable of known type: accountVerificationServiceClient
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :72) // Not a variable of known type: _emailAddress
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :87) // Not a variable of known type: newToken
%13 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :12) // accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, newToken) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :79 :16) // new MailingServiceClient() (ObjectCreationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :12) // Not a variable of known type: mailingServiceClient
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :55) // Not a variable of known type: _username
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :66) // Not a variable of known type: _emailAddress
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :81) // Not a variable of known type: newToken
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :12) // mailingServiceClient.SendVerificationToken(_username, _emailAddress, newToken) (InvocationExpression)
// Entity from another assembly: MessageBox
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :82 :28) // "Nuevo código enviado" (StringLiteralExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :82 :12) // MessageBox.Show("Nuevo código enviado") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.TokenIsCorrect$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :86 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :89 :16) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :19) // Not a variable of known type: accountVerificationServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :64) // Not a variable of known type: _emailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :79) // Not a variable of known type: TextBoxToken
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :79) // TextBoxToken.Text (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :19) // accountVerificationServiceClient.VerifyToken(_emailAddress, TextBoxToken.Text) (InvocationExpression)
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RestorePassword.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :93 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :93 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :93 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :93 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :93 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :95 :30) // new Login() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :96 :12) // Not a variable of known type: loginView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :96 :12) // loginView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :97 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :97 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
