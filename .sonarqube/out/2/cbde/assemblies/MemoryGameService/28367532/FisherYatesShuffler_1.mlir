func @_MemoryGameService.Utilities.FisherYatesShuffler$ShufflingCollection$.Shuffle$System.Collections.Generic.IList$ShufflingCollection$$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :16 :8) {
^entry (%_collectionToShuffle : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :16 :28)
cbde.store %_collectionToShuffle, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :16 :28)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :18 :28) // Not a variable of known type: collectionToShuffle
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :18 :28) // collectionToShuffle.Count (SimpleMemberAccessExpression)
%3 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :18 :56)
%4 = subi %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :18 :28)
%5 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :18 :16) // lastIndex
cbde.store %4, %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :18 :16)
br ^1

^1: // BinaryBranchBlock
%6 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :19 :19)
%7 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :19 :31)
%8 = cmpi "sgt", %6, %7 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :19 :19)
cond_br %8, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :19 :19)

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateRandomNumberBetweenRange
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :21 :67)
%10 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :21 :70)
%11 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :21 :34) // GenerateRandomNumberBetweenRange(0, lastIndex) (InvocationExpression)
%12 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :21 :20) // randomIndex
cbde.store %11, %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :21 :20)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :22 :41) // Not a variable of known type: collectionToShuffle
%14 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :22 :61)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :22 :41) // collectionToShuffle[lastIndex] (ElementAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :23 :16) // Not a variable of known type: collectionToShuffle
%18 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :23 :36)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :23 :16) // collectionToShuffle[lastIndex] (ElementAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :23 :49) // Not a variable of known type: collectionToShuffle
%21 = cbde.load %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :23 :69)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :23 :49) // collectionToShuffle[randomIndex] (ElementAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :24 :16) // Not a variable of known type: collectionToShuffle
%24 = cbde.load %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :24 :36)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :24 :16) // collectionToShuffle[randomIndex] (ElementAccessExpression)
%26 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :24 :51) // Not a variable of known type: auxiliaryContainer
%27 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :25 :16)
%28 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :25 :16)
%29 = subi %27, %28 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :25 :16)
cbde.store %29, %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :25 :16)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGameService.Utilities.FisherYatesShuffler$ShufflingCollection$.GenerateRandomNumberBetweenRange$int.int$(i32, i32) -> i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :29 :8) {
^entry (%_minimum : i32, %_maximum : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :29 :53)
cbde.store %_minimum, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :29 :53)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :29 :66)
cbde.store %_maximum, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :29 :66)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :31 :43) // new Random() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :32 :31) // Not a variable of known type: randomNumberGenerator
%5 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :32 :58)
%6 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :32 :67)
%7 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :32 :31) // randomNumberGenerator.Next(minimum, maximum) (InvocationExpression)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :32 :16) // randomNumber
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :32 :16)
%9 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :33 :19)
return %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Utilities\\FisherYatesShuffler.cs" :33 :12)

^1: // ExitBlock
cbde.unreachable

}
