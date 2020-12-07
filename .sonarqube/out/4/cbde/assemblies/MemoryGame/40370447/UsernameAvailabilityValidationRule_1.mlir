func @_MemoryGame.InputValidation.RegistryValidation.UsernameAvailabilityValidationRule.Validate$MemoryGame.InputValidation.RegistryValidation.RegistryData$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :5 :8) {
^entry (%_registryData : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :5 :45)
cbde.store %_registryData, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :5 :45)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :7 :24) // Not a variable of known type: registryData
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :7 :24) // registryData.Username (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UsernameIsAvailable
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :9 :16) // UsernameIsAvailable() (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :9 :16)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%4 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :11 :48)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :11 :23) // new ValidationRuleResult(ValidationRuleResult.SUCCESS) (ObjectCreationExpression)
return %5 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :11 :16)

^2: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%6 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :13 :44)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :13 :72) // "El nombre de usuario no está disponible" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :13 :19) // new ValidationRuleResult(ValidationRuleResult.ERROR, "El nombre de usuario no está disponible") (ObjectCreationExpression)
return %8 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :13 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.UsernameAvailabilityValidationRule.UsernameIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :19 :16) // new MemoryGameService.PlayerRegistryServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :21 :39) // Not a variable of known type: _playerRegistryServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :21 :88) // Not a variable of known type: _username
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :21 :39) // _playerRegistryServiceClient.UserNameIsAvailable(_username) (InvocationExpression)
%5 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :21 :17) // usernameIsAvailable
cbde.store %4, %5 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :21 :17)
%6 = cbde.load %5 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :23 :19)
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\UsernameAvailabilityValidationRule.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
