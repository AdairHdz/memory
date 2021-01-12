func @_MemoryGame.InputValidation.RuleSet.AddValidationRule$MemoryGame.InputValidation.IValidationRule$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :23 :8) {
^entry (%_validationRule : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :23 :38)
cbde.store %_validationRule, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :23 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :25 :12) // Not a variable of known type: ValidationRules
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :25 :32) // Not a variable of known type: validationRule
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :25 :12) // ValidationRules.Add(validationRule) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LookForValidationErrors(), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RuleSet.AllValidationRulesHavePassed$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :42 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LookForValidationErrors
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :44 :12) // LookForValidationErrors() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :45 :16) // Not a variable of known type: _validationResultErrors
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :45 :16) // _validationResultErrors.Count (SimpleMemberAccessExpression)
%3 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :45 :49)
%4 = cmpi "eq", %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :45 :16)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :45 :16)

^1: // JumpBlock
%5 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :47 :23) // true
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :47 :16)

^2: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :49 :19) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :49 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RuleSet.GetValidationResultErrors$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :53 :8) {
^entry :
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LookForValidationErrors
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :55 :12) // LookForValidationErrors() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :56 :19) // Not a variable of known type: _validationResultErrors
return %1 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :56 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RuleSet.ClearValidationErrorsList$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :60 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :62 :12) // Not a variable of known type: _validationResultErrors
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :62 :12) // _validationResultErrors.Clear() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
