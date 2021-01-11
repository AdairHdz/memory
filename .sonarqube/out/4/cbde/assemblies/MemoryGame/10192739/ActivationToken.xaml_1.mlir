// Skipping function OkButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.ActivationToken.VerifyAccount$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :50 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenIsCorrect
%0 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :52 :16) // TokenIsCorrect() (InvocationExpression)
cond_br %0, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :52 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AccountWasSuccessfullyVerified
%1 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :54 :20) // AccountWasSuccessfullyVerified() (InvocationExpression)
cond_br %1, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :54 :20)

^3: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :56 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :56 :36) // Properties.Langs.Resources.AccountVerificationSuccess (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :56 :20) // MessageBox.Show(Properties.Langs.Resources.AccountVerificationSuccess) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToLogin
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :58 :20) // GoToLogin() (InvocationExpression)
br ^5

^4: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :62 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :62 :36) // Properties.Langs.Resources.AccountVerificationError (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :62 :20) // MessageBox.Show(Properties.Langs.Resources.AccountVerificationError) (InvocationExpression)
br ^5

^2: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :67 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :67 :32) // Properties.Langs.Resources.NonMatchingVerificationCode (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :67 :16) // MessageBox.Show(Properties.Langs.Resources.NonMatchingVerificationCode) (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_MemoryGame.ActivationToken.GoToLogin$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :71 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :73 :30) // new Login() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :74 :12) // Not a variable of known type: loginView
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :74 :12) // loginView.Show() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :75 :12) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :75 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ActivationToken.TokenIsCorrect$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :78 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :80 :27) // Not a variable of known type: TextBoxToken
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :80 :27) // TextBoxToken.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :81 :16) // Not a variable of known type: token
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :81 :25) // "" (StringLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :81 :16) // comparison of unknown type: token == ""
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :81 :16)

^1: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :83 :23) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :83 :16)

^2: // JumpBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :86 :19) // Not a variable of known type: _accountVerificationServiceClient
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :86 :65) // Not a variable of known type: _emailAddress
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :86 :80) // Not a variable of known type: token
%10 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :86 :19) // _accountVerificationServiceClient.VerifyToken(_emailAddress, token) (InvocationExpression)
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :86 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ActivationToken.AccountWasSuccessfullyVerified$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :89 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :91 :19) // Not a variable of known type: _accountVerificationServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :91 :74) // Not a variable of known type: _emailAddress
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :91 :19) // _accountVerificationServiceClient.SetAccountAsVerified(_emailAddress) (InvocationExpression)
return %2 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :91 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function SendNewCodeButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.ActivationToken.GenerateNewToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :121 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :123 :30) // TokenManager.GenerateVerificationToken() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :124 :24) // Not a variable of known type: newToken
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ActivationToken.AssignNewVerificationToken$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :127 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :130 :16) // Not a variable of known type: _accountVerificationServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :130 :77) // Not a variable of known type: _emailAddress
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :130 :92) // Not a variable of known type: _newToken
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :130 :16) // _accountVerificationServiceClient.AssignNewVerificationToken(_emailAddress, _newToken) (InvocationExpression)
%4 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :129 :17) // newVerificationTokenWasAssignedSuccessfully
cbde.store %3, %4 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :129 :17)
%5 = cbde.load %4 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :132 :19)
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :132 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ActivationToken.SendNewVerificationToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :135 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :137 :61) // new VerificationTokenInfoDto()              {                  Name = _username,                  EmailAddress = _emailAddress,                  VerificationToken = _newToken              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :139 :23) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :140 :31) // Not a variable of known type: _emailAddress
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :141 :36) // Not a variable of known type: _newToken
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :144 :47) // Not a variable of known type: verificationTokenInfo
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :144 :12) // TokenManager.SendVerificationToken(verificationTokenInfo) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ActivationToken.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :147 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :147 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :147 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :147 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :147 :54)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainWindow
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :149 :12) // GoToMainWindow() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ActivationToken.GoToMainWindow$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :152 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :154 :40) // new MainWindow() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :155 :12) // Not a variable of known type: mainWindowView
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :155 :12) // mainWindowView.Show() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :156 :12) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ActivationToken.xaml.cs" :156 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
