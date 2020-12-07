func @_Utilities.MailTemplate.SetSender$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :25 :8) {
^entry (%_name : none, %_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :25 :30)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :25 :30)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :25 :43)
cbde.store %_emailAddress, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :25 :43)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :27 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :27 :12) // this._sender (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :27 :46) // Not a variable of known type: name
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :27 :52) // Not a variable of known type: emailAddress
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :27 :27) // new MailboxAddress(name, emailAddress) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :28 :12) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :28 :12) // this._content (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :28 :12) // this._content.From (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :28 :35) // this (ThisExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :28 :35) // this._sender (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :28 :12) // this._content.From.Add(this._sender) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Utilities.MailTemplate.SetReceiver$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :31 :8) {
^entry (%_name : none, %_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :31 :32)
cbde.store %_name, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :31 :32)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :31 :45)
cbde.store %_emailAddress, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :31 :45)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :33 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :33 :12) // this._receiver (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :33 :48) // Not a variable of known type: name
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :33 :54) // Not a variable of known type: emailAddress
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :33 :29) // new MailboxAddress(name, emailAddress) (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :34 :12) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :34 :12) // this._content (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :34 :12) // this._content.To (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :34 :33) // this (ThisExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :34 :33) // this._receiver (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :34 :12) // this._content.To.Add(this._receiver) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Utilities.MailTemplate.SetMessage$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :37 :8) {
^entry (%_subject : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :37 :31)
cbde.store %_subject, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :37 :31)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :37 :47)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :37 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :39 :12) // this (ThisExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :39 :12) // this._message (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :39 :12) // this._message.Text (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :39 :33) // Not a variable of known type: message
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :40 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :40 :12) // this._subject (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :40 :28) // Not a variable of known type: subject
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :41 :12) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :41 :12) // this._content (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :41 :12) // this._content.Body (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :41 :33) // this (ThisExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :41 :33) // this._message (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :42 :12) // Not a variable of known type: _content
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :42 :12) // _content.Subject (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :42 :31) // Not a variable of known type: subject
br ^1

^1: // ExitBlock
return

}
func @_Utilities.MailTemplate.Send$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :45 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :47 :12) // Not a variable of known type: _client
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :47 :25) // Not a variable of known type: _content
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :47 :12) // _client.Send(_content) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :48 :12) // Not a variable of known type: _client
%4 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :48 :31) // true
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\MailTemplate.cs" :48 :12) // _client.Disconnect(true) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
