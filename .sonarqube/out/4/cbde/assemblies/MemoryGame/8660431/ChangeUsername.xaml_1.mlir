func @_MemoryGame.ChangeUsername.SetFormValidation$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :30 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :32 :23) // new RuleSet() (ObjectCreationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :33 :12) // Not a variable of known type: _ruleSet
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :33 :66) // Not a variable of known type: _newUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :33 :39) // new UsernameValidationRule(_newUsername) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :33 :12) // _ruleSet.AddValidationRule(new UsernameValidationRule(_newUsername)) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.TextBoxNewUsername_LostFocus$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :36 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :36 :50)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :36 :50)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :36 :65)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :36 :65)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :38 :16) // string (PredefinedType)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :38 :37) // Not a variable of known type: TextBoxNewUsername
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :38 :37) // TextBoxNewUsername.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :38 :16) // string.IsNullOrEmpty(TextBoxNewUsername.Text) (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :38 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :16) // Not a variable of known type: TextBoxNewUsername
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :16) // TextBoxNewUsername.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :48) // System.Windows.Visibility (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :48) // System.Windows.Visibility.Collapsed (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :41 :16) // Not a variable of known type: waterMarkText
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :41 :16) // waterMarkText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :41 :43) // System.Windows.Visibility (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :41 :43) // System.Windows.Visibility.Visible (SimpleMemberAccessExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.waterMarkText_GotFocus$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :45 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :45 :44)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :45 :44)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :45 :59)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :45 :59)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :47 :12) // Not a variable of known type: waterMarkText
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :47 :12) // waterMarkText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :47 :39) // System.Windows.Visibility (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :47 :39) // System.Windows.Visibility.Collapsed (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :48 :12) // Not a variable of known type: TextBoxNewUsername
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :48 :12) // TextBoxNewUsername.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :48 :44) // System.Windows.Visibility (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :48 :44) // System.Windows.Visibility.Visible (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :49 :12) // Not a variable of known type: TextBoxNewUsername
%11 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :49 :12) // TextBoxNewUsername.Focus() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.UsernameIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :52 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :54 :70) // new PlayerRegistryServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :55 :39) // Not a variable of known type: playerRegistryServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :55 :87) // Not a variable of known type: _newUsername
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :55 :39) // playerRegistryServiceClient.UserNameIsAvailable(_newUsername) (InvocationExpression)
%5 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :55 :17) // usernameIsAvailable
cbde.store %4, %5 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :55 :17)
%6 = cbde.load %5 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :56 :19)
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :56 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function SaveChangesButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.ChangeUsername.SetNewUsername$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :92 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :94 :16) // Not a variable of known type: _oldUsername
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :94 :36) // Not a variable of known type: _newUsername
%2 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :94 :16) // _oldUsername.Equals(_newUsername) (InvocationExpression)
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :94 :16)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :96 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :96 :32) // Properties.Langs.Resources.NewUsernameIsIdenticalToTheOldOne (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :96 :16) // MessageBox.Show(Properties.Langs.Resources.NewUsernameIsIdenticalToTheOldOne) (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UsernameIsAvailable
%6 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :100 :20) // UsernameIsAvailable() (InvocationExpression)
cond_br %6, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :100 :20)

^4: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UserNameWasChangedSuccessfully
%7 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :102 :24) // UserNameWasChangedSuccessfully() (InvocationExpression)
cond_br %7, ^6, ^7 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :102 :24)

^6: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :104 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :104 :40) // Properties.Langs.Resources.UsernameUpdatedSuccessfully (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :104 :24) // MessageBox.Show(Properties.Langs.Resources.UsernameUpdatedSuccessfully) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainWindow
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :105 :24) // GoToMainWindow() (InvocationExpression)
br ^3

^7: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :109 :40) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :109 :40) // Properties.Langs.Resources.UsernameUpdatedError (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :109 :24) // MessageBox.Show(Properties.Langs.Resources.UsernameUpdatedError) (InvocationExpression)
br ^3

^5: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :114 :36) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :114 :36) // Properties.Langs.Resources.UsernameIsTaken (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :114 :20) // MessageBox.Show(Properties.Langs.Resources.UsernameIsTaken) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.ShowErrorMessage$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :120 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :122 :65) // Not a variable of known type: _ruleSet
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :122 :65) // _ruleSet.GetValidationResultErrors() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :123 :15) // Not a variable of known type: validationResultErrors
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :123 :15) // validationResultErrors.Count (SimpleMemberAccessExpression)
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :123 :46)
%6 = cmpi "sgt", %4, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :123 :15)
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :123 :15)

^1: // SimpleBlock
// Entity from another assembly: MessageBox
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :125 :32) // Not a variable of known type: validationResultErrors
%8 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :125 :55)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :125 :32) // validationResultErrors[0] (ElementAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :125 :32) // validationResultErrors[0].Message (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :125 :16) // MessageBox.Show(validationResultErrors[0].Message) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.UserNameWasChangedSuccessfully$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :129 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :132 :16) // new MemoryGameService.AccountModifiabilityServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :134 :19) // Not a variable of known type: accountModifiabilityServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :134 :68) // Not a variable of known type: _userEmailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :134 :87) // Not a variable of known type: _newUsername
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :134 :19) // accountModifiabilityServiceClient.ChangeUsername(_userEmailAddress, _newUsername) (InvocationExpression)
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :134 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ChangeUsername.GoToMainWindow$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :137 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :139 :36) // new MainWindow() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :140 :12) // Not a variable of known type: mainWindow
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :140 :12) // mainWindow.Show() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :141 :12) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :141 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
