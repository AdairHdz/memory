func @_MemoryGame.Views.Match.LoadCardDeck$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :25 :8) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :28 :16) // new MemoryGameService.CardDeckRetrieverServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :30 :24) // Not a variable of known type: cardDeckRetrieverServiceClient
%3 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :30 :75)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :30 :24) // cardDeckRetrieverServiceClient.GetCardDeckAndCards(1) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.DrawGameBoard$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :33 :8) {
^entry :
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: LoadCardDeck
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :35 :12) // LoadCardDeck() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawColumns
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :36 :12) // DrawColumns() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawRows
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :37 :12) // DrawRows() (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DrawImages
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :38 :12) // DrawImages() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.DrawRows$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :41 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :43 :32) // Not a variable of known type: _cardDeck
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :43 :32) // _cardDeck.Cards (SimpleMemberAccessExpression)
%2 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :43 :32) // _cardDeck.Cards.Count (SimpleMemberAccessExpression)
%3 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :43 :16) // numberOfCards
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :43 :16)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :44 :39) // Not a variable of known type: GameBoardGrid
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :44 :39) // GameBoardGrid.ColumnDefinitions (SimpleMemberAccessExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :44 :39) // GameBoardGrid.ColumnDefinitions.Count (SimpleMemberAccessExpression)
%7 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :44 :16) // numberOfColumnsDrawn
cbde.store %6, %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :44 :16)
// Entity from another assembly: Math
// Entity from another assembly: Convert
%8 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :74)
%9 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :90)
%10 = divis %8, %9 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :74)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :57) // Convert.ToDouble(numberOfCards / numberOfColumnsDrawn) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :44) // Math.Ceiling(Convert.ToDouble(numberOfCards / numberOfColumnsDrawn)) (InvocationExpression)
%13 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :39) // (int)Math.Ceiling(Convert.ToDouble(numberOfCards / numberOfColumnsDrawn)) (CastExpression)
%14 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :115)
%15 = addi %13, %14 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :39)
%16 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :16) // numberOfRequiredRows
cbde.store %15, %16 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :47 :16)
// Entity from another assembly: Console
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :48 :30) // "ROWS: " (StringLiteralExpression)
%18 = cbde.load %16 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :48 :41)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :48 :30) // Binary expression on unsupported types "ROWS: " + numberOfRequiredRows
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :48 :12) // Console.WriteLine("ROWS: " + numberOfRequiredRows) (InvocationExpression)
// Entity from another assembly: Console
%21 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :49 :30) // "CARTAS: " (StringLiteralExpression)
%22 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :49 :43)
%23 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :49 :30) // Binary expression on unsupported types "CARTAS: " + numberOfCards
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :49 :12) // Console.WriteLine("CARTAS: " + numberOfCards) (InvocationExpression)
%25 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :25)
%26 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :21) // i
cbde.store %25, %26 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :21)
br ^1

^1: // BinaryBranchBlock
%27 = cbde.load %26 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :28)
%28 = cbde.load %16 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :32)
%29 = cmpi "slt", %27, %28 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :28)
cond_br %29, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :28)

^2: // SimpleBlock
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :52 :16) // Not a variable of known type: GameBoardGrid
%31 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :52 :16) // GameBoardGrid.RowDefinitions (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :52 :49) // new RowDefinition() (ObjectCreationExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :52 :16) // GameBoardGrid.RowDefinitions.Add(new RowDefinition()) (InvocationExpression)
br ^4

^4: // SimpleBlock
%34 = cbde.load %26 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :54)
%35 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :54)
%36 = addi %34, %35 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :54)
cbde.store %36, %26 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :50 :54)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.Views.Match.DrawColumns$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :56 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :25)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :21) // i
cbde.store %0, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :21)
br ^1

^1: // BinaryBranchBlock
%2 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :28)
%3 = constant 5 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :32)
%4 = cmpi "slt", %2, %3 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :28)
cond_br %4, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :28)

^2: // SimpleBlock
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :60 :16) // Not a variable of known type: GameBoardGrid
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :60 :16) // GameBoardGrid.ColumnDefinitions (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :60 :52) // new ColumnDefinition() (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :60 :16) // GameBoardGrid.ColumnDefinitions.Add(new ColumnDefinition()) (InvocationExpression)
br ^4

^4: // SimpleBlock
%9 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :35)
%10 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :35)
%11 = addi %9, %10 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :35)
cbde.store %11, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :58 :35)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.Views.Match.DrawImages$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :64 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :66 :27)
%1 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :66 :16) // rowIndex
cbde.store %0, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :66 :16)
%2 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :67 :30)
%3 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :67 :16) // columnIndex
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :67 :16)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :68 :30) // Not a variable of known type: GameBoardGrid
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :68 :30) // GameBoardGrid.ColumnDefinitions (SimpleMemberAccessExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :68 :30) // GameBoardGrid.ColumnDefinitions.Count (SimpleMemberAccessExpression)
%7 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :68 :16) // columnCount
cbde.store %6, %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :68 :16)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :69 :73) // Not a variable of known type: _cardDeck
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :69 :73) // _cardDeck.Cards (SimpleMemberAccessExpression)
%11 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :42)
%12 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :21) // numberOfActualCard
cbde.store %11, %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :21)
br ^1

