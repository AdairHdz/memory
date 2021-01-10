func @_Utilities.BCryptHashGenerator.GenerateEncryptedString$string.string$(none, none) -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :8) {
^entry (%_stringToBeEncrypted : none, %_salt : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :46)
cbde.store %_stringToBeEncrypted, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :46)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :74)
cbde.store %_salt, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :6 :74)
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :8 :36) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :8 :67) // Not a variable of known type: stringToBeEncrypted
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :8 :88) // Not a variable of known type: salt
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :8 :36) // BCrypt.Net.BCrypt.HashPassword(stringToBeEncrypted, salt) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :9 :19) // Not a variable of known type: hashedPassword
return %7 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :9 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Utilities.BCryptHashGenerator.Match$string.string$(none, none) -> i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :8) {
^entry (%_normalString : none, %_encryptedString : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :26)
cbde.store %_normalString, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :26)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :47)
cbde.store %_encryptedString, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :12 :47)
br ^0

^0: // JumpBlock
// Entity from another assembly: BCrypt
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :14 :27) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :14 :52) // Not a variable of known type: normalString
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :14 :66) // Not a variable of known type: encryptedString
%5 = cbde.unknown : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :14 :27) // BCrypt.Net.BCrypt.Verify(normalString, encryptedString) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :14 :17) // isMatch
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :14 :17)
%7 = cbde.load %6 : memref<i1> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :15 :19)
return %7 : i1 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Utilities.BCryptHashGenerator.GenerateSalt$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :18 :8) {
^entry :
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateRandomNumberBetweenRange
%0 = constant 6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :20 :64)
%1 = constant 12 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :20 :67)
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :20 :31) // GenerateRandomNumberBetweenRange(6, 12) (InvocationExpression)
%3 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :20 :16) // randomNumber
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :20 :16)
// Entity from another assembly: BCrypt
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :21 :19) // BCrypt.Net.BCrypt (SimpleMemberAccessExpression)
%5 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :21 :50)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :21 :19) // BCrypt.Net.BCrypt.GenerateSalt(randomNumber) (InvocationExpression)
return %6 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :21 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Utilities.BCryptHashGenerator.GenerateRandomNumberBetweenRange$int.int$(i32, i32) -> i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :24 :8) {
^entry (%_minimum : i32, %_maximum : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :24 :53)
cbde.store %_minimum, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :24 :53)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :24 :66)
cbde.store %_maximum, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :24 :66)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :26 :43) // new Random() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :27 :31) // Not a variable of known type: randomNumberGenerator
%5 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :27 :58)
%6 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :27 :67)
%7 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :27 :31) // randomNumberGenerator.Next(minimum, maximum) (InvocationExpression)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :27 :16) // randomNumber
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :27 :16)
%9 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :28 :19)
return %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\Utilities\\BCryptHashGenerator.cs" :28 :12)

^1: // ExitBlock
cbde.unreachable

}
