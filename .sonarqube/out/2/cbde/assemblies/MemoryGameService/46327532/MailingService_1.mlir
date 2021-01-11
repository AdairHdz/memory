func @_MemoryGameService.Services.MemoryGameService.SendVerificationToken$MemoryGame.MemoryGameService.DataTransferObjects.VerificationTokenInfoDto$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :8 :8) {
^entry (%_verificationTokenInfo : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :8 :42)
cbde.store %_verificationTokenInfo, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :8 :42)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :10 :26) // Not a variable of known type: verificationTokenInfo
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :10 :26) // verificationTokenInfo.Name (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :11 :34) // Not a variable of known type: verificationTokenInfo
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :11 :34) // verificationTokenInfo.EmailAddress (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :12 :39) // Not a variable of known type: verificationTokenInfo
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :12 :39) // verificationTokenInfo.VerificationToken (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :13 :30) // new MailTemplate() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :14 :12) // Not a variable of known type: mt
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :14 :27) // Not a variable of known type: name
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :14 :33) // Not a variable of known type: emailAddress
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :14 :12) // mt.SetReceiver(name, emailAddress) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :15 :12) // Not a variable of known type: mt
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :15 :26) // "Bienvenido" (StringLiteralExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :16 :16) // "Tu token de verificación de cuenta es: " (StringLiteralExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :16 :60) // Not a variable of known type: verificationToken
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :16 :16) // Binary expression on unsupported types "Tu token de verificación de cuenta es: " + verificationToken
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :15 :12) // mt.SetMessage("Bienvenido",                  "Tu token de verificación de cuenta es: " + verificationToken) (InvocationExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :17 :12) // Not a variable of known type: mt
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\MailingService.cs" :17 :12) // mt.Send() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
