func @_MemoryGame.RecoverPassword.SetFormValidation$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :27 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :29 :23) // new RuleSet() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :30 :12) // Not a variable of known type: _ruleSet
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :30 :70) // Not a variable of known type: _emailAddress
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :30 :39) // new EmailAddressValidationRule(_emailAddress) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :30 :12) // _ruleSet.AddValidationRule(new EmailAddressValidationRule(_emailAddress)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function ShowErrorMessage(), it contains poisonous unsupported syntaxes

func @_MemoryGame.RecoverPassword.CancelButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :41)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :56)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :44 :56)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :46 :30) // new Login() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :47 :12) // Not a variable of known type: loginView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :47 :12) // loginView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :48 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :48 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RecoverPassword.LoadUsername$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :53 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :55 :48) // new AccessibilityServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :56 :24) // Not a variable of known type: client
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :56 :43) // Not a variable of known type: _emailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :56 :24) // client.GetUsername(_emailAddress) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function SendCodeButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.RecoverPassword.SendCodeToUser$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :89 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :91 :28) // Not a variable of known type: TextBoxEmail
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :91 :28) // TextBoxEmail.Text (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SetFormValidation
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :92 :12) // SetFormValidation() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :93 :16) // Not a variable of known type: _ruleSet
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :93 :16) // _ruleSet.AllValidationRulesHavePassed() (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :93 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EmailIsRegistered
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :95 :20) // EmailIsRegistered() (InvocationExpression)
cond_br %5, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :95 :20)

^3: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoadUsername
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :97 :20) // LoadUsername() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateVerificationToken
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :98 :20) // GenerateVerificationToken() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AssignNewVerificationToken
%8 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :99 :59) // AssignNewVerificationToken() (InvocationExpression)
%9 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :99 :25) // newVerificationTokenWasAssigned
cbde.store %8, %9 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :99 :25)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SendVerificationCode
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :100 :20) // SendVerificationCode() (InvocationExpression)
%11 = cbde.load %9 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :101 :24)
cond_br %11, ^5, ^6 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :101 :24)

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :103 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :103 :40) // Properties.Langs.Resources.PasswordRecoveryTokenSent (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :103 :24) // MessageBox.Show(Properties.Langs.Resources.PasswordRecoveryTokenSent) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToRestorePassword
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :104 :24) // GoToRestorePassword() (InvocationExpression)
br ^7

^6: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :108 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :108 :40) // Properties.Langs.Resources.RecoveryTokenSendingError (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :108 :24) // MessageBox.Show(Properties.Langs.Resources.RecoveryTokenSendingError) (InvocationExpression)
br ^7

^4: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :114 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :114 :36) // Properties.Langs.Resources.NonRegisteredEmail (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :114 :20) // MessageBox.Show(Properties.Langs.Resources.NonRegisteredEmail) (InvocationExpression)
br ^7

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ShowErrorMessage
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :119 :16) // ShowErrorMessage() (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
func @_MemoryGame.RecoverPassword.EmailIsRegistered$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :123 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :125 :48) // new AccessibilityServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :126 :19) // Not a variable of known type: client
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :126 :40) // Not a variable of known type: _emailAddress
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :126 :19) // client.ItsRegistered(_emailAddress) (InvocationExpression)
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :126 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RecoverPassword.GenerateVerificationToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :129 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :131 :33) // TokenManager.GenerateVerificationToken() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RecoverPassword.AssignNewVerificationToken$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :134 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :137 :16) // new AccountVerificationServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :138 :19) // Not a variable of known type: accountVerificationServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :138 :79) // Not a variable of known type: _emailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :138 :94) // Not a variable of known type: _verificationToken
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :138 :19) // accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, _verificationToken) (InvocationExpression)
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :138 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.RecoverPassword.SendVerificationCode$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :141 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :143 :61) // new VerificationTokenInfoDto()              {                  Name = _username,                  EmailAddress = _emailAddress,                  VerificationToken = _verificationToken              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :145 :23) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :146 :31) // Not a variable of known type: _emailAddress
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :147 :36) // Not a variable of known type: _verificationToken
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :150 :47) // Not a variable of known type: verificationTokenInfo
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :150 :12) // TokenManager.SendVerificationToken(verificationTokenInfo) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.RecoverPassword.GoToRestorePassword$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :153 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :156 :36) // Not a variable of known type: _emailAddress
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :156 :51) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :156 :16) // new RestorePassword(_emailAddress, _username) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :157 :12) // Not a variable of known type: restorePasswordWindow
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :157 :12) // restorePasswordWindow.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :158 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\RecoverPassword.xaml.cs" :158 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
