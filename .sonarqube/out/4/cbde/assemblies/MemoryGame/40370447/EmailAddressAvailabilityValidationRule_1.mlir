func @_MemoryGame.InputValidation.RegistryValidation.EmailAddressAvailabilityValidationRule.Validate$MemoryGame.InputValidation.RegistryValidation.RegistryData$(none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :5 :8) {
^entry (%_registryData : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :5 :45)
cbde.store %_registryData, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :5 :45)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :7 :28) // Not a variable of known type: registryData
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :7 :28) // registryData.EmailAddress (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EmailAddressIsAvailable
%3 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :9 :16) // EmailAddressIsAvailable() (InvocationExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :9 :16)

^1: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%4 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :11 :48)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :11 :23) // new ValidationRuleResult(ValidationRuleResult.SUCCESS) (ObjectCreationExpression)
return %5 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :11 :16)

^2: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ValidationRuleResult
%6 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :14 :44)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :14 :72) // "El email ingresado" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :15 :16) // "ya se encuentra registrado en nuestra base de datos" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :14 :72) // Binary expression on unsupported types "El email ingresado" +                  "ya se encuentra registrado en nuestra base de datos"
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :14 :19) // new ValidationRuleResult(ValidationRuleResult.ERROR, "El email ingresado" +                  "ya se encuentra registrado en nuestra base de datos") (ObjectCreationExpression)
return %10 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :14 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.EmailAddressAvailabilityValidationRule.EmailAddressIsAvailable$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :21 :16) // new MemoryGameService.PlayerRegistryServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :24 :16) // Not a variable of known type: playerRegistryServiceClient
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :24 :68) // Not a variable of known type: _emailAddress
%4 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :24 :16) // playerRegistryServiceClient.EmailAddressIsAvailable(_emailAddress) (InvocationExpression)
%5 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :23 :17) // emailAddressIsAvailable
cbde.store %4, %5 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :23 :17)
%6 = cbde.load %5 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :26 :19)
return %6 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressAvailabilityValidationRule.cs" :26 :12)

^1: // ExitBlock
cbde.unreachable

}
