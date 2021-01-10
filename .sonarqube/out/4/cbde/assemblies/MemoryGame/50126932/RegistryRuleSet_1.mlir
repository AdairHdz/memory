func @_MemoryGame.InputValidation.RegistryValidation.RegistryRuleSet.AddValidationRule$MemoryGame.InputValidation.IValidationRule$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :19 :8) {
^entry (%_validationRule : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :19 :38)
cbde.store %_validationRule, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :19 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :21 :12) // Not a variable of known type: RegistryRules
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :21 :30) // Not a variable of known type: validationRule
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :21 :12) // RegistryRules.Add(validationRule) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function LookForValidationErrors(), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.RegistryRuleSet.AllValidationRulesHavePassed$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :37 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LookForValidationErrors
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :39 :12) // LookForValidationErrors() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :40 :16) // Not a variable of known type: _validationResultErrors
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :40 :16) // _validationResultErrors.Count (SimpleMemberAccessExpression)
%3 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :40 :49)
%4 = cmpi "eq", %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :40 :16)
cond_br %4, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :40 :16)

^1: // JumpBlock
%5 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :42 :23) // true
return %5 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :42 :16)

^2: // JumpBlock
%6 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :44 :19) // false
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :44 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.RegistryRuleSet.GetValidationResultErrors$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :47 :8) {
^entry :
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LookForValidationErrors
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :49 :12) // LookForValidationErrors() (InvocationExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :50 :19) // Not a variable of known type: _validationResultErrors
return %1 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :50 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.RegistryRuleSet.ClearValidationErrorsList$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :53 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :55 :12) // Not a variable of known type: _validationResultErrors
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\RegistryRuleSet.cs" :55 :12) // _validationResultErrors.Clear() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
