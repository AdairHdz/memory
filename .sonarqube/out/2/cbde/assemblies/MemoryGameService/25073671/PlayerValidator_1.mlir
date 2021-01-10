func @_MemoryGameService.DataValidators.PlayerValidator.Validate$string.string.string$(none, none, none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :16 :8) {
^entry (%_emailAddress : none, %_username : none, %_password : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :16 :29)
cbde.store %_emailAddress, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :16 :29)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :16 :50)
cbde.store %_username, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :16 :50)
%2 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :16 :67)
cbde.store %_password, %2 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :16 :67)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :18 :41) // new Player()              {                  //EmailAddress = emailAddress,                  //UserName = username,                  //Password = password              } (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :24 :48) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :24 :62) // Not a variable of known type: playerToBeValidated
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :24 :48) // this.Validate(playerToBeValidated) (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :25 :19) // Not a variable of known type: validationResult
%10 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :25 :19) // validationResult.IsValid (SimpleMemberAccessExpression)
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\DataValidators\\PlayerValidator.cs" :25 :12)

^1: // ExitBlock
cbde.unreachable

}
