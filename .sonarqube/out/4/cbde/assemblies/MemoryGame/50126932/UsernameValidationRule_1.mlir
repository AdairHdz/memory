// Skipping function GetValidationRuleResult(), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.UsernameValidationRule.Validate$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :23 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetValidationRuleResult
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :25 :56) // GetValidationRuleResult() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :26 :16) // Not a variable of known type: validationRuleResult
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :26 :16) // validationRuleResult.Status (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%4 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :26 :47)
%5 = cmpi "eq", %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :26 :16)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :26 :16)

^1: // JumpBlock
%6 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :28 :23) // true
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :28 :16)

^2: // JumpBlock
%7 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :30 :19) // false
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :30 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.UsernameValidationRule.HasValidFormat$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :34 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :36 :48) // "^\\S+$" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :36 :38) // new Regex("^\\S+$") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :37 :34) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :37 :60) // Not a variable of known type: _username
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :37 :34) // regularExpression.IsMatch(_username) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :37 :17) // hasValidFormat
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :37 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :38 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameValidationRule.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsBetween4And16CharactersLength(), it contains poisonous unsupported syntaxes

