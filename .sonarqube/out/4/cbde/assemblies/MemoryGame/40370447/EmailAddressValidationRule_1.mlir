// Skipping function Validate(none), it contains poisonous unsupported syntaxes

func @_MemoryGame.InputValidation.RegistryValidation.EmailAddressValidationRule.HasValidFormat$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :19 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :21 :48) // "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$" (StringLiteralExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :21 :38) // new Regex("^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$") (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :22 :34) // Not a variable of known type: regularExpression
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :22 :60) // Not a variable of known type: _emailAddress
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :22 :34) // regularExpression.IsMatch(_emailAddress) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :22 :17) // hasValidFormat
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :22 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :23 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :23 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.InputValidation.RegistryValidation.EmailAddressValidationRule.IsLessOrEqualsThan254CharactersLength$$() -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :26 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :28 :19) // Not a variable of known type: _emailAddress
%1 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :28 :19) // _emailAddress.Length (SimpleMemberAccessExpression)
%2 = constant 254 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :28 :43)
%3 = cmpi "sle", %1, %2 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :28 :19)
return %3 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\InputValidation\\RegistryValidation\\EmailAddressValidationRule.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
