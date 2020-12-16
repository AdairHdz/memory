// Skipping function GetCardDeckAndCards(i32), it contains poisonous unsupported syntaxes

func @_MemoryGameService.Services.MemoryGameService.ShuffleCards$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :49 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :51 :35) // Not a variable of known type: _cardDeckDTO
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :51 :35) // _cardDeckDTO.Cards (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :52 :28) // Not a variable of known type: cards
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :52 :28) // cards.Count() (InvocationExpression)
%5 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :52 :44)
%6 = subi %4, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :52 :28)
%7 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :52 :16) // lastIndex
cbde.store %6, %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :52 :16)
br ^1

^1: // BinaryBranchBlock
%8 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :53 :19)
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :53 :31)
%10 = cmpi "sgt", %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :53 :19)
cond_br %10, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :53 :19)

^2: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GenerateRandomNumberBetweenRange
%11 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :55 :67)
%12 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :55 :70)
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :55 :34) // GenerateRandomNumberBetweenRange(0, lastIndex) (InvocationExpression)
%14 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :55 :20) // randomIndex
cbde.store %13, %14 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :55 :20)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :56 :45) // Not a variable of known type: cards
%16 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :56 :51)
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :56 :45) // cards[lastIndex] (ElementAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :57 :16) // Not a variable of known type: cards
%20 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :57 :22)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :57 :16) // cards[lastIndex] (ElementAccessExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :57 :35) // Not a variable of known type: cards
%23 = cbde.load %14 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :57 :41)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :57 :35) // cards[randomIndex] (ElementAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :58 :16) // Not a variable of known type: cards
%26 = cbde.load %14 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :58 :22)
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :58 :16) // cards[randomIndex] (ElementAccessExpression)
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :58 :37) // Not a variable of known type: auxiliaryContainer
%29 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :59 :16)
%30 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :59 :16)
%31 = subi %29, %30 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :59 :16)
cbde.store %31, %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :59 :16)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGameService.Services.MemoryGameService.GenerateRandomNumberBetweenRange$int.int$(i32, i32) -> i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :63 :8) {
^entry (%_minimum : i32, %_maximum : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :63 :53)
cbde.store %_minimum, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :63 :53)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :63 :66)
cbde.store %_maximum, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :63 :66)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :65 :43) // new Random() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :66 :31) // Not a variable of known type: randomNumberGenerator
%5 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :66 :58)
%6 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :66 :67)
%7 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :66 :31) // randomNumberGenerator.Next(minimum, maximum) (InvocationExpression)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :66 :16) // randomNumber
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :66 :16)
%9 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :67 :19)
return %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGameService\\Services\\CardDeckRetrieverService.cs" :67 :12)

^1: // ExitBlock
cbde.unreachable

}
