func @_DataAccess.Migrations.SolveExcption.Up$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :6 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: RenameColumn
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :8 :32) // "dbo.Cards" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :8 :51) // "CardDecks_CardDeckId" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :8 :84) // "CardDeckId" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :8 :12) // RenameColumn(table: "dbo.Cards", name: "CardDecks_CardDeckId", newName: "CardDeckId") (InvocationExpression)
// Entity from another assembly: RenameIndex
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :9 :31) // "dbo.Cards" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :9 :50) // "IX_CardDecks_CardDeckId" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :9 :86) // "IX_CardDeckId" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :9 :12) // RenameIndex(table: "dbo.Cards", name: "IX_CardDecks_CardDeckId", newName: "IX_CardDeckId") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_DataAccess.Migrations.SolveExcption.Down$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :12 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: RenameIndex
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :14 :31) // "dbo.Cards" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :14 :50) // "IX_CardDeckId" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :14 :76) // "IX_CardDecks_CardDeckId" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :14 :12) // RenameIndex(table: "dbo.Cards", name: "IX_CardDeckId", newName: "IX_CardDecks_CardDeckId") (InvocationExpression)
// Entity from another assembly: RenameColumn
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :15 :32) // "dbo.Cards" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :15 :51) // "CardDeckId" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :15 :74) // "CardDecks_CardDeckId" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202012040500490_SolveExcption.cs" :15 :12) // RenameColumn(table: "dbo.Cards", name: "CardDeckId", newName: "CardDecks_CardDeckId") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
