func @_MemoryGameService.Services.MemoryGameService.RegisterNewPlayer$MemoryGame.MemoryGameService.DataTransferObjects.PlayerDTO$(none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :11 :8) {
^entry (%_playerDTO : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :11 :38)
cbde.store %_playerDTO, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :11 :38)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: PlayerMapper
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :33 :57) // Not a variable of known type: playerDTO
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :33 :31) // PlayerMapper.CreateEntity(playerDTO) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :34 :12) // Not a variable of known type: newPlayer
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :34 :12) // newPlayer.EmailWasVerified (SimpleMemberAccessExpression)
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :34 :41) // false
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :35 :12) // Not a variable of known type: newPlayer
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :35 :12) // newPlayer.TotalScore (SimpleMemberAccessExpression)
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :35 :35)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :36 :45) // new MemoryGameContext() (ObjectCreationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :36 :30) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :37 :12) // Not a variable of known type: unityOfWork
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :37 :12) // unityOfWork.Players (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :37 :36) // Not a variable of known type: newPlayer
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :37 :12) // unityOfWork.Players.Add(newPlayer) (InvocationExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :38 :38) // Not a variable of known type: unityOfWork
%18 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :38 :38) // unityOfWork.Complete() (InvocationExpression)
%19 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :38 :16) // playerWasRegistered
cbde.store %18, %19 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :38 :16)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :39 :12) // Not a variable of known type: unityOfWork
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :39 :12) // unityOfWork.Dispose() (InvocationExpression)
%22 = cbde.load %19 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :40 :19)
%23 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :40 :42)
%24 = cmpi "eq", %22, %23 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :40 :19)
return %24 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGameService.Services.MemoryGameService.EmailAddressIsAvailable$string$(none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :43 :8) {
^entry (%_emailAddress : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :43 :44)
cbde.store %_emailAddress, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :43 :44)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :45 :51) // new MemoryGameContext() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :45 :36) // new UnitOfWork(new MemoryGameContext()) (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :46 :25) // Not a variable of known type: unitOfWork
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :46 :25) // unitOfWork.Players (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :46 :48) // Not a variable of known type: emailAddress
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :46 :25) // unitOfWork.Players.Get(emailAddress) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :47 :12) // Not a variable of known type: unitOfWork
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :47 :12) // unitOfWork.Dispose() (InvocationExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :48 :19) // Not a variable of known type: player
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :48 :29) // null (NullLiteralExpression)
%13 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :48 :19) // comparison of unknown type: player == null
return %13 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\PlayerRegistryService.cs" :48 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function UserNameIsAvailable(none), it contains poisonous unsupported syntaxes

