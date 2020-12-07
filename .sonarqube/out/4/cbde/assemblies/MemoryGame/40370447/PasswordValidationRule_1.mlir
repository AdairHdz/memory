// Skipping function Validate(none), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneSpecialCharacter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :24 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :26 :43) // "\\W+" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :26 :33) // new Regex("\\W+") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :27 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :27 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :27 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :28 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :28 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :28 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :28 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneCapitalLetter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :31 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :33 :43) // "[A-Z+]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :33 :33) // new Regex("[A-Z+]") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :34 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :34 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :34 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :35 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :35 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :35 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :35 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneNumericCharacter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :38 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :40 :43) // "[0-9]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :40 :33) // new Regex("[0-9]") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :41 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :41 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :41 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :42 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :42 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :42 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :42 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :42 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneLowercaseLetter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :45 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :47 :43) // "[a-z+]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :47 :33) // new Regex("[a-z+]") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :48 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :48 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :48 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :49 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :49 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :49 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :49 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :49 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsBetween8And25CharactersLength(), it contains poisonous unsupported syntaxes

