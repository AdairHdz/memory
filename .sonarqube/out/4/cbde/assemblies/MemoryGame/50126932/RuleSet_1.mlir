func @_MemoryGame.InputValidation.RuleSet.AddValidationRule$MemoryGame.InputValidation.IValidationRule$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :15 :8) {
^entry (%_validationRule : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :15 :38)
cbde.store %_validationRule, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :15 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :17 :12) // Not a variable of known type: ValidationRules
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :17 :32) // Not a variable of known type: validationRule
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :17 :12) // ValidationRules.Add(validationRule) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LookForValidationErrors(), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RuleSet.AllValidationRulesHavePassed$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :33 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LookForValidationErrors
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :35 :12) // LookForValidationErrors() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :36 :16) // Not a variable of known type: _validationResultErrors
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :36 :16) // _validationResultErrors.Count (SimpleMemberAccessExpression)
%3 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :36 :49)
%4 = cmpi "eq", %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :36 :16)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :36 :16)

^1: // JumpBlock
%5 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :38 :23) // true
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :38 :16)

^2: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :40 :19) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :40 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RuleSet.GetValidationResultErrors$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :43 :8) {
^entry :
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LookForValidationErrors
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :45 :12) // LookForValidationErrors() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :46 :19) // Not a variable of known type: _validationResultErrors
return %1 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :46 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RuleSet.ClearValidationErrorsList$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :51 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :53 :12) // Not a variable of known type: _validationResultErrors
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RuleSet.cs" :53 :12) // _validationResultErrors.Clear() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
