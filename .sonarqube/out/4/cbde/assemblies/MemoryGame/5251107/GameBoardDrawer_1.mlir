func @_MemoryGame.Components.GameBoardDrawer.Draw$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :42 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawColumns
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :44 :12) // DrawColumns() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawRows
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :45 :12) // DrawRows() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawImages
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :46 :12) // DrawImages() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Components.GameBoardDrawer.DrawColumns$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :49 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :45)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :21) // numberOfCurrentColumn
cbde.store %0, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :21)
br ^1

^1: // BinaryBranchBlock
%2 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :48)
%3 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :72) // Not a variable of known type: NumberOfColumns
%4 = cmpi "slt", %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :48)
cond_br %4, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :48)

^2: // SimpleBlock
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :53 :16) // Not a variable of known type: GridToBeDrawnOn
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :53 :16) // GridToBeDrawnOn.ColumnDefinitions (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :53 :54) // new ColumnDefinition() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :53 :16) // GridToBeDrawnOn.ColumnDefinitions.Add(new ColumnDefinition()) (InvocationExpression)
br ^4

^4: // SimpleBlock
%9 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :89)
%10 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :89)
%11 = addi %9, %10 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :89)
cbde.store %11, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :51 :89)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.Components.GameBoardDrawer.DrawRows$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :57 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :59 :32) // Not a variable of known type: CardDeck
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :59 :32) // CardDeck.Cards (SimpleMemberAccessExpression)
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :59 :32) // CardDeck.Cards.Count (SimpleMemberAccessExpression)
%3 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :59 :16) // numberOfCards
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :59 :16)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :60 :39) // Not a variable of known type: GridToBeDrawnOn
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :60 :39) // GridToBeDrawnOn.ColumnDefinitions (SimpleMemberAccessExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :60 :39) // GridToBeDrawnOn.ColumnDefinitions.Count (SimpleMemberAccessExpression)
%7 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :60 :16) // numberOfColumnsDrawn
cbde.store %6, %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :60 :16)
// Entity from another assembly: Math
// Entity from another assembly: Convert
%8 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :74)
%9 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :90)
%10 = divis %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :74)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :57) // Convert.ToDouble(numberOfCards / numberOfColumnsDrawn) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :44) // Math.Ceiling(Convert.ToDouble(numberOfCards / numberOfColumnsDrawn)) (InvocationExpression)
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :39) // (int)Math.Ceiling(Convert.ToDouble(numberOfCards / numberOfColumnsDrawn)) (CastExpression)
%14 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :115)
%15 = addi %13, %14 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :39)
%16 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :16) // numberOfRequiredRows
cbde.store %15, %16 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :62 :16)
%17 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :42)
%18 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :21) // numberOfCurrentRow
cbde.store %17, %18 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :21)
br ^1

^1: // BinaryBranchBlock
%19 = cbde.load %18 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :45)
%20 = cbde.load %16 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :66)
%21 = cmpi "slt", %19, %20 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :45)
cond_br %21, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :45)

^2: // SimpleBlock
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :65 :16) // Not a variable of known type: GridToBeDrawnOn
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :65 :16) // GridToBeDrawnOn.RowDefinitions (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :65 :51) // new RowDefinition() (ObjectCreationExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :65 :16) // GridToBeDrawnOn.RowDefinitions.Add(new RowDefinition()) (InvocationExpression)
br ^4

^4: // SimpleBlock
%26 = cbde.load %18 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :88)
%27 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :88)
%28 = addi %26, %27 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :88)
cbde.store %28, %18 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :63 :88)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.Components.GameBoardDrawer.PopulateImageCards$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :69 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :71 :73) // Not a variable of known type: CardDeck
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :71 :73) // CardDeck.Cards (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :72 :38) // Not a variable of known type: CardDeck
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :72 :38) // CardDeck.BackImage (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :73 :60) // Not a variable of known type: backImageOfCards
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :73 :52) // new Uri(backImageOfCards) (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :73 :36) // new BitmapImage(new Uri(backImageOfCards)) (ObjectCreationExpression)
%10 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :42)
%11 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :21) // numberOfActualCard
cbde.store %10, %11 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :21)
br ^1

^1: // BinaryBranchBlock
%12 = cbde.load %11 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :45)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :66) // Not a variable of known type: cards
%14 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :66) // cards.Count (SimpleMemberAccessExpression)
%15 = cmpi "slt", %12, %14 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :45)
cond_br %15, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :45)

^2: // SimpleBlock
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :77 :75) // Not a variable of known type: CardDeck
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :77 :75) // CardDeck.Cards (SimpleMemberAccessExpression)
%18 = cbde.load %11 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :77 :90)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :77 :75) // CardDeck.Cards[numberOfActualCard] (ElementAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :79 :48) // Not a variable of known type: actualCard
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :79 :48) // actualCard.FrontImage (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :81 :65) // Not a variable of known type: frontImageOfActualCard
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :81 :57) // new Uri(frontImageOfActualCard) (ObjectCreationExpression)
%26 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :81 :41) // new BitmapImage(new Uri(frontImageOfActualCard)) (ObjectCreationExpression)
%28 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :82 :38) // new ImageCard()                  {                      FrontImage = frontImage,                      BackImage = backImage,                      Source = backImage,                      CardId = actualCard.CardId,                      CardDto = actualCard                  } (ObjectCreationExpression)
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :84 :33) // Not a variable of known type: frontImage
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :85 :32) // Not a variable of known type: backImage
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :86 :29) // Not a variable of known type: backImage
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :87 :29) // Not a variable of known type: actualCard
%33 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :87 :29) // actualCard.CardId (SimpleMemberAccessExpression)
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :88 :30) // Not a variable of known type: actualCard
%36 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :90 :16) // Not a variable of known type: ImageCards
%37 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :90 :31) // Not a variable of known type: imageCard
%38 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :90 :16) // ImageCards.Add(imageCard) (InvocationExpression)
br ^4

