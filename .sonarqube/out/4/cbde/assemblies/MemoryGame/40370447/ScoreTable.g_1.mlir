func @_MemoryGame.ScoreTable.InitializeComponent$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :64 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :67 :16) // Not a variable of known type: _contentLoaded
cond_br %0, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :67 :16)

^1: // JumpBlock
return loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :68 :16)

^2: // SimpleBlock
%1 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :70 :29) // true
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :71 :56) // "/MemoryGame;component/views/scoretable.xaml" (StringLiteralExpression)
// Entity from another assembly: System
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :71 :103) // System.UriKind (SimpleMemberAccessExpression)
%4 = constant unit loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :71 :103) // System.UriKind.Relative (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :71 :41) // new System.Uri("/MemoryGame;component/views/scoretable.xaml", System.UriKind.Relative) (ObjectCreationExpression)
// Entity from another assembly: System
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :74 :12) // System.Windows.Application (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :74 :53) // this (ThisExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :74 :59) // Not a variable of known type: resourceLocater
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\obj\\Debug\\Views\\ScoreTable.g.cs" :74 :12) // System.Windows.Application.LoadComponent(this, resourceLocater) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function Connect(i32, none), it contains poisonous unsupported syntaxes

