func @_MemoryGame.RestorePassword.RestoreUserPassword$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :32 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :34 :33) // Not a variable of known type: NewPasswordBox
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :34 :33) // NewPasswordBox.Password (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :36 :16) // Not a variable of known type: newPassword
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :36 :31) // "" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :36 :16) // comparison of unknown type: newPassword == ""
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :36 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :38 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :38 :32) // Properties.Langs.Resources.PasswordIsInvalid (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :38 :16) // MessageBox.Show(Properties.Langs.Resources.PasswordIsInvalid) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenIsCorrect
%9 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :38) // TokenIsCorrect() (InvocationExpression)
%10 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :21) // tokenIsCorrect
cbde.store %9, %10 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :21)
%11 = cbde.load %10 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :43 :20)
cond_br %11, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :43 :20)

^4: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetNewPassword
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :45) // SetNewPassword() (InvocationExpression)
%13 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :25) // newPasswordWasSet
cbde.store %12, %13 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :25)
%14 = cbde.load %13 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :46 :24)
cond_br %14, ^6, ^7 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :46 :24)

^6: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :48 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :48 :40) // Properties.Langs.Resources.PasswordReset (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :48 :24) // MessageBox.Show(Properties.Langs.Resources.PasswordReset) (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :49 :42) // new Login() (ObjectCreationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :24) // Not a variable of known type: loginView
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :24) // loginView.Show() (InvocationExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :51 :24) // this (ThisExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :51 :24) // this.Close() (InvocationExpression)
br ^3

^7: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :40) // Properties.Langs.Resources.PasswordRecoveryError (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :24) // MessageBox.Show(Properties.Langs.Resources.PasswordRecoveryError) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :60 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :60 :36) // Properties.Langs.Resources.NonMatchingVerificationCode (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :60 :20) // MessageBox.Show(Properties.Langs.Resources.NonMatchingVerificationCode) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.TokenIsCorrect$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :65 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :67 :27) // Not a variable of known type: TextBoxToken
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :67 :27) // TextBoxToken.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :68 :16) // Not a variable of known type: token
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :68 :25) // "" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :68 :16) // comparison of unknown type: token == ""
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :68 :16)

^1: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :70 :23) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :70 :16)

^2: // JumpBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :73 :16) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :74 :19) // Not a variable of known type: accountVerificationServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :74 :64) // Not a variable of known type: _emailAddress
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :74 :79) // Not a variable of known type: token
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :74 :19) // accountVerificationServiceClient.VerifyToken(_emailAddress, token) (InvocationExpression)
return %12 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :74 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RestorePassword.SetNewPassword$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :77 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :79 :46) // new BCryptHashGenerator() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :33) // Not a variable of known type: NewPasswordBox
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :33) // NewPasswordBox.Password (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :16) // Not a variable of known type: newPassword
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :31) // "" (StringLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :16) // comparison of unknown type: newPassword == ""
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :16)

^1: // JumpBlock
%8 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :83 :23) // false
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :83 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :85 :26) // Not a variable of known type: bCryptHashGenerator
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :85 :26) // bCryptHashGenerator.GenerateSalt() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :86 :42) // Not a variable of known type: bCryptHashGenerator
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :86 :86) // Not a variable of known type: newPassword
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :86 :99) // Not a variable of known type: salt
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :86 :42) // bCryptHashGenerator.GenerateEncryptedString(newPassword, salt) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :87 :82) // new AccountModifiabilityServiceClient() (ObjectCreationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :88 :81) // new PasswordModificationCredentialsDto()              {                  EmailAddress = _emailAddress,                  Salt = salt,                  NewPassword = encryptedNewPassword              } (ObjectCreationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :31) // Not a variable of known type: _emailAddress
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :91 :23) // Not a variable of known type: salt
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :92 :30) // Not a variable of known type: encryptedNewPassword
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :94 :42) // Not a variable of known type: accountModifiabilityServiceClient
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :94 :91) // Not a variable of known type: passwordModificationCredentials
%26 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :94 :42) // accountModifiabilityServiceClient.SetNewPassword(passwordModificationCredentials) (InvocationExpression)
%27 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :94 :17) // newPasswordWasAssigned
cbde.store %26, %27 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :94 :17)
%28 = cbde.load %27 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :95 :19)
return %28 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :95 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function OkButtonClicked(none, none), it contains poisonous unsupported syntaxes

// Skipping function SendNewCodeButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.RestorePassword.SendNewCode$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :160 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :162 :30) // TokenManager.GenerateVerificationToken() (InvocationExpression)
%2 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :163 :51) // false
%3 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :163 :17) // newVerificationTokenWasAssigned
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :163 :17)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :164 :15) // Not a variable of known type: newToken
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :164 :27) // "" (StringLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :164 :15) // comparison of unknown type: newToken != ""
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :164 :15)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :167 :20) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :168 :50) // Not a variable of known type: accountVerificationServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :168 :110) // Not a variable of known type: _emailAddress
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :168 :125) // Not a variable of known type: newToken
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :168 :50) // accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, newToken) (InvocationExpression)
cbde.store %12, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :168 :16)
br ^2

^2: // BinaryBranchBlock
%13 = cbde.load %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :171 :16)
cond_br %13, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :171 :16)

^3: // SimpleBlock
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :173 :65) // new VerificationTokenInfoDto()                  {                      Name = _username,                      EmailAddress = _emailAddress,                      VerificationToken = newToken                  } (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :175 :27) // Not a variable of known type: _username
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :176 :35) // Not a variable of known type: _emailAddress
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :177 :40) // Not a variable of known type: newToken
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :179 :51) // Not a variable of known type: verificationTokenInfo
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :179 :16) // TokenManager.SendVerificationToken(verificationTokenInfo) (InvocationExpression)
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :180 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :180 :32) // Properties.Langs.Resources.NewCodeSentMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :180 :16) // MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :186 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :186 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :186 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :186 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :186 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :188 :30) // new Login() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :189 :12) // Not a variable of known type: loginView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :189 :12) // loginView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :190 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :190 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
