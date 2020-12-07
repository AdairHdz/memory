func @_MemoryGameService.Services.MemoryGameService.UpdateTimer$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerService.cs" :10 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SingletonTimer
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerService.cs" :12 :26) // SingletonTimer.GetInstance() (InvocationExpression)
// Entity from another assembly: OperationContext
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerService.cs" :13 :12) // OperationContext.Current (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerService.cs" :13 :12) // OperationContext.Current.GetCallbackChannel<ITimerServiceCallback>() (InvocationExpression)
%4 = constant 30 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerService.cs" :13 :99)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerService.cs" :13 :12) // OperationContext.Current.GetCallbackChannel<ITimerServiceCallback>().DisplayTimerValue(30) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
