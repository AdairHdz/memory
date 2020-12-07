// Skipping function SendMessage(none), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Services.MemoryGameService.Join$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :29 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :29 :25)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :29 :25)
br ^0

^0: // SimpleBlock
// Entity from another assembly: OperationContext
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :31 :29) // OperationContext.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :31 :29) // OperationContext.Current.GetCallbackChannel<IChatClient>() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :32 :12) // Not a variable of known type: _players
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :32 :21) // Not a variable of known type: connection
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :32 :12) // _players[connection] (ElementAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :32 :35) // Not a variable of known type: username
br ^1

^1: // ExitBlock
return

}
