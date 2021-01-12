Ñ
iC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccountModifiabilityService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface (
IAccountModifiabilityService 1
{ 
["" 	
OperationContract""	 
]"" 
bool## 
SetNewPassword## 
(## .
"PasswordModificationCredentialsDto## >+
passwordModificationCredentials##? ^
)##^ _
;##_ `
[-- 	
OperationContract--	 
]-- 
bool.. 
ChangeUsername.. 
(.. 
string.. "
emailAddress..# /
,../ 0
string..1 7
newUsername..8 C
)..C D
;..D E
}// 
}00 ã
hC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccountVerificationService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[   
ServiceContract   
]   
public!! 

	interface!! '
IAccountVerificationService!! 0
{"" 
[** 	
OperationContract**	 
]** 
bool++  
SetAccountAsVerified++ !
(++! "
string++" (
emailAddress++) 5
)++5 6
;++6 7
[55 	
OperationContract55	 
]55 
bool66 $
AssignNewActivationToken66 %
(66% &
string66& ,
emailAddress66- 9
,669 :
string66; A
activationToken66B Q
)66Q R
;66R S
[@@ 	
OperationContract@@	 
]@@ 
boolAA "
AssignNewRecoveryTokenAA #
(AA# $
stringAA$ *
emailAddressAA+ 7
,AA7 8
stringAA9 ?
recoveryTokenAA@ M
)AAM N
;AAN O
[KK 	
OperationContractKK	 
]KK 
boolLL !
VerifyActivationTokenLL "
(LL" #
stringLL# )
emailAddressLL* 6
,LL6 7
stringLL8 >
activationTokenLL? N
)LLN O
;LLO P
[VV 	
OperationContractVV	 
]VV 
boolWW 
VerifyRecoveryTokenWW  
(WW  !
stringWW! '
emailAddressWW( 4
,WW4 5
stringWW6 <
activationTokenWW= L
)WWL M
;WWM N
}XX 
}YY ™
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ICardDeckRetrieverService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[   
ServiceContract   
]   
public!! 

	interface!! %
