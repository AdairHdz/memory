// Skipping function Up(), it contains poisonous unsupported syntaxes

func @_DataAccess.Migrations.FinalDatabase.Down$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :74 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: DropForeignKey
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :76 :27) // "dbo.Matches" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :76 :42) // "EmailAddress" (StringLiteralExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :76 :58) // "dbo.Players" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :76 :12) // DropForeignKey("dbo.Matches", "EmailAddress", "dbo.Players") (InvocationExpression)
// Entity from another assembly: DropForeignKey
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :77 :27) // "dbo.Matches" (StringLiteralExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :77 :42) // "CardDeckId" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :77 :56) // "dbo.CardDecks" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :77 :12) // DropForeignKey("dbo.Matches", "CardDeckId", "dbo.CardDecks") (InvocationExpression)
// Entity from another assembly: DropForeignKey
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :78 :27) // "dbo.Cards" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :78 :40) // "CardDeckId" (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :78 :54) // "dbo.CardDecks" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :78 :12) // DropForeignKey("dbo.Cards", "CardDeckId", "dbo.CardDecks") (InvocationExpression)
// Entity from another assembly: DropForeignKey
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :79 :27) // "dbo.Accounts" (StringLiteralExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :79 :43) // "EmailAddress" (StringLiteralExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :79 :59) // "dbo.Players" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :79 :12) // DropForeignKey("dbo.Accounts", "EmailAddress", "dbo.Players") (InvocationExpression)
// Entity from another assembly: DropIndex
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :80 :22) // "dbo.Matches" (StringLiteralExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :80 :37) // new[] { "EmailAddress" } (ImplicitArrayCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :80 :45) // "EmailAddress" (StringLiteralExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :80 :12) // DropIndex("dbo.Matches", new[] { "EmailAddress" }) (InvocationExpression)
// Entity from another assembly: DropIndex
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :81 :22) // "dbo.Matches" (StringLiteralExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :81 :37) // new[] { "CardDeckId" } (ImplicitArrayCreationExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :81 :45) // "CardDeckId" (StringLiteralExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :81 :12) // DropIndex("dbo.Matches", new[] { "CardDeckId" }) (InvocationExpression)
// Entity from another assembly: DropIndex
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :82 :22) // "dbo.Cards" (StringLiteralExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :82 :35) // new[] { "CardDeckId" } (ImplicitArrayCreationExpression)
%26 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :82 :43) // "CardDeckId" (StringLiteralExpression)
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :82 :12) // DropIndex("dbo.Cards", new[] { "CardDeckId" }) (InvocationExpression)
// Entity from another assembly: DropIndex
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :83 :22) // "dbo.Accounts" (StringLiteralExpression)
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :83 :38) // new[] { "EmailAddress" } (ImplicitArrayCreationExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :83 :46) // "EmailAddress" (StringLiteralExpression)
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :83 :12) // DropIndex("dbo.Accounts", new[] { "EmailAddress" }) (InvocationExpression)
// Entity from another assembly: DropTable
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :84 :22) // "dbo.Matches" (StringLiteralExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :84 :12) // DropTable("dbo.Matches") (InvocationExpression)
// Entity from another assembly: DropTable
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :85 :22) // "dbo.Cards" (StringLiteralExpression)
%35 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :85 :12) // DropTable("dbo.Cards") (InvocationExpression)
// Entity from another assembly: DropTable
%36 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :86 :22) // "dbo.CardDecks" (StringLiteralExpression)
%37 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :86 :12) // DropTable("dbo.CardDecks") (InvocationExpression)
// Entity from another assembly: DropTable
%38 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :87 :22) // "dbo.Players" (StringLiteralExpression)
%39 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :87 :12) // DropTable("dbo.Players") (InvocationExpression)
// Entity from another assembly: DropTable
%40 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :88 :22) // "dbo.Accounts" (StringLiteralExpression)
%41 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\DataAccess\\Migrations\\202101110153060_FinalDatabase.cs" :88 :12) // DropTable("dbo.Accounts") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
