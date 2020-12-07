func @_MemoryGameService.Services.MemoryGameService.SendVerificationToken$string.string.string$(none, none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :7 :8) {
^entry (%_name : none, %_emailAddress : none, %_verificationToken : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :7 :42)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :7 :42)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :7 :55)
cbde.store %_emailAddress, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :7 :55)
%2 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :7 :76)
cbde.store %_verificationToken, %2 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :7 :76)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :9 :30) // new MailTemplate() (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :10 :12) // Not a variable of known type: mt
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :10 :27) // Not a variable of known type: name
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :10 :33) // Not a variable of known type: emailAddress
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :10 :12) // mt.SetReceiver(name, emailAddress) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :11 :12) // Not a variable of known type: mt
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :11 :26) // "Bienvenido" (StringLiteralExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :12 :16) // "Tu token de verificación de cuenta es: " (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :12 :60) // Not a variable of known type: verificationToken
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :12 :16) // Binary expression on unsupported types "Tu token de verificación de cuenta es: " + verificationToken
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :11 :12) // mt.SetMessage("Bienvenido",                  "Tu token de verificación de cuenta es: " + verificationToken) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :13 :12) // Not a variable of known type: mt
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :13 :12) // mt.Send() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
