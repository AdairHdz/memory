func @_MemoryGame.App.InitializeComponent$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :47 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :50 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :50 :16)

^1: // JumpBlock
return loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :51 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :53 :29) // true
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :56 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :56 :12) // this.StartupUri (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :56 :45) // "Views/MainWindow.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :56 :70) // System.UriKind (SimpleMemberAccessExpression)
%6 = constant unit loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :56 :70) // System.UriKind.Relative (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :56 :30) // new System.Uri("Views/MainWindow.xaml", System.UriKind.Relative) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :60 :56) // "/MemoryGame;component/app.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :60 :90) // System.UriKind (SimpleMemberAccessExpression)
%10 = constant unit loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :60 :90) // System.UriKind.Relative (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :60 :41) // new System.Uri("/MemoryGame;component/app.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :63 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :63 :53) // this (ThisExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :63 :59) // Not a variable of known type: resourceLocater
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :63 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.App.Main$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :72 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :76 :33) // new MemoryGame.App() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :77 :12) // Not a variable of known type: app
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :77 :12) // app.InitializeComponent() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :78 :12) // Not a variable of known type: app
%5 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\App.g.cs" :78 :12) // app.Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
