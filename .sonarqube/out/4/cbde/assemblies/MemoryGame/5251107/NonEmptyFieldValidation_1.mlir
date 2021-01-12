func @_MemoryGame.InputValidation.GenericValidations.NonEmptyFieldValidation.GetValidationRuleResult$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :19 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsNotEmpty
%0 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :21 :16) // IsNotEmpty() (InvocationExpression)
cond_br %0, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :21 :16)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%1 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :23 :48)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :23 :23) // new ValidationRuleResult(ValidationRuleResult.SUCCESS) (ObjectCreationExpression)
return %2 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :23 :16)

^2: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%3 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :25 :44)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :26 :16) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :26 :16) // Properties.Langs.Resources.EmptyField (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :25 :19) // new ValidationRuleResult(ValidationRuleResult.ERROR,                  Properties.Langs.Resources.EmptyField) (ObjectCreationExpression)
return %6 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :25 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.GenericValidations.NonEmptyFieldValidation.Validate$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :30 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :32 :18) // new NotImplementedException() (ObjectCreationExpression)
cbde.throw %0 :  none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :32 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.GenericValidations.NonEmptyFieldValidation.DoesNotContainWhiteSpaceAtTheBeggining$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :35 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :37 :36) // Not a variable of known type: _inputField
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :37 :36) // _inputField.Trim() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :38 :15) // Not a variable of known type: trimInputField
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :38 :15) // trimInputField.Length (SimpleMemberAccessExpression)
%5 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :38 :40)
%6 = cmpi "ne", %4, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :38 :15)
cond_br %6, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :38 :15)

^1: // JumpBlock
%7 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :40 :23) // true
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :40 :16)

^2: // JumpBlock
%8 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :42 :19) // false
return %8 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\NonEmptyFieldValidation.cs" :42 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function IsNotEmpty(), it contains poisonous unsupported syntaxes

