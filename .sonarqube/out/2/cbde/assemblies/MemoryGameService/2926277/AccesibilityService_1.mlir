// Skipping function GetUserEmailAddress(none), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Services.MemoryGameService.GetUsername$string$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :19 :8) {
^entry (%_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :19 :34)
cbde.store %_emailAddress, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :19 :34)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :21 :44) // new MemoryGameContext() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :21 :29) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :22 :25) // Not a variable of known type: unitOfWork
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :22 :25) // unitOfWork.Players (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :22 :48) // Not a variable of known type: emailAddress
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :22 :25) // unitOfWork.Players.Get(emailAddress) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :23 :30) // Not a variable of known type: player
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :23 :30) // player.UserName (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :24 :12) // Not a variable of known type: unitOfWork
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :24 :12) // unitOfWork.Dispose() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :25 :19) // Not a variable of known type: username
return %14 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccesibilityService.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function HasAccessRights(none), it contains poisonous unsupported syntaxes

// Skipping function IsVerified(none), it contains poisonous unsupported syntaxes

// Skipping function ItsRegistered(none), it contains poisonous unsupported syntaxes

