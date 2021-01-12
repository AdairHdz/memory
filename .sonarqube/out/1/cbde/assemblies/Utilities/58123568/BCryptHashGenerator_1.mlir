func @_Utilities.BCryptHashGenerator.GenerateEncryptedString$string.string$(none, none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :9 :8) {
^entry (%_stringToBeEncrypted : none, %_salt : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :9 :46)
cbde.store %_stringToBeEncrypted, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :9 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :9 :74)
cbde.store %_salt, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :9 :74)
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :11 :36) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :11 :67) // Not a variable of known type: stringToBeEncrypted
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :11 :88) // Not a variable of known type: salt
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :11 :36) // BCrypt.Net.BCrypt.HashPassword(stringToBeEncrypted, salt) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :19) // Not a variable of known type: hashedPassword
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Utilities.BCryptHashGenerator.GenerateSalt$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :18 :19) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%1 = constant 10 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :18 :50)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :18 :19) // BCrypt.Net.BCrypt.GenerateSalt(10) (InvocationExpression)
return %2 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :18 :12)

^1: // ExitBlock
cbde.unreachable

}
