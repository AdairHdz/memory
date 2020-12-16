func @_MemoryGame.ChangeUsername.TextBoxNewUsername_LostFocus$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :20 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :20 :50)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :20 :50)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :20 :65)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :20 :65)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :22 :16) // string (PredefinedType)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :22 :37) // Not a variable of known type: TextBoxNewUsername
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :22 :37) // TextBoxNewUsername.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :22 :16) // string.IsNullOrEmpty(TextBoxNewUsername.Text) (InvocationExpression)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :22 :16)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :24 :16) // Not a variable of known type: TextBoxNewUsername
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :24 :16) // TextBoxNewUsername.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :24 :48) // System.Windows.Visibility (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :24 :48) // System.Windows.Visibility.Collapsed (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :25 :16) // Not a variable of known type: waterMarkText
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :25 :16) // waterMarkText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :25 :43) // System.Windows.Visibility (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :25 :43) // System.Windows.Visibility.Visible (SimpleMemberAccessExpression)
br ^2

^2: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.waterMarkText_GotFocus$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :29 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :29 :44)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :29 :44)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :29 :59)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :29 :59)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :31 :12) // Not a variable of known type: waterMarkText
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :31 :12) // waterMarkText.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :31 :39) // System.Windows.Visibility (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :31 :39) // System.Windows.Visibility.Collapsed (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :32 :12) // Not a variable of known type: TextBoxNewUsername
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :32 :12) // TextBoxNewUsername.Visibility (SimpleMemberAccessExpression)
// Entity from another assembly: System
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :32 :44) // System.Windows.Visibility (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :32 :44) // System.Windows.Visibility.Visible (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :33 :12) // Not a variable of known type: TextBoxNewUsername
%11 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :33 :12) // TextBoxNewUsername.Focus() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.GetOldUsername$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :36 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :39 :16) // new MemoryGameService.AccessibilityServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :19) // Not a variable of known type: accesibilityServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :57) // Not a variable of known type: _userEmailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :19) // accesibilityServiceClient.GetUsername(_userEmailAddress) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ChangeUsername.SaveChangesButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :43 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :43 :46)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :43 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :43 :61)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :43 :61)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :46 :27) // Not a variable of known type: TextBoxNewUsername
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :46 :27) // TextBoxNewUsername.Text (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UsernameIsValid
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :47 :16) // UsernameIsValid() (InvocationExpression)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :47 :16)

^1: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UsernameIsAvailable
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :49 :20) // UsernameIsAvailable() (InvocationExpression)
cond_br %5, ^3, ^4 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :49 :20)

^3: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ChangeUserName
%6 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :51 :24) // ChangeUserName() (InvocationExpression)
cond_br %6, ^5, ^6 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :51 :24)

^5: // SimpleBlock
// Entity from another assembly: MessageBox
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :53 :40) // "Nombre de usuario actualizado de forma exitosa" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :53 :24) // MessageBox.Show("Nombre de usuario actualizado de forma exitosa") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GoToMainWindow
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :54 :24) // GoToMainWindow() (InvocationExpression)
br ^7

^6: // SimpleBlock
// Entity from another assembly: MessageBox
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :58 :40) // "Ocurrió un error al registrar el nuevo nombre de usuario. Por favor, reintente más tarde." (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :58 :24) // MessageBox.Show("Ocurrió un error al registrar el nuevo nombre de usuario. Por favor, reintente más tarde.") (InvocationExpression)
br ^7

^4: // SimpleBlock
// Entity from another assembly: MessageBox
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :64 :36) // "El nombre de usuario elegido ya se encuentra ocupado por otro jugador. Favor de intentar con uno diferente" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :64 :20) // MessageBox.Show("El nombre de usuario elegido ya se encuentra ocupado por otro jugador. Favor de intentar con uno diferente") (InvocationExpression)
br ^7

^2: // SimpleBlock
// Entity from another assembly: MessageBox
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :69 :32) // "Por favor asegúrese de lenar el campo e intente nuevamente" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :69 :16) // MessageBox.Show("Por favor asegúrese de lenar el campo e intente nuevamente") (InvocationExpression)
br ^7

^7: // ExitBlock
return

}
func @_MemoryGame.ChangeUsername.UsernameIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :74 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :77 :16) // new MemoryGameService.PlayerRegistryServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :78 :19) // Not a variable of known type: playerRegistryServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :78 :67) // Not a variable of known type: _newUsername
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :78 :19) // playerRegistryServiceClient.UserNameIsAvailable(_newUsername) (InvocationExpression)
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :78 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ChangeUsername.UsernameIsValid$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :81 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :83 :19) // Not a variable of known type: _newUsername
%1 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :83 :19) // _newUsername.Length (SimpleMemberAccessExpression)
%2 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :83 :41)
%3 = cmpi "sgt", %1, %2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :83 :19)
return %3 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :83 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ChangeUsername.ChangeUserName$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :86 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :89 :16) // new MemoryGameService.AccountModifiabilityServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :92 :16) // new MemoryGameService.DataTransferObjects.PlayerCredentialsDTO()                  {                      Username = _newUsername,                      EmailAddress = _userEmailAddress                  } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :94 :31) // Not a variable of known type: _newUsername
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :95 :35) // Not a variable of known type: _userEmailAddress
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :98 :19) // Not a variable of known type: accountModifiabilityServiceClient
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :98 :68) // Not a variable of known type: playerCredentialsDTO
%8 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :98 :19) // accountModifiabilityServiceClient.ChangeUsername(playerCredentialsDTO) (InvocationExpression)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :98 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ChangeUsername.GoToMainWindow$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :101 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :103 :36) // new MainWindow() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :104 :12) // Not a variable of known type: mainWindow
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :104 :12) // mainWindow.Show() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :105 :12) // this (ThisExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ChangeUsername.xaml.cs" :105 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
