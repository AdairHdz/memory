func @_MemoryGame.Register.SetFormValidation$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :29 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :31 :21) // new List<IRegistryRule>() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :32 :12) // Not a variable of known type: _rules
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :32 :23) // new UsernameValidationRule() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :32 :12) // _rules.Add(new UsernameValidationRule()) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :12) // Not a variable of known type: _rules
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :23) // new EmailAddressValidationRule() (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :12) // _rules.Add(new EmailAddressValidationRule()) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :34 :12) // Not a variable of known type: _rules
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :34 :23) // new PasswordValidationRule() (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :34 :12) // _rules.Add(new PasswordValidationRule()) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :12) // Not a variable of known type: _rules
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :23) // new EmailAddressAvailabilityValidationRule() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :12) // _rules.Add(new EmailAddressAvailabilityValidationRule()) (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :36 :12) // Not a variable of known type: _rules
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :36 :23) // new UsernameAvailabilityValidationRule() (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :36 :12) // _rules.Add(new UsernameAvailabilityValidationRule()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function ObtainValidationErrors(), it contains poisonous unsupported syntaxes

// Skipping function ShowErrorMessage(), it contains poisonous unsupported syntaxes

func @_MemoryGame.Register.ValidationPassed$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :62 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ObtainValidationErrors
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :64 :12) // ObtainValidationErrors() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :65 :16) // Not a variable of known type: _validationResultErrors
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :65 :16) // _validationResultErrors.Count (SimpleMemberAccessExpression)
%3 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :65 :49)
%4 = cmpi "eq", %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :65 :16)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :65 :16)

^1: // JumpBlock
%5 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :67 :23) // true
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :67 :16)

^2: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :69 :19) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :69 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.RegisterButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :72 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :72 :43)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :72 :43)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :72 :58)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :72 :58)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :74 :28) // new RegistryData()              {                  EmailAddress = TextBoxEmail.Text,                  Username = TextBoxUsername.Text,                  Password = PasswordBoxPassword.Password              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :76 :31) // Not a variable of known type: TextBoxEmail
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :76 :31) // TextBoxEmail.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :77 :27) // Not a variable of known type: TextBoxUsername
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :77 :27) // TextBoxUsername.Text (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :78 :27) // Not a variable of known type: PasswordBoxPassword
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :78 :27) // PasswordBoxPassword.Password (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationPassed
%9 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :81 :16) // ValidationPassed() (InvocationExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :81 :16)

^1: // BinaryBranchBlock
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :83 :16) // Not a variable of known type: _registryData
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :83 :16) // _registryData.Password (SimpleMemberAccessExpression)
// Entity from another assembly: MD5Encryption
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :83 :63) // Not a variable of known type: _registryData
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :83 :63) // _registryData.Password (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :83 :41) // MD5Encryption.Encrypt(_registryData.Password) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :84 :37) // TokenManager.GenerateVerificationToken() (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :85 :37) // "" (StringLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: PlayerWasSuccessfullyRegistered
%17 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :87 :20) // PlayerWasSuccessfullyRegistered() (InvocationExpression)
cond_br %17, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :87 :20)

^3: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SendVerificationToken
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :89 :20) // SendVerificationToken() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToActivationTokenWindow
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :90 :20) // GoToActivationTokenWindow() (InvocationExpression)
br ^5

^4: // SimpleBlock
// Entity from another assembly: MessageBox
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :94 :36) // "Error al registrar" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :94 :20) // MessageBox.Show("Error al registrar") (InvocationExpression)
br ^5

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ShowErrorMessage
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :99 :16) // ShowErrorMessage() (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_MemoryGame.Register.SendVerificationToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :103 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :105 :47) // Not a variable of known type: _registryData
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :105 :47) // _registryData.Username (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :106 :20) // Not a variable of known type: _registryData
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :106 :20) // _registryData.EmailAddress (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :106 :48) // Not a variable of known type: _verificationToken
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :105 :12) // TokenManager.SendVerificationToken(_registryData.Username,                      _registryData.EmailAddress, _verificationToken) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.CancelButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :109 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :109 :41)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :109 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :109 :56)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :109 :56)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :111 :40) // new MainWindow() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :112 :12) // Not a variable of known type: mainWindowView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :112 :12) // mainWindowView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :113 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :113 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function PlayerWasSuccessfullyRegistered(), it contains poisonous unsupported syntaxes

func @_MemoryGame.Register.GoToActivationTokenWindow$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :140 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :143 :36) // Not a variable of known type: _registryData
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :143 :36) // _registryData.EmailAddress (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :143 :64) // Not a variable of known type: _registryData
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :143 :64) // _registryData.Username (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :143 :16) // new ActivationToken(_registryData.EmailAddress, _registryData.Username) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :144 :12) // Not a variable of known type: activationTokenWindow
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :144 :12) // activationTokenWindow.Show() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :145 :12) // this (ThisExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :145 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