^4: // SimpleBlock
%39 = cbde.load %11 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :79)
%40 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :79)
%41 = addi %39, %40 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :79)
cbde.store %41, %11 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :75 :79)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.Components.GameBoardDrawer.DrawImages$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :95 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: PopulateImageCards
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :97 :12) // PopulateImageCards() (InvocationExpression)
%1 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :98 :27)
%2 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :98 :16) // rowIndex
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :98 :16)
%3 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :99 :30)
%4 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :99 :16) // columnIndex
cbde.store %3, %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :99 :16)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :100 :30) // Not a variable of known type: GridToBeDrawnOn
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :100 :30) // GridToBeDrawnOn.ColumnDefinitions (SimpleMemberAccessExpression)
%7 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :100 :30) // GridToBeDrawnOn.ColumnDefinitions.Count (SimpleMemberAccessExpression)
%8 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :100 :16) // columnCount
cbde.store %7, %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :100 :16)
%9 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :42)
%10 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :21) // numberOfActualCard
cbde.store %9, %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :21)
br ^1

^1: // BinaryBranchBlock
%11 = cbde.load %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :45)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :66) // Not a variable of known type: ImageCards
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :66) // ImageCards.Count (SimpleMemberAccessExpression)
%14 = cmpi "slt", %11, %13 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :45)
cond_br %14, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :45)

^2: // BinaryBranchBlock
%15 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :104 :20)
%16 = cbde.load %8 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :104 :35)
%17 = cmpi "sge", %15, %16 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :104 :20)
cond_br %17, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :104 :20)

^4: // SimpleBlock
%18 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :106 :34)
cbde.store %18, %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :106 :20)
%19 = cbde.load %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :107 :20)
%20 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :107 :20)
%21 = addi %19, %20 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :107 :20)
cbde.store %21, %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :107 :20)
br ^5

^5: // SimpleBlock
// Entity from another assembly: Grid
%22 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :110 :28) // Not a variable of known type: ImageCards
%23 = cbde.load %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :110 :39)
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :110 :28) // ImageCards[numberOfActualCard] (ElementAccessExpression)
%25 = cbde.load %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :110 :60)
%26 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :110 :16) // Grid.SetRow(ImageCards[numberOfActualCard], rowIndex) (InvocationExpression)
// Entity from another assembly: Grid
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :111 :31) // Not a variable of known type: ImageCards
%28 = cbde.load %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :111 :42)
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :111 :31) // ImageCards[numberOfActualCard] (ElementAccessExpression)
%30 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :111 :63)
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :111 :16) // Grid.SetColumn(ImageCards[numberOfActualCard], columnIndex) (InvocationExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :112 :16) // Not a variable of known type: ImageCards
%33 = cbde.load %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :112 :27)
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :112 :16) // ImageCards[numberOfActualCard] (ElementAccessExpression)
%35 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :112 :16) // ImageCards[numberOfActualCard].Margin (SimpleMemberAccessExpression)
%36 = constant 8 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :112 :70)
%37 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :112 :56) // new Thickness(8) (ObjectCreationExpression)
%38 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :113 :16) // Not a variable of known type: GridToBeDrawnOn
%39 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :113 :16) // GridToBeDrawnOn.Children (SimpleMemberAccessExpression)
%40 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :113 :45) // Not a variable of known type: ImageCards
%41 = cbde.load %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :113 :56)
%42 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :113 :45) // ImageCards[numberOfActualCard] (ElementAccessExpression)
%43 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :113 :16) // GridToBeDrawnOn.Children.Add(ImageCards[numberOfActualCard]) (InvocationExpression)
%44 = cbde.load %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :114 :16)
%45 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :114 :16)
%46 = addi %44, %45 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :114 :16)
cbde.store %46, %4 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :114 :16)
br ^6

^6: // SimpleBlock
%47 = cbde.load %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :84)
%48 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :84)
%49 = addi %47, %48 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :84)
cbde.store %49, %10 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :102 :84)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.Components.GameBoardDrawer.SetEventOnCardClicked$System.Windows.Input.MouseButtonEventHandler$(none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :123 :8) {
^entry (%_eventHandler : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :123 :42)
cbde.store %_eventHandler, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :123 :42)
br ^0

^0: // ForInitializerBlock
%1 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :42)
%2 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :21) // numberOfActualCard
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :21)
br ^1

^1: // BinaryBranchBlock
%3 = cbde.load %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :45)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :66) // Not a variable of known type: ImageCards
%5 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :66) // ImageCards.Count (SimpleMemberAccessExpression)
%6 = cmpi "slt", %3, %5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :45)
cond_br %6, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :45)

^2: // SimpleBlock
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :127 :16) // Not a variable of known type: ImageCards
%8 = cbde.load %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :127 :27)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :127 :16) // ImageCards[numberOfActualCard] (ElementAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :127 :16) // ImageCards[numberOfActualCard].MouseDown (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :127 :60) // Not a variable of known type: eventHandler
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :127 :16) // Binary expression on unsupported types ImageCards[numberOfActualCard].MouseDown += eventHandler
// No identifier name for binary assignment expression
br ^4

^4: // SimpleBlock
%13 = cbde.load %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :84)
%14 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :84)
%15 = addi %13, %14 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :84)
cbde.store %15, %2 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Components\\GameBoardDrawer.cs" :125 :84)
br ^1

^3: // ExitBlock
return

}
