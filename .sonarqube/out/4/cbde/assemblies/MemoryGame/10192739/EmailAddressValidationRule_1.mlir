// Skipping function GetValidationRuleResult(), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.EmailAddressValidationRule.Validate$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :23 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetValidationRuleResult
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :25 :56) // GetValidationRuleResult() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :26 :15) // Not a variable of known type: validationRuleResult
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :26 :15) // validationRuleResult.Status (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%4 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :26 :46)
%5 = cmpi "eq", %3, %4 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :26 :15)
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :26 :15)

^1: // JumpBlock
%6 = constant 1 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :28 :23) // true
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :28 :16)

^2: // JumpBlock
%7 = constant 0 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :30 :19) // false
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :30 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.EmailAddressValidationRule.HasValidFormat$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :33 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :35 :48) // "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :35 :38) // new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :36 :34) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :36 :60) // Not a variable of known type: _emailAddress
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :36 :34) // regularExpression.IsMatch(_emailAddress) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :36 :17) // hasValidFormat
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :36 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :37 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :37 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.EmailAddressValidationRule.IsLessOrEqualsThan254CharactersLength$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :40 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :42 :19) // Not a variable of known type: _emailAddress
%1 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :42 :19) // _emailAddress.Length (SimpleMemberAccessExpression)
%2 = constant 254 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :42 :43)
%3 = cmpi "sle", %1, %2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :42 :19)
return %3 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\EmailAddressValidationRule.cs" :42 :12)

^1: // ExitBlock
cbde.unreachable

}
