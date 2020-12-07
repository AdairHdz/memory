func @_MemoryGameService.Services.MemoryGameService.InitializeTimer$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerInitializerService.cs" :8 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: SingletonTimer
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerInitializerService.cs" :10 :26) // SingletonTimer.GetInstance() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerInitializerService.cs" :11 :12) // Not a variable of known type: timer
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TimerInitializerService.cs" :11 :12) // timer.Start() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
