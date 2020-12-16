func @_MemoryGame.Utilities.TokenManager.GenerateVerificationToken$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :4 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :7 :16) // new MemoryGameService.TokenGeneratorClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :8 :19) // Not a variable of known type: client
%3 = constant 6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :8 :40)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :8 :19) // client.GenerateToken(6) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :8 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.Utilities.TokenManager.SendVerificationToken$string.string.string$(none, none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :11 :8) {
^entry (%_username : none, %_emailAddress : none, %_verificationToken : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :11 :49)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :11 :49)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :11 :66)
cbde.store %_emailAddress, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :11 :66)
%2 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :11 :87)
cbde.store %_verificationToken, %2 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :11 :87)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :14 :16) // new MemoryGameService.MailingServiceClient() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :15 :12) // Not a variable of known type: client
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :15 :41) // Not a variable of known type: username
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :15 :51) // Not a variable of known type: emailAddress
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :15 :65) // Not a variable of known type: verificationToken
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Utilities\\TokenManager.cs" :15 :12) // client.SendVerificationToken(username, emailAddress, verificationToken) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
