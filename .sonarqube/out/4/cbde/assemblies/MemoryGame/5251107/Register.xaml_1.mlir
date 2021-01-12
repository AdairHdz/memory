func @_MemoryGame.Register.SetFormValidation$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :23) // new RuleSet() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :36 :12) // Not a variable of known type: _ruleSet
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :36 :66) // Not a variable of known type: _username
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :36 :39) // new UsernameValidationRule(_username) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :36 :12) // _ruleSet.AddValidationRule(new UsernameValidationRule(_username)) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :37 :12) // Not a variable of known type: _ruleSet
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :37 :70) // Not a variable of known type: _emailAddress
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :37 :39) // new EmailAddressValidationRule(_emailAddress) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :37 :12) // _ruleSet.AddValidationRule(new EmailAddressValidationRule(_emailAddress)) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :38 :12) // Not a variable of known type: _ruleSet
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :38 :66) // Not a variable of known type: _password
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :38 :39) // new PasswordValidationRule(_password) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :38 :12) // _ruleSet.AddValidationRule(new PasswordValidationRule(_password)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.ShowErrorMessage$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :41 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :43 :65) // Not a variable of known type: _ruleSet
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :43 :65) // _ruleSet.GetValidationResultErrors() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :44 :16) // Not a variable of known type: validationResultErrors
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :44 :16) // validationResultErrors.Count (SimpleMemberAccessExpression)
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :44 :47)
%6 = cmpi "sgt", %4, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :44 :16)
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :44 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :46 :32) // Not a variable of known type: validationResultErrors
%8 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :46 :55)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :46 :32) // validationResultErrors[0] (ElementAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :46 :32) // validationResultErrors[0].Message (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :46 :16) // MessageBox.Show(validationResultErrors[0].Message) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.Register.GetValuesFromFields$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :50 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :52 :28) // Not a variable of known type: TextBoxEmail
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :52 :28) // TextBoxEmail.Text (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :53 :24) // Not a variable of known type: TextBoxUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :53 :24) // TextBoxUsername.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :54 :24) // Not a variable of known type: PasswordBoxPassword
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :54 :24) // PasswordBoxPassword.Password (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.GenerateToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :57 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :59 :33) // TokenManager.GenerateToken() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function RegisterButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.Register.RegisterPlayer$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :91 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EmailAddressIsAvailable
%0 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :93 :17) // EmailAddressIsAvailable() (InvocationExpression)
%1 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :93 :16) // !EmailAddressIsAvailable() (LogicalNotExpression)
cond_br %1, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :93 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :95 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :95 :32) // Properties.Langs.Resources.EmailAddressIsTaken (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :95 :16) // MessageBox.Show(Properties.Langs.Resources.EmailAddressIsTaken) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UsernameIsAvailable
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :97 :22) // UsernameIsAvailable() (InvocationExpression)
%6 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :97 :21) // !UsernameIsAvailable() (LogicalNotExpression)
cond_br %6, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :97 :21)

^4: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :99 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :99 :32) // Properties.Langs.Resources.UsernameIsTaken (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :99 :16) // MessageBox.Show(Properties.Langs.Resources.UsernameIsTaken) (InvocationExpression)
br ^3

^5: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateToken
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :103 :16) // GenerateToken() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: PlayerWasSuccessfullyRegistered
%11 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :104 :20) // PlayerWasSuccessfullyRegistered() (InvocationExpression)
cond_br %11, ^6, ^7 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :104 :20)

^6: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SendActivationToken
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :106 :20) // SendActivationToken() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToActivationTokenWindow
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :107 :20) // GoToActivationTokenWindow() (InvocationExpression)
br ^3

^7: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :111 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :111 :36) // Properties.Langs.Resources.RegistryError (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :111 :20) // MessageBox.Show(Properties.Langs.Resources.RegistryError) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.Register.AllValidationRulesHavePassed$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :117 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :119 :19) // Not a variable of known type: _ruleSet
%1 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :119 :19) // _ruleSet.AllValidationRulesHavePassed() (InvocationExpression)
return %1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :119 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.SendActivationToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :122 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :124 :49) // new TokenInfoDto()              {                  Name = _username,                  EmailAddress = _emailAddress,                  Token = _verificationToken,                  Subject = Properties.Langs.Resources.Welcome,                  Body = Properties.Langs.Resources.VerificationToken              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :126 :23) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :127 :31) // Not a variable of known type: _emailAddress
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :128 :24) // Not a variable of known type: _verificationToken
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :129 :26) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :129 :26) // Properties.Langs.Resources.Welcome (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :130 :23) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :130 :23) // Properties.Langs.Resources.VerificationToken (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :133 :35) // Not a variable of known type: verificationTokenInfo
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :133 :12) // TokenManager.SendToken(verificationTokenInfo) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.CancelButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :136 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :136 :41)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :136 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :136 :56)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :136 :56)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :138 :40) // new MainWindow() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :139 :12) // Not a variable of known type: mainWindowView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :139 :12) // mainWindowView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :140 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :140 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.EmailAddressIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :143 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :145 :43) // Not a variable of known type: _playerRegistryServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :145 :96) // Not a variable of known type: _emailAddress
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :145 :43) // _playerRegistryServiceClient.EmailAddressIsAvailable(_emailAddress) (InvocationExpression)
%3 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :145 :17) // emailAddressIsAvailable
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :145 :17)
%4 = cbde.load %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :146 :19)
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :146 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.UsernameIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :149 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :152 :39) // Not a variable of known type: _playerRegistryServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :152 :88) // Not a variable of known type: _username
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :152 :39) // _playerRegistryServiceClient.UserNameIsAvailable(_username) (InvocationExpression)
%3 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :152 :17) // usernameIsAvailable
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :152 :17)
%4 = cbde.load %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :153 :19)
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :153 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.PlayerWasSuccessfullyRegistered$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :156 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :158 :48) // new BCryptHashGenerator() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :159 :26) // Not a variable of known type: hashGenerator
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :159 :26) // hashGenerator.GenerateSalt() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :160 :39) // Not a variable of known type: hashGenerator
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :160 :77) // Not a variable of known type: _password
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :160 :88) // Not a variable of known type: salt
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :160 :39) // hashGenerator.GenerateEncryptedString(_password, salt) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :162 :16) // new MemoryGameService.PlayerRegistryServiceClient() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :164 :34) // new PlayerDto()              {                  Username = _username,                  EmailAddress = _emailAddress,                  Password = encryptedPassword,                  VerificationToken = _verificationToken              } (ObjectCreationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :166 :27) // Not a variable of known type: _username
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :167 :31) // Not a variable of known type: _emailAddress
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :168 :27) // Not a variable of known type: encryptedPassword
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :169 :36) // Not a variable of known type: _verificationToken
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :172 :51) // Not a variable of known type: playerRegistryServiceClient
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :172 :97) // Not a variable of known type: playerDTO
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :172 :108) // Not a variable of known type: salt
%21 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :172 :51) // playerRegistryServiceClient.RegisterNewPlayer(playerDTO, salt) (InvocationExpression)
%22 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :172 :17) // playerWasSuccessfullyRegistered
cbde.store %21, %22 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :172 :17)
%23 = cbde.load %22 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :173 :19)
return %23 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :173 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.GoToActivationTokenWindow$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :176 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :179 :36) // Not a variable of known type: _emailAddress
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :179 :51) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :179 :16) // new ActivationToken(_emailAddress, _username) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :180 :12) // Not a variable of known type: activationTokenWindow
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :180 :12) // activationTokenWindow.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :181 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :181 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
