func @_MemoryGameService.Services.MemoryGameService.SetAccountAsVerified$string$(none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :9 :8) {
^entry (%_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :9 :41)
cbde.store %_emailAddress, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :9 :41)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :11 :51) // new MemoryGameContext() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :11 :36) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :12 :25) // Not a variable of known type: unitOfWork
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :12 :25) // unitOfWork.Players (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :12 :48) // Not a variable of known type: emailAddress
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :12 :25) // unitOfWork.Players.Get(emailAddress) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :13 :12) // Not a variable of known type: player
%10 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :13 :12) // player.EmailWasVerified (SimpleMemberAccessExpression)
%11 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :13 :38) // true
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :14 :31) // Not a variable of known type: unitOfWork
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :14 :31) // unitOfWork.Complete() (InvocationExpression)
%14 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :14 :16) // rowsModified
cbde.store %13, %14 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :14 :16)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :15 :12) // Not a variable of known type: unitOfWork
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :15 :12) // unitOfWork.Dispose() (InvocationExpression)
%17 = cbde.load %14 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :16 :19)
%18 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :16 :35)
%19 = cmpi "eq", %17, %18 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :16 :19)
return %19 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :16 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.AssignNewVerificationToken$string.string$(none, none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :19 :8) {
^entry (%_emailAddress : none, %_verificationToken : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :19 :47)
cbde.store %_emailAddress, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :19 :47)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :19 :68)
cbde.store %_verificationToken, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :19 :68)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :21 :51) // new MemoryGameContext() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :21 :36) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :22 :25) // Not a variable of known type: unitOfWork
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :22 :25) // unitOfWork.Players (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :22 :48) // Not a variable of known type: emailAddress
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :22 :25) // unitOfWork.Players.Get(emailAddress) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :23 :12) // Not a variable of known type: player
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :23 :12) // player.ActivationToken (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :23 :37) // Not a variable of known type: verificationToken
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :24 :31) // Not a variable of known type: unitOfWork
%14 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :24 :31) // unitOfWork.Complete() (InvocationExpression)
%15 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :24 :16) // rowsModified
cbde.store %14, %15 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :24 :16)
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :25 :12) // Not a variable of known type: unitOfWork
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :25 :12) // unitOfWork.Dispose() (InvocationExpression)
%18 = cbde.load %15 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :26 :19)
%19 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :26 :35)
%20 = cmpi "eq", %18, %19 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :26 :19)
return %20 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountVerificationService.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function VerifyToken(none, none), it contains poisonous unsupported syntaxes

