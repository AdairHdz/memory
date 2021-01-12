func @_MemoryGameService.Utilities.MailTemplate.SetReceiver$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :27 :8) {
^entry (%_name : none, %_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :27 :32)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :27 :32)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :27 :45)
cbde.store %_emailAddress, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :27 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :29 :57) // Not a variable of known type: name
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :29 :63) // Not a variable of known type: emailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :29 :38) // new MailboxAddress(name, emailAddress) (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :30 :12) // Not a variable of known type: _content
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :30 :12) // _content.To (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :30 :28) // Not a variable of known type: receiver
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :30 :12) // _content.To.Add(receiver) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Utilities.MailTemplate.SetMessage$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :8) {
^entry (%_subject : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :31)
cbde.store %_subject, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :47)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :40 :51) // "plain" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :40 :38) // new TextPart("plain") (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :41 :12) // Not a variable of known type: messageContent
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :41 :12) // messageContent.Text (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :41 :34) // Not a variable of known type: message
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :42 :12) // Not a variable of known type: _content
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :42 :12) // _content.Body (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :42 :28) // Not a variable of known type: messageContent
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :43 :12) // Not a variable of known type: _content
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :43 :12) // _content.Subject (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :43 :31) // Not a variable of known type: subject
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Utilities.MailTemplate.Send$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :49 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :51 :32) // new SmtpClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :12) // Not a variable of known type: client
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :27) // "smtp.gmail.com" (StringLiteralExpression)
%4 = constant 587 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :45)
%5 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :50) // false
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :12) // client.Connect("smtp.gmail.com", 587, false) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :53 :12) // Not a variable of known type: client
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :53 :32) // "memory.game.lis@gmail.com" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :53 :61) // "cfalpwtqeeitkhsk" (StringLiteralExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :53 :12) // client.Authenticate("memory.game.lis@gmail.com", "cfalpwtqeeitkhsk") (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :54 :12) // Not a variable of known type: client
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :54 :24) // Not a variable of known type: _content
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :54 :12) // client.Send(_content) (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :55 :12) // Not a variable of known type: client
%15 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :55 :30) // true
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :55 :12) // client.Disconnect(true) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
