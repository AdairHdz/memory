func @_MemoryGame.Login.GetDataFromFields$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :30 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :32 :24) // Not a variable of known type: TextBoxUsername
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :32 :24) // TextBoxUsername.Text (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :33 :24) // Not a variable of known type: PasswordBoxPassword
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :33 :24) // PasswordBoxPassword.Password (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Login.SetFormValidation$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :36 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetDataFromFields
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :38 :12) // GetDataFromFields() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :39 :23) // new RuleSet() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :40 :12) // Not a variable of known type: _ruleSet
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :40 :67) // Not a variable of known type: _username
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :40 :39) // new NonEmptyFieldValidation(_username) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :40 :12) // _ruleSet.AddValidationRule(new NonEmptyFieldValidation(_username)) (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :41 :12) // Not a variable of known type: _ruleSet
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :41 :67) // Not a variable of known type: _password
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :41 :39) // new NonEmptyFieldValidation(_password) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :41 :12) // _ruleSet.AddValidationRule(new NonEmptyFieldValidation(_password)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Login.ShowErrorMessage$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :44 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :46 :65) // Not a variable of known type: _ruleSet
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :46 :65) // _ruleSet.GetValidationResultErrors() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :47 :16) // Not a variable of known type: validationResultErrors
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :47 :16) // validationResultErrors.Count (SimpleMemberAccessExpression)
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :47 :47)
%6 = cmpi "sgt", %4, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :47 :16)
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :47 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :49 :32) // Not a variable of known type: validationResultErrors
%8 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :49 :55)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :49 :32) // validationResultErrors[0] (ElementAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :49 :32) // validationResultErrors[0].Message (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :49 :16) // MessageBox.Show(validationResultErrors[0].Message) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function LoginButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.Login.GetUserEmailAdress$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :85 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :87 :30) // Not a variable of known type: TextBoxUsername
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :87 :30) // TextBoxUsername.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :88 :34) // Not a variable of known type: _accessibilityServiceClient
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :88 :82) // Not a variable of known type: username
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :88 :34) // _accessibilityServiceClient.GetUserEmailAddress(username) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :89 :19) // Not a variable of known type: emailAddress
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :89 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Login.LoginUser$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :92 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoginIsValid
%0 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :94 :16) // LoginIsValid() (InvocationExpression)
cond_br %0, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :94 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EmailIsVerified
%1 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :96 :20) // EmailIsVerified() (InvocationExpression)
cond_br %1, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :96 :20)

^3: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetUserEmailAdress
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :98 :42) // GetUserEmailAdress() (InvocationExpression)
// Entity from another assembly: Sesion
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :99 :42) // Sesion.GetSesion (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :100 :20) // Not a variable of known type: playerSesion
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :100 :20) // playerSesion.Username (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :100 :44) // Not a variable of known type: _username
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :101 :20) // Not a variable of known type: playerSesion
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :101 :20) // playerSesion.EmailAddress (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :101 :48) // Not a variable of known type: emailAddress
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainMenu
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :102 :20) // GoToMainMenu() (InvocationExpression)
br ^5

^4: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToActivationToken
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :106 :20) // GoToActivationToken() (InvocationExpression)
br ^5

^2: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :111 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :111 :32) // Properties.Langs.Resources.NonMatchingCredentials (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :111 :16) // MessageBox.Show(Properties.Langs.Resources.NonMatchingCredentials) (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_MemoryGame.Login.LoginIsValid$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :115 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :117 :54) // new BCryptHashGenerator() (ObjectCreationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetPasswordSalt
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :118 :26) // GetPasswordSalt() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :119 :39) // Not a variable of known type: bCryptHashGenerator
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :119 :83) // Not a variable of known type: _password
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :119 :94) // Not a variable of known type: salt
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :119 :39) // bCryptHashGenerator.GenerateEncryptedString(_password, salt) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :120 :35) // Not a variable of known type: _accessibilityServiceClient
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :120 :79) // Not a variable of known type: _username
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :120 :90) // Not a variable of known type: encryptedPassword
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :120 :35) // _accessibilityServiceClient.HasAccessRights(_username, encryptedPassword) (InvocationExpression)
%13 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :120 :17) // hasAccessRights
cbde.store %12, %13 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :120 :17)
%14 = cbde.load %13 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :121 :19)
return %14 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :121 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Login.GetPasswordSalt$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :124 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :126 :26) // Not a variable of known type: _accessibilityServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :126 :62) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :126 :26) // _accessibilityServiceClient.GetSalt(_username) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :127 :19) // Not a variable of known type: salt
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :127 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Login.EmailIsVerified$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :130 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :132 :30) // Not a variable of known type: TextBoxUsername
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :132 :30) // TextBoxUsername.Text (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :133 :35) // Not a variable of known type: _accessibilityServiceClient
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :133 :74) // Not a variable of known type: username
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :133 :35) // _accessibilityServiceClient.IsVerified(username) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :133 :17) // emailIsVerified
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :133 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :134 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :134 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Login.GoToMainMenu$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :137 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :139 :36) // new MainMenu() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :140 :12) // Not a variable of known type: mainMenuView
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :140 :12) // mainMenuView.Show() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :141 :12) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :141 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Login.RecoverPasswordLabelClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :144 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :144 :49)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :144 :49)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :144 :64)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :144 :64)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :146 :45) // new RecoverPassword() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :147 :12) // Not a variable of known type: mainWindowView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :147 :12) // mainWindowView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :148 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :148 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Login.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :151 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :151 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :151 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :151 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :151 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :153 :40) // new MainWindow() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :154 :12) // Not a variable of known type: mainWindowView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :154 :12) // mainWindowView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :155 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :155 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Login.GoToActivationToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :158 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetUserEmailAdress
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :160 :34) // GetUserEmailAdress() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :161 :72) // Not a variable of known type: emailAddress
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :161 :86) // Not a variable of known type: TextBoxUsername
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :161 :86) // TextBoxUsername.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :161 :52) // new ActivationToken(emailAddress, TextBoxUsername.Text) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :162 :12) // Not a variable of known type: activationTokenWindow
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :162 :12) // activationTokenWindow.Show() (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :163 :12) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Login.xaml.cs" :163 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
