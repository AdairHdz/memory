func @_MemoryGameService.Services.MemoryGameService.ChangeUsername$MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO$(none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :9 :8) {
^entry (%_playerCredentialsDTO : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :9 :35)
cbde.store %_playerCredentialsDTO, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :9 :35)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :11 :34) // Not a variable of known type: playerCredentialsDTO
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :11 :34) // playerCredentialsDTO.EmailAddress (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :12 :33) // Not a variable of known type: playerCredentialsDTO
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :12 :33) // playerCredentialsDTO.Username (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :13 :51) // new MemoryGameContext() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :13 :36) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :14 :25) // Not a variable of known type: unitOfWork
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :14 :25) // unitOfWork.Players (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :14 :48) // Not a variable of known type: emailAddress
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :14 :25) // unitOfWork.Players.Get(emailAddress) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :15 :12) // Not a variable of known type: player
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :15 :12) // player.UserName (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :15 :30) // Not a variable of known type: newUsername
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :16 :31) // Not a variable of known type: unitOfWork
%19 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :16 :31) // unitOfWork.Complete() (InvocationExpression)
%20 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :16 :16) // rowsModified
cbde.store %19, %20 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :16 :16)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :17 :12) // Not a variable of known type: unitOfWork
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :17 :12) // unitOfWork.Dispose() (InvocationExpression)
%23 = cbde.load %20 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :18 :19)
%24 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :18 :35)
%25 = cmpi "eq", %23, %24 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :18 :19)
return %25 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.SetNewPassword$MemoryGame.MemoryGameService.DataTransferObjects.PlayerCredentialsDTO$(none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :21 :8) {
^entry (%_playerCredentialsDTO : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :21 :35)
cbde.store %_playerCredentialsDTO, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :21 :35)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :23 :34) // Not a variable of known type: playerCredentialsDTO
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :23 :34) // playerCredentialsDTO.EmailAddress (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :24 :30) // Not a variable of known type: playerCredentialsDTO
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :24 :30) // playerCredentialsDTO.Password (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :25 :51) // new MemoryGameContext() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :25 :36) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :26 :25) // Not a variable of known type: unitOfWork
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :26 :25) // unitOfWork.Players (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :26 :48) // Not a variable of known type: emailAddress
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :26 :25) // unitOfWork.Players.Get(emailAddress) (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :27 :12) // Not a variable of known type: player
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :27 :12) // player.Password (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :27 :30) // Not a variable of known type: password
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :28 :31) // Not a variable of known type: unitOfWork
%19 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :28 :31) // unitOfWork.Complete() (InvocationExpression)
%20 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :28 :16) // rowsModified
cbde.store %19, %20 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :28 :16)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :29 :12) // Not a variable of known type: unitOfWork
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :29 :12) // unitOfWork.Dispose() (InvocationExpression)
%23 = cbde.load %20 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :30 :19)
%24 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :30 :35)
%25 = cmpi "eq", %23, %24 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :30 :19)
return %25 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\AccountModifiabilityService.cs" :30 :12)

^1: // ExitBlock
cbde.unreachable

}
