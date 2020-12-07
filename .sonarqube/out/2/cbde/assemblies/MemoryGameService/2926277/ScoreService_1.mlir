func @_MemoryGameService.Services.MemoryGameService.MemoryGameService.Contracts.IScoreService.GetPlayersWithBestScore$int$(i32) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :12 :8) {
^entry (%_numberOfPlayersToBeRetrieved : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :12 :67)
cbde.store %_numberOfPlayersToBeRetrieved, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :12 :67)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :14 :51) // new MemoryGameContext() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :14 :36) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :16 :16) // Not a variable of known type: unitOfWork
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :16 :16) // unitOfWork.Players (SimpleMemberAccessExpression)
%6 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :16 :59)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :16 :16) // unitOfWork.Players.GetPlayersWithBestScore(numberOfPlayersToBeRetrieved) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapFromEntitiesToDTOs
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :18 :79) // Not a variable of known type: playerEntities
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :18 :57) // MapFromEntitiesToDTOs(playerEntities) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :19 :19) // Not a variable of known type: playersWithBestScores
return %12 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\ScoreService.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function MapFromEntitiesToDTOs(none), it contains poisonous unsupported syntaxes

