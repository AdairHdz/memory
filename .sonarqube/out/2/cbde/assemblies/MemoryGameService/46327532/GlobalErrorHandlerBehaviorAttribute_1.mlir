func @_MemoryGameService.GlobalErrorHandlerBehaviorAttribute.AddBindingParameters$System.ServiceModel.Description.ServiceDescription.System.ServiceModel.ServiceHostBase.System.Collections.ObjectModel.Collection$System.ServiceModel.Description.ServiceEndpoint$.System.ServiceModel.Channels.BindingParameterCollection$(none, none, none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :8) {
^entry (%_serviceDescription : none, %_serviceHostBase : none, %_endpoints : none, %_bindingParameters : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :41)
cbde.store %_serviceDescription, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :41)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :80)
cbde.store %_serviceHostBase, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :80)
%2 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :113)
cbde.store %_endpoints, %2 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :113)
%3 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :152)
cbde.store %_bindingParameters, %3 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :19 :152)
br ^0

^0: // ExitBlock
return

}
// Skipping function ApplyDispatchBehavior(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGameService.GlobalErrorHandlerBehaviorAttribute.Validate$System.ServiceModel.Description.ServiceDescription.System.ServiceModel.ServiceHostBase$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :38 :8) {
^entry (%_serviceDescription : none, %_serviceHostBase : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :38 :29)
cbde.store %_serviceDescription, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :38 :29)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :38 :68)
cbde.store %_serviceHostBase, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\GlobalErrorHandlerBehaviorAttribute.cs" :38 :68)
br ^0

^0: // ExitBlock
return

}