ICardDeckRetrieverService!! .
{"" 
[** 	
OperationContract**	 
]** 
CardDeckDto++ 
GetCardDeckAndCards++ '
(++' (
int++( +

cardDeckId++, 6
)++6 7
;++7 8
[44 	
OperationContract44	 
]44 
IList55 
<55 
CardDeckInfoDto55 
>55 
GetCardDecksInfo55 /
(55/ 0
)550 1
;551 2
}66 
}77 ƒ
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ILobbyService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[!! 
ServiceContract!! 
(!! 
SessionMode!!  
=!!! "
SessionMode!!# .
.!!. /
Required!!/ 7
,!!7 8
CallbackContract"" 
="" 
typeof"" !
(""! "!
ILobbyServiceCallback""" 7
)""7 8
)""8 9
]""9 :
public## 

	interface## 
ILobbyService## "
{$$ 
[** 	
OperationContract**	 
(** 
IsOneWay** #
=**$ %
true**& *
)*** +
]**+ ,
void++ 
	JoinLobby++ 
(++ 
string++ 
host++ "
,++" #
string++$ *
username+++ 3
)++3 4
;++4 5
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 

LeaveLobby22 
(22 
string22 
host22 #
,22# $
string22% +
username22, 4
)224 5
;225 6
[88 	
OperationContract88	 
]88 
IList99 
<99 
string99 
>99 #
GetActivePlayersInLobby99 -
(99- .
string99. 4
host995 9
)999 :
;99: ;
[>> 	
OperationContract>>	 
(>> 
IsOneWay>> #
=>>$ %
true>>& *
)>>* +
]>>+ ,
void?? 
	StartGame?? 
(?? 
string?? 
host?? "
)??" #
;??# $
}@@ 
[EE 
ServiceContractEE 
]EE 
publicFF 

	interfaceFF !
ILobbyServiceCallbackFF *
{GG 
[LL 	
OperationContractLL	 
(LL 
IsOneWayLL #
=LL$ %
trueLL& *
)LL* +
]LL+ ,
voidMM "
NotifyNewPlayerEnteredMM #
(MM# $
stringMM$ *
usernameMM+ 3
)MM3 4
;MM4 5
[RR 	
OperationContractRR	 
(RR 
IsOneWayRR #
=RR$ %
trueRR& *
)RR* +
]RR+ ,
voidSS 
NotifyPlayerLeftSS 
(SS 
stringSS $
usernameSS% -
)SS- .
;SS. /
[XX 	
OperationContractXX	 
(XX 
IsOneWayXX #
=XX$ %
trueXX& *
)XX* +
]XX+ ,
voidYY "
TakePlayersToMatchViewYY #
(YY# $
IListYY$ )
<YY) *
stringYY* 0
>YY0 1
playersInMatchYY2 @
)YY@ A
;YYA B
[]] 	
OperationContract]]	 
(]] 
IsOneWay]] #
=]]$ %
true]]& *
)]]* +
]]]+ ,
void^^ !
TakePlayersOutOfLobby^^ "
(^^" #
)^^# $
;^^$ %
}__ 
}`` ú
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMatchCreationService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface !
IMatchCreationService *
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
CreateNewMatch 
( 
MatchDto $
gameMatchDto% 1
)1 2
;2 3
} 
} π
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMatchDiscoveryService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface "
IMatchDiscoveryService +
{ 
["" 	
OperationContract""	 
]"" 
IList## 
<## 
MatchDto## 
>## 
GetActiveMatches## (
(##( )
)##) *
;##* +
[-- 	
FaultContract--	 
(-- 
typeof-- 
(-- "
MatchAccessDeniedFault-- 4
)--4 5
)--5 6
]--6 7
[.. 	
OperationContract..	 
].. 
bool// 
CanJoin// 
(// 
string// 
	matchHost// %
)//% &
;//& '
}00 
}11 ï
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IPlayerRegistryService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface "
IPlayerRegistryService +
{ 
[&& 	
OperationContract&&	 
]&& 
bool'' 
RegisterNewPlayer'' 
('' 
	PlayerDto'' (
	playerDTO'') 2
,''2 3
string''4 :
salt''; ?
)''? @
;''@ A
[// 	
OperationContract//	 
]// 
bool00 #
EmailAddressIsAvailable00 $
(00$ %
string00% +
emailAddress00, 8
)008 9
;009 :
[88 	
OperationContract88	 
]88 
bool99 
UserNameIsAvailable99  
(99  !
string99! '
username99( 0
)990 1
;991 2
}:: 
};; Ê
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[

 
DataContract

 
]

 
public 

class 
CardDeckDto 
{ 
[ 	

DataMember	 
] 
public 
int 

CardDeckId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

DataMember	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
string 
	BackImage 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public   
int   
NumberOfPairs    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
[$$ 	

DataMember$$	 
]$$ 
public%% 
IList%% 
<%% 
CardDto%% 
>%% 
Cards%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
}&& 
}'' Œ
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckInfoDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[		 
DataContract		 
]		 
public

 

class

 
CardDeckInfoDto

  
{ 
[ 	

DataMember	 
] 
public 
int 

CardDeckId 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

DataMember	 
] 
public 
string 
CardDeckName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ∏
^C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[		 
DataContract		 
]		 
public

 

class

 
CardDto

 
{ 
[ 	

DataMember	 
] 
public 
int 
CardId 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
string 

FrontImage  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} û
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardPairDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[		 
DataContract		 
]		 
public

 

class

 
CardPairDto

 
{ 
[ 	

DataMember	 
] 
public 
int 
IndexOfCard1 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
int 
IndexOfCard2 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
bool 
BothCardsAreEqual %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ≠
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\ExpelVoteDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[		 
DataContract		 
]		 
public

 

class

 
ExpelVoteDto

 
{ 
[ 	

DataMember	 
] 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
string !
UsernameOfExpelPlayer +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 	

DataMember	 
] 
public 
string !
UsernameOfVoterPlayer +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} ˆ
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\MatchDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
MatchDto 
{		 
public 
int 
MaxNumberOfPlayers %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
CardDeckDto 
CardDeckDto &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

HasStarted 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
ServiceLobby 
Lobby !
{" #
get$ '
;' (
set) ,
;, -
}. /
public!! 
int!! 

TotalPairs!! 
{!! 
get!!  #
;!!# $
set!!% (
;!!( )
}!!* +
public&& 
MatchDto&& 
(&& 
)&& 
{'' 	
Lobby(( 
=(( 
new(( 
ServiceLobby(( $
((($ %
)((% &
;((& '
})) 	
}** 
}++ ∆
yC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PasswordModificationCredentialsDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[		 
DataContract		 
]		 
public

 

class

 .
"PasswordModificationCredentialsDto

 3
{ 
[ 	

DataMember	 
] 
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
string 
Salt 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ó
]C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Logic\ServicePlayerInLobby.cs
	namespace 	
MemoryGameService
 
. 
Logic !
{ 
public		 

class		  
ServicePlayerInLobby		 %
{

 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public !
ILobbyServiceCallback $

Connection% /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} ‘,
UC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Logic\ServiceLobby.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public++ 

class++ 
ServiceLobby++ 
{,, 
private-- 
IList-- 
<--  
ServicePlayerInLobby-- *
>--* +$
_playersConnectedToLobby--, D
;--D E
public22 
ServiceLobby22 
(22 
)22 
{33 	$
_playersConnectedToLobby44 $
=44% &
new44' *
List44+ /
<44/ 0 
ServicePlayerInLobby440 D
>44D E
(44E F
)44F G
;44G H
}55 	
public<< 
void<< 
AddPlayerToLobby<< $
(<<$ %
string<<% +
host<<, 0
,<<0 1
string<<2 8
username<<9 A
)<<A B
{== 	 
ServicePlayerInLobby>>  
lobbyRequestDto>>! 0
=>>1 2
new>>3 6 
ServicePlayerInLobby>>7 K
(>>K L
)>>L M
{?? 
Host@@ 
=@@ 
host@@ 
,@@ 
UsernameAA 
=AA 
usernameAA #
,AA# $

ConnectionBB 
=BB 
OperationContextBB -
.BB- .
CurrentBB. 5
.BB5 6
GetCallbackChannelBB6 H
<BBH I!
ILobbyServiceCallbackBBI ^
>BB^ _
(BB_ `
)BB` a
}CC 
;CC $
_playersConnectedToLobbyDD $
.DD$ %
AddDD% (
(DD( )
lobbyRequestDtoDD) 8
)DD8 9
;DD9 :
}EE 	
publicKK 
voidKK !
RemovePlayerFromLobbyKK )
(KK) *
stringKK* 0'
usernameOfPlayerToBeRemovedKK1 L
)KKL M
{LL 	
foreachMM 
(MM 
varMM 
playerInLobbyMM %
inMM& ($
_playersConnectedToLobbyMM) A
)MMA B
{NN 
ifOO 
(OO '
usernameOfPlayerToBeRemovedOO /
.OO/ 0
EqualsOO0 6
(OO6 7
playerInLobbyOO7 D
.OOD E
UsernameOOE M
)OOM N
)OON O
{PP $
_playersConnectedToLobbyQQ ,
.QQ, -
RemoveQQ- 3
(QQ3 4
playerInLobbyQQ4 A
)QQA B
;QQB C
breakRR 
;RR 
}SS 
}TT 
}UU 	
public[[ 
IList[[ 
<[[  
ServicePlayerInLobby[[ )
>[[) *&
GetPlayersConnectedToLobby[[+ E
([[E F
)[[F G
{\\ 	
return]] $
_playersConnectedToLobby]] +
;]]+ ,
}^^ 	
publicdd 
IListdd 
<dd 
stringdd 
>dd 1
%GetUsernamesOfPlayersConnectedToLobbydd B
(ddB C
)ddC D
{ee 	
IListff 
<ff 
stringff 
>ff .
"usernamesOfPlayersConnectedToLobbyff <
=ff= >
newff? B
ListffC G
<ffG H
stringffH N
>ffN O
(ffO P
)ffP Q
;ffQ R
foreachgg 
(gg 
vargg "
playerConnectedToLobbygg /
ingg0 2$
_playersConnectedToLobbygg3 K
)ggK L
{hh .
"usernamesOfPlayersConnectedToLobbyii 2
.ii2 3
Addii3 6
(ii6 7"
playerConnectedToLobbyii7 M
.iiM N
UsernameiiN V
)iiV W
;iiW X
}jj 
returnkk .
"usernamesOfPlayersConnectedToLobbykk 5
;kk5 6
}ll 	
publicqq 
voidqq ,
 NotifyPlayersMatchHasBeenDeletedqq 4
(qq4 5
)qq5 6
{rr 	
foreachss 
(ss 
varss 
playerInLobbyss &
inss' )$
_playersConnectedToLobbyss* B
)ssB C
{tt 
varuu 
channeluu 
=uu 
playerInLobbyuu +
.uu+ ,

Connectionuu, 6
;uu6 7
channelvv 
.vv !
TakePlayersOutOfLobbyvv -
(vv- .
)vv. /
;vv/ 0
}ww 
}xx 	
public~~ 
void~~ $
NotifyOnePlayerLeftLobby~~ ,
(~~, -
string~~- 3
username~~4 <
)~~< =
{ 	
foreach
ÄÄ 
(
ÄÄ 
var
ÄÄ 
playerInLobby
ÄÄ &
in
ÄÄ' )&
_playersConnectedToLobby
ÄÄ* B
)
ÄÄB C
{
ÅÅ 
var
ÇÇ 
channel
ÇÇ 
=
ÇÇ 
playerInLobby
ÇÇ +
.
ÇÇ+ ,

Connection
ÇÇ, 6
;
ÇÇ6 7
channel
ÉÉ 
.
ÉÉ 
NotifyPlayerLeft
ÉÉ (
(
ÉÉ( )
username
ÉÉ) 1
)
ÉÉ1 2
;
ÉÉ2 3
}
ÑÑ 
}
ÖÖ 	
public
ãã 
void
ãã )
NotifyNewPlayerEnteredLobby
ãã /
(
ãã/ 0
string
ãã0 6
username
ãã7 ?
)
ãã? @
{
åå 	
foreach
çç 
(
çç 
var
çç 
playerInLobby
çç &
in
çç' )&
_playersConnectedToLobby
çç* B
)
ççB C
{
éé 
var
èè 
channel
èè 
=
èè 
playerInLobby
èè +
.
èè+ ,

Connection
èè, 6
;
èè6 7
channel
êê 
.
êê $
NotifyNewPlayerEntered
êê .
(
êê. /
username
êê/ 7
)
êê7 8
;
êê8 9
}
ëë 
}
íí 	
}
îî 
}ïï ´
kC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerCredentialsDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[		 
DataContract		 
]		 
public

 

class

  
PlayerCredentialsDto

 %
{ 
[ 	

DataMember	 
] 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 	
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[		 
DataContract		 
]		 
public

 

class

 
	PlayerDto

 
{ 
[ 	

DataMember	 
] 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 
VerificationToken '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
}   
}!! í
gC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInMatchDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
PlayerInMatchDto !
{ 
public## 
string## 
Username## 
{##  
get##! $
;##$ %
set##& )
;##) *
}##+ ,
public'' 
int'' 
Score'' 
{'' 
get'' 
;'' 
set''  #
;''# $
}''% &
public++ 
bool++ 
HasActiveTurn++ !
{++" #
get++$ '
;++' (
set++) ,
;++, -
}++. /
=++0 1
false++2 7
;++7 8
public// 
int// 
ExpulsionVotes// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
}11 
}22 §
eC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerScoreDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
PlayerScoreDto 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

TotalScore 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˇ
hC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerMovementDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
PlayerMovementDto "
{ 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
HasFormedAPair "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
	CardIndex 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
MovementsLeft  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ì
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\TokenInfoDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
TokenInfoDto 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Token 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Subject 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Body 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ü
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccessibilityService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[++ 
ServiceContract++ 
]++ 
public,, 

	interface,, !
IAccessibilityService,, *
{-- 
[55 	
OperationContract55	 
]55 
bool66 

IsVerified66 
(66 
string66 
username66 '
)66' (
;66( )
[?? 	
OperationContract??	 
]?? 
bool@@ 
ItsRegistered@@ 
(@@ 
string@@ !
emailAddress@@" .
)@@. /
;@@/ 0
[II 	
FaultContractII	 
(II 
typeofII 
(II  
NonExistentUserFaultII 2
)II2 3
)II3 4
]II4 5
[JJ 	
OperationContractJJ	 
]JJ 
stringKK 
GetUserEmailAddressKK "
(KK" #
stringKK# )
usernameKK* 2
)KK2 3
;KK3 4
[UU 	
FaultContractUU	 
(UU 
typeofUU 
(UU  
NonExistentUserFaultUU 2
)UU2 3
)UU3 4
]UU4 5
[VV 	
OperationContractVV	 
]VV 
stringWW 
GetSaltWW 
(WW 
stringWW 
usernameWW &
)WW& '
;WW' (
[aa 	
OperationContractaa	 
]aa 
boolbb 
HasAccessRightsbb 
(bb 
stringbb #
usernamebb$ ,
,bb, -
stringbb. 4
passwordbb5 =
)bb= >
;bb> ?
[ii 	
OperationContractii	 
]ii 
stringjj 
GetUsernamejj 
(jj 
stringjj !
emailAddressjj" .
)jj. /
;jj/ 0
}kk 
}ll œ
\C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMailingService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface 
IMailingService $
{ 
[ 	
OperationContract	 
] 
void !
SendVerificationToken "
(" #
TokenInfoDto# /!
verificationTokenInfo0 E
)E F
;F G
} 
} ¬.
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMatchService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[:: 
ServiceContract:: 
(:: 
CallbackContract:: %
=::& '
typeof::( .
(::. /!
IMatchServiceCallback::/ D
)::D E
)::E F
]::F G
public;; 

	interface;; 
IMatchService;; "
{<< 
[AA 	
OperationContractAA	 
(AA 
IsOneWayAA #
=AA$ %
trueAA& *
)AA* +
]AA+ ,
voidBB #
NotifyCardWasUncovereddBB $
(BB$ %
PlayerMovementDtoBB% 6
playerMovementDtoBB7 H
)BBH I
;BBI J
[II 	
OperationContractII	 
(II 
IsOneWayII #
=II$ %
trueII& *
)II* +
]II+ ,
voidJJ 

EnterMatchJJ 
(JJ 
stringJJ 
hostJJ #
,JJ# $
stringJJ% +
usernameJJ, 4
)JJ4 5
;JJ5 6
[RR 	
OperationContractRR	 
(RR 
IsOneWayRR #
=RR$ %
trueRR& *
)RR* +
]RR+ ,
voidSS 
EndTurnSS 
(SS 
stringSS 
hostSS  
,SS  !
stringSS" (
usernameSS) 1
,SS1 2
CardPairDtoSS3 >
cardPairDtoSS? J
)SSJ K
;SSK L
[ZZ 	
OperationContractZZ	 
]ZZ 
IList[[ 
<[[ 
PlayerInMatchDto[[ 
>[[ &
GetPlayersConnectedToMatch[[  :
([[: ;
string[[; A
host[[B F
)[[F G
;[[G H
[aa 	
OperationContractaa	 
(aa 
IsOneWayaa #
=aa$ %
trueaa& *
)aa* +
]aa+ ,
voidbb 
NotifyMatchHasEndedbb  
(bb  !
stringbb! '
hostbb( ,
)bb, -
;bb- .
[ii 	
OperationContractii	 
(ii 
IsOneWayii #
=ii$ %
trueii& *
)ii* +
]ii+ ,
voidjj 

LeaveMatchjj 
(jj 
stringjj 
hostjj #
,jj# $
stringjj% +
usernamejj, 4
)jj4 5
;jj5 6
[rr 	
OperationContractrr	 
(rr 
IsOneWayrr #
=rr$ %
truerr& *
)rr* +
]rr+ ,
voidss 
ExpelPlayerss 
(ss 
ExpelVoteDtoss %
	expelVotess& /
)ss/ 0
;ss0 1
[zz 	
OperationContractzz	 
]zz 
IList{{ 
<{{ 
string{{ 
>{{ 1
%GetUsernamesOfPlayersConnectedToMatch{{ ;
({{; <
string{{< B
host{{C G
){{G H
;{{H I
[
ÉÉ 	
OperationContract
ÉÉ	 
]
ÉÉ 
IList
ÑÑ 
<
ÑÑ 
string
ÑÑ 
>
ÑÑ 
GetPlayersVoted
ÑÑ %
(
ÑÑ% &
string
ÑÑ& ,
host
ÑÑ- 1
,
ÑÑ1 2
string
ÑÑ3 9
username
ÑÑ: B
)
ÑÑB C
;
ÑÑC D
}
ÖÖ 
[
ää 
ServiceContract
ää 
]
ää 
public
ãã 

	interface
ãã #
IMatchServiceCallback
ãã *
{
åå 
[
ëë 	
OperationContract
ëë	 
(
ëë 
IsOneWay
ëë #
=
ëë$ %
true
ëë& *
)
ëë* +
]
ëë+ ,
void
íí 
UncoverCardd
íí 
(
íí 
int
íí 
	cardIndex
íí '
)
íí' (
;
íí( )
[
ôô 	
OperationContract
ôô	 
(
ôô 
IsOneWay
ôô #
=
ôô$ %
true
ôô& *
)
ôô* +
]
ôô+ ,
void
öö  
NotifyTurnHasEnded
öö 
(
öö  
string
öö  &
username
öö' /
,
öö/ 0
CardPairDto
öö1 <
cardPairDto
öö= H
)
ööH I
;
ööI J
[
†† 	
OperationContract
††	 
(
†† 
IsOneWay
†† #
=
††$ %
true
††& *
)
††* +
]
††+ ,
void
°° 
ShowWinners
°° 
(
°° 
string
°° 
winner
°°  &
)
°°& '
;
°°' (
[
®® 	
OperationContract
®®	 
(
®® 
IsOneWay
®® #
=
®®$ %
true
®®& *
)
®®* +
]
®®+ ,
void
©© "
NotifyPlayerWasExpel
©© !
(
©©! "
string
©©" (!
expelPlayerUsername
©©) <
,
©©< =
IList
©©> C
<
©©C D
int
©©D G
>
©©G H
cardsUncovered
©©I W
)
©©W X
;
©©X Y
[
ØØ 	
OperationContract
ØØ	 
(
ØØ 
IsOneWay
ØØ #
=
ØØ$ %
true
ØØ& *
)
ØØ* +
]
ØØ+ ,
void
∞∞ "
EndTurnOfExpelPlayer
∞∞ !
(
∞∞! "
string
∞∞" ( 
nextPlayerUsername
∞∞) ;
)
∞∞; <
;
∞∞< =
[
∑∑ 	
OperationContract
∑∑	 
(
∑∑ 
IsOneWay
∑∑ #
=
∑∑$ %
true
∑∑& *
)
∑∑* +
]
∑∑+ ,
void
∏∏ $
NotifyPlayerLeaveMatch
∏∏ #
(
∏∏# $
string
∏∏$ *
username
∏∏+ 3
,
∏∏3 4
IList
∏∏5 :
<
∏∏: ;
int
∏∏; >
>
∏∏> ?
cardsUncovered
∏∏@ N
)
∏∏N O
;
∏∏O P
[
ΩΩ 	
OperationContract
ΩΩ	 
(
ΩΩ 
IsOneWay
ΩΩ #
=
ΩΩ$ %
true
ΩΩ& *
)
ΩΩ* +
]
ΩΩ+ ,
void
ææ 
MatchHasEnded
ææ 
(
ææ 
)
ææ 
;
ææ 
}
øø 
}¡¡ Ö
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IScoreService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface 
IScoreService "
{ 
[ 	
OperationContract	 
] 
List 
< 
PlayerScoreDto 
> #
GetPlayersWithBestScore 4
(4 5
int5 8(
numberOfPlayersToBeRetrieved9 U
)U V
;V W
}   
}!! ±
\C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ITokenGenerator.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface 
ITokenGenerator $
{ 
[ 	
OperationContract	 
] 
string 
GenerateToken 
( 
int  
length! '
)' (
;( )
} 
} ˘
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\MatchAccessDeniedFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[		 
DataContract		 
]		 
public

 

class

 "
MatchAccessDeniedFault

 '
:

( )

TypedFault

* 4
{ 
public "
MatchAccessDeniedFault %
(% &
)& '
{ 	
Error 
= 
$str Z
;Z [
} 	
} 
} Û
^C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\NonExistentUserFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[		 
DataContract		 
]		 
public

 

class

  
NonExistentUserFault

 %
:

& '

TypedFault

( 2
{ 
public  
NonExistentUserFault #
(# $
)$ %
{ 	
Error 
= 
$str [
;[ \
} 	
} 
} ˙	
TC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\TypedFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[		 
DataContract		 
]		 
public

 

abstract

 
class

 

TypedFault

 $
{ 
[ 	

DataMember	 
] 
public 
string 
Error 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

DataMember	 
] 
public 
string 
Details 
{ 
get  #
;# $
set% (
;( )
}* +
	protected 

TypedFault 
( 
) 
{  
}! "
	protected"" 

TypedFault"" 
("" 
string"" #
error""$ )
,"") *
string""+ 1
details""2 9
)""9 :
{## 	
Error$$ 
=$$ 
error$$ 
;$$ 
Details%% 
=%% 
details%% 
;%% 
}&& 	
}'' 
}(( Ÿ
TC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Logic\ServiceCard.cs
	namespace 	
MemoryGameService
 
. 
Logic !
{ 
public 

class 
ServiceCard 
{ 
public 
int 
CardId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 

FrontImage  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} È
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Logic\ServiceCardDeck.cs
	namespace 	
MemoryGameService
 
. 
Logic !
{ 
public		 

class		 
ServiceCardDeck		  
{

 
public 
int 

CardDeckId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	BackImage 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
NumberOfPairs  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
IList 
< 
ServiceCard  
>  !
Cards" '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
}   —F
UC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Logic\ServiceMatch.cs
	namespace 	
MemoryGameService
 
. 
Logic !
{ 
public11 

class11 
ServiceMatch11 
{22 
public66 
int66 
MaxNumberOfPlayers66 %
{66& '
get66( +
;66+ ,
set66- 0
;660 1
}662 3
public:: 
ServiceCardDeck:: 
ServiceCardDeck:: .
{::/ 0
get::1 4
;::4 5
set::6 9
;::9 :
}::; <
public>> 
string>> 
Host>> 
{>> 
get>>  
;>>  !
set>>" %
;>>% &
}>>' (
publicBB 
boolBB 

HasStartedBB 
{BB  
getBB! $
;BB$ %
setBB& )
;BB) *
}BB+ ,
publicFF 
ServiceLobbyFF 
LobbyFF !
{FF" #
getFF$ '
;FF' (
setFF) ,
;FF, -
}FF. /
privateJJ 
IListJJ 
<JJ 
ServicePlayerJJ #
>JJ# $
_playersJJ% -
;JJ- .
publicNN 
intNN 

TotalPairsNN 
{NN 
getNN  #
;NN# $
setNN% (
;NN( )
}NN* +
publicSS 
ServiceMatchSS 
(SS 
)SS 
{TT 	
LobbyUU 
=UU 
newUU 
ServiceLobbyUU $
(UU$ %
)UU% &
;UU& '
_playersVV 
=VV 
newVV 
ListVV 
<VV  
ServicePlayerVV  -
>VV- .
(VV. /
)VV/ 0
;VV0 1
}WW 	
public]] 
IList]] 
<]] 
ServicePlayer]] "
>]]" #&
GetPlayersConnectedToMatch]]$ >
(]]> ?
)]]? @
{^^ 	
return__ 
_players__ 
;__ 
}`` 	
publicff 
IListff 
<ff 
stringff 
>ff 1
%GetUsernamesOfPlayersConnectedToMatchff B
(ffB C
)ffC D
{gg 	
IListhh 
<hh 
stringhh 
>hh .
"usernamesOfPlayersConnectedToMatchhh <
=hh= >
newhh? B
ListhhC G
<hhG H
stringhhH N
>hhN O
(hhO P
)hhP Q
;hhQ R
foreachii 
(ii 
varii 
playerii 
inii  "
_playersii# +
)ii+ ,
{jj .
"usernamesOfPlayersConnectedToMatchkk 2
.kk2 3
Addkk3 6
(kk6 7
playerkk7 =
.kk= >
Usernamekk> F
)kkF G
;kkG H
}ll 
returnmm .
"usernamesOfPlayersConnectedToMatchmm 5
;mm5 6
}nn 	
publictt 
voidtt 
	AddPlayertt 
(tt 
ServicePlayertt +
playertt, 2
)tt2 3
{uu 	
_playersvv 
.vv 
Addvv 
(vv 
playervv 
)vv  
;vv  !
}ww 	
public~~ 
ServicePlayer~~ 
	GetPlayer~~ &
(~~& '
string~~' -
username~~. 6
)~~6 7
{ 	
ServicePlayer
ÄÄ 
playerRetrieved
ÄÄ )
=
ÄÄ* +
null
ÄÄ, 0
;
ÄÄ0 1
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
player
ÅÅ 
in
ÅÅ  "
_players
ÅÅ# +
)
ÅÅ+ ,
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
player
ÉÉ 
.
ÉÉ 
Username
ÉÉ #
.
ÉÉ# $
Equals
ÉÉ$ *
(
ÉÉ* +
username
ÉÉ+ 3
)
ÉÉ3 4
)
ÉÉ4 5
{
ÑÑ 
return
ÖÖ 
player
ÖÖ !
;
ÖÖ! "
}
ÜÜ 
}
áá 
return
àà 
playerRetrieved
àà "
;
àà" #
}
ââ 	
public
éé 
void
éé 

StartMatch
éé 
(
éé 
)
éé  
{
èè 	
IList
êê 
<
êê "
ServicePlayerInLobby
êê &
>
êê& '%
playersConnectedToLobby
êê( ?
=
êê@ A
Lobby
êêB G
.
êêG H(
GetPlayersConnectedToLobby
êêH b
(
êêb c
)
êêc d
;
êêd e
IList
ëë 
<
ëë 
string
ëë 
>
ëë 0
"usernamesOfPlayersConnectedToLobby
ëë <
=
ëë= >
Lobby
ëë? D
.
ëëD E3
%GetUsernamesOfPlayersConnectedToLobby
ëëE j
(
ëëj k
)
ëëk l
;
ëël m
foreach
íí 
(
íí 
var
íí 
playerInLobby
íí &
in
íí' )%
playersConnectedToLobby
íí* A
)
ííA B
{
ìì 
var
îî 
channel
îî 
=
îî 
playerInLobby
îî +
.
îî+ ,

Connection
îî, 6
;
îî6 7
channel
ïï 
.
ïï $
TakePlayersToMatchView
ïï .
(
ïï. /0
"usernamesOfPlayersConnectedToLobby
ïï/ Q
)
ïïQ R
;
ïïR S
}
ññ 

HasStarted
óó 
=
óó 
true
óó 
;
óó 
}
òò 	
public
ûû 
ServicePlayer
ûû $
GetPlayerWithBestScore
ûû 3
(
ûû3 4
)
ûû4 5
{
üü 	
ServicePlayer
†† !
playerWithBestScore
†† -
=
††. /
_players
††0 8
[
††8 9
$num
††9 :
]
††: ;
;
††; <
for
¢¢ 
(
¢¢ 
int
¢¢ 
currentIndex
¢¢ !
=
¢¢" #
$num
¢¢$ %
;
¢¢% &
currentIndex
¢¢' 3
<
¢¢4 5
_players
¢¢6 >
.
¢¢> ?
Count
¢¢? D
-
¢¢E F
$num
¢¢G H
;
¢¢H I
currentIndex
¢¢J V
++
¢¢V X
)
¢¢X Y
{
££ 
if
§§ 
(
§§ !
playerWithBestScore
§§ '
.
§§' (
Score
§§( -
<
§§. /
_players
§§0 8
[
§§8 9
currentIndex
§§9 E
+
§§F G
$num
§§H I
]
§§I J
.
§§J K
Score
§§K P
)
§§P Q
{
•• !
playerWithBestScore
¶¶ '
=
¶¶( )
_players
¶¶* 2
[
¶¶2 3
currentIndex
¶¶3 ?
+
¶¶@ A
$num
¶¶B C
]
¶¶C D
;
¶¶D E
}
ßß 
}
®® 
return
©© !
playerWithBestScore
©© &
;
©©& '
}
™™ 	
public
±± 
int
±± 
AddExpelVote
±± 
(
±±  
string
±±  &
playerUsername
±±' 5
)
±±5 6
{
≤≤ 	
int
≥≥ 
playerExpelVotes
≥≥  
=
≥≥! "
$num
≥≥# $
;
≥≥$ %
foreach
¥¥ 
(
¥¥ 
var
¥¥ 
player
¥¥ 
in
¥¥  "
_players
¥¥# +
)
¥¥+ ,
{
µµ 
if
∂∂ 
(
∂∂ 
player
∂∂ 
.
∂∂ 
Username
∂∂ #
.
∂∂# $
Equals
∂∂$ *
(
∂∂* +
playerUsername
∂∂+ 9
)
∂∂9 :
)
∂∂: ;
{
∑∑ 
player
∏∏ 
.
∏∏ 
ExpulsionVotes
∏∏ )
++
∏∏) +
;
∏∏+ ,
playerExpelVotes
ππ $
=
ππ% &
player
ππ' -
.
ππ- .
ExpulsionVotes
ππ. <
;
ππ< =
}
∫∫ 
}
ªª 
return
ΩΩ 
playerExpelVotes
ΩΩ #
;
ΩΩ# $
}
ææ 	
public
ƒƒ 
void
ƒƒ 
RemovePlayer
ƒƒ  
(
ƒƒ  !
string
ƒƒ! '
playerUsername
ƒƒ( 6
)
ƒƒ6 7
{
≈≈ 	
ServicePlayer
∆∆ 
playerToRemove
∆∆ (
=
∆∆) *
this
∆∆+ /
.
∆∆/ 0
	GetPlayer
∆∆0 9
(
∆∆9 :
playerUsername
∆∆: H
)
∆∆H I
;
∆∆I J
_players
«« 
.
«« 
Remove
«« 
(
«« 
playerToRemove
«« *
)
««* +
;
««+ ,
}
»» 	
public
ŒŒ 
ServicePlayer
ŒŒ $
GetPlyerWithActiveTurn
ŒŒ 3
(
ŒŒ3 4
)
ŒŒ4 5
{
œœ 	
ServicePlayer
–– "
playerWithActiveTurn
–– .
=
––/ 0
null
––1 5
;
––5 6
foreach
—— 
(
—— 
var
—— 
player
—— 
in
——  "
_players
——# +
)
——+ ,
{
““ 
if
”” 
(
”” 
player
”” 
.
”” 
HasActiveTurn
”” (
)
””( )
{
‘‘ "
playerWithActiveTurn
’’ (
=
’’) *
player
’’+ 1
;
’’1 2
}
÷÷ 
}
◊◊ 
return
ŸŸ "
playerWithActiveTurn
ŸŸ '
;
ŸŸ' (
}
⁄⁄ 	
}
€€ 
}‹‹ ˚
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Logic\ServicePlayer.cs
	namespace 	
MemoryGameService
 
. 
Logic !
{ 
public!! 

class!! 
ServicePlayer!! 
{"" 
public&& 
string&& 
Username&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public** 
int** 
Score** 
{** 
get** 
;** 
set**  #
;**# $
}**% &
public.. 
bool.. 
HasActiveTurn.. !
{.." #
get..$ '
;..' (
set..) ,
;.., -
}... /
=..0 1
false..2 7
;..7 8
public22 !
IMatchServiceCallback22 $"
MatchServiceConnection22% ;
{22< =
get22> A
;22A B
set22C F
;22F G
}22H I
public66 
int66 
ExpulsionVotes66 !
{66" #
get66$ '
;66' (
set66) ,
;66, -
}66. /
private:: 
IList:: 
<:: 
string:: 
>:: 
_playersVoted:: +
;::+ ,
private>> 
IList>> 
<>> 
int>> 
>>> 
_uncoveredCards>> *
;>>* +
publicCC 
ServicePlayerCC 
(CC 
)CC 
{DD 	
_playersVotedEE 
=EE 
newEE 
ListEE  $
<EE$ %
stringEE% +
>EE+ ,
(EE, -
)EE- .
;EE. /
_uncoveredCardsFF 
=FF 
newFF !
ListFF" &
<FF& '
intFF' *
>FF* +
(FF+ ,
)FF, -
;FF- .
}GG 	
publicMM 
IListMM 
<MM 
stringMM 
>MM 
GetPlayersVotedMM ,
(MM, -
)MM- .
{NN 	
returnOO 
_playersVotedOO  
;OO  !
}PP 	
publicVV 
voidVV 
AddPlayerVotedVV "
(VV" #
stringVV# )
playerUsernameVV* 8
)VV8 9
{WW 	
_playersVotedXX 
.XX 
AddXX 
(XX 
playerUsernameXX ,
)XX, -
;XX- .
}YY 	
public__ 
IList__ 
<__ 
int__ 
>__ 
GetUncoveredCards__ +
(__+ ,
)__, -
{`` 	
returnaa 
_uncoveredCardsaa "
;aa" #
}bb 	
publichh 
voidhh 
AddUncoveredCardhh $
(hh$ %
inthh% (
	cardIndexhh) 2
)hh2 3
{ii 	
_uncoveredCardsjj 
.jj 
Addjj 
(jj  
	cardIndexjj  )
)jj) *
;jj* +
}kk 	
publicpp 
voidpp 
RemoveUncoveredCardpp '
(pp' (
)pp( )
{qq 	
intrr 
indexOfLastCardrr 
=rr  !
_uncoveredCardsrr" 1
.rr1 2
Countrr2 7
-rr8 9
$numrr: ;
;rr; <
_uncoveredCardsss 
.ss 
Removess "
(ss" #
_uncoveredCardsss# 2
[ss2 3
indexOfLastCardss3 B
]ssB C
)ssC D
;ssD E
}tt 	
}uu 
}vv ƒ
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 ,
)

, -
]

- .
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str .
). /
]/ 0
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *

ConfigFile* 4
=5 6
$str7 G
,G H
WatchI N
=O P
trueQ U
)U V
]V W
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *©l
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccesibilityService.cs
	namespace

 	
MemoryGameService


 
.

 
Services

 $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,!
IAccessibilityService- B
{ 
private 
readonly 
log4net  
.  !
ILog! %
_logger& -
=. /
log4net0 7
.7 8

LogManager8 B
.B C
	GetLoggerC L
(L M
$strM e
)e f
;f g
public 
string 
GetUserEmailAddress )
() *
string* 0
username1 9
)9 :
{ 	
var 

unitOfWork 
= 
new  

UnitOfWork! +
(+ ,
new, /
MemoryGameContext0 A
(A B
)B C
)C D
;D E
try 
{ 
Account 
accountRetrieved (
=) *

unitOfWork+ 5
.5 6
Accounts6 >
.> ?
FindFirstOccurence? Q
(Q R
accountR Y
=>Z \
account] d
.d e
Usernamee m
==n p
usernameq y
)y z
;z {
if 
( 
accountRetrieved #
!=$ &
null' +
)+ ,
{ 
string 
emailAddress '
=( )
accountRetrieved* :
.: ;
EmailAddress; G
;G H
return 
emailAddress '
;' (
} 
throw 
new 
FaultException (
<( ) 
NonExistentUserFault) =
>= >
(> ?
new? B 
NonExistentUserFaultC W
(W X
)X Y
{ 
Error 
= 
$str [
,[ \
Details   
=   
$str   _
}!! 
)!! 
;!! 
}"" 
catch## 
(## 
SqlException## 
sqlException##  ,
)##, -
{$$ 
_logger%% 
.%% 
Fatal%% 
(%% 
$str%% ]
+%%^ _
$str&& F
+&&G H
$str'' )
,'') *
sqlException''+ 7
)''7 8
;''8 9
throw(( 
;(( 
})) 
catch** 
(** 
EntityException** "
entityException**# 2
)**2 3
{++ 
_logger,, 
.,, 
Fatal,, 
(,, 
$str,, k
+,,l m
$str-- j
+--k l
$str.. 9
,..9 :
entityException..; J
)..J K
;..K L
throw// 
;// 
}00 
finally11 
{22 

unitOfWork33 
.33 
Dispose33 "
(33" #
)33# $
;33$ %
}44 
}55 	
public88 
string88 
GetUsername88 !
(88! "
string88" (
emailAddress88) 5
)885 6
{99 	
var:: 

unitOfWork:: 
=:: 
new::  

UnitOfWork::! +
(::+ ,
new::, /
MemoryGameContext::0 A
(::A B
)::B C
)::C D
;::D E
try;; 
{<< 
Account== 
accountRetrieved== (
===) *

unitOfWork==+ 5
.==5 6
Accounts==6 >
.==> ?
Get==? B
(==B C
emailAddress==C O
)==O P
;==P Q
return>> 
accountRetrieved>> '
.>>' (
Username>>( 0
;>>0 1
}?? 
catch@@ 
(@@ 
SqlException@@ 
sqlException@@  ,
)@@, -
{AA 
_loggerBB 
.BB 
FatalBB 
(BB 
$strBB ]
+BB^ _
$strCC _
+CC` a
$strDD F
,DDF G
sqlExceptionDDH T
)DDT U
;DDU V
throwEE 
;EE 
}FF 
catchGG 
(GG 
EntityExceptionGG "
entityExceptionGG# 2
)GG2 3
{HH 
_loggerII 
.II 
FatalII 
(II 
$strII k
+IIl m
$strJJ j
+JJk l
$strKK 1
,KK1 2
entityExceptionKK3 B
)KKB C
;KKC D
throwLL 
;LL 
}MM 
finallyNN 
{OO 

unitOfWorkPP 
.PP 
DisposePP "
(PP" #
)PP# $
;PP$ %
}QQ 
}RR 	
publicVV 
boolVV 

IsVerifiedVV 
(VV 
stringVV %
usernameVV& .
)VV. /
{WW 	
varXX 

unitOfWorkXX 
=XX 
newXX  

UnitOfWorkXX! +
(XX+ ,
newXX, /
MemoryGameContextXX0 A
(XXA B
)XXB C
)XXC D
;XXD E
tryYY 
{ZZ 
Account[[ 
accountRetrieved[[ (
=[[) *

unitOfWork[[+ 5
.[[5 6
Accounts[[6 >
.[[> ?
FindFirstOccurence[[? Q
([[Q R
account[[R Y
=>[[Z \
account[[] d
.[[d e
Username[[e m
==[[n p
username[[q y
&&[[z |
account	[[} Ñ
.
[[Ñ Ö
EmailWasVerified
[[Ö ï
)
[[ï ñ
;
[[ñ ó
if\\ 
(\\ 
accountRetrieved\\ $
!=\\% '
null\\( ,
)\\, -
{]] 
return^^ 
true^^ 
;^^  
}__ 
return`` 
false`` 
;`` 
}aa 
catchbb 
(bb 
SqlExceptionbb 
sqlExceptionbb  ,
)bb, -
{cc 
_loggerdd 
.dd 
Fataldd 
(dd 
$strdd o
+ddp q
$stree p
+eeq r
$strff 4
,ff4 5
sqlExceptionff6 B
)ffB C
;ffC D
throwgg 
;gg 
}hh 
catchii 
(ii 
EntityExceptionii "
entityExceptionii# 2
)ii2 3
{jj 
_loggerkk 
.kk 
Fatalkk 
(kk 
$strkk u
+kkv w
$strll _
+ll` a
$strmm 0
,mm0 1
entityExceptionmm2 A
)mmA B
;mmB C
thrownn 
;nn 
}oo 
finallypp 
{qq 

unitOfWorkrr 
.rr 
Disposerr "
(rr" #
)rr# $
;rr$ %
}ss 
}tt 	
publicww 
boolww 
ItsRegisteredww !
(ww! "
stringww" (
emailAddressww) 5
)ww5 6
{xx 	
varyy 

unitOfWorkyy 
=yy 
newyy  

UnitOfWorkyy! +
(yy+ ,
newyy, /
MemoryGameContextyy0 A
(yyA B
)yyB C
)yyC D
;yyD E
tryzz 
{{{ 
Account|| 
accountRetrieved|| (
=||) *

unitOfWork||+ 5
.||5 6
Accounts||6 >
.||> ?
Get||? B
(||B C
emailAddress||C O
)||O P
;||P Q
if}} 
(}} 
accountRetrieved}} $
!=}}% '
null}}( ,
)}}, -
{~~ 
return 
true 
;  
}
ÄÄ 
return
ÅÅ 
false
ÅÅ 
;
ÅÅ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
SqlException
ÉÉ 
sqlException
ÉÉ  ,
)
ÉÉ, -
{
ÑÑ 
_logger
ÖÖ 
.
ÖÖ 
Fatal
ÖÖ 
(
ÖÖ 
$str
ÖÖ o
+
ÖÖp q
$str
ÜÜ e
,
ÜÜe f
sqlException
ÜÜg s
)
ÜÜs t
;
ÜÜt u
throw
áá 
;
áá 
}
àà 
catch
ââ 
(
ââ 
EntityException
ââ "
entityException
ââ# 2
)
ââ2 3
{
ää 
_logger
ãã 
.
ãã 
Fatal
ãã 
(
ãã 
$str
ãã u
+
ããv w
$str
åå _
+
åå` a
$str
çç 3
,
çç3 4
entityException
çç5 D
)
ççD E
;
ççE F
throw
éé 
;
éé 
}
èè 
finally
êê 
{
ëë 

unitOfWork
íí 
.
íí 
Dispose
íí "
(
íí" #
)
íí# $
;
íí$ %
}
ìì 
}
îî 	
public
óó 
string
óó 
GetSalt
óó 
(
óó 
string
óó $
username
óó% -
)
óó- .
{
òò 	

UnitOfWork
ôô 

unitOfWork
ôô !
=
ôô" #
new
ôô$ '

UnitOfWork
ôô( 2
(
ôô2 3
new
ôô3 6
MemoryGameContext
ôô7 H
(
ôôH I
)
ôôI J
)
ôôJ K
;
ôôK L
try
öö 
{
õõ 
Account
úú 
retrievedAccount
úú (
=
úú) *

unitOfWork
úú+ 5
.
úú5 6
Accounts
úú6 >
.
úú> ? 
FindFirstOccurence
úú? Q
(
úúQ R
account
úúR Y
=>
úúZ \
account
úú] d
.
úúd e
Username
úúe m
==
úún p
username
úúq y
)
úúy z
;
úúz {
if
ùù 
(
ùù 
retrievedAccount
ùù $
!=
ùù% '
null
ùù( ,
)
ùù, -
{
ûû 
return
üü 
retrievedAccount
üü +
.
üü+ ,
Salt
üü, 0
;
üü0 1
}
†† 
throw
°° 
new
°° 
FaultException
°° (
<
°°( )"
NonExistentUserFault
°°) =
>
°°= >
(
°°> ?
new
°°? B"
NonExistentUserFault
°°C W
(
°°W X
)
°°X Y
{
¢¢ 
Error
££ 
=
££ 
$str
££ [
,
££[ \
Details
§§ 
=
§§ 
$str
§§ _
}
•• 
)
•• 
;
•• 
}
¶¶ 
catch
ßß 
(
ßß 
SqlException
ßß 
sqlException
ßß  ,
)
ßß, -
{
®® 
_logger
©© 
.
©© 
Fatal
©© 
(
©© 
$str
©© n
+
©©o p
$str
™™ `
,
™™` a
sqlException
™™b n
)
™™n o
;
™™o p
throw
´´ 
;
´´ 
}
¨¨ 
catch
≠≠ 
(
≠≠ 
EntityException
≠≠ !
entityException
≠≠" 1
)
≠≠1 2
{
ÆÆ 
_logger
ØØ 
.
ØØ 
Fatal
ØØ 
(
ØØ 
$str
ØØ u
+
ØØv w
$str
∞∞ _
+
∞∞` a
$str
±± .
,
±±. /
entityException
±±0 ?
)
±±? @
;
±±@ A
throw
≤≤ 
;
≤≤ 
}
≥≥ 
finally
¥¥ 
{
µµ 

unitOfWork
∂∂ 
.
∂∂ 
Dispose
∂∂ "
(
∂∂" #
)
∂∂# $
;
∂∂$ %
}
∑∑ 
}
∏∏ 	
public
ºº 
bool
ºº 
HasAccessRights
ºº #
(
ºº# $
string
ºº$ *
username
ºº+ 3
,
ºº3 4
string
ºº5 ;
password
ºº< D
)
ººD E
{
ΩΩ 	

UnitOfWork
ææ 

unitOfWork
ææ !
=
ææ" #
new
ææ$ '

UnitOfWork
ææ( 2
(
ææ2 3
new
ææ3 6
MemoryGameContext
ææ7 H
(
ææH I
)
ææI J
)
ææJ K
;
ææK L
try
øø 
{
¿¿ 
Account
¡¡ 
retrievedAccount
¡¡ (
=
¡¡) *

unitOfWork
¡¡+ 5
.
¡¡5 6
Accounts
¡¡6 >
.
¡¡> ? 
FindFirstOccurence
¡¡? Q
(
¡¡Q R
account
¡¡R Y
=>
¡¡Z \
account
¡¡] d
.
¡¡d e
Username
¡¡e m
==
¡¡n p
username
¡¡q y
&&
¡¡z |
account¡¡} Ñ
.¡¡Ñ Ö
Password¡¡Ö ç
==¡¡é ê
password¡¡ë ô
)¡¡ô ö
;¡¡ö õ
if
¬¬ 
(
¬¬ 
retrievedAccount
¬¬ #
!=
¬¬$ &
null
¬¬' +
)
¬¬+ ,
{
√√ 
return
ƒƒ 
true
ƒƒ 
;
ƒƒ  
}
≈≈ 
return
∆∆ 
false
∆∆ 
;
∆∆ 
}
«« 
catch
»» 
(
»» 
SqlException
»» 
sqlException
»»  ,
)
»», -
{
…… 
_logger
   
.
   
Fatal
   
(
   
$str
   
+  Ä Å
$str
ÀÀ Z
,
ÀÀZ [
sqlException
ÀÀ\ h
)
ÀÀh i
;
ÀÀi j
throw
ÃÃ 
;
ÃÃ 
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ 
EntityException
ŒŒ "
entityException
ŒŒ# 2
)
ŒŒ2 3
{
œœ 
_logger
–– 
.
–– 
Fatal
–– 
(
–– 
$str
–– u
+
––v w
$str
—— _
+
——` a
$str
““ 6
,
““6 7
entityException
““8 G
)
““G H
;
““H I
throw
”” 
;
”” 
}
‘‘ 
finally
’’ 
{
÷÷ 

unitOfWork
◊◊ 
.
◊◊ 
Dispose
◊◊ "
(
◊◊" #
)
◊◊# $
;
◊◊$ %
}
ÿÿ 
}
ŸŸ 	
}
⁄⁄ 
}€€ Ï(
gC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountModifiabilityService.cs
	namespace		 	
MemoryGameService		
 
.		 
Services		 $
{

 
public 

partial 
class 
MemoryGameService *
:+ ,(
IAccountModifiabilityService- I
{ 
public 
bool 
ChangeUsername "
(" #
string# )
emailAddress* 6
,6 7
string8 >
newUsername? J
)J K
{ 	

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
try 
{ 
Account 
account 
=  !

unitOfWork" ,
., -
Accounts- 5
.5 6
Get6 9
(9 :
emailAddress: F
)F G
;G H
if 
( 
account 
!= 
null "
)" #
{ 
account 
. 
Username $
=% &
newUsername' 2
;2 3
int 
rowsModified $
=% &

unitOfWork' 1
.1 2
Complete2 :
(: ;
); <
;< =
return 
rowsModified '
==( *
$num+ ,
;, -
} 
return 
false 
; 
} 
catch 
( 
SqlException 
sqlException  ,
), -
{ 
_logger 
. 
Fatal 
( 
$str |
+} ~
$str   ^
+  _ `
$str!! )
,!!) *
sqlException!!+ 7
)!!7 8
;!!8 9
throw"" 
;"" 
}## 
catch$$ 
($$ 
EntityException$$ "
entityException$$# 2
)$$2 3
{%% 
_logger&& 
.&& 
Fatal&& 
(&& 
$str&& v
+&&w x
$str'' _
+''` a
$str(( 4
,((4 5
entityException((6 E
)((E F
;((F G
throw)) 
;)) 
}** 
finally++ 
{,, 

unitOfWork-- 
.-- 
Dispose-- "
(--" #
)--# $
;--$ %
}.. 
}// 	
public22 
bool22 
SetNewPassword22 "
(22" #.
"PasswordModificationCredentialsDto22# E+
passwordModificationCredentials22F e
)22e f
{33 	

UnitOfWork44 

unitOfWork44 !
=44" #
new44$ '

UnitOfWork44( 2
(442 3
new443 6
MemoryGameContext447 H
(44H I
)44I J
)44J K
;44K L
string55 
emailAddress55 
=55  !+
passwordModificationCredentials55" A
.55A B
EmailAddress55B N
;55N O
string66 
salt66 
=66 +
passwordModificationCredentials66 9
.669 :
Salt66: >
;66> ?
string77 
newPassword77 
=77  +
passwordModificationCredentials77! @
.77@ A
NewPassword77A L
;77L M
try88 
{99 
Account:: 
account:: 
=::  !

unitOfWork::" ,
.::, -
Accounts::- 5
.::5 6
Get::6 9
(::9 :
emailAddress::: F
)::F G
;::G H
account;; 
.;; 
Password;;  
=;;! "
newPassword;;# .
;;;. /
account<< 
.<< 
Salt<< 
=<< 
salt<< #
;<<# $
int== 
rowsModified==  
===! "

unitOfWork==# -
.==- .
Complete==. 6
(==6 7
)==7 8
;==8 9
return>> 
rowsModified>> #
==>>$ &
$num>>' (
;>>( )
}?? 
catch@@ 
(@@ 
SqlException@@ 
sqlException@@  ,
)@@, -
{AA 
_loggerBB 
.BB 
FatalBB 
(BB 
$strBB |
+BB} ~
$strCC ?
+CC@ A
$strDD G
,DDG H
sqlExceptionDDI U
)DDU V
;DDV W
throwEE 
;EE 
}FF 
catchGG 
(GG 
EntityExceptionGG "
entityExceptionGG# 2
)GG2 3
{HH 
_loggerII 
.II 
FatalII 
(II 
$strII v
+IIw x
$strJJ _
+JJ` a
$strKK 4
,KK4 5
entityExceptionKK6 E
)KKE F
;KKF G
throwLL 
;LL 
}MM 
finallyNN 
{OO 

unitOfWorkPP 
.PP 
DisposePP "
(PP" #
)PP# $
;PP$ %
}QQ 
}SS 	
}TT 
}UU ü]
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountVerificationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{		 
public 

partial 
class 
MemoryGameService *
:+ ,'
IAccountVerificationService- H
{ 
public 
bool  
SetAccountAsVerified (
(( )
string) /
emailAddress0 <
)< =
{ 	

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
try 
{ 
Account 
retrievedAccount (
=) *

unitOfWork+ 5
.5 6
Accounts6 >
.> ?
Get? B
(B C
emailAddressC O
)O P
;P Q
if 
( 
retrievedAccount #
!=$ &
null' +
)+ ,
{ 
retrievedAccount $
.$ %
EmailWasVerified% 5
=6 7
true8 <
;< =
int 
rowsModified $
=% &

unitOfWork' 1
.1 2
Complete2 :
(: ;
); <
;< =
return 
rowsModified '
==( *
$num+ ,
;, -
} 
return 
false 
; 
} 
catch 
( 
SqlException 
sqlException  ,
), -
{ 
_logger 
. 
Fatal 
( 
$str k
+l m
$str V
+W X
$str   M
,  M N
sqlException  O [
)  [ \
;  \ ]
throw!! 
;!! 
}"" 
catch## 
(## 
EntityException## "
entityException### 2
)##2 3
{$$ 
_logger%% 
.%% 
Fatal%% 
(%% 
$str%% |
+%%} ~
$str&& _
+&&` a
$str'' :
,'': ;
entityException''< K
)''K L
;''L M
throw(( 
;(( 
})) 
finally** 
{++ 

unitOfWork,, 
.,, 
Dispose,, "
(,," #
),,# $
;,,$ %
}-- 
}.. 	
public11 
bool11 $
AssignNewActivationToken11 ,
(11, -
string11- 3
emailAddress114 @
,11@ A
string11B H
activationToken11I X
)11X Y
{22 	

UnitOfWork33 

unitOfWork33 !
=33" #
new33$ '

UnitOfWork33( 2
(332 3
new333 6
MemoryGameContext337 H
(33H I
)33I J
)33J K
;33K L
try44 
{55 
Account66 
retrievedAccount66 (
=66) *

unitOfWork66+ 5
.665 6
Accounts666 >
.66> ?
Get66? B
(66B C
emailAddress66C O
)66O P
;66P Q
if77 
(77 
retrievedAccount77 $
!=77% '
null77( ,
)77, -
{88 
retrievedAccount99 $
.99$ %
ActivationToken99% 4
=995 6
activationToken997 F
;99F G
int:: 
rowsModified:: $
=::% &

unitOfWork::' 1
.::1 2
Complete::2 :
(::: ;
)::; <
;::< =
return;; 
rowsModified;; '
==;;( *
$num;;+ ,
;;;, -
}<< 
return== 
false== 
;== 
}>> 
catch?? 
(?? 
SqlException?? 
sqlException??  ,
)??, -
{@@ 
_loggerAA 
.AA 
FatalAA 
(AA 
$strAA g
+AAh i
$strBB G
+BBH I
$strCC >
,CC> ?
sqlExceptionCC@ L
)CCL M
;CCM N
throwDD 
;DD 
}EE 
catchFF 
(FF 
EntityExceptionFF "
entityExceptionFF# 2
)FF2 3
{GG 
_loggerHH 
.HH 
FatalHH 
(HH 
$strHH |
+HH} ~
$strII _
+II` a
$strJJ >
,JJ> ?
entityExceptionJJ@ O
)JJO P
;JJP Q
throwKK 
;KK 
}LL 
finallyMM 
{NN 

unitOfWorkOO 
.OO 
DisposeOO "
(OO" #
)OO# $
;OO$ %
}PP 
}QQ 	
publicTT 
boolTT "
AssignNewRecoveryTokenTT *
(TT* +
stringTT+ 1
emailAddressTT2 >
,TT> ?
stringTT@ F
recoveryTokenTTG T
)TTT U
{UU 	

UnitOfWorkVV 

unitOfWorkVV !
=VV" #
newVV$ '

UnitOfWorkVV( 2
(VV2 3
newVV3 6
MemoryGameContextVV7 H
(VVH I
)VVI J
)VVJ K
;VVK L
tryWW 
{XX 
AccountYY 
retrievedAccountYY (
=YY) *

unitOfWorkYY+ 5
.YY5 6
AccountsYY6 >
.YY> ?
GetYY? B
(YYB C
emailAddressYYC O
)YYO P
;YYP Q
ifZZ 
(ZZ 
retrievedAccountZZ $
!=ZZ% '
nullZZ( ,
)ZZ, -
{[[ 
retrievedAccount\\ $
.\\$ %
RecoveryToken\\% 2
=\\3 4
recoveryToken\\5 B
;\\B C
int]] 
rowsModified]] $
=]]% &

unitOfWork]]' 1
.]]1 2
Complete]]2 :
(]]: ;
)]]; <
;]]< =
return^^ 
rowsModified^^ '
==^^( *
$num^^+ ,
;^^, -
}__ 
return`` 
false`` 
;`` 
}aa 
catchbb 
(bb 
SqlExceptionbb 
sqlExceptionbb  ,
)bb, -
{cc 
_loggerdd 
.dd 
Fataldd 
(dd 
$strdd g
+ddh i
$stree G
+eeH I
$strff <
,ff< =
sqlExceptionff> J
)ffJ K
;ffK L
throwgg 
;gg 
}hh 
catchii 
(ii 
EntityExceptionii "
entityExceptionii# 2
)ii2 3
{jj 
_loggerkk 
.kk 
Fatalkk 
(kk 
$strkk |
+kk} ~
$strll _
+ll` a
$strmm <
,mm< =
entityExceptionmm> M
)mmM N
;mmN O
thrownn 
;nn 
}oo 
finallypp 
{qq 

unitOfWorkrr 
.rr 
Disposerr "
(rr" #
)rr# $
;rr$ %
}ss 
}tt 	
publicww 
boolww !
VerifyActivationTokenww )
(ww) *
stringww* 0
emailAddressww1 =
,ww= >
stringww? E
activationTokenwwF U
)wwU V
{xx 	

UnitOfWorkyy 

unitOfWorkyy !
=yy" #
newyy$ '

UnitOfWorkyy( 2
(yy2 3
newyy3 6
MemoryGameContextyy7 H
(yyH I
)yyI J
)yyJ K
;yyK L
tryzz 
{{{ 
Account|| 
retrievedAccount|| (
=||) *

unitOfWork||+ 5
.||5 6
Accounts||6 >
.||> ?
FindFirstOccurence||? Q
(||Q R
account||R Y
=>||Z \
account||] d
.||d e
EmailAddress||e q
==||r t
emailAddress	||u Å
&&
||Ç Ñ
account
||Ö å
.
||å ç
ActivationToken
||ç ú
==
||ù ü
activationToken
||† Ø
)
||Ø ∞
;
||∞ ±
if}} 
(}} 
retrievedAccount}} #
!=}}$ &
null}}' +
)}}+ ,
{~~ 
return 
true 
;  
}
ÄÄ 
return
ÅÅ 
false
ÅÅ 
;
ÅÅ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
SqlException
ÉÉ 
sqlException
ÉÉ  ,
)
ÉÉ, -
{
ÑÑ 
_logger
ÖÖ 
.
ÖÖ 
Fatal
ÖÖ 
(
ÖÖ 
$str
ÖÖ 
+ÖÖÄ Å
$str
ÜÜ T
+
ÜÜU V
$str
áá T
,
ááT U
sqlException
ááV b
)
ááb c
;
áác d
throw
àà 
;
àà 
}
ââ 
catch
ää 
(
ää 
EntityException
ää "
entityException
ää# 2
)
ää2 3
{
ãã 
_logger
åå 
.
åå 
Fatal
åå 
(
åå 
$str
åå |
+
åå} ~
$str
çç _
+
çç` a
$str
éé <
,
éé< =
entityException
éé> M
)
ééM N
;
ééN O
throw
èè 
;
èè 
}
êê 
finally
ëë 
{
íí 

unitOfWork
ìì 
.
ìì 
Dispose
ìì "
(
ìì" #
)
ìì# $
;
ìì$ %
}
îî 
}
ïï 	
public
òò 
bool
òò !
VerifyRecoveryToken
òò '
(
òò' (
string
òò( .
emailAddress
òò/ ;
,
òò; <
string
òò= C
activationToken
òòD S
)
òòS T
{
ôô 	

UnitOfWork
öö 

unitOfWork
öö !
=
öö" #
new
öö$ '

UnitOfWork
öö( 2
(
öö2 3
new
öö3 6
MemoryGameContext
öö7 H
(
ööH I
)
ööI J
)
ööJ K
;
ööK L
try
õõ 
{
úú 
Account
ùù 
retrievedAccount
ùù (
=
ùù) *

unitOfWork
ùù+ 5
.
ùù5 6
Accounts
ùù6 >
.
ùù> ? 
FindFirstOccurence
ùù? Q
(
ùùQ R
account
ùùR Y
=>
ùùZ \
account
ùù] d
.
ùùd e
EmailAddress
ùùe q
==
ùùr t
emailAddressùùu Å
&&ùùÇ Ñ
accountùùÖ å
.ùùå ç
RecoveryTokenùùç ö
==ùùõ ù
activationTokenùùû ≠
)ùù≠ Æ
;ùùÆ Ø
if
ûû 
(
ûû 
retrievedAccount
ûû $
!=
ûû% '
null
ûû( ,
)
ûû, -
{
üü 
return
†† 
true
†† 
;
††  
}
°° 
return
¢¢ 
false
¢¢ 
;
¢¢ 
}
££ 
catch
§§ 
(
§§ 
SqlException
§§ 
sqlException
§§  ,
)
§§, -
{
•• 
_logger
¶¶ 
.
¶¶ 
Fatal
¶¶ 
(
¶¶ 
$str
¶¶ 
+¶¶Ä Å
$str
ßß T
+
ßßU V
$str
®® P
,
®®P Q
sqlException
®®R ^
)
®®^ _
;
®®_ `
throw
©© 
;
©© 
}
™™ 
catch
´´ 
(
´´ 
EntityException
´´ "
entityException
´´# 2
)
´´2 3
{
¨¨ 
_logger
≠≠ 
.
≠≠ 
Fatal
≠≠ 
(
≠≠ 
$str
≠≠ |
+
≠≠} ~
$str
ÆÆ _
+
ÆÆ` a
$str
ØØ :
,
ØØ: ;
entityException
ØØ< K
)
ØØK L
;
ØØL M
throw
∞∞ 
;
∞∞ 
}
±± 
finally
≤≤ 
{
≥≥ 

unitOfWork
¥¥ 
.
¥¥ 
Dispose
¥¥ "
(
¥¥" #
)
¥¥# $
;
¥¥$ %
}
µµ 
}
∂∂ 	
}
∑∑ 
}∏∏ ‚:
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\CardDeckRetrieverService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,%
ICardDeckRetrieverService- F
{ 
private 
CardDeckDto 
_cardDeckDTO (
=) *
new+ .
CardDeckDto/ :
(: ;
); <
;< =
private 
IEnumerable 
< 
Card  
>  !
_cards" (
;( )
public 
CardDeckDto 
GetCardDeckAndCards .
(. /
int/ 2

cardDeckId3 =
)= >
{ 	

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
try 
{ 
CardDeck 
cardDeck !
=" #

unitOfWork$ .
.. /
	CardDecks/ 8
.8 9
GetCardDeckAndCards9 L
(L M

cardDeckIdM W
)W X
;X Y
_cardDeckDTO 
= 
new "
CardDeckDto# .
(. /
)/ 0
{ 

CardDeckId 
=  
cardDeck! )
.) *

CardDeckId* 4
,4 5
Name 
= 
cardDeck #
.# $
Name$ (
,( )
	BackImage 
= 
cardDeck  (
.( )
	BackImage) 2
,2 3
NumberOfPairs !
=" #
cardDeck$ ,
., -
NumberOfPairs- :
,: ;
Cards   
=   
new   
List    $
<  $ %
CardDto  % ,
>  , -
(  - .
)  . /
}!! 
;!! 
_cards"" 
="" 
cardDeck"" !
.""! "
Cards""" '
;""' ((
PopulateCardDeckDtoWithCards'' ,
('', -
)''- .
;''. /(
PopulateCardDeckDtoWithCards(( ,
(((, -
)((- .
;((. /
ShuffleCards** 
(** 
)** 
;** 
return++ 
_cardDeckDTO++ #
;++# $
},, 
catch-- 
(-- 
SqlException-- 
sqlException--  ,
)--, -
{.. 
_logger// 
.// 
Fatal// 
(// 
$str// |
+//} ~
$str00 =
+00> ?
$str11 L
,11L M
sqlException11N Z
)11Z [
;11[ \
throw22 
;22 
}33 
catch44 
(44 
EntityException44 "
entityException44# 2
)442 3
{55 
_logger66 
.66 
Fatal66 
(66 
$str66 z
+66{ |
$str77 _
+77` a
$str88 9
,889 :
entityException88; J
)88J K
;88K L
throw99 
;99 
}:: 
finally;; 
{<< 

unitOfWork== 
.== 
Dispose== "
(==" #
)==# $
;==$ %
}>> 
}?? 	
publicBB 
IListBB 
<BB 
CardDeckInfoDtoBB $
>BB$ %
GetCardDecksInfoBB& 6
(BB6 7
)BB7 8
{CC 	

UnitOfWorkDD 

unitOfWorkDD !
=DD" #
newDD$ '

UnitOfWorkDD( 2
(DD2 3
newDD3 6
MemoryGameContextDD7 H
(DDH I
)DDI J
)DDJ K
;DDK L
tryEE 
{FF 
IEnumerableGG 
<GG 
CardDeckGG $
>GG$ %
	cardDecksGG& /
=GG0 1

unitOfWorkGG2 <
.GG< =
	CardDecksGG= F
.GGF G
GetAllGGG M
(GGM N
)GGN O
;GGO P
IListHH 
<HH 
CardDeckInfoDtoHH %
>HH% &
listOfCardDecksInfoHH' :
=HH; <
newHH= @
ListHHA E
<HHE F
CardDeckInfoDtoHHF U
>HHU V
(HHV W
)HHW X
;HHX Y
foreachII 
(II 
varII 
individualCardDeckII /
inII0 2
	cardDecksII3 <
)II< =
{JJ 
CardDeckInfoDtoKK #
cardDeckInfoKK$ 0
=KK1 2
newKK3 6
CardDeckInfoDtoKK7 F
(KKF G
)KKG H
{LL 

CardDeckIdMM "
=MM# $
individualCardDeckMM% 7
.MM7 8

CardDeckIdMM8 B
,MMB C
CardDeckNameNN $
=NN% &
individualCardDeckNN' 9
.NN9 :
NameNN: >
}OO 
;OO 
listOfCardDecksInfoPP '
.PP' (
AddPP( +
(PP+ ,
cardDeckInfoPP, 8
)PP8 9
;PP9 :
}QQ 
returnRR 
listOfCardDecksInfoRR *
;RR* +
}SS 
catchTT 
(TT 
SqlExceptionTT 
sqlExceptionTT  ,
)TT, -
{UU 
_loggerVV 
.VV 
FatalVV 
(VV 
$strVV m
+VVn o
$strWW U
+WWV W
$strXX 7
,XX7 8
sqlExceptionXX9 E
)XXE F
;XXF G
throwYY 
;YY 
}ZZ 
catch[[ 
([[ 
EntityException[[ "
entityException[[# 2
)[[2 3
{\\ 
_logger]] 
.]] 
Fatal]] 
(]] 
$str]] b
+]]c d
$str^^ x
+^^y z
$str__ 7
,__7 8
entityException__9 H
)__H I
;__I J
throw`` 
;`` 
}aa 
finallybb 
{cc 

unitOfWorkdd 
.dd 
Disposedd "
(dd" #
)dd# $
;dd$ %
}ee 
}ff 	
privatekk 
voidkk (
PopulateCardDeckDtoWithCardskk 1
(kk1 2
)kk2 3
{ll 	
foreachmm 
(mm 
Cardmm 

actualCardmm $
inmm% '
_cardsmm( .
)mm. /
{nn 
CardDtooo 
cardDtooo 
=oo  !
newoo" %
CardDtooo& -
(oo- .
)oo. /
{pp 
CardIdqq 
=qq 

actualCardqq '
.qq' (
CardIdqq( .
,qq. /

FrontImagerr 
=rr  

actualCardrr! +
.rr+ ,

FrontImagerr, 6
}ss 
;ss 
_cardDeckDTOtt 
.tt 
Cardstt "
.tt" #
Addtt# &
(tt& '
cardDtott' .
)tt. /
;tt/ 0
}uu 
}vv 	
private{{ 
void{{ 
ShuffleCards{{ !
({{! "
){{" #
{|| 	
CardShuffler}} 
cardShuffler}} %
=}}& '
new}}( +
CardShuffler}}, 8
(}}8 9
)}}9 :
;}}: ;
cardShuffler~~ 
.~~ 
ShuffleCards~~ %
(~~% &
_cardDeckDTO~~& 2
.~~2 3
Cards~~3 8
)~~8 9
;~~9 :
} 	
}
ÄÄ 
}ÅÅ …%
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\LobbyService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public		 

partial		 
class		 
MemoryGameService		 *
:		+ ,
ILobbyService		- :
{

 
public 
IList 
< 
string 
> #
GetActivePlayersInLobby 4
(4 5
string5 ;
host< @
)@ A
{ 	
ServiceMatch 
match 
=  
GetMatch! )
() *
host* .
). /
;/ 0
ServiceLobby 
lobby 
=  
match! &
.& '
Lobby' ,
;, -
IList 
< 
string 
> "
activePlayersFromMatch 0
=1 2
lobby3 8
.8 91
%GetUsernamesOfPlayersConnectedToLobby9 ^
(^ _
)_ `
;` a
return "
activePlayersFromMatch )
;) *
} 	
public 
void 
	JoinLobby 
( 
string $
host% )
,) *
string+ 1
username2 :
): ;
{ 	
ServiceMatch 
match 
=  
GetMatch! )
() *
host* .
). /
;/ 0
if 
( 
match 
!= 
null 
) 
{ 
ServiceLobby 
lobby "
=# $
match% *
.* +
Lobby+ 0
;0 1
lobby 
. 
AddPlayerToLobby &
(& '
host' +
,+ ,
username- 5
)5 6
;6 7
lobby 
. '
NotifyNewPlayerEnteredLobby 1
(1 2
username2 :
): ;
;; <
} 
} 	
public!! 
void!! 

LeaveLobby!! 
(!! 
string!! %
host!!& *
,!!* +
string!!, 2
username!!3 ;
)!!; <
{"" 	
ServiceMatch## 
match## 
=##  
GetMatch##! )
(##) *
host##* .
)##. /
;##/ 0
if$$ 
($$ 
match$$ 
!=$$ 
null$$ 
)$$ 
{%% 
ServiceLobby&& 
lobby&& "
=&&# $
match&&% *
.&&* +
Lobby&&+ 0
;&&0 1
lobby'' 
.'' !
RemovePlayerFromLobby'' +
(''+ ,
username'', 4
)''4 5
;''5 6
if(( 
((( 
host(( 
.(( 
Equals(( 
(((  
username((  (
)((( )
)(() *
{)) 
lobby** 
.** ,
 NotifyPlayersMatchHasBeenDeleted** :
(**: ;
)**; <
;**< =
_matches++ 
.++ 
Remove++ #
(++# $
match++$ )
)++) *
;++* +
},, 
else-- 
{.. 
lobby// 
.// $
NotifyOnePlayerLeftLobby// 2
(//2 3
username//3 ;
)//; <
;//< =
}00 
}11 
}22 	
public55 
void55 
	StartGame55 
(55 
string55 $
host55% )
)55) *
{66 	
ServiceMatch77 
match77 
=77  
GetMatch77! )
(77) *
host77* .
)77. /
;77/ 0
if88 
(88 
match88 
!=88 
null88 
)88 
{99 
match:: 
.:: 

StartMatch::  
(::  !
)::! "
;::" #
};; 
}<< 	
privateCC 
ServiceMatchCC 
GetMatchCC %
(CC% &
stringCC& ,
hostCC- 1
)CC1 2
{DD 	
ServiceMatchEE 
	gameMatchEE "
=EE# $
nullEE% )
;EE) *
foreachFF 
(FF 
varFF 
matchFF 
inFF !
_matchesFF" *
)FF* +
{GG 
ifHH 
(HH 
matchHH 
.HH 
HostHH 
.HH 
EqualsHH %
(HH% &
hostHH& *
)HH* +
)HH+ ,
{II 
	gameMatchJJ 
=JJ 
matchJJ  %
;JJ% &
breakKK 
;KK 
}LL 
}MM 
returnNN 
	gameMatchNN 
;NN 
}OO 	
}PP 
}QQ π
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MailingService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public

 

partial

 
class

 
MemoryGameService

 *
:

+ ,
IMailingService

- <
{ 
public 
void !
SendVerificationToken )
() *
TokenInfoDto* 6!
verificationTokenInfo7 L
)L M
{ 	
string 
name 
= !
verificationTokenInfo /
./ 0
Name0 4
;4 5
string 
emailAddress 
=  !!
verificationTokenInfo" 7
.7 8
EmailAddress8 D
;D E
string 
verificationToken $
=% &!
verificationTokenInfo' <
.< =
Token= B
;B C
string 
subjectOfTheMessage &
=' (!
verificationTokenInfo) >
.> ?
Subject? F
;F G
string 
bodyOfTheMessage #
=$ %!
verificationTokenInfo& ;
.; <
Body< @
;@ A
MailTemplate 
mt 
= 
new !
MailTemplate" .
(. /
)/ 0
;0 1
mt 
. 
SetReceiver 
( 
name 
,  
emailAddress! -
)- .
;. /
mt 
. 

SetMessage 
( 
subjectOfTheMessage -
,- .
bodyOfTheMessage/ ?
+@ A
$strB F
+G H
verificationTokenI Z
)Z [
;[ \
try 
{ 
mt 
. 
Send 
( 
) 
; 
} 
catch 
( 
SocketException "
socketException# 2
)2 3
{ 
_logger 
. 
Fatal 
( 
$str `
+a b
$str J
+K L
$str =
,= >
socketException? N
)N O
;O P
}   
catch!! 
(!! 
ProtocolException!! $
protocolException!!% 6
)!!6 7
{"" 
_logger## 
.## 
Fatal## 
(## 
$str## d
+##e f
$str$$ Q
+$$R S
$str%% 6
,%%6 7
protocolException%%8 I
)%%I J
;%%J K
}&& 
}(( 	
})) 
}** °
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchCreationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public		 

partial		 
class		 
MemoryGameService		 *
:		+ ,!
IMatchCreationService		- B
{

 
public 
void 
CreateNewMatch "
(" #
MatchDto# +
gameMatchDto, 8
)8 9
{ 	
IList 
< 
ServiceCard 
> 
serviceCards +
=, -
new. 1
List2 6
<6 7
ServiceCard7 B
>B C
(C D
)D E
;E F
foreach 
( 
var 
cardDto 
in  "
gameMatchDto# /
./ 0
CardDeckDto0 ;
.; <
Cards< A
)A B
{ 
ServiceCard 
card  
=! "
new# &
ServiceCard' 2
(2 3
)3 4
{ 
CardId 
= 
cardDto $
.$ %
CardId% +
,+ ,

FrontImage 
=  
cardDto! (
.( )

FrontImage) 3
} 
; 
serviceCards 
. 
Add  
(  !
card! %
)% &
;& '
} 
ServiceCardDeck 
serviceCardDeck +
=, -
new. 1
ServiceCardDeck2 A
(A B
)B C
{ 

CardDeckId 
= 
gameMatchDto )
.) *
CardDeckDto* 5
.5 6

CardDeckId6 @
,@ A
NumberOfPairs 
= 
gameMatchDto  ,
., -
CardDeckDto- 8
.8 9
NumberOfPairs9 F
,F G
Cards 
= 
serviceCards $
,$ %
	BackImage 
= 
gameMatchDto (
.( )
CardDeckDto) 4
.4 5
	BackImage5 >
} 
; 
ServiceMatch!! 
serviceMatch!! %
=!!& '
new!!( +
ServiceMatch!!, 8
(!!8 9
)!!9 :
{"" 
Host## 
=## 
gameMatchDto## #
.### $
Host##$ (
,##( )
MaxNumberOfPlayers$$ "
=$$# $
gameMatchDto$$% 1
.$$1 2
MaxNumberOfPlayers$$2 D
,$$D E

HasStarted%% 
=%% 
false%% "
,%%" #
ServiceCardDeck&& 
=&&  !
serviceCardDeck&&" 1
}'' 
;'' 
_matches(( 
.(( 
Add(( 
((( 
serviceMatch(( %
)((% &
;((& '
})) 	
}** 
}++ ﬁ.
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchDiscoveryService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{		 
public 

partial 
class 
MemoryGameService *
:+ ,"
IMatchDiscoveryService- C
{ 
public 
bool 
CanJoin 
( 
string "
	matchHost# ,
), -
{ 	
ServiceMatch 
	gameMatch "
=# $
GetMatch% -
(- .
	matchHost. 7
)7 8
;8 9
if 
( 
	gameMatch 
== 
null !
)! "
{ "
MatchAccessDeniedFault &"
matchAccessDeniedFault' =
=> ?
new@ C"
MatchAccessDeniedFaultD Z
(Z [
)[ \
{ 
Details 
= 
$str 9
} 
; 
throw 
new 
FaultException (
<( )"
MatchAccessDeniedFault) ?
>? @
(@ A"
matchAccessDeniedFaultA W
)W X
;X Y
} 
else 
{ 
ServiceLobby 
lobby "
=# $
	gameMatch% .
.. /
Lobby/ 4
;4 5
IList 
<  
ServicePlayerInLobby *
>* +#
playersConnectedToLobby, C
=D E
lobbyF K
.K L&
GetPlayersConnectedToLobbyL f
(f g
)g h
;h i
int +
numberOfPlayersConnectedToLobby 3
=4 5#
playersConnectedToLobby6 M
.M N
CountN S
;S T
int #
numberOfPlayersRequired +
=, -
	gameMatch. 7
.7 8
MaxNumberOfPlayers8 J
;J K
bool 
matchHasStarted $
=% &
	gameMatch' 0
.0 1

HasStarted1 ;
;; <
bool   (
ThereIsSpaceForAnotherPlayer   1
=  2 3
false  4 9
;  9 :
if"" 
("" +
numberOfPlayersConnectedToLobby"" 3
<""4 5#
numberOfPlayersRequired""6 M
)""M N
{## (
ThereIsSpaceForAnotherPlayer$$ 0
=$$1 2
true$$3 7
;$$7 8
}%% 
if'' 
('' (
ThereIsSpaceForAnotherPlayer'' 0
&&''1 3
!''4 5
matchHasStarted''5 D
)''D E
{(( 
return)) 
true)) 
;))  
}** 
return++ 
false++ 
;++ 
},, 
}-- 	
public00 
IList00 
<00 
MatchDto00 
>00 
GetActiveMatches00 /
(00/ 0
)000 1
{11 	
IList22 
<22 
MatchDto22 
>22 !
matchesWaitingToStart22 1
=222 3
new224 7
List228 <
<22< =
MatchDto22= E
>22E F
(22F G
)22G H
;22H I
foreach33 
(33 
var33 
match33 
in33 !
_matches33" *
)33* +
{44 
if55 
(55 
!55 
match55 
.55 

HasStarted55 %
)55% &
{66 
IList88 
<88 
CardDto88 !
>88! "
cards88# (
=88) *
new88+ .
List88/ 3
<883 4
CardDto884 ;
>88; <
(88< =
)88= >
;88> ?
foreach:: 
(:: 
var:: 
card::  $
in::% '
match::( -
.::- .
ServiceCardDeck::. =
.::= >
Cards::> C
)::C D
{;; 
CardDto<< 
cardDto<<  '
=<<( )
new<<* -
CardDto<<. 5
(<<5 6
)<<6 7
{== 
CardId>> "
=>># $
card>>% )
.>>) *
CardId>>* 0
,>>0 1

FrontImage?? &
=??' (
card??) -
.??- .

FrontImage??. 8
}@@ 
;@@ 
cardsAA 
.AA 
AddAA !
(AA! "
cardDtoAA" )
)AA) *
;AA* +
}BB 
CardDeckDtoDD 
cardDeckDtoDD  +
=DD, -
newDD. 1
CardDeckDtoDD2 =
(DD= >
)DD> ?
{EE 

CardDeckIdFF "
=FF# $
matchFF% *
.FF* +
ServiceCardDeckFF+ :
.FF: ;

CardDeckIdFF; E
,FFE F
NameGG 
=GG 
matchGG $
.GG$ %
ServiceCardDeckGG% 4
.GG4 5
NameGG5 9
,GG9 :
	BackImageHH !
=HH" #
matchHH$ )
.HH) *
ServiceCardDeckHH* 9
.HH9 :
	BackImageHH: C
,HHC D
CardsII 
=II 
cardsII  %
}JJ 
;JJ 
MatchDtoLL 
matchDtoLL %
=LL& '
newLL( +
MatchDtoLL, 4
(LL4 5
)LL5 6
{MM 
HostNN 
=NN 
matchNN $
.NN$ %
HostNN% )
,NN) *

HasStartedOO "
=OO# $
falseOO% *
,OO* +
MaxNumberOfPlayersPP *
=PP+ ,
matchPP- 2
.PP2 3
MaxNumberOfPlayersPP3 E
,PPE F
CardDeckDtoQQ #
=QQ$ %
cardDeckDtoQQ& 1
}RR 
;RR !
matchesWaitingToStartSS )
.SS) *
AddSS* -
(SS- .
matchDtoSS. 6
)SS6 7
;SS7 8
}TT 
}UU 
returnVV !
matchesWaitingToStartVV (
;VV( )
}WW 	
}XX 
}YY ﬂﬂ
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
IMatchService- :
{ 
public 
void 

EnterMatch 
( 
string %
host& *
,* +
string, 2
username3 ;
); <
{ 	
ServiceMatch 
	gameMatch "
=# $
GetMatch% -
(- .
host. 2
)2 3
;3 4
bool 
hasActiveTurn 
=  
false! &
;& '
if 
( 
host 
. 
Equals 
( 
username $
)$ %
)% &
{ 
hasActiveTurn 
= 
true  $
;$ %
} 
ServicePlayer 
player  
=! "
new# &
ServicePlayer' 4
(4 5
)5 6
{ 
Username 
= 
username #
,# $
Score   
=   
$num   
,   
HasActiveTurn!! 
=!! 
hasActiveTurn!!  -
,!!- ."
MatchServiceConnection"" &
=""' (
OperationContext"") 9
.""9 :
Current"": A
.""A B
GetCallbackChannel""B T
<""T U!
IMatchServiceCallback""U j
>""j k
(""k l
)""l m
,""m n
ExpulsionVotes## 
=##  
$num##! "
}$$ 
;$$ 
	gameMatch%% 
.%% 
	AddPlayer%% 
(%%  
player%%  &
)%%& '
;%%' (
}&& 	
public)) 
IList)) 
<)) 
PlayerInMatchDto)) %
>))% &&
GetPlayersConnectedToMatch))' A
())A B
string))B H
host))I M
)))M N
{** 	
ServiceMatch++ 
match++ 
=++  
GetMatch++! )
(++) *
host++* .
)++. /
;++/ 0
IList,, 
<,, 
ServicePlayer,, 
>,,  #
playersConnectedToMatch,,! 8
=,,9 :
match,,; @
.,,@ A&
GetPlayersConnectedToMatch,,A [
(,,[ \
),,\ ]
;,,] ^
IList-- 
<-- 
PlayerInMatchDto-- "
>--" #
playersToBeReturned--$ 7
=--8 9
new--: =
List--> B
<--B C
PlayerInMatchDto--C S
>--S T
(--T U
)--U V
;--V W
foreach.. 
(.. 
var.. 
player.. 
in.. !#
playersConnectedToMatch.." 9
)..9 :
{// 
PlayerInMatchDto00  
playerInMatch00! .
=00/ 0
new001 4
PlayerInMatchDto005 E
(00E F
)00F G
{11 
Username22 
=22 
player22 %
.22% &
Username22& .
,22. /
Score33 
=33 
player33 "
.33" #
Score33# (
,33( )
HasActiveTurn44 !
=44" #
player44$ *
.44* +
HasActiveTurn44+ 8
,448 9
ExpulsionVotes55 "
=55# $
$num55% &
}66 
;66 
playersToBeReturned77 #
.77# $
Add77$ '
(77' (
playerInMatch77( 5
)775 6
;776 7
}88 
return99 
playersToBeReturned99 &
;99& '
}:: 	
public== 
void== #
NotifyCardWasUncoveredd== +
(==+ ,
PlayerMovementDto==, =
playerMovementDto==> O
)==O P
{>> 	
string?? 
host?? 
=?? 
playerMovementDto?? +
.??+ ,
Host??, 0
;??0 1
ServiceMatch@@ 
	gameMatch@@ "
=@@# $
GetMatch@@% -
(@@- .
host@@. 2
)@@2 3
;@@3 4
ServicePlayerBB 
playerBB  
=BB! "
	gameMatchBB# ,
.BB, -
	GetPlayerBB- 6
(BB6 7
playerMovementDtoBB7 H
.BBH I
UsernameBBI Q
)BBQ R
;BBR S
ifCC 
(CC 
playerMovementDtoCC !
.CC! "
HasFormedAPairCC" 0
)CC0 1
{DD 
playerEE 
.EE 
AddUncoveredCardEE '
(EE' (
playerMovementDtoEE( 9
.EE9 :
	CardIndexEE: C
)EEC D
;EED E
	gameMatchFF 
.FF 

TotalPairsFF $
++FF$ &
;FF& '
}GG 
elseHH 
{II 
ifJJ 
(JJ 
playerMovementDtoJJ %
.JJ% &
MovementsLeftJJ& 3
==JJ4 6
$numJJ7 8
)JJ8 9
{KK 
playerLL 
.LL 
RemoveUncoveredCardLL .
(LL. /
)LL/ 0
;LL0 1
}MM 
elseNN 
{OO 
playerPP 
.PP 
AddUncoveredCardPP +
(PP+ ,
playerMovementDtoPP, =
.PP= >
	CardIndexPP> G
)PPG H
;PPH I
}QQ 
}RR 
IListTT 
<TT 
ServicePlayerTT 
>TT  
playersInMatchTT! /
=TT0 1
	gameMatchTT2 ;
.TT; <&
GetPlayersConnectedToMatchTT< V
(TTV W
)TTW X
;TTX Y
foreachVV 
(VV 
varVV 
playerInMatchVV %
inVV& (
playersInMatchVV) 7
)VV7 8
{WW 
playerInMatchXX 
.XX "
MatchServiceConnectionXX 4
.XX4 5
UncoverCarddXX5 A
(XXA B
playerMovementDtoXXB S
.XXS T
	CardIndexXXT ]
)XX] ^
;XX^ _
}YY 
}[[ 	
public^^ 
void^^ 
NotifyMatchHasEnded^^ '
(^^' (
string^^( .
host^^/ 3
)^^3 4
{__ 	
ServiceMatchaa 
	gameMatchaa "
=aa# $
GetMatchaa% -
(aa- .
hostaa. 2
)aa2 3
;aa3 4
ifbb 
(bb 
hostbb 
!=bb 
nullbb 
)bb 
{cc 
ServicePlayerdd 
playerWithBestScoredd 1
=dd2 3
	gameMatchdd4 =
.dd= >"
GetPlayerWithBestScoredd> T
(ddT U
)ddU V
;ddV W
stringee )
usernameOfPlayerWithBestScoreee 4
=ee5 6
playerWithBestScoreee7 J
.eeJ K
UsernameeeK S
;eeS T
IListff 
<ff 
ServicePlayerff #
>ff# $#
playersConnectedToMatchff% <
=ff= >
	gameMatchff? H
.ffH I&
GetPlayersConnectedToMatchffI c
(ffc d
)ffd e
;ffe f
foreachgg 
(gg 
vargg 
playerConnectedgg ,
ingg- /#
playersConnectedToMatchgg0 G
)ggG H
{hh 
varii 
channelii 
=ii  !
playerConnectedii" 1
.ii1 2"
MatchServiceConnectionii2 H
;iiH I
channeljj 
.jj 
ShowWinnersjj '
(jj' ()
usernameOfPlayerWithBestScorejj( E
)jjE F
;jjF G
channelkk 
.kk 
MatchHasEndedkk )
(kk) *
)kk* +
;kk+ ,
}ll 

UnitOfWorknn 

unitOfWorknn %
=nn& '
newnn( +

UnitOfWorknn, 6
(nn6 7
newnn7 :
MemoryGameContextnn; L
(nnL M
)nnM N
)nnN O
;nnO P
tryoo 
{pp 
foreachqq 
(qq 
varqq  
playerInMatchqq! .
inqq/ 1
	gameMatchqq2 ;
.qq; <&
GetPlayersConnectedToMatchqq< V
(qqV W
)qqW X
)qqX Y
{rr 

unitOfWorkss "
.ss" #
Playersss# *
.ss* +*
UpdateScoreOfPlayersAfterMatchss+ I
(ssI J
playerInMatchssJ W
.ssW X
UsernamessX `
,ss` a
playerInMatchssb o
.sso p
Scoressp u
)ssu v
;ssv w
}tt 
Playervv 
winnervv !
=vv" #

unitOfWorkvv$ .
.vv. /
Playersvv/ 6
.vv6 7 
FindPlayerByUsernamevv7 K
(vvK L)
usernameOfPlayerWithBestScorevvL i
)vvi j
;vvj k
CardDeckww 
cardDeckww %
=ww& '

unitOfWorkww( 2
.ww2 3
	CardDecksww3 <
.ww< =
Getww= @
(ww@ A
	gameMatchwwA J
.wwJ K
ServiceCardDeckwwK Z
.wwZ [

CardDeckIdww[ e
)wwe f
;wwf g
Matchyy 
matchToBeSavedyy (
=yy) *
newyy+ .
Matchyy/ 4
(yy4 5
)yy5 6
{zz 
CardDeck{{  
={{! "
cardDeck{{# +
,{{+ ,
Winner|| 
=||  
winner||! '
,||' (
Date}} 
=}} 
DateTime}} '
.}}' (
Now}}( +
}~~ 
;~~ 

unitOfWork 
. 
Matches &
.& '
Add' *
(* +
matchToBeSaved+ 9
)9 :
;: ;

unitOfWork
ÄÄ 
.
ÄÄ 
Complete
ÄÄ '
(
ÄÄ' (
)
ÄÄ( )
;
ÄÄ) *
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
SqlException
ÇÇ #
sqlException
ÇÇ$ 0
)
ÇÇ0 1
{
ÉÉ 
_logger
ÑÑ 
.
ÑÑ 
Fatal
ÑÑ !
(
ÑÑ! "
$str
ÑÑ" Z
+
ÑÑ[ \
$str
ÖÖ Y
+
ÖÖZ [
$str
ÜÜ N
+
ÜÜO P
$str
áá >
,
áá> ?
sqlException
áá@ L
)
ááL M
;
ááM N
throw
àà 
;
àà 
}
ââ 
catch
ää 
(
ää 
EntityException
ää &
entityException
ää' 6
)
ää6 7
{
ãã 
_logger
åå 
.
åå 
Fatal
åå !
(
åå! "
$str
åå" h
+
ååi j
$str
çç n
+
çço p
$str
éé >
,
éé> ?
entityException
éé@ O
)
ééO P
;
ééP Q
throw
èè 
;
èè 
}
êê 
finally
ëë 
{
íí 

unitOfWork
ìì 
.
ìì 
Dispose
ìì &
(
ìì& '
)
ìì' (
;
ìì( )
}
îî 
_matches
ññ 
.
ññ 
Remove
ññ 
(
ññ  
	gameMatch
ññ  )
)
ññ) *
;
ññ* +
}
óó 
}
òò 	
public
õõ 
void
õõ 
EndTurn
õõ 
(
õõ 
string
õõ "
host
õõ# '
,
õõ' (
string
õõ) /
username
õõ0 8
,
õõ8 9
CardPairDto
õõ: E
cardPairDto
õõF Q
)
õõQ R
{
úú 	
ServiceMatch
ùù 
	gameMatch
ùù "
=
ùù# $
GetMatch
ùù% -
(
ùù- .
host
ùù. 2
)
ùù2 3
;
ùù3 4
ServicePlayer
ûû 
player
ûû  
=
ûû! "
	gameMatch
ûû# ,
.
ûû, -
	GetPlayer
ûû- 6
(
ûû6 7
username
ûû7 ?
)
ûû? @
;
ûû@ A
int
üü *
indexOfPlayerWithCurrentTurn
üü ,
=
üü- .
	gameMatch
üü/ 8
.
üü8 9(
GetPlayersConnectedToMatch
üü9 S
(
üüS T
)
üüT U
.
üüU V
IndexOf
üüV ]
(
üü] ^
player
üü^ d
)
üüd e
;
üüe f
if
°° 
(
°° 
cardPairDto
°° 
.
°° 
BothCardsAreEqual
°° -
)
°°- .
{
¢¢ 
player
££ 
.
££ 
Score
££ 
+=
££ 
$num
££  #
;
££# $
}
§§ 
else
•• 
{
¶¶ *
indexOfPlayerWithCurrentTurn
ßß ,
=
ßß- .

ChangeTurn
ßß/ 9
(
ßß9 :
	gameMatch
ßß: C
,
ßßC D*
indexOfPlayerWithCurrentTurn
ßßE a
)
ßßa b
;
ßßb c
}
®® 
ServicePlayer
™™ 

nextPlayer
™™ $
=
™™% &
	gameMatch
™™' 0
.
™™0 1(
GetPlayersConnectedToMatch
™™1 K
(
™™K L
)
™™L M
[
™™M N*
indexOfPlayerWithCurrentTurn
™™N j
]
™™j k
;
™™k l
player
´´ 
.
´´ 
HasActiveTurn
´´  
=
´´! "
false
´´# (
;
´´( )

nextPlayer
¨¨ 
.
¨¨ 
HasActiveTurn
¨¨ $
=
¨¨% &
true
¨¨' +
;
¨¨+ ,
IList
ÆÆ 
<
ÆÆ 
ServicePlayer
ÆÆ 
>
ÆÆ  
playersInMatch
ÆÆ! /
=
ÆÆ0 1
	gameMatch
ÆÆ2 ;
.
ÆÆ; <(
GetPlayersConnectedToMatch
ÆÆ< V
(
ÆÆV W
)
ÆÆW X
;
ÆÆX Y
foreach
∞∞ 
(
∞∞ 
var
∞∞ 
playerInMatch
∞∞ &
in
∞∞' )
playersInMatch
∞∞* 8
)
∞∞8 9
{
±± 
playerInMatch
≤≤ 
.
≤≤ $
MatchServiceConnection
≤≤ 4
.
≤≤4 5 
NotifyTurnHasEnded
≤≤5 G
(
≤≤G H

nextPlayer
≤≤H R
.
≤≤R S
Username
≤≤S [
,
≤≤[ \
cardPairDto
≤≤] h
)
≤≤h i
;
≤≤i j
}
≥≥ 
if
µµ 
(
µµ 
	gameMatch
µµ 
.
µµ 

TotalPairs
µµ $
==
µµ% '
	gameMatch
µµ( 1
.
µµ1 2
ServiceCardDeck
µµ2 A
.
µµA B
NumberOfPairs
µµB O
)
µµO P
{
∂∂ 
this
∑∑ 
.
∑∑ !
NotifyMatchHasEnded
∑∑ (
(
∑∑( )
host
∑∑) -
)
∑∑- .
;
∑∑. /
}
∏∏ 
}
∫∫ 	
public
ΩΩ 
void
ΩΩ 

LeaveMatch
ΩΩ 
(
ΩΩ 
string
ΩΩ %
host
ΩΩ& *
,
ΩΩ* +
string
ΩΩ, 2
username
ΩΩ3 ;
)
ΩΩ; <
{
ææ 	
ServiceMatch
øø 
	gameMatch
øø "
=
øø# $
GetMatch
øø% -
(
øø- .
host
øø. 2
)
øø2 3
;
øø3 4
IList
¡¡ 
<
¡¡ 
ServicePlayer
¡¡ 
>
¡¡  
playersInMatch
¡¡! /
=
¡¡0 1
	gameMatch
¡¡2 ;
.
¡¡; <(
GetPlayersConnectedToMatch
¡¡< V
(
¡¡V W
)
¡¡W X
;
¡¡X Y
ServicePlayer
¬¬ "
playerWithActiveTurn
¬¬ .
=
¬¬/ 0
	gameMatch
¬¬1 :
.
¬¬: ;$
GetPlyerWithActiveTurn
¬¬; Q
(
¬¬Q R
)
¬¬R S
;
¬¬S T
ServicePlayer
√√ 
leavePlayer
√√ %
=
√√& '
	gameMatch
√√( 1
.
√√1 2
	GetPlayer
√√2 ;
(
√√; <
username
√√< D
)
√√D E
;
√√E F
if
≈≈ 
(
≈≈ "
playerWithActiveTurn
≈≈ $
.
≈≈$ %
Username
≈≈% -
.
≈≈- .
Equals
≈≈. 4
(
≈≈4 5
username
≈≈5 =
)
≈≈= >
)
≈≈> ?
{
∆∆ 
leavePlayer
«« 
=
«« "
playerWithActiveTurn
«« 2
;
««2 3
int
»» *
indexOfPlayerWithCurrentTurn
»» 0
=
»»1 2
	gameMatch
»»3 <
.
»»< =(
GetPlayersConnectedToMatch
»»= W
(
»»W X
)
»»X Y
.
»»Y Z
IndexOf
»»Z a
(
»»a b"
playerWithActiveTurn
»»b v
)
»»v w
;
»»w x*
indexOfPlayerWithCurrentTurn
…… ,
=
……- .

ChangeTurn
……/ 9
(
……9 :
	gameMatch
……: C
,
……C D*
indexOfPlayerWithCurrentTurn
……E a
)
……a b
;
……b c
ServicePlayer
ÀÀ 

nextPlayer
ÀÀ (
=
ÀÀ) *
	gameMatch
ÀÀ+ 4
.
ÀÀ4 5(
GetPlayersConnectedToMatch
ÀÀ5 O
(
ÀÀO P
)
ÀÀP Q
[
ÀÀQ R*
indexOfPlayerWithCurrentTurn
ÀÀR n
]
ÀÀn o
;
ÀÀo p"
playerWithActiveTurn
ÃÃ $
.
ÃÃ$ %
HasActiveTurn
ÃÃ% 2
=
ÃÃ3 4
false
ÃÃ5 :
;
ÃÃ: ;

nextPlayer
ÕÕ 
.
ÕÕ 
HasActiveTurn
ÕÕ (
=
ÕÕ) *
true
ÕÕ+ /
;
ÕÕ/ 0
foreach
œœ 
(
œœ 
var
œœ 
playerInMatch
œœ *
in
œœ+ -
playersInMatch
œœ. <
)
œœ< =
{
–– 
playerInMatch
—— !
.
——! "$
MatchServiceConnection
——" 8
.
——8 9"
EndTurnOfExpelPlayer
——9 M
(
——M N

nextPlayer
——N X
.
——X Y
Username
——Y a
)
——a b
;
——b c
}
““ 
}
”” 
IList
’’ 
<
’’ 
int
’’ 
>
’’ 
cardsUncovered
’’ %
=
’’& '
leavePlayer
’’( 3
.
’’3 4
GetUncoveredCards
’’4 E
(
’’E F
)
’’F G
;
’’G H
foreach
÷÷ 
(
÷÷ 
var
÷÷ 
playerConnected
÷÷ (
in
÷÷) +
playersInMatch
÷÷, :
)
÷÷: ;
{
◊◊ 
var
ÿÿ 
channel
ÿÿ 
=
ÿÿ 
playerConnected
ÿÿ -
.
ÿÿ- .$
MatchServiceConnection
ÿÿ. D
;
ÿÿD E
channel
ŸŸ 
.
ŸŸ $
NotifyPlayerLeaveMatch
ŸŸ .
(
ŸŸ. /
username
ŸŸ/ 7
,
ŸŸ7 8
cardsUncovered
ŸŸ9 G
)
ŸŸG H
;
ŸŸH I
}
⁄⁄ 
RemovePairs
‹‹ 
(
‹‹ 
	gameMatch
‹‹ !
,
‹‹! "
cardsUncovered
‹‹# 1
)
‹‹1 2
;
‹‹2 3
	gameMatch
›› 
.
›› 
RemovePlayer
›› "
(
››" #
username
››# +
)
››+ ,
;
››, -
if
ﬂﬂ 
(
ﬂﬂ 
playersInMatch
ﬂﬂ 
.
ﬂﬂ 
Count
ﬂﬂ $
==
ﬂﬂ% '
$num
ﬂﬂ( )
)
ﬂﬂ) *
{
‡‡ 
this
·· 
.
·· !
NotifyMatchHasEnded
·· (
(
··( )
host
··) -
)
··- .
;
··. /
}
‚‚ 
}
„„ 	
public
ÊÊ 
void
ÊÊ 
ExpelPlayer
ÊÊ 
(
ÊÊ  
ExpelVoteDto
ÊÊ  ,
	expelVote
ÊÊ- 6
)
ÊÊ6 7
{
ÁÁ 	
string
ËË 
host
ËË 
=
ËË 
	expelVote
ËË #
.
ËË# $
Host
ËË$ (
;
ËË( )
ServiceMatch
ÈÈ 
	gameMatch
ÈÈ "
=
ÈÈ# $
GetMatch
ÈÈ% -
(
ÈÈ- .
host
ÈÈ. 2
)
ÈÈ2 3
;
ÈÈ3 4
string
ÍÍ #
usernameOfExpelPlayer
ÍÍ (
=
ÍÍ) *
	expelVote
ÍÍ+ 4
.
ÍÍ4 5#
UsernameOfExpelPlayer
ÍÍ5 J
;
ÍÍJ K
int
ÏÏ 
playerExpelVotes
ÏÏ  
=
ÏÏ! "
	gameMatch
ÏÏ# ,
.
ÏÏ, -
AddExpelVote
ÏÏ- 9
(
ÏÏ9 :#
usernameOfExpelPlayer
ÏÏ: O
)
ÏÏO P
;
ÏÏP Q
ServicePlayer
ÌÌ 
voterPlayer
ÌÌ %
=
ÌÌ& '
	gameMatch
ÌÌ( 1
.
ÌÌ1 2
	GetPlayer
ÌÌ2 ;
(
ÌÌ; <
	expelVote
ÌÌ< E
.
ÌÌE F#
UsernameOfVoterPlayer
ÌÌF [
)
ÌÌ[ \
;
ÌÌ\ ]
voterPlayer
ÓÓ 
.
ÓÓ 
AddPlayerVoted
ÓÓ &
(
ÓÓ& '#
usernameOfExpelPlayer
ÓÓ' <
)
ÓÓ< =
;
ÓÓ= >
IList
 
<
 
ServicePlayer
 
>
  
playersInMatch
! /
=
0 1
	gameMatch
2 ;
.
; <(
GetPlayersConnectedToMatch
< V
(
V W
)
W X
;
X Y
int
ÒÒ 
numOfPlayers
ÒÒ 
=
ÒÒ 
playersInMatch
ÒÒ -
.
ÒÒ- .
Count
ÒÒ. 3
;
ÒÒ3 4
if
ÛÛ 
(
ÛÛ 
playerExpelVotes
ÛÛ  
>
ÛÛ! "
(
ÛÛ# $
numOfPlayers
ÛÛ$ 0
/
ÛÛ1 2
$num
ÛÛ3 4
)
ÛÛ4 5
)
ÛÛ5 6
{
ÙÙ 
ServicePlayer
ıı "
playerWithActiveTurn
ıı 2
=
ıı3 4
	gameMatch
ıı5 >
.
ıı> ?$
GetPlyerWithActiveTurn
ıı? U
(
ııU V
)
ııV W
;
ııW X
ServicePlayer
ˆˆ 
expelPlayer
ˆˆ )
=
ˆˆ* +
	gameMatch
ˆˆ, 5
.
ˆˆ5 6
	GetPlayer
ˆˆ6 ?
(
ˆˆ? @#
usernameOfExpelPlayer
ˆˆ@ U
)
ˆˆU V
;
ˆˆV W
if
¯¯ 
(
¯¯ "
playerWithActiveTurn
¯¯ (
.
¯¯( )
Username
¯¯) 1
.
¯¯1 2
Equals
¯¯2 8
(
¯¯8 9#
usernameOfExpelPlayer
¯¯9 N
)
¯¯N O
)
¯¯O P
{
˘˘ 
expelPlayer
˙˙ 
=
˙˙  !"
playerWithActiveTurn
˙˙" 6
;
˙˙6 7
int
˚˚ *
indexOfPlayerWithCurrentTurn
˚˚ 4
=
˚˚5 6
	gameMatch
˚˚7 @
.
˚˚@ A(
GetPlayersConnectedToMatch
˚˚A [
(
˚˚[ \
)
˚˚\ ]
.
˚˚] ^
IndexOf
˚˚^ e
(
˚˚e f"
playerWithActiveTurn
˚˚f z
)
˚˚z {
;
˚˚{ |*
indexOfPlayerWithCurrentTurn
¸¸ 0
=
¸¸1 2

ChangeTurn
¸¸3 =
(
¸¸= >
	gameMatch
¸¸> G
,
¸¸G H*
indexOfPlayerWithCurrentTurn
¸¸I e
)
¸¸e f
;
¸¸f g
ServicePlayer
˛˛ !

nextPlayer
˛˛" ,
=
˛˛- .
	gameMatch
˛˛/ 8
.
˛˛8 9(
GetPlayersConnectedToMatch
˛˛9 S
(
˛˛S T
)
˛˛T U
[
˛˛U V*
indexOfPlayerWithCurrentTurn
˛˛V r
]
˛˛r s
;
˛˛s t"
playerWithActiveTurn
ˇˇ (
.
ˇˇ( )
HasActiveTurn
ˇˇ) 6
=
ˇˇ7 8
false
ˇˇ9 >
;
ˇˇ> ?

nextPlayer
ÄÄ 
.
ÄÄ 
HasActiveTurn
ÄÄ ,
=
ÄÄ- .
true
ÄÄ/ 3
;
ÄÄ3 4
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ  
playerInMatch
ÇÇ! .
in
ÇÇ/ 1
playersInMatch
ÇÇ2 @
)
ÇÇ@ A
{
ÉÉ 
playerInMatch
ÑÑ %
.
ÑÑ% &$
MatchServiceConnection
ÑÑ& <
.
ÑÑ< ="
EndTurnOfExpelPlayer
ÑÑ= Q
(
ÑÑQ R

nextPlayer
ÑÑR \
.
ÑÑ\ ]
Username
ÑÑ] e
)
ÑÑe f
;
ÑÑf g
}
ÖÖ 
}
ÜÜ 
IList
àà 
<
àà 
int
àà 
>
àà 
cardsUncovered
àà )
=
àà* +
expelPlayer
àà, 7
.
àà7 8
GetUncoveredCards
àà8 I
(
ààI J
)
ààJ K
;
ààK L
foreach
ââ 
(
ââ 
var
ââ 
playerConnected
ââ ,
in
ââ- /
playersInMatch
ââ0 >
)
ââ> ?
{
ää 
var
ãã 
channel
ãã 
=
ãã  !
playerConnected
ãã" 1
.
ãã1 2$
MatchServiceConnection
ãã2 H
;
ããH I
channel
åå 
.
åå "
NotifyPlayerWasExpel
åå 0
(
åå0 1#
usernameOfExpelPlayer
åå1 F
,
ååF G
cardsUncovered
ååH V
)
ååV W
;
ååW X
}
çç 
RemovePairs
èè 
(
èè 
	gameMatch
èè %
,
èè% &
cardsUncovered
èè' 5
)
èè5 6
;
èè6 7
	gameMatch
êê 
.
êê 
RemovePlayer
êê &
(
êê& '#
usernameOfExpelPlayer
êê' <
)
êê< =
;
êê= >
if
íí 
(
íí 
playersInMatch
íí "
.
íí" #
Count
íí# (
==
íí) +
$num
íí, -
)
íí- .
{
ìì 
this
îî 
.
îî !
NotifyMatchHasEnded
îî ,
(
îî, -
host
îî- 1
)
îî1 2
;
îî2 3
}
ïï 
}
óó 
}
òò 	
public
õõ 
IList
õõ 
<
õõ 
string
õõ 
>
õõ 3
%GetUsernamesOfPlayersConnectedToMatch
õõ B
(
õõB C
string
õõC I
host
õõJ N
)
õõN O
{
úú 	
ServiceMatch
ùù 
	gameMatch
ùù "
=
ùù# $
GetMatch
ùù% -
(
ùù- .
host
ùù. 2
)
ùù2 3
;
ùù3 4
IList
üü 
<
üü 
string
üü 
>
üü 
playerUsername
üü (
=
üü) *
	gameMatch
üü+ 4
.
üü4 53
%GetUsernamesOfPlayersConnectedToMatch
üü5 Z
(
üüZ [
)
üü[ \
;
üü\ ]
return
°° 
playerUsername
°° !
;
°°! "
}
¢¢ 	
public
•• 
IList
•• 
<
•• 
string
•• 
>
•• 
GetPlayersVoted
•• ,
(
••, -
string
••- 3
host
••4 8
,
••8 9
string
••: @
username
••A I
)
••I J
{
¶¶ 	
ServiceMatch
ßß 
	gameMatch
ßß "
=
ßß# $
GetMatch
ßß% -
(
ßß- .
host
ßß. 2
)
ßß2 3
;
ßß3 4
ServicePlayer
©© 
player
©©  
=
©©! "
	gameMatch
©©# ,
.
©©, -
	GetPlayer
©©- 6
(
©©6 7
username
©©7 ?
)
©©? @
;
©©@ A
IList
™™ 
<
™™ 
string
™™ 
>
™™ 
playersVoted
™™ &
=
™™' (
player
™™) /
.
™™/ 0
GetPlayersVoted
™™0 ?
(
™™? @
)
™™@ A
;
™™A B
return
¨¨ 
playersVoted
¨¨ 
;
¨¨  
}
≠≠ 	
public
µµ 
int
µµ 

ChangeTurn
µµ 
(
µµ 
ServiceMatch
µµ *
	gameMatch
µµ+ 4
,
µµ4 5
int
µµ6 9*
indexOfPlayerWithCurrentTurn
µµ: V
)
µµV W
{
∂∂ 	
if
∑∑ 
(
∑∑ *
indexOfPlayerWithCurrentTurn
∑∑ ,
==
∑∑- /
(
∑∑0 1
	gameMatch
∑∑1 :
.
∑∑: ;(
GetPlayersConnectedToMatch
∑∑; U
(
∑∑U V
)
∑∑V W
.
∑∑W X
Count
∑∑X ]
-
∑∑^ _
$num
∑∑` a
)
∑∑a b
)
∑∑b c
{
∏∏ *
indexOfPlayerWithCurrentTurn
ππ ,
=
ππ- .
$num
ππ/ 0
;
ππ0 1
}
∫∫ 
else
ªª 
{
ºº *
indexOfPlayerWithCurrentTurn
ΩΩ ,
++
ΩΩ, .
;
ΩΩ. /
}
ææ 
return
¿¿ *
indexOfPlayerWithCurrentTurn
¿¿ /
;
¿¿/ 0
}
¡¡ 	
public
…… 
void
…… 
RemovePairs
…… 
(
……  
ServiceMatch
……  ,
	gameMatch
……- 6
,
……6 7
IList
……8 =
<
……= >
int
……> A
>
……A B
cardsUncovered
……C Q
)
……Q R
{
   	
if
ÀÀ 
(
ÀÀ 
(
ÀÀ 
cardsUncovered
ÀÀ 
.
ÀÀ  
Count
ÀÀ  %
%
ÀÀ& '
$num
ÀÀ( )
)
ÀÀ) *
==
ÀÀ+ -
$num
ÀÀ. /
)
ÀÀ/ 0
{
ÃÃ 
	gameMatch
ÕÕ 
.
ÕÕ 

TotalPairs
ÕÕ $
=
ÕÕ% &
	gameMatch
ÕÕ' 0
.
ÕÕ0 1

TotalPairs
ÕÕ1 ;
-
ÕÕ< =
(
ÕÕ> ?
cardsUncovered
ÕÕ? M
.
ÕÕM N
Count
ÕÕN S
/
ÕÕT U
$num
ÕÕV W
)
ÕÕW X
;
ÕÕX Y
}
ŒŒ 
else
œœ 
{
–– 
	gameMatch
—— 
.
—— 

TotalPairs
—— $
=
——% &
	gameMatch
——' 0
.
——0 1

TotalPairs
——1 ;
-
——< =
(
——> ?
(
——? @
cardsUncovered
——@ N
.
——N O
Count
——O T
-
——U V
$num
——W X
)
——X Y
/
——Z [
$num
——\ ]
)
——] ^
;
——^ _
}
““ 
}
”” 	
}
‘‘ 
}’’ ß
]C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MemoryGameService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?

PerSession? I
,I J
ConcurrencyMode 
= 
ConcurrencyMode )
.) *
Single* 0
)0 1
]1 2
public 

partial 
class 
MemoryGameService *
{ 
private 
static 
IList 
< 
ServiceMatch )
>) *
_matches+ 3
=4 5
new6 9
List: >
<> ?
ServiceMatch? K
>K L
(L M
)M N
;N O
public 
MemoryGameService  
(  !
)! "
{# $
}% &
} 
} ∞;
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\PlayerRegistryService.cs
	namespace		 	
MemoryGameService		
 
.		 
Services		 $
{

 
public 

partial 
class 
MemoryGameService *
:+ ,"
IPlayerRegistryService- C
{ 
public 
bool 
RegisterNewPlayer %
(% &
	PlayerDto& /
	playerDTO0 9
,9 :
string; A
saltB F
)F G
{ 	
Account 

newAccount 
=  
new! $
Account% ,
(, -
)- .
{ 
EmailAddress 
= 
	playerDTO (
.( )
EmailAddress) 5
,5 6
Username 
= 
	playerDTO $
.$ %
Username% -
,- .
Password 
= 
	playerDTO $
.$ %
Password% -
,- .
Salt 
= 
salt 
, 
EmailWasVerified  
=! "
false# (
,( )
ActivationToken 
=  !
	playerDTO" +
.+ ,
VerificationToken, =
} 
; 
Player 
	newPlayer 
= 
new "
Player# )
() *
)* +
{ 
EmailAddress 
= 

newAccount )
.) *
EmailAddress* 6
,6 7
Score 
= 
$num 
}   
;   
MemoryGameContext!! 
memoryGameContext!! /
=!!0 1
new!!2 5
MemoryGameContext!!6 G
(!!G H
)!!H I
;!!I J

UnitOfWork"" 

unitOfWork"" !
=""" #
new""$ '

UnitOfWork""( 2
(""2 3
memoryGameContext""3 D
)""D E
;""E F
try## 
{$$ 

unitOfWork%% 
.%% 
Accounts%% #
.%%# $
Add%%$ '
(%%' (

newAccount%%( 2
)%%2 3
;%%3 4

unitOfWork&& 
.&& 
Players&& "
.&&" #
Add&&# &
(&&& '
	newPlayer&&' 0
)&&0 1
;&&1 2
int'' 
rowsAffected''  
=''! "

unitOfWork''# -
.''- .
Complete''. 6
(''6 7
)''7 8
;''8 9
return(( 
rowsAffected(( #
>(($ %
$num((& '
;((' (
})) 
catch** 
(** 
SqlException** 
sqlException**  ,
)**, -
{++ 
_logger,, 
.,, 
Fatal,, 
(,, 
$str,, p
+,,q r
$str-- 3
+--4 5
$str.. 8
,..8 9
sqlException..: F
)..F G
;..G H
throw// 
;// 
}00 
catch11 
(11 
EntityException11 "
entityException11# 2
)112 3
{22 
_logger33 
.33 
Fatal33 
(33 
$str33 w
+33x y
$str44 _
+44` a
$str55 8
,558 9
entityException55: I
)55I J
;55J K
throw66 
;66 
}77 
finally88 
{99 

unitOfWork:: 
.:: 
Dispose:: "
(::" #
)::# $
;::$ %
};; 
}<< 	
public?? 
bool?? #
EmailAddressIsAvailable?? +
(??+ ,
string??, 2
emailAddress??3 ?
)??? @
{@@ 	

UnitOfWorkAA 

unitOfWorkAA !
=AA" #
newAA$ '

UnitOfWorkAA( 2
(AA2 3
newAA3 6
MemoryGameContextAA7 H
(AAH I
)AAI J
)AAJ K
;AAK L
tryBB 
{CC 
AccountDD /
#accountWithTheSpecifiedEmailAddressDD ;
=DD< =

unitOfWorkDD> H
.DDH I
AccountsDDI Q
.DDQ R
GetDDR U
(DDU V
emailAddressDDV b
)DDb c
;DDc d
ifEE 
(EE /
#accountWithTheSpecifiedEmailAddressEE 7
==EE8 :
nullEE; ?
)EE? @
{FF 
returnGG 
trueGG 
;GG  
}HH 
returnII 
falseII 
;II 
}JJ 
catchKK 
(KK 
SqlExceptionKK 
sqlExceptionKK  ,
)KK, -
{LL 
_loggerMM 
.MM 
FatalMM 
(MM 
$strMM f
+MMg h
$strNN G
+NNH I
$strOO ?
,OO? @
sqlExceptionOOA M
)OOM N
;OON O
throwPP 
;PP 
}QQ 
catchRR 
(RR 
EntityExceptionRR "
entityExceptionRR# 2
)RR2 3
{SS 
_loggerTT 
.TT 
FatalTT 
(TT 
$strTT ]
+TT^ _
$strUU _
+UU` a
$strVV >
,VV> ?
entityExceptionVV@ O
)VVO P
;VVP Q
throwWW 
;WW 
}XX 
finallyYY 
{ZZ 

unitOfWork[[ 
.[[ 
Dispose[[ "
([[" #
)[[# $
;[[$ %
}\\ 
}]] 	
public`` 
bool`` 
UserNameIsAvailable`` '
(``' (
string``( .
username``/ 7
)``7 8
{aa 	

UnitOfWorkbb 

unitOfWorkbb !
=bb" #
newbb$ '

UnitOfWorkbb( 2
(bb2 3
newbb3 6
MemoryGameContextbb7 H
(bbH I
)bbI J
)bbJ K
;bbK L
trycc 
{dd 
Accountee +
accountWithTheSpecifiedUsernameee 7
=ee8 9

unitOfWorkee: D
.eeD E
AccountseeE M
.eeM N
FindFirstOccurenceeeN `
(ee` a
accounteea h
=>eei k
accounteel s
.ees t
Usernameeet |
==ee} 
username
eeÄ à
)
eeà â
;
eeâ ä
ifff 
(ff +
accountWithTheSpecifiedUsernameff 3
==ff4 6
nullff7 ;
)ff; <
{gg 
returnhh 
truehh 
;hh  
}ii 
returnjj 
falsejj 
;jj 
}kk 
catchll 
(ll 
SqlExceptionll 
sqlExceptionll  ,
)ll, -
{mm 
_loggernn 
.nn 
Fatalnn 
(nn 
$strnn b
+nnc d
$stroo Y
+ooZ [
$strpp ;
,pp; <
sqlExceptionpp= I
)ppI J
;ppJ K
throwqq 
;qq 
}rr 
catchss 
(ss 
EntityExceptionss "
entityExceptionss# 2
)ss2 3
{tt 
_loggeruu 
.uu 
Fataluu 
(uu 
$struu ]
+uu^ _
$strvv _
+vv` a
$strww :
,ww: ;
entityExceptionww< K
)wwK L
;wwL M
throwxx 
;xx 
}yy 
finallyzz 
{{{ 

unitOfWork|| 
.|| 
Dispose|| "
(||" #
)||# $
;||$ %
}}} 
}~~ 	
}
ÅÅ 
}ÇÇ ∫
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\ScoreService.cs
	namespace

 	
MemoryGameService


 
.

 
Services

 $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
IScoreService- :
{ 
List 
< 
PlayerScoreDto 
> 
IScoreService *
.* +#
GetPlayersWithBestScore+ B
(B C
intC F(
numberOfPlayersToBeRetrievedG c
)c d
{ 	

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
try 
{ 
IEnumerable 
< 
Account #
># $
accountEntities% 4
=5 6

unitOfWork7 A
.A B
AccountsB J
.J K-
!GetNumberOfAccountsWithPlayerInfoK l
(l m)
numberOfPlayersToBeRetrieved	m â
)
â ä
;
ä ã
List 
< 
PlayerScoreDto #
># $!
playersWithBestScores% :
=; <
new= @
ListA E
<E F
PlayerScoreDtoF T
>T U
(U V
)V W
;W X
foreach 
( 
var 
account #
in$ &
accountEntities' 6
)6 7
{ 
PlayerScoreDto "
playerScore# .
=/ 0
new1 4
PlayerScoreDto5 C
(C D
)D E
{ 
Username  
=! "
account# *
.* +
Username+ 3
,3 4

TotalScore "
=# $
account% ,
., -
Player- 3
.3 4
Score4 9
} 
; !
playersWithBestScores )
.) *
Add* -
(- .
playerScore. 9
)9 :
;: ;
}   
return"" !
playersWithBestScores"" ,
;"", -
}## 
catch$$ 
($$ 
SqlException$$ 
sqlException$$  ,
)$$, -
{%% 
_logger&& 
.&& 
Fatal&& 
(&& 
$str&& d
+&&e f
$str'' ;
+''< =
$str(( =
,((= >
sqlException((? K
)((K L
;((L M
throw)) 
;)) 
}** 
catch++ 
(++ 
EntityException++ "
entityException++# 2
)++2 3
{,, 
_logger-- 
.-- 
Fatal-- 
(-- 
$str-- ]
+--^ _
$str.. _
+..` a
$str// =
,//= >
entityException//? N
)//N O
;//O P
throw00 
;00 
}11 
finally22 
{33 

unitOfWork44 
.44 
Dispose44 "
(44" #
)44# $
;44$ %
}55 
}66 	
}77 
}88 †	
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\TokenGenerator.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
ITokenGenerator- <
{ 
public

 
string

 
GenerateToken

 #
(

# $
int

$ '
length

( .
)

. /
{ 	
string 
token 
= 
Guid 
.  
NewGuid  '
(' (
)( )
.) *
ToString* 2
(2 3
)3 4
;4 5
token 
= 
token 
. 
Replace !
(! "
$str" %
,% &
$str' )
)) *
;* +
token 
= 
token 
. 
	Substring #
(# $
$num$ %
,% &
length' -
)- .
;. /
return 
token 
; 
} 	
} 
} ∆
YC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\CardShuffler.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public

 

class

 
CardShuffler

 
{ 
private 
	IShuffler 
< 
CardDto !
>! "
_shufflerAlgorithm# 5
;5 6
public 
CardShuffler 
( 
) 
{ 	
_shufflerAlgorithm 
=  
new! $
FisherYatesShuffler% 8
<8 9
CardDto9 @
>@ A
(A B
)B C
;C D
} 	
public 
void 
ShuffleCards  
(  !
IList! &
<& '
CardDto' .
>. /
cardDeck0 8
)8 9
{ 	
_shufflerAlgorithm 
. 
Shuffle &
(& '
cardDeck' /
)/ 0
;0 1
} 	
} 
}   ˛
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\FisherYatesShuffler.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public 

class 
FisherYatesShuffler $
<$ %
ShufflingCollection% 8
>8 9
:: ;
	IShuffler< E
<E F
ShufflingCollectionF Y
>Y Z
where[ `
ShufflingCollectiona t
:u v
classw |
{ 
public 
void 
Shuffle 
( 
IList !
<! "
ShufflingCollection" 5
>5 6
collectionToShuffle7 J
)J K
{ 	
int 
	lastIndex 
= 
collectionToShuffle /
./ 0
Count0 5
-6 7
$num8 9
;9 :
while 
( 
	lastIndex 
> 
$num  
)  !
{ 
int 
randomIndex 
=  !,
 GenerateRandomNumberBetweenRange" B
(B C
$numC D
,D E
	lastIndexF O
)O P
;P Q
var 
auxiliaryContainer &
=' (
collectionToShuffle) <
[< =
	lastIndex= F
]F G
;G H
collectionToShuffle #
[# $
	lastIndex$ -
]- .
=/ 0
collectionToShuffle1 D
[D E
randomIndexE P
]P Q
;Q R
collectionToShuffle #
[# $
randomIndex$ /
]/ 0
=1 2
auxiliaryContainer3 E
;E F
	lastIndex 
-- 
; 
} 
} 	
private 
int ,
 GenerateRandomNumberBetweenRange 4
(4 5
int5 8
minimum9 @
,@ A
intB E
maximumF M
)M N
{ 	
Random   !
randomNumberGenerator   (
=  ) *
new  + .
Random  / 5
(  5 6
)  6 7
;  7 8
int!! 
randomNumber!! 
=!! !
randomNumberGenerator!! 4
.!!4 5
Next!!5 9
(!!9 :
minimum!!: A
,!!A B
maximum!!C J
)!!J K
;!!K L
return"" 
randomNumber"" 
;""  
}## 	
}$$ 
}%% à
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\IShuffler.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public

 

	interface

 
	IShuffler

 
<

 
ShufflingCollection

 2
>

2 3
where

4 9
ShufflingCollection

: M
:

N O
class

P U
{ 
void 
Shuffle 
( 
IList 
< 
ShufflingCollection .
>. /
collectionToShuffle0 C
)C D
;D E
} 
} ™
YC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\MailTemplate.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public

 

class

 
MailTemplate

 
{ 
private 
MimeMessage 
_content $
;$ %
public 
MailTemplate 
( 
) 
{ 	
_content 
= 
new 
MimeMessage &
(& '
)' (
;( )
var 
sender 
= 
new 
MailboxAddress +
(+ ,
$str, G
,G H
$strI [
)[ \
;\ ]
_content 
. 
From 
. 
Add 
( 
sender $
)$ %
;% &
} 	
public 
void 
SetReceiver 
(  
string  &
name' +
,+ ,
string- 3
emailAddress4 @
)@ A
{ 	
MailboxAddress 
receiver #
=$ %
new& )
MailboxAddress* 8
(8 9
name9 =
,= >
emailAddress? K
)K L
;L M
_content 
. 
To 
. 
Add 
( 
receiver $
)$ %
;% &
}   	
public'' 
void'' 

SetMessage'' 
('' 
string'' %
subject''& -
,''- .
string''/ 5
message''6 =
)''= >
{(( 	
TextPart)) 
messageContent)) #
=))$ %
new))& )
TextPart))* 2
())2 3
$str))3 :
))): ;
;)); <
messageContent** 
.** 
Text** 
=**  !
message**" )
;**) *
_content++ 
.++ 
Body++ 
=++ 
messageContent++ *
;++* +
_content,, 
.,, 
Subject,, 
=,, 
subject,, &
;,,& '
}-- 	
public22 
void22 
Send22 
(22 
)22 
{33 	

SmtpClient44 
client44 
=44 
new44  #

SmtpClient44$ .
(44. /
)44/ 0
;440 1
client55 
.55 
Connect55 
(55 
$str55 +
,55+ ,
$num55- 0
,550 1
false552 7
)557 8
;558 9
client66 
.66 
Authenticate66 
(66  
$str66  ;
,66; <
$str66= O
)66O P
;66P Q
client77 
.77 
Send77 
(77 
_content77  
)77  !
;77! "
client88 
.88 

Disconnect88 
(88 
true88 "
)88" #
;88# $
}99 	
}:: 
};; 