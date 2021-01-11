func @_Utilities.BCryptHashGenerator.GenerateEncryptedString$string.string$(none, none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :4 :8) {
^entry (%_stringToBeEncrypted : none, %_salt : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :4 :46)
cbde.store %_stringToBeEncrypted, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :4 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :4 :74)
cbde.store %_salt, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :4 :74)
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :36) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :67) // Not a variable of known type: stringToBeEncrypted
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :88) // Not a variable of known type: salt
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :36) // BCrypt.Net.BCrypt.HashPassword(stringToBeEncrypted, salt) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :7 :19) // Not a variable of known type: hashedPassword
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :7 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Utilities.BCryptHashGenerator.Match$string.string$(none, none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :10 :8) {
^entry (%_normalString : none, %_encryptedString : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :10 :26)
cbde.store %_normalString, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :10 :26)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :10 :47)
cbde.store %_encryptedString, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :10 :47)
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :27) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :52) // Not a variable of known type: normalString
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :66) // Not a variable of known type: encryptedString
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :27) // BCrypt.Net.BCrypt.Verify(normalString, encryptedString) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :17) // isMatch
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :13 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :13 :12)

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
