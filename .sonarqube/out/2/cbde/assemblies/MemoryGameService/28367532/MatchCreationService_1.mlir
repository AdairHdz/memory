func @_MemoryGameService.Services.MemoryGameService.CreateNewMatch$MemoryGame.MemoryGameService.DataTransferObjects.MatchDto$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchCreationService.cs" :22 :8) {
^entry (%_gameMatchDto : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchCreationService.cs" :22 :35)
cbde.store %_gameMatchDto, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchCreationService.cs" :22 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchCreationService.cs" :24 :12) // Not a variable of known type: _matches
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchCreationService.cs" :24 :25) // Not a variable of known type: gameMatchDto
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchCreationService.cs" :24 :12) // _matches.Add(gameMatchDto) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
