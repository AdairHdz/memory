func @_MemoryGame.Utilities.TokenManager.GenerateVerificationToken$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :6 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :9 :16) // new MemoryGameService.TokenGeneratorClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :10 :19) // Not a variable of known type: client
%3 = constant 6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :10 :40)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :10 :19) // client.GenerateToken(6) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :10 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Utilities.TokenManager.SendVerificationToken$MemoryGame.MemoryGameService.DataTransferObjects.VerificationTokenInfoDto$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :13 :8) {
^entry (%_verificationTokenInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :13 :49)
cbde.store %_verificationTokenInfo, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :13 :49)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :16 :16) // new MemoryGameService.MailingServiceClient() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :17 :12) // Not a variable of known type: client
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :17 :41) // Not a variable of known type: verificationTokenInfo
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :17 :12) // client.SendVerificationToken(verificationTokenInfo) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
