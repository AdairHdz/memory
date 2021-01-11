// Skipping function Up(), it contains poisonous unsupported syntaxes

func @_DataAccess.Migrations.AddedDateToMatch.Down$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101100503290_AddedDateToMatch.cs" :11 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: DropColumn
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101100503290_AddedDateToMatch.cs" :13 :23) // "dbo.Matches" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101100503290_AddedDateToMatch.cs" :13 :38) // "Date" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101100503290_AddedDateToMatch.cs" :13 :12) // DropColumn("dbo.Matches", "Date") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
