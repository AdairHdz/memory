func @_MemoryGame.Utilities.TokenManager.GenerateToken$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :19 :16) // new MemoryGameService.TokenGeneratorClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :20 :19) // Not a variable of known type: client
%3 = constant 6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :20 :40)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :20 :19) // client.GenerateToken(6) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :20 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Utilities.TokenManager.SendToken$MemoryGame.MemoryGameService.DataTransferObjects.TokenInfoDto$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :30 :8) {
^entry (%_tokenInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :30 :37)
cbde.store %_tokenInfo, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :30 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :33 :16) // new MemoryGameService.MailingServiceClient() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :34 :12) // Not a variable of known type: client
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :34 :41) // Not a variable of known type: tokenInfo
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :34 :12) // client.SendVerificationToken(tokenInfo) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
