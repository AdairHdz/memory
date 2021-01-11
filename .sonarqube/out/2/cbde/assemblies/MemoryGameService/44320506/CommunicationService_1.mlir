func @_MemoryGameService.Services.MemoryGameService.SendMessage$string.string$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :20 :8) {
^entry (%_sender : none, %_message : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :20 :32)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :20 :32)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :20 :47)
cbde.store %_message, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :20 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :23 :60) // new CommunicationEventArgs()              {                  Sender = sender,                  Message = message              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :25 :25) // Not a variable of known type: sender
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :26 :26) // Not a variable of known type: message
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :28 :12) // Not a variable of known type: MessageSentEvent
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :28 :29) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :28 :35) // Not a variable of known type: communicationEventArgs
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :28 :12) // MessageSentEvent(this, communicationEventArgs) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.SubscribeToCommunicationService$string$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :31 :8) {
^entry (%_username : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :31 :52)
cbde.store %_username, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :31 :52)
br ^0

^0: // SimpleBlock
// Entity from another assembly: OperationContext
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :33 :44) // OperationContext.Current (SimpleMemberAccessExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :33 :44) // OperationContext.Current.GetCallbackChannel<ICommunicationServiceCallback>() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MessageSentHandler
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :34 :34) // new MessageSentEventHandler(MessageSentHandler) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :35 :12) // Not a variable of known type: MessageSentEvent
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :35 :32) // Not a variable of known type: _messageSentHandler
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :35 :12) // Binary expression on unsupported types MessageSentEvent += _messageSentHandler
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.UnsubscribeFromCommunicationService$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :38 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :40 :12) // Not a variable of known type: MessageSentEvent
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :40 :32) // Not a variable of known type: _messageSentHandler
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :40 :12) // Binary expression on unsupported types MessageSentEvent -= _messageSentHandler
br ^1

^1: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.MessageSentHandler$object.MemoryGameService.Services.CommunicationEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :43 :8) {
^entry (%_sender : none, %_communicationEventArgs : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :43 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :43 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :44 :12)
cbde.store %_communicationEventArgs, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :44 :12)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :46 :12) // Not a variable of known type: _communicationServiceCallback
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :46 :56) // Not a variable of known type: communicationEventArgs
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :46 :56) // communicationEventArgs.Sender (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :47 :16) // Not a variable of known type: communicationEventArgs
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :47 :16) // communicationEventArgs.Message (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CommunicationService.cs" :46 :12) // _communicationServiceCallback.ReciveMessage(communicationEventArgs.Sender,                  communicationEventArgs.Message) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
