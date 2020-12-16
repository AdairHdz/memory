func @_MemoryGameService.Utilities.SingletonTimer.GetInstance$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :14 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :16 :15) // Not a variable of known type: _timer
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :16 :25) // null (NullLiteralExpression)
%2 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :16 :15) // comparison of unknown type: _timer == null
cond_br %2, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :16 :15)

^1: // SimpleBlock
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :18 :25) // new Timer() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :19 :16) // Not a variable of known type: _timer
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :19 :16) // _timer.Elapsed (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :19 :34) // null (NullLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :19 :16) // Binary expression on unsupported types _timer.Elapsed += null
// No identifier name for binary assignment expression
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :20 :16) // Not a variable of known type: _timer
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :20 :16) // _timer.Interval (SimpleMemberAccessExpression)
%10 = constant 1000 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :20 :34)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :21 :16) // Not a variable of known type: _timer
%12 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :21 :16) // _timer.Enabled (SimpleMemberAccessExpression)
%13 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :21 :33) // true
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :22 :16) // Not a variable of known type: _timer
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :22 :16) // _timer.Start() (InvocationExpression)
br ^2

^2: // JumpBlock
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :26 :19) // Not a variable of known type: _timer
return %16 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :26 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Utilities.SingletonTimer.HandleElapsed$object.System.Timers.ElapsedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :29 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :29 :27)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :29 :27)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :29 :42)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :29 :42)
br ^0

^0: // SimpleBlock
// Entity from another assembly: Console
// Entity from another assembly: DateTime
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :31 :30) // DateTime.Now (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :31 :30) // DateTime.Now.ToString() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\SingletonTimer.cs" :31 :12) // Console.WriteLine(DateTime.Now.ToString()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
