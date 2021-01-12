func @_MemoryGame.RestorePassword.SetFormValidation$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :34 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :36 :23) // new RuleSet() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :37 :12) // Not a variable of known type: _ruleSet
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :37 :66) // Not a variable of known type: _newPassword
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :37 :39) // new PasswordValidationRule(_newPassword) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :37 :12) // _ruleSet.AddValidationRule(new PasswordValidationRule(_newPassword)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.RestoreUserPassword$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :40 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :27) // Not a variable of known type: NewPasswordBox
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :42 :27) // NewPasswordBox.Password (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetFormValidation
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :43 :12) // SetFormValidation() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :44 :16) // Not a variable of known type: _ruleSet
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :44 :16) // _ruleSet.AllValidationRulesHavePassed() (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :44 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenIsCorrect
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :46 :20) // TokenIsCorrect() (InvocationExpression)
cond_br %5, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :46 :20)

^3: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetNewPassword
%6 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :48 :24) // SetNewPassword() (InvocationExpression)
cond_br %6, ^5, ^6 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :48 :24)

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :40) // Properties.Langs.Resources.PasswordReset (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :50 :24) // MessageBox.Show(Properties.Langs.Resources.PasswordReset) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToLogin
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :51 :24) // GoToLogin() (InvocationExpression)
br ^7

^6: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :40) // Properties.Langs.Resources.PasswordRecoveryError (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :55 :24) // MessageBox.Show(Properties.Langs.Resources.PasswordRecoveryError) (InvocationExpression)
br ^7

^4: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :60 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :60 :36) // Properties.Langs.Resources.NonMatchingVerificationCode (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :60 :20) // MessageBox.Show(Properties.Langs.Resources.NonMatchingVerificationCode) (InvocationExpression)
br ^7

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ShowErrorMessage
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :65 :16) // ShowErrorMessage() (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.ShowErrorMessage$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :70 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :72 :65) // Not a variable of known type: _ruleSet
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :72 :65) // _ruleSet.GetValidationResultErrors() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :73 :16) // Not a variable of known type: validationResultErrors
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :73 :16) // validationResultErrors.Count (SimpleMemberAccessExpression)
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :73 :47)
%6 = cmpi "sgt", %4, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :73 :16)
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :73 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :32) // Not a variable of known type: validationResultErrors
%8 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :55)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :32) // validationResultErrors[0] (ElementAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :32) // validationResultErrors[0].Message (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :75 :16) // MessageBox.Show(validationResultErrors[0].Message) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.TokenIsCorrect$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :79 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :27) // Not a variable of known type: TextBoxToken
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :81 :27) // TextBoxToken.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :82 :16) // Not a variable of known type: token
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :82 :25) // "" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :82 :16) // comparison of unknown type: token == ""
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :82 :16)

^1: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :84 :23) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :84 :16)

^2: // JumpBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :87 :16) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :88 :19) // Not a variable of known type: accountVerificationServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :88 :72) // Not a variable of known type: _emailAddress
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :88 :87) // Not a variable of known type: token
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :88 :19) // accountVerificationServiceClient.VerifyRecoveryToken(_emailAddress, token) (InvocationExpression)
return %12 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :88 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RestorePassword.SetNewPassword$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :91 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :93 :46) // new BCryptHashGenerator() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :94 :33) // Not a variable of known type: NewPasswordBox
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :94 :33) // NewPasswordBox.Password (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :95 :16) // Not a variable of known type: newPassword
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :95 :31) // "" (StringLiteralExpression)
%7 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :95 :16) // comparison of unknown type: newPassword == ""
cond_br %7, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :95 :16)

^1: // JumpBlock
%8 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :97 :23) // false
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :97 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :99 :26) // Not a variable of known type: bCryptHashGenerator
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :99 :26) // bCryptHashGenerator.GenerateSalt() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :100 :42) // Not a variable of known type: bCryptHashGenerator
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :100 :86) // Not a variable of known type: newPassword
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :100 :99) // Not a variable of known type: salt
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :100 :42) // bCryptHashGenerator.GenerateEncryptedString(newPassword, salt) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :101 :82) // new AccountModifiabilityServiceClient() (ObjectCreationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :102 :81) // new PasswordModificationCredentialsDto()              {                  EmailAddress = _emailAddress,                  Salt = salt,                  NewPassword = encryptedNewPassword              } (ObjectCreationExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :104 :31) // Not a variable of known type: _emailAddress
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :105 :23) // Not a variable of known type: salt
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :106 :30) // Not a variable of known type: encryptedNewPassword
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :108 :42) // Not a variable of known type: accountModifiabilityServiceClient
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :108 :91) // Not a variable of known type: passwordModificationCredentials
%26 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :108 :42) // accountModifiabilityServiceClient.SetNewPassword(passwordModificationCredentials) (InvocationExpression)
%27 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :108 :17) // newPasswordWasAssigned
cbde.store %26, %27 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :108 :17)
%28 = cbde.load %27 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :109 :19)
return %28 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :109 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function OkButtonClicked(none, none), it contains poisonous unsupported syntaxes

// Skipping function SendNewCodeButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.RestorePassword.SendNewCode$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :154 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :156 :30) // TokenManager.GenerateToken() (InvocationExpression)
%2 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :157 :51) // false
%3 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :157 :17) // newVerificationTokenWasAssigned
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :157 :17)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :158 :15) // Not a variable of known type: newToken
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :158 :27) // "" (StringLiteralExpression)
%6 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :158 :15) // comparison of unknown type: newToken != ""
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :158 :15)

^1: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :161 :20) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :162 :50) // Not a variable of known type: accountVerificationServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :162 :106) // Not a variable of known type: _emailAddress
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :162 :121) // Not a variable of known type: newToken
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :162 :50) // accountVerificationServiceClient.AssignNewRecoveryToken(_emailAddress, newToken) (InvocationExpression)
cbde.store %12, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :162 :16)
br ^2

^2: // BinaryBranchBlock
%13 = cbde.load %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :165 :16)
cond_br %13, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :165 :16)

^3: // SimpleBlock
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :167 :53) // new TokenInfoDto()                  {                      Name = _username,                      EmailAddress = _emailAddress,                      Token = newToken                  } (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :169 :27) // Not a variable of known type: _username
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :170 :35) // Not a variable of known type: _emailAddress
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :171 :28) // Not a variable of known type: newToken
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :173 :39) // Not a variable of known type: verificationTokenInfo
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :173 :16) // TokenManager.SendToken(verificationTokenInfo) (InvocationExpression)
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :174 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :174 :32) // Properties.Langs.Resources.NewCodeSentMessage (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :174 :16) // MessageBox.Show(Properties.Langs.Resources.NewCodeSentMessage) (InvocationExpression)
br ^4

^4: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :178 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :178 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :178 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :178 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :178 :54)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToLogin
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :180 :12) // GoToLogin() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RestorePassword.GoToLogin$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :183 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :185 :30) // new Login() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :186 :12) // Not a variable of known type: loginView
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :186 :12) // loginView.Show() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :187 :12) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RestorePassword.xaml.cs" :187 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
