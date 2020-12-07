func @_MemoryGameService.GlobalErrorHandler.HandleError$System.Exception$(none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :9 :8) {
^entry (%_error : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :9 :32)
cbde.store %_error, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :9 :32)
br ^0

^0: // JumpBlock
%1 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :11 :19) // true
return %1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :11 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.GlobalErrorHandler.ProvideFault$System.Exception.System.ServiceModel.Channels.MessageVersion.refSystem.ServiceModel.Channels.Message$(none, none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :14 :8) {
^entry (%_error : none, %_version : none, %_fault : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :14 :33)
cbde.store %_error, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :14 :33)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :14 :50)
cbde.store %_version, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :14 :50)
%2 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :14 :74)
cbde.store %_fault, %2 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :14 :74)
br ^0

^0: // SimpleBlock
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :16 :63) // "A general service error occured" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :16 :44) // new FaultException("A general service error occured") (ObjectCreationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :17 :40) // Not a variable of known type: faultException
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :17 :40) // faultException.CreateMessageFault() (InvocationExpression)
// Entity from another assembly: Message
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :18 :42) // Not a variable of known type: version
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :18 :51) // Not a variable of known type: messageFault
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :18 :65) // null (NullLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandler.cs" :18 :20) // Message.CreateMessage(version, messageFault, null) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
