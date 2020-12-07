// Skipping function Validate(none), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.UsernameValidationRule.HasValidFormat$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :20 :48) // "^\\S+$" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :20 :38) // new Regex("^\\S+$") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :21 :34) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :21 :60) // Not a variable of known type: _username
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :21 :34) // regularExpression.IsMatch(_username) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :21 :17) // hasValidFormat
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :21 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :22 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :22 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsBetween4And16CharactersLength(), it contains poisonous unsupported syntaxes

