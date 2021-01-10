func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneSpecialCharacter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :15 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :17 :43) // "\\W+" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :17 :33) // new Regex("\\W+") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :18 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :18 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :18 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :19 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :19 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :19 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :19 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :19 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneCapitalLetter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :22 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :24 :43) // "[A-Z+]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :24 :33) // new Regex("[A-Z+]") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :25 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :25 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :25 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :26 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :26 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :26 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :26 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneNumericCharacter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :29 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :31 :43) // "[0-9]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :31 :33) // new Regex("[0-9]") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :32 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :32 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :32 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :33 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :33 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :33 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :33 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :33 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.HasAtLeastOneLowercaseLetter$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :36 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :38 :43) // "[a-z+]" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :38 :33) // new Regex("[a-z+]") (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :39 :23) // Not a variable of known type: _regularExpression
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :39 :50) // Not a variable of known type: _password
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :39 :23) // _regularExpression.Matches(_password) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :40 :19) // Not a variable of known type: _matches
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :40 :19) // _matches.Count (SimpleMemberAccessExpression)
%7 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :40 :37)
%8 = cmpi "sge", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :40 :19)
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :40 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsBetween8And25CharactersLength(), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.PasswordValidationRule.Validate$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :49 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetValidationRuleResult
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :51 :56) // GetValidationRuleResult() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :52 :16) // Not a variable of known type: validationRuleResult
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :52 :16) // validationRuleResult.Status (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%4 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :52 :47)
%5 = cmpi "eq", %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :52 :16)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :52 :16)

^1: // JumpBlock
%6 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :54 :23) // true
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :54 :16)

^2: // JumpBlock
%7 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :56 :19) // false
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\PasswordValidationRule.cs" :56 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetValidationRuleResult(), it contains poisonous unsupported syntaxes

