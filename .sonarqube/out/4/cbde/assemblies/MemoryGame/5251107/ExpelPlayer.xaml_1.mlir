// Skipping function WindowLoaded(none, none), it contains poisonous unsupported syntaxes

// Skipping function LoadUsernamesToBeVoted(), it contains poisonous unsupported syntaxes

// Skipping function ExpelPlayerButtonClicked(none, none), it contains poisonous unsupported syntaxes

func @_MemoryGame.ExpelPlayer.VoteToExpelPlayer$$() -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :121 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :123 :33) // Not a variable of known type: ExpelPlayerDataGrid
%1 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :123 :33) // ExpelPlayerDataGrid.SelectedItem (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :124 :15) // Not a variable of known type: selectedPlayer
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :124 :33) // null (NullLiteralExpression)
%5 = cbde.unknown : i1  loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :124 :15) // comparison of unknown type: selectedPlayer != null
cond_br %5, ^1, ^2 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :124 :15)

^1: // SimpleBlock
%6 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :126 :50) // Not a variable of known type: selectedPlayer
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :126 :50) // selectedPlayer.ToString() (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :127 :41) // new ExpelVoteDto()                  {                      Host = MatchHost,                      UsernameOfExpelPlayer = usernameOfSelectedPlayer,                      UsernameOfVoterPlayer = PlayerUsername                  } (ObjectCreationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :129 :27) // Not a variable of known type: MatchHost
%11 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :130 :44) // Not a variable of known type: usernameOfSelectedPlayer
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :131 :44) // Not a variable of known type: PlayerUsername
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :133 :16) // Not a variable of known type: _matchServiceClient
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :133 :48) // Not a variable of known type: expelVote
%16 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :133 :16) // _matchServiceClient.ExpelPlayer(expelVote) (InvocationExpression)
br ^3

^2: // SimpleBlock
// Entity from another assembly: MessageBox
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Properties
%17 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :137 :32) // Properties.Langs.Resources (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :137 :32) // Properties.Langs.Resources.SelectPlayerToBeExpeled (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :137 :16) // MessageBox.Show(Properties.Langs.Resources.SelectPlayerToBeExpeled) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MemoryGame.ExpelPlayer.BackButtonClicked$object.System.Windows.RoutedEventArgs$(none, none) -> () loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :142 :8) {
^entry (%_sender : none, %_e : none):
%0 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :142 :39)
cbde.store %_sender, %0 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :142 :39)
%1 = cbde.alloca none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :142 :54)
cbde.store %_e, %1 : memref<none> loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :142 :54)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :144 :42) // new GameOptions()              {                  MatchHost = this.MatchHost,                  NumberOfPlayersInMatch = this.NumberOfPlayersInMatch,                  PlayerUsername = this.PlayerUsername,                  Context = this.Context              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :146 :28) // this (ThisExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :146 :28) // this.MatchHost (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :147 :41) // this (ThisExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :147 :41) // this.NumberOfPlayersInMatch (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :148 :33) // this (ThisExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :148 :33) // this.PlayerUsername (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :149 :26) // this (ThisExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :149 :26) // this.Context (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :151 :12) // Not a variable of known type: gameOptionsView
%13 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :151 :12) // gameOptionsView.Show() (InvocationExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :152 :12) // this (ThisExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Adair Hernández\\source\\repos\\memory\\MemoryGame\\Views\\ExpelPlayer.xaml.cs" :152 :12) // this.Close() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
