func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneSpecialCharacter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :20 :48) // "\\W+" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :20 :38) // new Regex("\\W+") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :21 :38) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :21 :64) // Not a variable of known type: _password
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :21 :38) // regularExpression.Matches(_password) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :22 :19) // Not a variable of known type: matches
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :22 :19) // matches.Count (SimpleMemberAccessExpression)
%9 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :22 :36)
%10 = cmpi "sge", %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :22 :19)
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :22 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneCapitalLetter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :25 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :27 :48) // "[A-Z+]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :27 :38) // new Regex("[A-Z+]") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :28 :38) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :28 :64) // Not a variable of known type: _password
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :28 :38) // regularExpression.Matches(_password) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :29 :19) // Not a variable of known type: matches
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :29 :19) // matches.Count (SimpleMemberAccessExpression)
%9 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :29 :36)
%10 = cmpi "sge", %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :29 :19)
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :29 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneNumericCharacter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :32 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :34 :48) // "[0-9]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :34 :38) // new Regex("[0-9]") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :35 :38) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :35 :64) // Not a variable of known type: _password
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :35 :38) // regularExpression.Matches(_password) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :36 :19) // Not a variable of known type: matches
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :36 :19) // matches.Count (SimpleMemberAccessExpression)
%9 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :36 :36)
%10 = cmpi "sge", %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :36 :19)
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :36 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneLowercaseLetter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :39 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :41 :48) // "[a-z+]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :41 :38) // new Regex("[a-z+]") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :42 :38) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :42 :64) // Not a variable of known type: _password
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :42 :38) // regularExpression.Matches(_password) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :43 :19) // Not a variable of known type: matches
%8 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :43 :19) // matches.Count (SimpleMemberAccessExpression)
%9 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :43 :36)
%10 = cmpi "sge", %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :43 :19)
return %10 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :43 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsBetween8And25CharactersLength(), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.Validate$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :52 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetValidationRuleResult
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :54 :56) // GetValidationRuleResult() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :55 :16) // Not a variable of known type: validationRuleResult
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :55 :16) // validationRuleResult.Status (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%4 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :55 :47)
%5 = cmpi "eq", %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :55 :16)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :55 :16)

^1: // JumpBlock
%6 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :57 :23) // true
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :57 :16)

^2: // JumpBlock
%7 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :59 :19) // false
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\PasswordValidationRule.cs" :59 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetValidationRuleResult(), it contains poisonous unsupported syntaxes

