func @_MemoryGame.ScoreTable.GetBestScores$$() -> none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :16 :8) {
^entry :
br ^0

^0: // JumpBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :19 :16) // new MemoryGameService.ScoreServiceClient() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :21 :19) // Not a variable of known type: client
%3 = constant 10 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :21 :50)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :21 :19) // client.GetPlayersWithBestScore(10) (InvocationExpression)
return %4 : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :21 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_MemoryGame.ScoreTable.PopulateTableWithBestScores$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :25 :8) {
^entry :
br ^0

^0: // ForInitializerBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: GetBestScores
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :28 :30) // GetBestScores() (InvocationExpression)
%2 = constant 0 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :24)
%3 = cbde.alloca i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :20) // i
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :20)
br ^1

^1: // BinaryBranchBlock
%4 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :27)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :31) // Not a variable of known type: playerScoreDTOs
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :31) // playerScoreDTOs.Length (SimpleMemberAccessExpression)
%7 = cmpi "slt", %4, %6 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :27)
cond_br %7, ^2, ^3 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :27)

^2: // SimpleBlock
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :31 :27) // new PlayerScore                  {                      Username = playerScoreDTOs[i].Username,                      Score = playerScoreDTOs[i].TotalScore                  } (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :33 :31) // Not a variable of known type: playerScoreDTOs
%10 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :33 :47)
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :33 :31) // playerScoreDTOs[i] (ElementAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :33 :31) // playerScoreDTOs[i].Username (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :34 :28) // Not a variable of known type: playerScoreDTOs
%14 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :34 :44)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :34 :28) // playerScoreDTOs[i] (ElementAccessExpression)
%16 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :34 :28) // playerScoreDTOs[i].TotalScore (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :36 :16) // Not a variable of known type: ScoreDataGrid
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :36 :16) // ScoreDataGrid.Items (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :36 :40) // Not a variable of known type: data
%21 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :36 :16) // ScoreDataGrid.Items.Add(data) (InvocationExpression)
br ^4

^4: // SimpleBlock
%22 = cbde.load %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :55)
%23 = constant 1 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :55)
%24 = addi %22, %23 : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :55)
cbde.store %24, %3 : memref<i32> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :29 :55)
br ^1

^3: // ExitBlock
return

}
func @_MemoryGame.ScoreTable.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :40 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :40 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :40 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :40 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :40 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :42 :36) // new MainMenu() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :43 :12) // Not a variable of known type: mainMenuView
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :43 :12) // mainMenuView.Show() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :44 :12) // this (ThisExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ScoreTable.xaml.cs" :44 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
