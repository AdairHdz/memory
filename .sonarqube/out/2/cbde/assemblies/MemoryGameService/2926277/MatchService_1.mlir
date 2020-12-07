func @_MemoryGameService.Services.MemoryGameService.GetActivePlayers$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :9 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :11 :41) // new List<string>() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :12 :12) // Not a variable of known type: activePlayers
// Entity from another assembly: DateTime
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :12 :30) // DateTime.Now (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :12 :30) // DateTime.Now.ToString() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :12 :12) // activePlayers.Add(DateTime.Now.ToString()) (InvocationExpression)
// Entity from another assembly: OperationContext
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :12) // OperationContext.Current (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :12) // OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>() (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :99) // Not a variable of known type: activePlayers
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MatchService.cs" :13 :12) // OperationContext.Current.GetCallbackChannel<IMatchServiceCallback>().ShowActivePlayers(activePlayers) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
