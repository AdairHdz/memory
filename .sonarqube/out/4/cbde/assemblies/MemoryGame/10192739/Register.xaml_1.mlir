func @_MemoryGame.Register.SetFormValidation$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :30 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :32 :23) // new RuleSet() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :12) // Not a variable of known type: _ruleSet
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :66) // Not a variable of known type: _username
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :39) // new UsernameValidationRule(_username) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :33 :12) // _ruleSet.AddValidationRule(new UsernameValidationRule(_username)) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :34 :12) // Not a variable of known type: _ruleSet
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :34 :70) // Not a variable of known type: _emailAddress
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :34 :39) // new EmailAddressValidationRule(_emailAddress) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :34 :12) // _ruleSet.AddValidationRule(new EmailAddressValidationRule(_emailAddress)) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :12) // Not a variable of known type: _ruleSet
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :66) // Not a variable of known type: _password
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :39) // new PasswordValidationRule(_password) (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :35 :12) // _ruleSet.AddValidationRule(new PasswordValidationRule(_password)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function ShowErrorMessage(), it contains poisonous unsupported syntaxes

func @_MemoryGame.Register.GetValuesFromFields$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :49 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :51 :28) // Not a variable of known type: TextBoxEmail
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :51 :28) // TextBoxEmail.Text (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :52 :24) // Not a variable of known type: TextBoxUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :52 :24) // TextBoxUsername.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :53 :24) // Not a variable of known type: PasswordBoxPassword
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :53 :24) // PasswordBoxPassword.Password (SimpleMemberAccessExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.GenerateToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :56 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :58 :33) // TokenManager.GenerateVerificationToken() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function RegisterButtonClicked(none, none), it contains poisonous unsupported syntaxes

// Skipping function RegisterPlayer(), it contains poisonous unsupported syntaxes

func @_MemoryGame.Register.AllValidationRulesHavePassed$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :132 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :134 :19) // Not a variable of known type: _ruleSet
%1 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :134 :19) // _ruleSet.AllValidationRulesHavePassed() (InvocationExpression)
return %1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :134 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.SendVerificationToken$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :137 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :140 :61) // new VerificationTokenInfoDto()              {                  Name = _username,                  EmailAddress = _emailAddress,                  VerificationToken = _verificationToken              } (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :142 :23) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :143 :31) // Not a variable of known type: _emailAddress
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :144 :36) // Not a variable of known type: _verificationToken
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: TokenManager
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :147 :47) // Not a variable of known type: verificationTokenInfo
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :147 :12) // TokenManager.SendVerificationToken(verificationTokenInfo) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.CancelButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :150 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :150 :41)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :150 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :150 :56)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :150 :56)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :152 :40) // new MainWindow() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :153 :12) // Not a variable of known type: mainWindowView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :153 :12) // mainWindowView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :154 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :154 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Register.EmailAddressIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :157 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :159 :43) // Not a variable of known type: _playerRegistryServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :159 :96) // Not a variable of known type: _emailAddress
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :159 :43) // _playerRegistryServiceClient.EmailAddressIsAvailable(_emailAddress) (InvocationExpression)
%3 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :159 :17) // emailAddressIsAvailable
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :159 :17)
%4 = cbde.load %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :160 :19)
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :160 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.UsernameIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :163 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :166 :39) // Not a variable of known type: _playerRegistryServiceClient
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :166 :88) // Not a variable of known type: _username
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :166 :39) // _playerRegistryServiceClient.UserNameIsAvailable(_username) (InvocationExpression)
%3 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :166 :17) // usernameIsAvailable
cbde.store %2, %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :166 :17)
%4 = cbde.load %3 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :167 :19)
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :167 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.PlayerWasSuccessfullyRegistered$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :170 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :172 :48) // new BCryptHashGenerator() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :173 :26) // Not a variable of known type: hashGenerator
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :173 :26) // hashGenerator.GenerateSalt() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :174 :39) // Not a variable of known type: hashGenerator
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :174 :77) // Not a variable of known type: _password
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :174 :88) // Not a variable of known type: salt
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :174 :39) // hashGenerator.GenerateEncryptedString(_password, salt) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :176 :16) // new MemoryGameService.PlayerRegistryServiceClient() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :179 :16) // new MemoryGameService.DataTransferObjects.PlayerDTO()                  {                      Username = _username,                      EmailAddress = _emailAddress,                      Password = encryptedPassword,                      VerificationToken = _verificationToken                  } (ObjectCreationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :181 :31) // Not a variable of known type: _username
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :182 :35) // Not a variable of known type: _emailAddress
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :183 :31) // Not a variable of known type: encryptedPassword
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :184 :40) // Not a variable of known type: _verificationToken
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :187 :51) // Not a variable of known type: playerRegistryServiceClient
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :187 :97) // Not a variable of known type: playerDTO
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :187 :108) // Not a variable of known type: salt
%21 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :187 :51) // playerRegistryServiceClient.RegisterNewPlayer(playerDTO, salt) (InvocationExpression)
%22 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :187 :17) // playerWasSuccessfullyRegistered
cbde.store %21, %22 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :187 :17)
%23 = cbde.load %22 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :188 :19)
return %23 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :188 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Register.GoToActivationTokenWindow$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :191 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :194 :36) // Not a variable of known type: _emailAddress
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :194 :51) // Not a variable of known type: _username
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :194 :16) // new ActivationToken(_emailAddress, _username) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :195 :12) // Not a variable of known type: activationTokenWindow
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :195 :12) // activationTokenWindow.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :196 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Register.xaml.cs" :196 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
