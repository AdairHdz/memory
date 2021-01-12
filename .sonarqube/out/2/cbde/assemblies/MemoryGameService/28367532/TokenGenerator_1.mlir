func @_MemoryGameService.Services.MemoryGameService.GenerateToken$int$(i32) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :23 :8) {
^entry (%_length : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :23 :36)
cbde.store %_length, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :23 :36)
br ^0

^0: // JumpBlock
// Entity from another assembly: Guid
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :25 :27) // Guid.NewGuid() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :25 :27) // Guid.NewGuid().ToString() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :26 :20) // Not a variable of known type: token
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :26 :34) // "-" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :26 :39) // "" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :26 :20) // token.Replace("-", "") (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :27 :20) // Not a variable of known type: token
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :27 :36)
%10 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :27 :39)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :27 :20) // token.Substring(0, length) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :28 :19) // Not a variable of known type: token
return %12 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\TokenGenerator.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
