func @_MemoryGame.RestorePassword.RestoreUserPassword$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :31 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :33 :33) // Not a variable of known type: NewPasswordBox
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :33 :33) // NewPasswordBox.Password (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :35 :16) // Not a variable of known type: newPassword
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :35 :31) // "" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :35 :16) // comparison of unknown type: newPassword == ""
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :35 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :37 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :37 :32) // Properties.Langs.Resources.PasswordIsInvalid (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :37 :16) // MessageBox.Show(Properties.Langs.Resources.PasswordIsInvalid) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenIsCorrect
%9 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :41 :20) // TokenIsCorrect() (InvocationExpression)
cond_br %9, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :41 :20)

^4: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetNewPassword
%10 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :43 :24) // SetNewPassword() (InvocationExpression)
cond_br %10, ^6, ^7 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :43 :24)

^6: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :40) // Properties.Langs.Resources.PasswordReset (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :45 :24) // MessageBox.Show(Properties.Langs.Resources.PasswordReset) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToLogin
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :46 :24) // GoToLogin() (InvocationExpression)
br ^3

^7: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :40) // Properties.Langs.Resources.PasswordRecoveryError (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :24) // MessageBox.Show(Properties.Langs.Resources.PasswordRecoveryError) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :36) // Properties.Langs.Resources.NonMatchingVerificationCode (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :20) // MessageBox.Show(Properties.Langs.Resources.NonMatchingVerificationCode) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.TokenIsCorrect$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :60 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :62 :27) // Not a variable of known type: TextBoxToken
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :62 :27) // TextBoxToken.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :63 :16) // Not a variable of known type: token
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :63 :25) // "" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :63 :16) // comparison of unknown type: token == ""
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :63 :16)

^1: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :65 :23) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :65 :16)

^2: // JumpBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :68 :16) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :69 :19) // Not a variable of known type: accountVerificationServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :69 :72) // Not a variable of known type: _emailAddress
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :69 :87) // Not a variable of known type: token
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :69 :19) // accountVerificationServiceClient.VerifyRecoveryToken(_emailAddress, token) (InvocationExpression)
return %12 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :69 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RestorePassword.SetNewPassword$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :72 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :74 :46) // new BCryptHashGenerator() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :33) // Not a variable of known type: NewPasswordBox
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :33) // NewPasswordBox.Password (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :16) // Not a variable of known type: newPassword
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :31) // "" (StringLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :16) // comparison of unknown type: newPassword == ""
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :76 :16)

^1: // JumpBlock
%8 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :78 :23) // false
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :78 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :26) // Not a variable of known type: bCryptHashGenerator
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :80 :26) // bCryptHashGenerator.GenerateSalt() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :42) // Not a variable of known type: bCryptHashGenerator
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :86) // Not a variable of known type: newPassword
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :99) // Not a variable of known type: salt
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :42) // bCryptHashGenerator.GenerateEncryptedString(newPassword, salt) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :82 :82) // new AccountModifiabilityServiceClient() (ObjectCreationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :83 :81) // new PasswordModificationCredentialsDto()              {                  EmailAddress = _emailAddress,                  Salt = salt,                  NewPassword = encryptedNewPassword              } (ObjectCreationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :85 :31) // Not a variable of known type: _emailAddress
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :86 :23) // Not a variable of known type: salt
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :87 :30) // Not a variable of known type: encryptedNewPassword
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :89 :42) // Not a variable of known type: accountModifiabilityServiceClient
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :89 :91) // Not a variable of known type: passwordModificationCredentials
%26 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :89 :42) // accountModifiabilityServiceClient.SetNewPassword(passwordModificationCredentials) (InvocationExpression)
%27 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :89 :17) // newPasswordWasAssigned
cbde.store %26, %27 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :89 :17)
%28 = cbde.load %27 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :19)
return %28 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :90 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function OkButtonClicked(none, none), it contains poisonous unsupported syntaxes

// Skipping function SendNewCodeButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.RestorePassword.SendNewCode$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :135 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :137 :30) // TokenManager.GenerateToken() (InvocationExpression)
%2 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :138 :51) // false
%3 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :138 :17) // newVerificationTokenWasAssigned
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :138 :17)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :139 :15) // Not a variable of known type: newToken
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :139 :27) // "" (StringLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :139 :15) // comparison of unknown type: newToken != ""
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :139 :15)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :142 :20) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :143 :50) // Not a variable of known type: accountVerificationServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :143 :106) // Not a variable of known type: _emailAddress
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :143 :121) // Not a variable of known type: newToken
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :143 :50) // accountVerificationServiceClient.AssignNewRecoveryToken(_emailAddress, newToken) (InvocationExpression)
cbde.store %12, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :143 :16)
br ^2

^2: // BinaryBranchBlock
%13 = cbde.load %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :146 :16)
cond_br %13, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :146 :16)

^3: // SimpleBlock
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :148 :53) // new TokenInfoDto()                  {                      Name = _username,                      EmailAddress = _emailAddress,                      Token = newToken                  } (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :150 :27) // Not a variable of known type: _username
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :151 :35) // Not a variable of known type: _emailAddress
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :152 :28) // Not a variable of known type: newToken
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :154 :39) // Not a variable of known type: verificationTokenInfo
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :154 :16) // TokenManager.SendToken(verificationTokenInfo) (InvocationExpression)
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :155 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :155 :32) // Properties.Langs.Resources.NewCodeSentMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :155 :16) // MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :159 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :159 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :159 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :159 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :159 :54)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToLogin
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :161 :12) // GoToLogin() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.GoToLogin$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :164 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :166 :30) // new Login() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :167 :12) // Not a variable of known type: loginView
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :167 :12) // loginView.Show() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :168 :12) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :168 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
