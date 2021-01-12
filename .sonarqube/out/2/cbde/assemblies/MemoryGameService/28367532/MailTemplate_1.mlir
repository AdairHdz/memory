func @_MemoryGameService.Utilities.MailTemplate.SetReceiver$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :8) {
^entry (%_name : none, %_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :32)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :32)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :45)
cbde.store %_emailAddress, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :43) // Not a variable of known type: name
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :49) // Not a variable of known type: emailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :38 :24) // new MailboxAddress(name, emailAddress) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :39 :12) // Not a variable of known type: _content
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :39 :12) // _content.To (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :39 :28) // Not a variable of known type: _receiver
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :39 :12) // _content.To.Add(_receiver) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Utilities.MailTemplate.SetMessage$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :47 :8) {
^entry (%_subject : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :47 :31)
cbde.store %_subject, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :47 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :47 :47)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :47 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :49 :12) // Not a variable of known type: _message
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :49 :12) // _message.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :49 :28) // Not a variable of known type: message
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :50 :23) // Not a variable of known type: subject
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :51 :12) // Not a variable of known type: _content
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :51 :12) // _content.Body (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :51 :28) // Not a variable of known type: _message
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :12) // Not a variable of known type: _content
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :12) // _content.Subject (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :52 :31) // Not a variable of known type: subject
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Utilities.MailTemplate.Send$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :58 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :60 :12) // Not a variable of known type: _client
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :60 :28) // "smtp.gmail.com" (StringLiteralExpression)
%2 = constant 587 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :60 :46)
%3 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :60 :51) // false
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :60 :12) // _client.Connect("smtp.gmail.com", 587, false) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :61 :12) // Not a variable of known type: _client
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :61 :33) // "memory.game.lis@gmail.com" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :61 :62) // "cfalpwtqeeitkhsk" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :61 :12) // _client.Authenticate("memory.game.lis@gmail.com", "cfalpwtqeeitkhsk") (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :62 :12) // Not a variable of known type: _client
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :62 :25) // Not a variable of known type: _content
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :62 :12) // _client.Send(_content) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :63 :12) // Not a variable of known type: _client
%13 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :63 :31) // true
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :63 :12) // _client.Disconnect(true) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