^1: // BinaryBranchBlock
%13 = cbde.load %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :45)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :66) // Not a variable of known type: cards
%15 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :66) // cards.Count (SimpleMemberAccessExpression)
%16 = cmpi "slt", %13, %15 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :45)
cond_br %16, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :45)

^2: // BinaryBranchBlock
%17 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :72 :19)
%18 = cbde.load %7 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :72 :34)
%19 = cmpi "sge", %17, %18 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :72 :19)
cond_br %19, ^4, ^5 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :72 :19)

^4: // SimpleBlock
%20 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :74 :34)
cbde.store %20, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :74 :20)
%21 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :75 :20)
%22 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :75 :20)
%23 = addi %21, %22 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :75 :20)
cbde.store %23, %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :75 :20)
br ^5

^5: // SimpleBlock
%24 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :78 :75) // Not a variable of known type: _cardDeck
%25 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :78 :75) // _cardDeck.Cards (SimpleMemberAccessExpression)
%26 = cbde.load %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :78 :91)
%27 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :78 :75) // _cardDeck.Cards[numberOfActualCard] (ElementAccessExpression)
%29 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :79 :48) // Not a variable of known type: actualCard
%30 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :79 :48) // actualCard.FrontImage (SimpleMemberAccessExpression)
%32 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :81 :58) // "pack://application:,,,/MemoryGameService;component/" (StringLiteralExpression)
%33 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :81 :114) // Not a variable of known type: frontImageOfActualCard
%34 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :81 :58) // Binary expression on unsupported types "pack://application:,,,/MemoryGameService;component/" + frontImageOfActualCard
%35 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :81 :50) // new Uri("pack://application:,,,/MemoryGameService;component/" + frontImageOfActualCard) (ObjectCreationExpression)
%36 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :81 :34) // new BitmapImage(new Uri("pack://application:,,,/MemoryGameService;component/" + frontImageOfActualCard)) (ObjectCreationExpression)
%38 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :83 :38) // new ImageCard()                  {                      Source = imageSource,                      CardId = actualCard.CardId                  } (ObjectCreationExpression)
%39 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :85 :29) // Not a variable of known type: imageSource
%40 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :86 :29) // Not a variable of known type: actualCard
%41 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :86 :29) // actualCard.CardId (SimpleMemberAccessExpression)
// Entity from another assembly: Grid
%43 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :89 :28) // Not a variable of known type: imageCard
%44 = cbde.load %1 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :89 :39)
%45 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :89 :16) // Grid.SetRow(imageCard, rowIndex) (InvocationExpression)
// Entity from another assembly: Grid
%46 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :90 :31) // Not a variable of known type: imageCard
%47 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :90 :42)
%48 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :90 :16) // Grid.SetColumn(imageCard, columnIndex) (InvocationExpression)
%49 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :91 :16) // Not a variable of known type: imageCard
%50 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :91 :16) // imageCard.Margin (SimpleMemberAccessExpression)
%51 = constant 8 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :91 :49)
%52 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :91 :35) // new Thickness(8) (ObjectCreationExpression)
%53 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :92 :16) // Not a variable of known type: imageCard
%54 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :92 :16) // imageCard.MouseDown (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetClickedCard
%55 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :92 :16) // Binary expression on unsupported types imageCard.MouseDown += GetClickedCard
// No identifier name for binary assignment expression
%56 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :93 :16) // Not a variable of known type: GameBoardGrid
%57 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :93 :16) // GameBoardGrid.Children (SimpleMemberAccessExpression)
%58 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :93 :43) // Not a variable of known type: imageCard
%59 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :93 :16) // GameBoardGrid.Children.Add(imageCard) (InvocationExpression)
%60 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :94 :16)
%61 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :94 :16)
%62 = addi %60, %61 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :94 :16)
cbde.store %62, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :94 :16)
br ^6

^6: // SimpleBlock
%63 = cbde.load %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :79)
%64 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :79)
%65 = addi %63, %64 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :79)
cbde.store %65, %12 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :70 :79)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.Views.Match.DisplayTimerValue$int$(i32) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :98 :8) {
^entry (%_timerValue : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :98 :38)
cbde.store %_timerValue, %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :98 :38)
br ^0

^0: // SimpleBlock
// Entity from another assembly: MessageBox
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :100 :28) // "Valor: " (StringLiteralExpression)
%2 = cbde.load %0 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :100 :40)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :100 :28) // Binary expression on unsupported types "Valor: " + timerValue
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :100 :12) // MessageBox.Show("Valor: " + timerValue) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MemoryGame.Views.Match.GetClickedCard$object.System.EventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :103 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :103 :36)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :103 :36)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :103 :51)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :103 :51)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :105 :37) // Not a variable of known type: sender
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :105 :26) // (ImageCard)sender (CastExpression)
%4 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :105 :25) // ((ImageCard)sender).CardId (SimpleMemberAccessExpression)
%5 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :105 :16) // cardId
cbde.store %4, %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :105 :16)
// Entity from another assembly: MessageBox
%6 = cbde.load %5 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :106 :28)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :106 :37) // "" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :106 :28) // Binary expression on unsupported types cardId + ""
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\Match.xaml.cs" :106 :12) // MessageBox.Show(cardId + "") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
