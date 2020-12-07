func @_MemoryGame.ChangePassword.InitializeComponent$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :48 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :51 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :51 :16)

^1: // JumpBlock
return loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :52 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :54 :29) // true
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :55 :56) // "/MemoryGame;component/views/changepassword.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :55 :107) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :55 :107) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :55 :41) // new System.Uri("/MemoryGame;component/views/changepassword.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :58 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :58 :53) // this (ThisExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :58 :59) // Not a variable of known type: resourceLocater
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :58 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.ChangePassword.System.Windows.Markup.IComponentConnector.Connect$int.object$(i32, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :64 :8) {
^entry (%_connectionId : i32, %_target : none):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :70 :63)
cbde.store %_connectionId, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :70 :63)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :70 :81)
cbde.store %_target, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :70 :81)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :71 :12) // this (ThisExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :71 :12) // this._contentLoaded (SimpleMemberAccessExpression)
%4 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ChangePassword.g.cs" :71 :34) // true
br ^1

^1: // ExitBlock
return

}
