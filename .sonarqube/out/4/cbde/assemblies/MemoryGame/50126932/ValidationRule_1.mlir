func @_MemoryGame.InputValidation.ValidationRule.Validate$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :12 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :14 :16) // Not a variable of known type: _validationRuleResult
%1 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :14 :16) // _validationRuleResult.Status (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%2 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :14 :48)
%3 = cmpi "eq", %1, %2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :14 :16)
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :14 :16)

^1: // JumpBlock
%4 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :16 :23) // true
return %4 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :16 :16)

^2: // JumpBlock
%5 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :18 :19) // false
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :18 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.ValidationRule.GetValidationRuleResult$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :21 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :23 :19) // Not a variable of known type: _validationRuleResult
return %0 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\ValidationRule.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
