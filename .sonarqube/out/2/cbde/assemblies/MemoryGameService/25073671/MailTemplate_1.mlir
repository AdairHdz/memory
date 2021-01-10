func @_MemoryGameService.Utilities.MailTemplate.SetReceiver$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :26 :8) {
^entry (%_name : none, %_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :26 :32)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :26 :32)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :26 :45)
cbde.store %_emailAddress, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :26 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :28 :43) // Not a variable of known type: name
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :28 :49) // Not a variable of known type: emailAddress
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :28 :24) // new MailboxAddress(name, emailAddress) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :29 :12) // Not a variable of known type: _content
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :29 :12) // _content.To (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :29 :28) // Not a variable of known type: _receiver
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :29 :12) // _content.To.Add(_receiver) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Utilities.MailTemplate.SetMessage$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :32 :8) {
^entry (%_subject : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :32 :31)
cbde.store %_subject, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :32 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :32 :47)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :32 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :34 :12) // Not a variable of known type: _message
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :34 :12) // _message.Text (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :34 :28) // Not a variable of known type: message
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :35 :23) // Not a variable of known type: subject
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :12) // Not a variable of known type: _content
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :12) // _content.Body (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :36 :28) // Not a variable of known type: _message
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :37 :12) // Not a variable of known type: _content
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :37 :12) // _content.Subject (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :37 :31) // Not a variable of known type: subject
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Utilities.MailTemplate.Send$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :40 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :42 :12) // Not a variable of known type: _client
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :42 :25) // Not a variable of known type: _content
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :42 :12) // _client.Send(_content) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :43 :12) // Not a variable of known type: _client
%4 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :43 :31) // true
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\MailTemplate.cs" :43 :12) // _client.Disconnect(true) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
