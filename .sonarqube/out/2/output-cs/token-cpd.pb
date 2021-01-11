Ë	
iC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccountModifiabilityService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface (
IAccountModifiabilityService 1
{		 
[

 	
FaultContract

	 
(

 
typeof

 
(

 '
DatabaseConnectionLostFault

 9
)

9 :
)

: ;
]

; <
[ 	
OperationContract	 
] 
bool 
SetNewPassword 
( .
"PasswordModificationCredentialsDto >+
passwordModificationCredentials? ^
)^ _
;_ `
[ 	
FaultContract	 
( 
typeof 
( '
DatabaseConnectionLostFault 9
)9 :
): ;
]; <
[ 	
OperationContract	 
] 
bool 
ChangeUsername 
( 
string "
emailAddress# /
,/ 0
string1 7
newUsername8 C
)C D
;D E
} 
} 
hC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccountVerificationService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface '
IAccountVerificationService 0
{ 
[ 	
OperationContract	 
] 
bool		  
SetAccountAsVerified		 !
(		! "
string		" (
emailAddress		) 5
)		5 6
;		6 7
[

 	
OperationContract

	 
]

 
bool &
AssignNewVerificationToken '
(' (
string( .
emailAddress/ ;
,; <
string= C
verificationTokenD U
)U V
;V W
[ 	
OperationContract	 
] 
bool 
VerifyToken 
( 
string 
emailAddress  ,
,, -
string. 4
verificationToken5 F
)F G
;G H
} 
} ÿ
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ICardDeckRetrieverService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public		 

	interface		 %
ICardDeckRetrieverService		 .
{

 
[ 	
FaultContract	 
( 
typeof 
( #
CardDeckRetrievingFault 5
)5 6
)6 7
]7 8
[ 	
OperationContract	 
] 
CardDeckDTO 
GetCardDeckAndCards '
(' (
int( +

cardDeckId, 6
)6 7
;7 8
[ 	
OperationContract	 
] 
IList 
< 
CardDeckInfoDto 
> 
GetCardDecksInfo /
(/ 0
)0 1
;1 2
} 
} ƒ
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ILobbyService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
( 
SessionMode  
=! "
SessionMode# .
.. /
Required/ 7
,7 8
CallbackContract 
= 
typeof !
(! "!
ILobbyServiceCallback" 7
)7 8
)8 9
]9 :
public 

	interface 
ILobbyService "
{		 
[

 	
OperationContract

	 
(

 
IsOneWay

 #
=

$ %
true

& *
)

* +
]

+ ,
void 
	JoinLobby 
( 
string 
host "
," #
string$ *
username+ 3
)3 4
;4 5
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

LeaveLobby 
( 
string 
host #
,# $
string% +
username, 4
)4 5
;5 6
[ 	
OperationContract	 
] 
IList 
< 
string 
> #
GetActivePlayersInLobby -
(- .
string. 4
host5 9
)9 :
;: ;
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	StartGame 
( 
string 
host "
)" #
;# $
} 
[ 
ServiceContract 
] 
public 

	interface !
ILobbyServiceCallback *
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void "
NotifyNewPlayerEntered #
(# $
string$ *
username+ 3
)3 4
;4 5
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotifyPlayerLeft 
( 
string $
username% -
)- .
;. /
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void "
TakePlayersToMatchView #
(# $
IList$ )
<) *
string* 0
>0 1
playersInMatch2 @
)@ A
;A B
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void !
TakePlayersOutOfLobby "
(" #
)# $
;$ %
} 
}   ú
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMatchCreationService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface !
IMatchCreationService *
{ 
[		 	
OperationContract			 
(		 
IsOneWay		 #
=		$ %
true		& *
)		* +
]		+ ,
void

 
CreateNewMatch

 
(

 
MatchDto

 $
gameMatchDto

% 1
)

1 2
;

2 3
} 
} π
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMatchDiscoveryService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public		 

	interface		 "
IMatchDiscoveryService		 +
{

 
[ 	
OperationContract	 
] 
IList 
< 
MatchDto 
> 
GetActiveMatches (
(( )
)) *
;* +
[ 	
FaultContract	 
( 
typeof 
( "
MatchAccessDeniedFault 4
)4 5
)5 6
]6 7
[ 	
OperationContract	 
] 
bool 
CanJoin 
( 
string 
	matchHost %
)% &
;& '
} 
} ï
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IPlayerRegistryService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface "
IPlayerRegistryService +
{ 
[		 	
OperationContract			 
]		 
bool

 
RegisterNewPlayer

 
(

 
	PlayerDTO

 (
	playerDTO

) 2
,

2 3
string

4 :
salt

; ?
)

? @
;

@ A
[ 	
OperationContract	 
] 
bool #
EmailAddressIsAvailable $
($ %
string% +
emailAddress, 8
)8 9
;9 :
[ 	
OperationContract	 
] 
bool 
UserNameIsAvailable  
(  !
string! '
username( 0
)0 1
;1 2
} 
} ˝
kC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjectMappers\CardDeckMapper.cs
	namespace 	
MemoryGameService
 
. %
DataTransferObjectMappers 5
{ 
public 

static 
class 
CardDeckMapper &
{ 
public		 
static		 
CardDeckDTO		 !
	CreateDTO		" +
(		+ ,
CardDeck		, 4
cardDeckEntity		5 C
)		C D
{

 	
CardDeckDTO 
cardDeckDTO #
=$ %
new& )
CardDeckDTO* 5
(5 6
)6 7
{ 

CardDeckId 
= 
cardDeckEntity +
.+ ,

CardDeckId, 6
,6 7
Name 
= 
cardDeckEntity %
.% &
Name& *
,* +
	BackImage 
= 
cardDeckEntity *
.* +
	BackImage+ 4
,4 5
NumberOfPairs 
= 
cardDeckEntity  .
.. /
NumberOfPairs/ <
,< =
Cards 
= 
new 
List  
<  !
CardDto! (
>( )
() *
)* +
} 
; 
return 
cardDeckDTO 
; 
} 	
public 
static 
CardDeck 
CreateEntity +
(+ ,
CardDeckDTO, 7
cardDeckDTO8 C
)C D
{ 	
CardDeck 
cardDeck 
= 
new  #
CardDeck$ ,
(, -
)- .
{ 

CardDeckId 
= 
cardDeckDTO (
.( )

CardDeckId) 3
,3 4
Name 
= 
cardDeckDTO "
." #
Name# '
,' (
	BackImage 
= 
cardDeckDTO '
.' (
	BackImage( 1
,1 2
NumberOfPairs 
= 
cardDeckDTO  +
.+ ,
NumberOfPairs, 9
} 
; 
return   
cardDeck   
;   
}!! 	
}"" 
}## ò
gC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjectMappers\CardMapper.cs
	namespace 	
MemoryGameService
 
. %
DataTransferObjectMappers 5
{ 
public 

static 
class 

CardMapper "
{ 
public 
static 
CardDto 
	CreateDTO '
(' (
Card( ,
card- 1
)1 2
{		 	
CardDto

 
cardDto

 
=

 
new

 !
CardDto

" )
(

) *
)

* +
{ 
CardId 
= 
card 
. 
CardId $
,$ %

FrontImage 
= 
card !
.! "

FrontImage" ,
} 
; 
return 
cardDto 
; 
} 	
public 
static 
Card 
CreateEntity '
(' (
CardDto( /
cardDto0 7
)7 8
{ 	
Card 
card 
= 
new 
Card  
(  !
)! "
{ 
CardId 
= 
cardDto  
.  !
CardId! '
,' (

FrontImage 
= 
cardDto $
.$ %

FrontImage% /
} 
; 
return 
card 
; 
} 	
} 
} Ê
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckDTO.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class 
CardDeckDTO 
{ 
[		 	

DataMember			 
]		 
public

 
int

 

CardDeckId

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
[ 	

DataMember	 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
[ 	

DataMember	 
] 
public 
string 
	BackImage 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
int 
NumberOfPairs  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

DataMember	 
] 
public 
IList 
< 
CardDto 
> 
Cards #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} Œ
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckInfoDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class 
CardDeckInfoDto  
{ 
[ 	

DataMember	 
] 
public		 
int		 

CardDeckId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
[

 	

DataMember

	 
]

 
public 
string 
CardDeckName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ∏
^C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class 
CardDto 
{ 
[ 	

DataMember	 
] 
public		 
int		 
CardId		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
[

 	

DataMember

	 
]

 
public 
string 

FrontImage  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} û
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\CardPairDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class 
CardPairDto 
{ 
[ 	

DataMember	 
] 
public		 
int		 
IndexOfCard1		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
[

 	

DataMember

	 
]

 
public 
int 
IndexOfCard2 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
bool 
BothCardsAreEqual %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ≠
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\ExpelVoteDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class 
ExpelVoteDto 
{ 
[ 	

DataMember	 
] 
public		 
string		 
Host		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
[

 	

DataMember

	 
]

 
public 
string !
UsernameOfExpelPlayer +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
[ 	

DataMember	 
] 
public 
string !
UsernameOfVoterPlayer +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} œB
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\MatchDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
MatchDto 
{ 
public 
int 
MaxNumberOfPlayers %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public		 
CardDeckDTO		 
CardDeckDto		 &
{		' (
get		) ,
;		, -
set		. 1
;		1 2
}		3 4
public

 
string

 
Host

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
bool 

HasStarted 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Lobby 
Lobby 
{ 
get  
;  !
set" %
;% &
}' (
private 
IList 
< 
PlayerInMatch #
># $
_players% -
;- .
public 
int 

TotalPairs 
{ 
get  #
;# $
set% (
;( )
}* +
public 
MatchDto 
( 
) 
{ 	
Lobby 
= 
new 
Lobby 
( 
) 
;  
_players 
= 
new 
List 
<  
PlayerInMatch  -
>- .
(. /
)/ 0
;0 1
} 	
public 
IList 
< 
PlayerInMatch "
>" #&
GetPlayersConnectedToMatch$ >
(> ?
)? @
{ 	
return 
_players 
; 
} 	
public 
IList 
< 
string 
> 1
%GetUsernamesOfPlayersConnectedToMatch B
(B C
)C D
{ 	
IList 
< 
string 
> .
"usernamesOfPlayersConnectedToMatch <
== >
new? B
ListC G
<G H
stringH N
>N O
(O P
)P Q
;Q R
foreach 
( 
var 
player 
in !
_players" *
)* +
{ .
"usernamesOfPlayersConnectedToMatch   2
.  2 3
Add  3 6
(  6 7
player  7 =
.  = >
Username  > F
)  F G
;  G H
}!! 
return"" .
"usernamesOfPlayersConnectedToMatch"" 5
;""5 6
}## 	
public%% 
void%% 
	AddPlayer%% 
(%% 
PlayerInMatch%% +
player%%, 2
)%%2 3
{&& 	
_players'' 
.'' 
Add'' 
('' 
player'' 
)''  
;''  !
}(( 	
public** 
PlayerInMatch** 
	GetPlayer** &
(**& '
string**' -
username**. 6
)**6 7
{++ 	
PlayerInMatch,, 
playerRetrieved,, )
=,,* +
null,,, 0
;,,0 1
foreach-- 
(-- 
var-- 
player-- 
in-- !
_players--" *
)--* +
{.. 
if// 
(// 
player// 
.// 
Username// #
.//# $
Equals//$ *
(//* +
username//+ 3
)//3 4
)//4 5
{00 
return11 
player11 !
;11! "
}22 
}33 
return44 
playerRetrieved44 "
;44" #
}55 	
public88 
void88 

StartMatch88 
(88 
)88  
{99 	
IList:: 
<:: 
PlayerInLobby:: 
>::  #
playersConnectedToLobby::! 8
=::9 :
Lobby::; @
.::@ A&
GetPlayersConnectedToLobby::A [
(::[ \
)::\ ]
;::] ^
IList;; 
<;; 
string;; 
>;; .
"usernamesOfPlayersConnectedToLobby;; <
=;;= >
Lobby;;? D
.;;D E1
%GetUsernamesOfPlayersConnectedToLobby;;E j
(;;j k
);;k l
;;;l m
foreach<< 
(<< 
var<< 
playerInLobby<< &
in<<' )#
playersConnectedToLobby<<* A
)<<A B
{== 
var>> 
channel>> 
=>> 
playerInLobby>> +
.>>+ ,

Connection>>, 6
;>>6 7
channel?? 
.?? "
TakePlayersToMatchView?? .
(??. /.
"usernamesOfPlayersConnectedToLobby??/ Q
)??Q R
;??R S
}@@ 

HasStartedAA 
=AA 
trueAA 
;AA 
}BB 	
publicDD 
PlayerInMatchDD "
GetPlayerWithBestScoreDD 3
(DD3 4
)DD4 5
{EE 	
PlayerInMatchFF 
playerWithBestScoreFF -
=FF. /
_playersFF0 8
[FF8 9
$numFF9 :
]FF: ;
;FF; <
forHH 
(HH 
intHH 
currentIndexHH  
=HH! "
$numHH# $
;HH$ %
currentIndexHH& 2
<HH3 4
_playersHH5 =
.HH= >
CountHH> C
-HHD E
$numHHF G
;HHG H
currentIndexHHI U
++HHU W
)HHW X
{II 
ifJJ 
(JJ 
playerWithBestScoreJJ &
.JJ& '
ScoreJJ' ,
<JJ- .
_playersJJ/ 7
[JJ7 8
currentIndexJJ8 D
+JJE F
$numJJG H
]JJH I
.JJI J
ScoreJJJ O
)JJO P
{KK 
playerWithBestScoreLL '
=LL( )
_playersLL* 2
[LL2 3
currentIndexLL3 ?
+LL@ A
$numLLB C
]LLC D
;LLD E
}MM 
}NN 
returnOO 
playerWithBestScoreOO &
;OO& '
}PP 	
publicRR 
intRR 
AddExpelVoteRR 
(RR  
stringRR  &
playerUsernameRR' 5
)RR5 6
{SS 	
intTT 
playerExpelVotesTT  
=TT! "
$numTT# $
;TT$ %
foreachUU 
(UU 
varUU 
playerUU 
inUU  "
_playersUU# +
)UU+ ,
{VV 
ifWW 
(WW 
playerWW 
.WW 
UsernameWW #
.WW# $
EqualsWW$ *
(WW* +
playerUsernameWW+ 9
)WW9 :
)WW: ;
{XX 
playerYY 
.YY 
ExpulsionVotesYY )
++YY) +
;YY+ ,
playerExpelVotesZZ $
=ZZ% &
playerZZ' -
.ZZ- .
ExpulsionVotesZZ. <
;ZZ< =
}[[ 
}\\ 
return^^ 
playerExpelVotes^^ #
;^^# $
}__ 	
publicaa 
voidaa 
RemovePlayeraa  
(aa  !
stringaa! '
playerUsernameaa( 6
)aa6 7
{bb 	
PlayerInMatchcc 
playerToRemovecc (
=cc) *
thiscc+ /
.cc/ 0
	GetPlayercc0 9
(cc9 :
playerUsernamecc: H
)ccH I
;ccI J
_playersdd 
.dd 
Removedd 
(dd 
playerToRemovedd *
)dd* +
;dd+ ,
}ee 	
publicgg 
PlayerInMatchgg "
GetPlyerWithActiveTurngg 3
(gg3 4
)gg4 5
{hh 	
PlayerInMatchii  
playerWithActiveTurnii .
=ii/ 0
nullii1 5
;ii5 6
foreachjj 
(jj 
varjj 
playerjj 
injj  "
_playersjj# +
)jj+ ,
{kk 
ifll 
(ll 
playerll 
.ll 
HasActiveTurnll (
)ll( )
{mm  
playerWithActiveTurnnn (
=nn) *
playernn+ 1
;nn1 2
}oo 
}pp 
returnrr  
playerWithActiveTurnrr '
;rr' (
}ss 	
}uu 
}vv ∆
yC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PasswordModificationCredentialsDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class .
"PasswordModificationCredentialsDto 3
{ 
[ 	

DataMember	 
] 
public		 
string		 
EmailAddress		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
[

 	

DataMember

	 
]

 
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
string 
Salt 
{ 
get  
;  !
set" %
;% &
}' (
} 
} Ã
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInLobby.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
PlayerInLobby 
{ 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 !
ILobbyServiceCallback		 $

Connection		% /
{		0 1
get		2 5
;		5 6
set		7 :
;		: ;
}		< =
}

 
} ∂+
\C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\Lobby.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
Lobby 
{ 
private		 
IList		 
<		 
PlayerInLobby		 #
>		# $$
_playersConnectedToLobby		% =
;		= >
public 
Lobby 
( 
) 
{ 	$
_playersConnectedToLobby $
=% &
new' *
List+ /
</ 0
PlayerInLobby0 =
>= >
(> ?
)? @
;@ A
} 	
public 
void 
AddPlayerToLobby $
($ %
string% +
host, 0
,0 1
string2 8
username9 A
)A B
{ 	
PlayerInLobby 
lobbyRequestDto )
=* +
new, /
PlayerInLobby0 =
(= >
)> ?
{ 
Host 
= 
host 
, 
Username 
= 
username #
,# $

Connection 
= 
OperationContext -
.- .
Current. 5
.5 6
GetCallbackChannel6 H
<H I!
ILobbyServiceCallbackI ^
>^ _
(_ `
)` a
} 
; $
_playersConnectedToLobby $
.$ %
Add% (
(( )
lobbyRequestDto) 8
)8 9
;9 :
} 	
public 
void !
RemovePlayerFromLobby )
() *
string* 0'
usernameOfPlayerToBeRemoved1 L
)L M
{ 	
foreach 
( 
var 
playerInLobby %
in& ($
_playersConnectedToLobby) A
)A B
{ 
if 
( '
usernameOfPlayerToBeRemoved /
./ 0
Equals0 6
(6 7
playerInLobby7 D
.D E
UsernameE M
)M N
)N O
{   $
_playersConnectedToLobby!! ,
.!!, -
Remove!!- 3
(!!3 4
playerInLobby!!4 A
)!!A B
;!!B C
break"" 
;"" 
}## 
}$$ 
}%% 	
public'' 
IList'' 
<'' 
PlayerInLobby'' "
>''" #&
GetPlayersConnectedToLobby''$ >
(''> ?
)''? @
{(( 	
return)) $
_playersConnectedToLobby)) +
;))+ ,
}** 	
public,, 
IList,, 
<,, 
string,, 
>,, 1
%GetUsernamesOfPlayersConnectedToLobby,, B
(,,B C
),,C D
{-- 	
IList.. 
<.. 
string.. 
>.. .
"usernamesOfPlayersConnectedToLobby.. <
=..= >
new..? B
List..C G
<..G H
string..H N
>..N O
(..O P
)..P Q
;..Q R
foreach// 
(// 
var// "
playerConnectedToLobby// /
in//0 2$
_playersConnectedToLobby//3 K
)//K L
{00 .
"usernamesOfPlayersConnectedToLobby11 2
.112 3
Add113 6
(116 7"
playerConnectedToLobby117 M
.11M N
Username11N V
)11V W
;11W X
}22 
return33 .
"usernamesOfPlayersConnectedToLobby33 5
;335 6
}44 	
public66 
void66 ,
 NotifyPlayersMatchHasBeenDeleted66 4
(664 5
)665 6
{77 	
foreach88 
(88 
var88 
playerInLobby88 &
in88' )$
_playersConnectedToLobby88* B
)88B C
{99 
var:: 
channel:: 
=:: 
playerInLobby:: +
.::+ ,

Connection::, 6
;::6 7
channel;; 
.;; !
TakePlayersOutOfLobby;; -
(;;- .
);;. /
;;;/ 0
}<< 
}== 	
public?? 
void?? $
NotifyOnePlayerLeftLobby?? ,
(??, -
string??- 3
username??4 <
)??< =
{@@ 	
foreachAA 
(AA 
varAA 
playerInLobbyAA &
inAA' )$
_playersConnectedToLobbyAA* B
)AAB C
{BB 
varCC 
channelCC 
=CC 
playerInLobbyCC +
.CC+ ,

ConnectionCC, 6
;CC6 7
channelDD 
.DD 
NotifyPlayerLeftDD (
(DD( )
usernameDD) 1
)DD1 2
;DD2 3
}EE 
}FF 	
publicHH 
voidHH '
NotifyNewPlayerEnteredLobbyHH /
(HH/ 0
stringHH0 6
usernameHH7 ?
)HH? @
{II 	
foreachJJ 
(JJ 
varJJ 
playerInLobbyJJ &
inJJ' )$
_playersConnectedToLobbyJJ* B
)JJB C
{KK 
varLL 
channelLL 
=LL 
playerInLobbyLL +
.LL+ ,

ConnectionLL, 6
;LL6 7
channelMM 
.MM "
NotifyNewPlayerEnteredMM .
(MM. /
usernameMM/ 7
)MM7 8
;MM8 9
}NN 
}OO 	
}QQ 
}RR ´
kC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerCredentialsDTO.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class  
PlayerCredentialsDTO %
{ 
[ 	

DataMember	 
] 
public		 
string		 
Username		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
[

 	

DataMember

	 
]

 
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 	
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerDTO.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
[ 
DataContract 
] 
public 

class 
	PlayerDTO 
{ 
[ 	

DataMember	 
] 
public		 
string		 
Username		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
[

 	

DataMember

	 
]

 
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 
VerificationToken '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} æ
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInMatch.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
PlayerInMatch 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
Score		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
public

 
bool

 
HasActiveTurn

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
=

0 1
false

2 7
;

7 8
public !
IMatchServiceCallback $"
MatchServiceConnection% ;
{< =
get> A
;A B
setC F
;F G
}H I
public 
int 
ExpulsionVotes !
{" #
get$ '
;' (
set) ,
;, -
}. /
private 
IList 
< 
string 
> 
_playersVoted +
;+ ,
private 
IList 
< 
int 
> 
_uncoveredCards *
;* +
public 
PlayerInMatch 
( 
) 
{ 	
_playersVoted 
= 
new 
List  $
<$ %
string% +
>+ ,
(, -
)- .
;. /
_uncoveredCards 
= 
new !
List" &
<& '
int' *
>* +
(+ ,
), -
;- .
} 	
public 
IList 
< 
string 
> 
GetPlayersVoted ,
(, -
)- .
{ 	
return 
_playersVoted  
;  !
} 	
public 
void 
AddPlayerVoted "
(" #
string# )
playerUsername* 8
)8 9
{ 	
_playersVoted 
. 
Add 
( 
playerUsername ,
), -
;- .
} 	
public   
IList   
<   
int   
>   
GetUncoveredCards   +
(  + ,
)  , -
{!! 	
return"" 
_uncoveredCards"" "
;""" #
}## 	
public%% 
void%% 
AddUncoveredCard%% $
(%%$ %
int%%% (
	cardIndex%%) 2
)%%2 3
{&& 	
_uncoveredCards'' 
.'' 
Add'' 
(''  
	cardIndex''  )
)'') *
;''* +
}(( 	
public** 
void** 
RemoveUncoveredCard** '
(**' (
)**( )
{++ 	
int,, 
indexOfLastCard,, 
=,,  !
_uncoveredCards,," 1
.,,1 2
Count,,2 7
-,,8 9
$num,,: ;
;,,; <
_uncoveredCards-- 
.-- 
Remove-- "
(--" #
_uncoveredCards--# 2
[--2 3
indexOfLastCard--3 B
]--B C
)--C D
;--D E
}.. 	
}// 
}00 §
eC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerScoreDTO.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
PlayerScoreDTO 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

TotalScore 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˇ
hC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerMovementDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class 
PlayerMovementDto "
{ 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
HasFormedAPair "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
	CardIndex 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
MovementsLeft		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
}

 
} ﬁ
oC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\VerificationTokenInfoDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public 

class $
VerificationTokenInfoDto )
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
VerificationToken '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
}		 ú
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccessibilityService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface !
IAccessibilityService *
{		 
[

 	
FaultContract

	 
(

 
typeof

 
(

 '
DatabaseConnectionLostFault

 9
)

9 :
)

: ;
]

; <
[ 	
OperationContract	 
] 
bool 

IsVerified 
( 
string 
username '
)' (
;( )
[ 	
FaultContract	 
( 
typeof 
( '
DatabaseConnectionLostFault 9
)9 :
): ;
]; <
[ 	
OperationContract	 
] 
bool 
ItsRegistered 
( 
string !
emailAddress" .
). /
;/ 0
[ 	
FaultContract	 
( 
typeof 
(  
NonExistentUserFault 2
)2 3
)3 4
]4 5
[ 	
FaultContract	 
( 
typeof 
( '
DatabaseConnectionLostFault 9
)9 :
): ;
]; <
[ 	
OperationContract	 
] 
string 
GetUserEmailAddress "
(" #
string# )
username* 2
)2 3
;3 4
[ 	
FaultContract	 
( 
typeof 
(  
NonExistentUserFault 2
)2 3
)3 4
]4 5
[ 	
FaultContract	 
( 
typeof 
( '
DatabaseConnectionLostFault 9
)9 :
): ;
]; <
[ 	
OperationContract	 
] 
string 
GetUsername 
( 
string !
emailAddress" .
). /
;/ 0
[ 	
FaultContract	 
( 
typeof 
(  
NonExistentUserFault 2
)2 3
)3 4
]4 5
[ 	
FaultContract	 
( 
typeof 
( '
DatabaseConnectionLostFault 9
)9 :
): ;
]; <
[ 	
OperationContract	 
]  
PlayerCredentialsDTO  
GetPlayerCredentials 1
(1 2
string2 8
username9 A
)A B
;B C
["" 	
OperationContract""	 
]"" 
string## 
GetSalt## 
(## 
string## 
username## &
)##& '
;##' (
[%% 	
OperationContract%%	 
]%% 
bool&& 
HasAccessRights&& 
(&& 
string&& #
username&&$ ,
,&&, -
string&&. 4
password&&5 =
)&&= >
;&&> ?
}'' 
}(( »
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ICommunicationService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
( 
SessionMode  
=! "
SessionMode# .
.. /
Required/ 7
,7 8
CallbackContract 
= 
typeof !
(! ")
ICommunicationServiceCallback" ?
)? @
)@ A
]A B
public 

	interface !
ICommunicationService *
{		 
[

 	
OperationContract

	 
(

 
IsOneWay

 #
=

$ %
false

& +
,

+ ,
IsInitiating

- 9
=

: ;
true

< @
)

@ A
]

A B
void +
SubscribeToCommunicationService ,
(, -
string- 3
username4 <
)< =
;= >
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
false& +
,+ ,
IsTerminating- :
=; <
true= A
)A B
]B C
void /
#UnsubscribeFromCommunicationService 0
(0 1
)1 2
;2 3
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
string 
sender  &
,& '
string( .
message/ 6
)6 7
;7 8
} 
[ 
ServiceContract 
] 
public 

	interface )
ICommunicationServiceCallback 2
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReciveMessage 
( 
string !
username" *
,* +
string, 2
message3 :
): ;
;; <
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void '
NotifyUserHasEnteredTheChat (
(( )
string) /
username0 8
)8 9
;9 :
} 
} €
\C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMailingService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface 
IMailingService $
{ 
[		 	
OperationContract			 
]		 
void

 !
SendVerificationToken

 "
(

" #$
VerificationTokenInfoDto

# ;!
verificationTokenInfo

< Q
)

Q R
;

R S
} 
} ü,
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMatchService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /!
IMatchServiceCallback/ D
)D E
)E F
]F G
public 

	interface 
IMatchService "
{		 
[

 	
OperationContract

	 
(

 
IsOneWay

 #
=

$ %
true

& *
)

* +
]

+ ,
void #
NotifyCardWasUncoveredd $
($ %
PlayerMovementDto% 6
playerMovementDto7 H
)H I
;I J
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

EnterMatch 
( 
string 
host #
,# $
string% +
username, 4
)4 5
;5 6
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
EndTurn 
( 
string 
host  
,  !
string" (
username) 1
,1 2
CardPairDto3 >
cardPairDto? J
)J K
;K L
[ 	
OperationContract	 
] 
IList 
< 
PlayerInMatch 
> &
GetPlayersConnectedToMatch 7
(7 8
string8 >
host? C
)C D
;D E
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotifyMatchHasEnded  
(  !
string! '
host( ,
), -
;- .
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

LeaveMatch 
( 
string 
host #
,# $
string% +
username, 4
)4 5
;5 6
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ExpelPlayer 
( 
ExpelVoteDto %
	expelVote& /
)/ 0
;0 1
[ 	
OperationContract	 
] 
IList 
< 
string 
> 1
%GetUsernamesOfPlayersConnectedToMatch ;
(; <
string< B
hostC G
)G H
;H I
[ 	
OperationContract	 
] 
IList 
< 
string 
> 
GetPlayersVoted %
(% &
string& ,
host- 1
,1 2
string3 9
username: B
)B C
;C D
} 
[ 
ServiceContract 
] 
public   

	interface   !
IMatchServiceCallback   *
{!! 
["" 	
OperationContract""	 
("" 
IsOneWay"" #
=""$ %
true""& *
)""* +
]""+ ,
void## 
UncoverCardd## 
(## 
int## 
	cardIndex## '
)##' (
;##( )
[$$ 	
OperationContract$$	 
($$ 
IsOneWay$$ #
=$$$ %
true$$& *
)$$* +
]$$+ ,
void%% 
NotifyTurnHasEnded%% 
(%%  
string%%  &
username%%' /
,%%/ 0
CardPairDto%%1 <
cardPairDto%%= H
)%%H I
;%%I J
[&& 	
OperationContract&&	 
(&& 
IsOneWay&& #
=&&$ %
true&&& *
)&&* +
]&&+ ,
void'' 
ShowWinners'' 
('' 
string'' 
winner''  &
)''& '
;''' (
[(( 	
OperationContract((	 
((( 
IsOneWay(( #
=(($ %
true((& *
)((* +
]((+ ,
void))  
NotifyPlayerWasExpel)) !
())! "
string))" (
expelPlayerUsername))) <
,))< =
IList))> C
<))C D
int))D G
>))G H
cardsUncovered))I W
)))W X
;))X Y
[** 	
OperationContract**	 
(** 
IsOneWay** #
=**$ %
true**& *
)*** +
]**+ ,
void++  
EndTurnOfExpelPlayer++ !
(++! "
string++" (
nextPlayerUsername++) ;
)++; <
;++< =
[,, 	
OperationContract,,	 
(,, 
IsOneWay,, #
=,,$ %
true,,& *
),,* +
],,+ ,
void-- "
NotifyPlayerLeaveMatch-- #
(--# $
string--$ *
username--+ 3
,--3 4
IList--5 :
<--: ;
int--; >
>--> ?
cardsUncovered--@ N
)--N O
;--O P
[.. 	
OperationContract..	 
(.. 
IsOneWay.. #
=..$ %
true..& *
)..* +
]..+ ,
void// 
MatchHasEnded// 
(// 
)// 
;// 
}00 
}22 Ö
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IScoreService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface 
IScoreService "
{		 
[

 	
OperationContract

	 
]

 
List 
< 
PlayerScoreDTO 
> #
GetPlayersWithBestScore 4
(4 5
int5 8(
numberOfPlayersToBeRetrieved9 U
)U V
;V W
} 
} ±
\C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ITokenGenerator.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
] 
public 

	interface 
ITokenGenerator $
{ 
[ 	
OperationContract	 
] 
string		 
GenerateToken		 
(		 
int		  
length		! '
)		' (
;		( )
}

 
} ¸
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\CardDeckRetrievingFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[ 
DataContract 
] 
public 

class #
CardDeckRetrievingFault (
:) *

TypedFault+ 5
{ 
public #
CardDeckRetrievingFault &
(& '
)' (
{		 	
Error

 
=

 
$str

 a
;

a b
} 	
} 
} à
eC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\DatabaseConnectionLostFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[ 
DataContract 
] 
public 

class '
DatabaseConnectionLostFault ,
:- .

TypedFault/ 9
{ 
public '
DatabaseConnectionLostFault *
(* +
)+ ,
{		 	
Error

 
=

 
$str

 B
;

B C
} 	
} 
} Á
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\DataStorageFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[ 
DataContract 
] 
public 

class 
DataStorageFault !
:" #

TypedFault$ .
{ 
public 
DataStorageFault 
(  
)  !
{		 	
Error

 
=

 
$str

 X
;

X Y
} 	
} 
} ˘
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\MatchAccessDeniedFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[ 
DataContract 
] 
public 

class "
MatchAccessDeniedFault '
:( )

TypedFault* 4
{ 
public "
MatchAccessDeniedFault %
(% &
)& '
{		 	
Error

 
=

 
$str

 Z
;

Z [
} 	
} 
} Û
^C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\NonExistentUserFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[ 
DataContract 
] 
public 

class  
NonExistentUserFault %
:& '

TypedFault( 2
{ 
public  
NonExistentUserFault #
(# $
)$ %
{		 	
Error

 
=

 
$str

 [
;

[ \
} 	
} 
} ˙	
TC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\TypedFault.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
Faults' -
{ 
[ 
DataContract 
] 
public 

abstract 
class 

TypedFault $
{ 
[ 	

DataMember	 
] 
public		 
string		 
Error		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[

 	

DataMember

	 
]

 
public 
string 
Details 
{ 
get  #
;# $
set% (
;( )
}* +
	protected 

TypedFault 
( 
) 
{  
}! "
	protected 

TypedFault 
( 
string #
error$ )
,) *
string+ 1
details2 9
)9 :
{ 	
Error 
= 
error 
; 
Details 
= 
details 
; 
} 	
} 
} ó
UC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\GlobalErrorHandler.cs
	namespace 	
MemoryGameService
 
{ 
public 

class 
GlobalErrorHandler #
:$ %
IErrorHandler& 3
{		 
public

 
bool

 
HandleError

 
(

  
	Exception

  )
error

* /
)

/ 0
{ 	
return 
true 
; 
} 	
public 
void 
ProvideFault  
(  !
	Exception! *
error+ 0
,0 1
MessageVersion2 @
versionA H
,H I
refJ M
MessageN U
faultV [
)[ \
{ 	
FaultException 
faultException )
=* +
new, /
FaultException0 >
(> ?
$str? `
)` a
;a b
MessageFault 
messageFault %
=& '
faultException( 6
.6 7
CreateMessageFault7 I
(I J
)J K
;K L
fault 
= 
Message 
. 
CreateMessage )
() *
version* 1
,1 2
messageFault3 ?
,? @
nullA E
)E F
;F G
} 	
} 
} Õ
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\GlobalErrorHandlerBehaviorAttribute.cs
	namespace 	
MemoryGameService
 
{		 
public

 

class

 /
#GlobalErrorHandlerBehaviorAttribute

 4
:

5 6
	Attribute

7 @
,

@ A
IServiceBehavior

B R
{ 
private 
readonly 
Type 
_errorHandlerType /
;/ 0
public /
#GlobalErrorHandlerBehaviorAttribute 2
(2 3
Type3 7
errorHandlerType8 H
)H I
{ 	
_errorHandlerType 
= 
errorHandlerType  0
;0 1
} 	
public 
void  
AddBindingParameters (
(( )
ServiceDescription) ;
serviceDescription< N
,N O
ServiceHostBaseP _
serviceHostBase` o
,o p

Collectionq {
<{ |
ServiceEndpoint	| ã
>
ã å
	endpoints
ç ñ
,
ñ ó(
BindingParameterCollection
ò ≤
bindingParameters
≥ ƒ
)
ƒ ≈
{ 	
} 	
public 
void !
ApplyDispatchBehavior )
() *
ServiceDescription* <
serviceDescription= O
,O P
ServiceHostBaseQ `
serviceHostBasea p
)p q
{ 	
IErrorHandler 
handler !
=" #
($ %
IErrorHandler% 2
)2 3
	Activator3 <
.< =
CreateInstance= K
(K L
_errorHandlerTypeL ]
)] ^
;^ _
foreach 
( !
ChannelDispatcherBase )!
channelDispatcherBase* ?
in@ B
serviceHostBaseC R
.R S
ChannelDispatchersS e
)e f
{ 
ChannelDispatcher !
channelDispatcher" 3
=4 5!
channelDispatcherBase6 K
asL N
ChannelDispatcherO `
;` a
if   
(   
channelDispatcher   $
!=  % '
null  ( ,
)  , -
{!! 
channelDispatcher"" %
.""% &
ErrorHandlers""& 3
.""3 4
Add""4 7
(""7 8
handler""8 ?
)""? @
;""@ A
}## 
}$$ 
}%% 	
public'' 
void'' 
Validate'' 
('' 
ServiceDescription'' /
serviceDescription''0 B
,''B C
ServiceHostBase''D S
serviceHostBase''T c
)''c d
{(( 	
}** 	
}++ 
},, ƒ
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
]$$) *∫á
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccesibilityService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
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
public 
string 
GetUserEmailAddress )
() *
string* 0
username1 9
)9 :
{ 	
var 

unitOfWork 
= 
new  

UnitOfWork! +
(+ ,
new, /
MemoryGameContext0 A
(A B
)B C
)C D
;D E
try 
{ 
Account 
accountRetrieved (
=) *

unitOfWork+ 5
.5 6
Accounts6 >
.> ?
FindFirstOccurence? Q
(Q R
accountR Y
=>Z \
account] d
.d e
Usernamee m
==n p
usernameq y
)y z
;z {
if 
( 
accountRetrieved $
!=% '
null( ,
), -
{ 
string 
emailAddress '
=( )
accountRetrieved* :
.: ;
EmailAddress; G
;G H
return 
emailAddress '
;' (
}  
NonExistentUserFault $ 
nonExistentUserFault% 9
=: ;
new< ? 
NonExistentUserFault@ T
(T U
)U V
;V W
throw 
new 
FaultException (
<( ) 
NonExistentUserFault) =
>= >
(> ? 
nonExistentUserFault? S
)S T
;T U
} 
catch 
( 
SqlException 
sqlException  ,
), -
{ 
_logger   
.   
Fatal   
(   
sqlException   *
)  * +
;  + ,'
DatabaseConnectionLostFault!! +'
databaseConnectionLostFault!!, G
=!!H I
new!!J M'
DatabaseConnectionLostFault!!N i
(!!i j
)!!j k
;!!k l
throw"" 
new"" 
FaultException"" (
<""( )'
DatabaseConnectionLostFault"") D
>""D E
(""E F'
databaseConnectionLostFault""F a
)""a b
;""b c
}## 
finally$$ 
{%% 

unitOfWork&& 
.&& 
Dispose&& "
(&&" #
)&&# $
;&&$ %
}'' 
}(( 	
public** 
string** 
GetUsername** !
(**! "
string**" (
emailAddress**) 5
)**5 6
{++ 	
var,, 

unitOfWork,, 
=,, 
new,,  

UnitOfWork,,! +
(,,+ ,
new,,, /
MemoryGameContext,,0 A
(,,A B
),,B C
),,C D
;,,D E
try-- 
{.. 
Account// 
accountRetrieved// (
=//) *

unitOfWork//+ 5
.//5 6
Accounts//6 >
.//> ?
Get//? B
(//B C
emailAddress//C O
)//O P
;//P Q
if00 
(00 
accountRetrieved00 #
!=00$ &
null00' +
)00+ ,
{11 
return22 
accountRetrieved22 +
.22+ ,
Username22, 4
;224 5
}33  
NonExistentUserFault44 $ 
nonExistentUserFault44% 9
=44: ;
new44< ? 
NonExistentUserFault44@ T
(44T U
)44U V
;44V W
throw55 
new55 
FaultException55 (
<55( ) 
NonExistentUserFault55) =
>55= >
(55> ? 
nonExistentUserFault55? S
)55S T
;55T U
}66 
catch77 
(77 
SqlException77 
sqlException77  ,
)77, -
{88 
_logger99 
.99 
Fatal99 
(99 
sqlException99 *
)99* +
;99+ ,'
DatabaseConnectionLostFault:: +'
databaseConnectionLostFault::, G
=::H I
new::J M'
DatabaseConnectionLostFault::N i
(::i j
)::j k
;::k l
throw;; 
new;; 
FaultException;; (
<;;( )'
DatabaseConnectionLostFault;;) D
>;;D E
(;;E F'
databaseConnectionLostFault;;F a
);;a b
;;;b c
}<< 
finally== 
{>> 

unitOfWork?? 
.?? 
Dispose?? "
(??" #
)??# $
;??$ %
}@@ 
}AA 	
publicCC 
boolCC 

IsVerifiedCC 
(CC 
stringCC %
usernameCC& .
)CC. /
{DD 	
varEE 

unitOfWorkEE 
=EE 
newEE  

UnitOfWorkEE! +
(EE+ ,
newEE, /
MemoryGameContextEE0 A
(EEA B
)EEB C
)EEC D
;EED E
tryFF 
{GG 
AccountHH 
accountRetrievedHH (
=HH) *

unitOfWorkHH+ 5
.HH5 6
AccountsHH6 >
.HH> ?
FindFirstOccurenceHH? Q
(HHQ R
accountHHR Y
=>HHZ \
accountHH] d
.HHd e
UsernameHHe m
==HHn p
usernameHHq y
&&HHz |
account	HH} Ñ
.
HHÑ Ö
EmailWasVerified
HHÖ ï
)
HHï ñ
;
HHñ ó
ifII 
(II 
accountRetrievedII $
!=II% '
nullII( ,
)II, -
{JJ 
returnKK 
trueKK 
;KK  
}LL 
returnMM 
falseMM 
;MM 
}NN 
catchOO 
(OO 
SqlExceptionOO 
sqlExceptionOO +
)OO+ ,
{PP 
_loggerQQ 
.QQ 
FatalQQ 
(QQ 
sqlExceptionQQ *
)QQ* +
;QQ+ ,'
DatabaseConnectionLostFaultRR +'
databaseConnectionLostFaultRR, G
=RRH I
newRRJ M'
DatabaseConnectionLostFaultRRN i
(RRi j
)RRj k
;RRk l
throwSS 
newSS 
FaultExceptionSS (
<SS( )'
DatabaseConnectionLostFaultSS) D
>SSD E
(SSE F'
databaseConnectionLostFaultSSF a
)SSa b
;SSb c
}TT 
finallyUU 
{VV 

unitOfWorkWW 
.WW 
DisposeWW "
(WW" #
)WW# $
;WW$ %
}XX 
}YY 	
public[[ 
bool[[ 
ItsRegistered[[ !
([[! "
string[[" (
emailAddress[[) 5
)[[5 6
{\\ 	
var]] 

unitOfWork]] 
=]] 
new]]  

UnitOfWork]]! +
(]]+ ,
new]], /
MemoryGameContext]]0 A
(]]A B
)]]B C
)]]C D
;]]D E
try^^ 
{__ 
Account`` 
accountRetrieved`` (
=``) *

unitOfWork``+ 5
.``5 6
Accounts``6 >
.``> ?
Get``? B
(``B C
emailAddress``C O
)``O P
;``P Q
ifaa 
(aa 
accountRetrievedaa $
!=aa% '
nullaa( ,
)aa, -
{bb 
returncc 
truecc 
;cc  
}dd 
returnee 
falseee 
;ee 
}ff 
catchgg 
(gg 
SqlExceptiongg 
sqlExceptiongg  ,
)gg, -
{hh 
_loggerii 
.ii 
Fatalii 
(ii 
sqlExceptionii *
)ii* +
;ii+ ,'
DatabaseConnectionLostFaultjj +'
databaseConnectionLostFaultjj, G
=jjH I
newjjJ M'
DatabaseConnectionLostFaultjjN i
(jji j
)jjj k
;jjk l
throwkk 
newkk 
FaultExceptionkk (
<kk( )'
DatabaseConnectionLostFaultkk) D
>kkD E
(kkE F'
databaseConnectionLostFaultkkF a
)kka b
;kkb c
}ll 
finallymm 
{nn 

unitOfWorkoo 
.oo 
Disposeoo "
(oo" #
)oo# $
;oo$ %
}pp 
}qq 	
publicss  
PlayerCredentialsDTOss # 
GetPlayerCredentialsss$ 8
(ss8 9
stringss9 ?
usernamess@ H
)ssH I
{tt 	
varuu 

unitOfWorkuu 
=uu 
newuu  

UnitOfWorkuu! +
(uu+ ,
newuu, /
MemoryGameContextuu0 A
(uuA B
)uuB C
)uuC D
;uuD E
tryvv 
{ww 
Accountxx 
accountRetrievedxx (
=xx) *

unitOfWorkxx+ 5
.xx5 6
Accountsxx6 >
.xx> ?
FindFirstOccurencexx? Q
(xxQ R
accountxxR Y
=>xxZ \
accountxx] d
.xxd e
Usernamexxe m
==xxn p
usernamexxq y
)xxy z
;xxz {
ifyy 
(yy 
accountRetrievedyy $
!=yy% '
nullyy( ,
)yy, -
{zz  
PlayerCredentialsDTO{{ (
playerCredentials{{) :
={{; <
new{{= @ 
PlayerCredentialsDTO{{A U
({{U V
){{V W
{|| 
EmailAddress}} $
=}}% &
accountRetrieved}}' 7
.}}7 8
EmailAddress}}8 D
,}}D E
Username~~  
=~~! "
accountRetrieved~~# 3
.~~3 4
Username~~4 <
,~~< =
Password  
=! "
accountRetrieved# 3
.3 4
Password4 <
}
ÄÄ 
;
ÄÄ 
return
ÅÅ 
playerCredentials
ÅÅ ,
;
ÅÅ, -
}
ÇÇ "
NonExistentUserFault
ÉÉ $"
nonExistentUserFault
ÉÉ% 9
=
ÉÉ: ;
new
ÉÉ< ?"
NonExistentUserFault
ÉÉ@ T
(
ÉÉT U
)
ÉÉU V
;
ÉÉV W
throw
ÑÑ 
new
ÑÑ 
FaultException
ÑÑ (
<
ÑÑ( )"
NonExistentUserFault
ÑÑ) =
>
ÑÑ= >
(
ÑÑ> ?"
nonExistentUserFault
ÑÑ? S
)
ÑÑS T
;
ÑÑT U
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
SqlException
ÜÜ 
sqlException
ÜÜ  ,
)
ÜÜ, -
{
áá 
_logger
àà 
.
àà 
Fatal
àà 
(
àà 
sqlException
àà *
)
àà* +
;
àà+ ,)
DatabaseConnectionLostFault
ââ +)
databaseConnectionLostFault
ââ, G
=
ââH I
new
ââJ M)
DatabaseConnectionLostFault
ââN i
(
ââi j
)
ââj k
;
ââk l
throw
ää 
new
ää 
FaultException
ää (
<
ää( ))
DatabaseConnectionLostFault
ää) D
>
ääD E
(
ääE F)
databaseConnectionLostFault
ääF a
)
ääa b
;
ääb c
}
ãã 
finally
åå 
{
çç 

unitOfWork
éé 
.
éé 
Dispose
éé "
(
éé" #
)
éé# $
;
éé$ %
}
èè 
}
êê 	
public
íí 
string
íí 
GetSalt
íí 
(
íí 
string
íí $
username
íí% -
)
íí- .
{
ìì 	

UnitOfWork
îî 

unitOfWork
îî !
=
îî" #
new
îî$ '

UnitOfWork
îî( 2
(
îî2 3
new
îî3 6
MemoryGameContext
îî7 H
(
îîH I
)
îîI J
)
îîJ K
;
îîK L
try
ïï 
{
ññ 
Account
óó 
retrievedAccount
óó (
=
óó) *

unitOfWork
óó+ 5
.
óó5 6
Accounts
óó6 >
.
óó> ? 
FindFirstOccurence
óó? Q
(
óóQ R
account
óóR Y
=>
óóZ \
account
óó] d
.
óód e
Username
óóe m
==
óón p
username
óóq y
)
óóy z
;
óóz {
if
òò 
(
òò 
retrievedAccount
òò $
!=
òò% '
null
òò( ,
)
òò, -
{
ôô 
return
öö 
retrievedAccount
öö +
.
öö+ ,
Salt
öö, 0
;
öö0 1
}
õõ "
NonExistentUserFault
úú $"
nonExistentUserFault
úú% 9
=
úú: ;
new
úú< ?"
NonExistentUserFault
úú@ T
(
úúT U
)
úúU V
;
úúV W
throw
ùù 
new
ùù 
FaultException
ùù (
<
ùù( )"
NonExistentUserFault
ùù) =
>
ùù= >
(
ùù> ?"
nonExistentUserFault
ùù? S
)
ùùS T
;
ùùT U
}
ûû 
catch
üü 
(
üü 
SqlException
üü 
sqlException
üü  ,
)
üü, -
{
†† 
_logger
°° 
.
°° 
Fatal
°° 
(
°° 
sqlException
°° *
.
°°* +
Message
°°+ 2
)
°°2 3
;
°°3 4)
DatabaseConnectionLostFault
¢¢ +)
databaseConnectionLostFault
¢¢, G
=
¢¢H I
new
¢¢J M)
DatabaseConnectionLostFault
¢¢N i
(
¢¢i j
)
¢¢j k
;
¢¢k l
throw
££ 
new
££ 
FaultException
££ (
<
££( ))
DatabaseConnectionLostFault
££) D
>
££D E
(
££E F)
databaseConnectionLostFault
££F a
)
££a b
;
££b c
}
§§ 
catch
•• 
(
•• 
EntityException
•• !
entityException
••" 1
)
••1 2
{
¶¶ 
_logger
ßß 
.
ßß 
Fatal
ßß 
(
ßß 
entityException
ßß -
)
ßß- .
;
ßß. /)
DatabaseConnectionLostFault
®® +)
databaseConnectionLostFault
®®, G
=
®®H I
new
®®J M)
DatabaseConnectionLostFault
®®N i
(
®®i j
)
®®j k
;
®®k l
throw
©© 
new
©© 
FaultException
©© (
<
©©( ))
DatabaseConnectionLostFault
©©) D
>
©©D E
(
©©E F)
databaseConnectionLostFault
©©F a
)
©©a b
;
©©b c
}
™™ 
finally
´´ 
{
¨¨ 

unitOfWork
≠≠ 
.
≠≠ 
Dispose
≠≠ "
(
≠≠" #
)
≠≠# $
;
≠≠$ %
}
ÆÆ 
}
ØØ 	
public
±± 
bool
±± 
HasAccessRights
±± #
(
±±# $
string
±±$ *
username
±±+ 3
,
±±3 4
string
±±5 ;
password
±±< D
)
±±D E
{
≤≤ 	

UnitOfWork
≥≥ 

unitOfWork
≥≥ !
=
≥≥" #
new
≥≥$ '

UnitOfWork
≥≥( 2
(
≥≥2 3
new
≥≥3 6
MemoryGameContext
≥≥7 H
(
≥≥H I
)
≥≥I J
)
≥≥J K
;
≥≥K L
try
¥¥ 
{
µµ 
Account
∂∂ 
retrievedAccount
∂∂ (
=
∂∂) *

unitOfWork
∂∂+ 5
.
∂∂5 6
Accounts
∂∂6 >
.
∂∂> ? 
FindFirstOccurence
∂∂? Q
(
∂∂Q R
account
∂∂R Y
=>
∂∂Z \
account
∂∂] d
.
∂∂d e
Username
∂∂e m
==
∂∂n p
username
∂∂q y
&&
∂∂z |
account∂∂} Ñ
.∂∂Ñ Ö
Password∂∂Ö ç
==∂∂é ê
password∂∂ë ô
)∂∂ô ö
;∂∂ö õ
if
∑∑ 
(
∑∑ 
retrievedAccount
∑∑ #
!=
∑∑$ &
null
∑∑' +
)
∑∑+ ,
{
∏∏ 
return
ππ 
true
ππ 
;
ππ  
}
∫∫ 
return
ªª 
false
ªª 
;
ªª 
}
ºº 
catch
ΩΩ 
(
ΩΩ 
SqlException
ΩΩ 
sqlException
ΩΩ  ,
)
ΩΩ, -
{
ææ 
_logger
øø 
.
øø 
Fatal
øø 
(
øø 
sqlException
øø *
)
øø* +
;
øø+ ,)
DatabaseConnectionLostFault
¿¿ +)
databaseConnectionLostFault
¿¿, G
=
¿¿H I
new
¿¿J M)
DatabaseConnectionLostFault
¿¿N i
(
¿¿i j
)
¿¿j k
;
¿¿k l
throw
¡¡ 
new
¡¡ 
FaultException
¡¡ (
<
¡¡( ))
DatabaseConnectionLostFault
¡¡) D
>
¡¡D E
(
¡¡E F)
databaseConnectionLostFault
¡¡F a
)
¡¡a b
;
¡¡b c
}
¬¬ 
finally
√√ 
{
ƒƒ 

unitOfWork
≈≈ 
.
≈≈ 
Dispose
≈≈ "
(
≈≈" #
)
≈≈# $
;
≈≈$ %
}
∆∆ 
}
«« 	
}
»» 
}…… ó&
gC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountModifiabilityService.cs
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
public 

partial 
class 
MemoryGameService *
:+ ,(
IAccountModifiabilityService- I
{ 
public 
bool 
ChangeUsername "
(" #
string# )
emailAddress* 6
,6 7
string8 >
newUsername? J
)J K
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
Account 
account 
=  !

unitOfWork" ,
., -
Accounts- 5
.5 6
Get6 9
(9 :
emailAddress: F
)F G
;G H
if 
( 
account 
!= 
null "
)" #
{ 
account 
. 
Username $
=% &
newUsername' 2
;2 3
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
SqlException 
)  
{ '
DatabaseConnectionLostFault +'
databaseConnectionLostFault, G
=H I
newJ M'
DatabaseConnectionLostFaultN i
(i j
)j k
;k l
throw 
new 
FaultException (
<( )'
DatabaseConnectionLostFault) D
>D E
(E F'
databaseConnectionLostFaultF a
)a b
;b c
}   
finally!! 
{"" 

unitOfWork## 
.## 
Dispose## "
(##" #
)### $
;##$ %
}$$ 
}%% 	
public'' 
bool'' 
SetNewPassword'' "
(''" #.
"PasswordModificationCredentialsDto''# E+
passwordModificationCredentials''F e
)''e f
{(( 	

UnitOfWork)) 

unitOfWork)) !
=))" #
new))$ '

UnitOfWork))( 2
())2 3
new))3 6
MemoryGameContext))7 H
())H I
)))I J
)))J K
;))K L
string** 
emailAddress** 
=**  !+
passwordModificationCredentials**" A
.**A B
EmailAddress**B N
;**N O
string++ 
salt++ 
=++ +
passwordModificationCredentials++ 9
.++9 :
Salt++: >
;++> ?
string,, 
newPassword,, 
=,,  +
passwordModificationCredentials,,! @
.,,@ A
NewPassword,,A L
;,,L M
try-- 
{.. 
Account// 
account// 
=//  !

unitOfWork//" ,
.//, -
Accounts//- 5
.//5 6
Get//6 9
(//9 :
emailAddress//: F
)//F G
;//G H
if00 
(00 
account00 
!=00 
null00 "
)00" #
{11 
account22 
.22 
Password22 $
=22% &
newPassword22' 2
;222 3
account33 
.33 
Salt33  
=33! "
salt33# '
;33' (
int44 
rowsModified44 $
=44% &

unitOfWork44' 1
.441 2
Complete442 :
(44: ;
)44; <
;44< =
return55 
rowsModified55 '
==55( *
$num55+ ,
;55, -
}66 
return77 
false77 
;77 
}88 
catch99 
(99 
SqlException99 
)99  
{:: '
DatabaseConnectionLostFault;; +'
databaseConnectionLostFault;;, G
=;;H I
new;;J M'
DatabaseConnectionLostFault;;N i
(;;i j
);;j k
;;;k l
throw<< 
new<< 
FaultException<< (
<<<( )'
DatabaseConnectionLostFault<<) D
><<D E
(<<E F'
databaseConnectionLostFault<<F a
)<<a b
;<<b c
}== 
finally>> 
{?? 

unitOfWork@@ 
.@@ 
Dispose@@ "
(@@" #
)@@# $
;@@$ %
}AA 
}CC 	
}DD 
}EE ü1
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountVerificationService.cs
	namespace		 	
MemoryGameService		
 
.		 
Services		 $
{

 
public 

partial 
class 
MemoryGameService *
:+ ,'
IAccountVerificationService- H
{ 
public 
bool  
SetAccountAsVerified (
(( )
string) /
emailAddress0 <
)< =
{ 	

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
try 
{ 
Account 
retrievedAccount (
=) *

unitOfWork+ 5
.5 6
Accounts6 >
.> ?
Get? B
(B C
emailAddressC O
)O P
;P Q
if 
( 
retrievedAccount #
!=$ &
null' +
)+ ,
{ 
retrievedAccount $
.$ %
EmailWasVerified% 5
=6 7
true8 <
;< =
int 
rowsModified $
=% &

unitOfWork' 1
.1 2
Complete2 :
(: ;
); <
;< =
return 
rowsModified '
==( *
$num+ ,
;, -
} 
return 
false 
; 
} 
catch 
( 
SqlException 
)  
{ '
DatabaseConnectionLostFault +'
databaseConnectionLostFault, G
=H I
newJ M'
DatabaseConnectionLostFaultN i
(i j
)j k
;k l
throw 
new 
FaultException (
<( )'
DatabaseConnectionLostFault) D
>D E
(E F'
databaseConnectionLostFaultF a
)a b
;b c
} 
finally   
{!! 

unitOfWork"" 
."" 
Dispose"" "
(""" #
)""# $
;""$ %
}## 
}%% 	
public'' 
bool'' &
AssignNewVerificationToken'' .
(''. /
string''/ 5
emailAddress''6 B
,''B C
string''D J
verificationToken''K \
)''\ ]
{(( 	

UnitOfWork)) 

unitOfWork)) !
=))" #
new))$ '

UnitOfWork))( 2
())2 3
new))3 6
MemoryGameContext))7 H
())H I
)))I J
)))J K
;))K L
try** 
{++ 
Account,, 
retrievedAccount,, (
=,,) *

unitOfWork,,+ 5
.,,5 6
Accounts,,6 >
.,,> ?
Get,,? B
(,,B C
emailAddress,,C O
),,O P
;,,P Q
if-- 
(-- 
retrievedAccount-- $
!=--% '
null--( ,
)--, -
{.. 
retrievedAccount// $
.//$ %
ActivationToken//% 4
=//5 6
verificationToken//7 H
;//H I
int00 
rowsModified00 $
=00% &

unitOfWork00' 1
.001 2
Complete002 :
(00: ;
)00; <
;00< =
return11 
rowsModified11 '
==11( *
$num11+ ,
;11, -
}22 
return33 
false33 
;33 
}44 
catch55 
(55 
SqlException55 
)55  
{66 '
DatabaseConnectionLostFault77 +'
databaseConnectionLostFault77, G
=77H I
new77J M'
DatabaseConnectionLostFault77N i
(77i j
)77j k
;77k l
throw88 
new88 
FaultException88 (
<88( )'
DatabaseConnectionLostFault88) D
>88D E
(88E F'
databaseConnectionLostFault88F a
)88a b
;88b c
}99 
finally:: 
{;; 

unitOfWork<< 
.<< 
Dispose<< "
(<<" #
)<<# $
;<<$ %
}== 
}?? 	
publicAA 
boolAA 
VerifyTokenAA 
(AA  
stringAA  &
emailAddressAA' 3
,AA3 4
stringAA5 ;
verificationTokenAA< M
)AAM N
{BB 	

UnitOfWorkCC 

unitOfWorkCC !
=CC" #
newCC$ '

UnitOfWorkCC( 2
(CC2 3
newCC3 6
MemoryGameContextCC7 H
(CCH I
)CCI J
)CCJ K
;CCK L
tryDD 
{EE 
AccountFF 
retrievedAccountFF (
=FF) *

unitOfWorkFF+ 5
.FF5 6
AccountsFF6 >
.FF> ?
FindFirstOccurenceFF? Q
(FFQ R
accountFFR Y
=>FFZ \
accountFF] d
.FFd e
EmailAddressFFe q
==FFr t
emailAddress	FFu Å
&&
FFÇ Ñ
account
FFÖ å
.
FFå ç
ActivationToken
FFç ú
==
FFù ü
verificationToken
FF† ±
)
FF± ≤
;
FF≤ ≥
ifGG 
(GG 
retrievedAccountGG #
!=GG$ &
nullGG' +
)GG+ ,
{HH 
returnII 
trueII 
;II  
}JJ 
returnKK 
falseKK 
;KK 
}LL 
catchMM 
(MM 
SqlExceptionMM 
)MM  
{NN '
DatabaseConnectionLostFaultOO +'
databaseConnectionLostFaultOO, G
=OOH I
newOOJ M'
DatabaseConnectionLostFaultOON i
(OOi j
)OOj k
;OOk l
throwPP 
newPP 
FaultExceptionPP (
<PP( )'
DatabaseConnectionLostFaultPP) D
>PPD E
(PPE F'
databaseConnectionLostFaultPPF a
)PPa b
;PPb c
}QQ 
finallyRR 
{SS 

unitOfWorkTT 
.TT 
DisposeTT "
(TT" #
)TT# $
;TT$ %
}UU 
}VV 	
}WW 
}XX ˛3
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\CardDeckRetrieverService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,%
ICardDeckRetrieverService- F
{ 
private 
CardDeckDTO 
_cardDeckDTO (
;( )
private 
IEnumerable 
< 
Card  
>  !
_cards" (
;( )
public 
CardDeckDTO 
GetCardDeckAndCards .
(. /
int/ 2

cardDeckId3 =
)= >
{ 	

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
try 
{ 
CardDeck 
cardDeck !
=" #

unitOfWork$ .
.. /
	CardDecks/ 8
.8 9
GetCardDeckAndCards9 L
(L M

cardDeckIdM W
)W X
;X Y
if 
( 
cardDeck 
!= 
null #
)# $
{ 
_cardDeckDTO  
=! "
CardDeckMapper# 1
.1 2
	CreateDTO2 ;
(; <
cardDeck< D
)D E
;E F
_cards 
= 
cardDeck %
.% &
Cards& +
;+ ,(
PopulateCardDeckDtoWithCards## 0
(##0 1
)##1 2
;##2 3(
PopulateCardDeckDtoWithCards$$ 0
($$0 1
)$$1 2
;$$2 3
ShuffleCards&&  
(&&  !
)&&! "
;&&" #
return'' 
_cardDeckDTO'' '
;''' (
}(( #
CardDeckRetrievingFault)) '#
cardDeckRetrievingFault))( ?
=))@ A
new))B E#
CardDeckRetrievingFault))F ]
())] ^
)))^ _
{** 
Error++ 
=++ 
$str++ 6
,++6 7
Details,, 
=,, 
$str,, o
}-- 
;-- 
throw.. 
new.. 
FaultException.. (
<..( )#
CardDeckRetrievingFault..) @
>..@ A
(..A B#
cardDeckRetrievingFault..B Y
)..Y Z
;..Z [
}// 
catch00 
(00 
SqlException00 
)00  
{11 '
DatabaseConnectionLostFault22 +'
databaseConnectionLostFault22, G
=22H I
new22J M'
DatabaseConnectionLostFault22N i
(22i j
)22j k
;22k l
throw33 
new33 
FaultException33 (
<33( )'
DatabaseConnectionLostFault33) D
>33D E
(33E F'
databaseConnectionLostFault33F a
)33a b
;33b c
}44 
finally55 
{66 

unitOfWork77 
.77 
Dispose77 "
(77" #
)77# $
;77$ %
}88 
}99 	
public;; 
IList;; 
<;; 
CardDeckInfoDto;; $
>;;$ %
GetCardDecksInfo;;& 6
(;;6 7
);;7 8
{<< 	

UnitOfWork== 

unitOfWork== !
===" #
new==$ '

UnitOfWork==( 2
(==2 3
new==3 6
MemoryGameContext==7 H
(==H I
)==I J
)==J K
;==K L
try>> 
{?? 
IEnumerable@@ 
<@@ 
CardDeck@@ $
>@@$ %
	cardDecks@@& /
=@@0 1

unitOfWork@@2 <
.@@< =
	CardDecks@@= F
.@@F G
GetAll@@G M
(@@M N
)@@N O
;@@O P
IListAA 
<AA 
CardDeckInfoDtoAA %
>AA% &
listOfCardDecksInfoAA' :
=AA; <
newAA= @
ListAAA E
<AAE F
CardDeckInfoDtoAAF U
>AAU V
(AAV W
)AAW X
;AAX Y
foreachBB 
(BB 
varBB 
individualCardDeckBB /
inBB0 2
	cardDecksBB3 <
)BB< =
{CC 
CardDeckInfoDtoDD #
cardDeckInfoDD$ 0
=DD1 2
newDD3 6
CardDeckInfoDtoDD7 F
(DDF G
)DDG H
{EE 

CardDeckIdFF "
=FF# $
individualCardDeckFF% 7
.FF7 8

CardDeckIdFF8 B
,FFB C
CardDeckNameGG $
=GG% &
individualCardDeckGG' 9
.GG9 :
NameGG: >
}HH 
;HH 
listOfCardDecksInfoII '
.II' (
AddII( +
(II+ ,
cardDeckInfoII, 8
)II8 9
;II9 :
}JJ 
returnKK 
listOfCardDecksInfoKK *
;KK* +
}LL 
catchMM 
(MM 
SqlExceptionMM 
)MM  
{NN '
DatabaseConnectionLostFaultOO +'
databaseConnectionLostFaultOO, G
=OOH I
newOOJ M'
DatabaseConnectionLostFaultOON i
(OOi j
)OOj k
;OOk l
throwPP 
newPP 
FaultExceptionPP (
<PP( )'
DatabaseConnectionLostFaultPP) D
>PPD E
(PPE F'
databaseConnectionLostFaultPPF a
)PPa b
;PPb c
}QQ 
}RR 	
privateTT 
voidTT (
PopulateCardDeckDtoWithCardsTT 1
(TT1 2
)TT2 3
{UU 	
foreachVV 
(VV 
CardVV 

actualCardVV $
inVV% '
_cardsVV( .
)VV. /
{WW 
CardDtoXX 
cardDTOXX 
=XX  !

CardMapperXX" ,
.XX, -
	CreateDTOXX- 6
(XX6 7

actualCardXX7 A
)XXA B
;XXB C
_cardDeckDTOYY 
.YY 
CardsYY "
.YY" #
AddYY# &
(YY& '
cardDTOYY' .
)YY. /
;YY/ 0
}ZZ 
}[[ 	
private]] 
void]] 
ShuffleCards]] !
(]]! "
)]]" #
{^^ 	
CardShuffler__ 
cardShuffler__ %
=__& '
new__( +
CardShuffler__, 8
(__8 9
)__9 :
;__: ;
cardShuffler`` 
.`` 
ShuffleCards`` %
(``% &
_cardDeckDTO``& 2
.``2 3
Cards``3 8
)``8 9
;``9 :
}aa 	
}bb 
}cc Ú
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\CommunicationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

class "
CommunicationEventArgs '
{ 
public 
string 
Sender 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Message		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
}

 
public 

partial 
class 
MemoryGameService *
:+ ,!
ICommunicationService- B
{ 
public 
static 
event #
MessageSentEventHandler 3
MessageSentEvent4 D
;D E
public 
delegate 
void #
MessageSentEventHandler 4
(4 5
object5 ;
sender< B
,B C"
CommunicationEventArgs ""
communicationEventArgs# 9
)9 :
;: ;)
ICommunicationServiceCallback %)
_communicationServiceCallback& C
=D E
nullF J
;J K#
MessageSentEventHandler 
_messageSentHandler  3
=4 5
null6 :
;: ;
public 
void 
SendMessage 
(  
string  &
sender' -
,- .
string/ 5
message6 =
)= >
{ 	"
CommunicationEventArgs ""
communicationEventArgs# 9
=: ;
new< ?"
CommunicationEventArgs@ V
(V W
)W X
{ 
Sender 
= 
sender 
,  
Message 
= 
message !
} 
; 
MessageSentEvent 
( 
this !
,! ""
communicationEventArgs# 9
)9 :
;: ;
} 	
public   
void   +
SubscribeToCommunicationService   3
(  3 4
string  4 :
username  ; C
)  C D
{!! 	)
_communicationServiceCallback"" )
=""* +
OperationContext"", <
.""< =
Current""= D
.""D E
GetCallbackChannel""E W
<""W X)
ICommunicationServiceCallback""X u
>""u v
(""v w
)""w x
;""x y
_messageSentHandler## 
=##  !
new##" %#
MessageSentEventHandler##& =
(##= >
MessageSentHandler##> P
)##P Q
;##Q R
MessageSentEvent$$ 
+=$$ 
_messageSentHandler$$  3
;$$3 4
}%% 	
public'' 
void'' /
#UnsubscribeFromCommunicationService'' 7
(''7 8
)''8 9
{(( 	
MessageSentEvent)) 
-=)) 
_messageSentHandler))  3
;))3 4
}** 	
public,, 
void,, 
MessageSentHandler,, &
(,,& '
object,,' -
sender,,. 4
,,,4 5"
CommunicationEventArgs-- ""
communicationEventArgs--# 9
)--9 :
{.. 	)
_communicationServiceCallback// )
.//) *
ReciveMessage//* 7
(//7 8"
communicationEventArgs//8 N
.//N O
Sender//O U
,//U V"
communicationEventArgs00 &
.00& '
Message00' .
)00. /
;00/ 0
}11 	
}33 
}44 ÿ'
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\LobbyService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
ILobbyService- :
{ 
public		 
IList		 
<		 
string		 
>		 #
GetActivePlayersInLobby		 4
(		4 5
string		5 ;
host		< @
)		@ A
{

 	
MatchDto 
match 
= 
GetMatch %
(% &
host& *
)* +
;+ ,
if 
( 
match 
!= 
null 
) 
{ 
Lobby 
lobby 
= 
match #
.# $
Lobby$ )
;) *
IList 
< 
string 
> "
activePlayersFromMatch 4
=5 6
lobby7 <
.< =1
%GetUsernamesOfPlayersConnectedToLobby= b
(b c
)c d
;d e
return "
activePlayersFromMatch -
;- .
} 
throw 
new 
System 
. 
	Exception &
(& '
)' (
;( )
} 	
public 
void 
	JoinLobby 
( 
string $
host% )
,) *
string+ 1
username2 :
): ;
{ 	
MatchDto 
match 
= 
GetMatch %
(% &
host& *
)* +
;+ ,
if 
( 
match 
!= 
null 
) 
{ 
Lobby 
lobby 
= 
match #
.# $
Lobby$ )
;) *
lobby 
. 
AddPlayerToLobby &
(& '
host' +
,+ ,
username- 5
)5 6
;6 7
lobby 
. '
NotifyNewPlayerEnteredLobby 1
(1 2
username2 :
): ;
;; <
} 
else 
{   
}"" 
}## 	
public%% 
void%% 

LeaveLobby%% 
(%% 
string%% %
host%%& *
,%%* +
string%%, 2
username%%3 ;
)%%; <
{&& 	
MatchDto'' 
match'' 
='' 
GetMatch'' %
(''% &
host''& *
)''* +
;''+ ,
if(( 
((( 
match(( 
!=(( 
null(( 
)(( 
{)) 
Lobby** 
lobby** 
=** 
match** #
.**# $
Lobby**$ )
;**) *
lobby++ 
.++ !
RemovePlayerFromLobby++ +
(+++ ,
username++, 4
)++4 5
;++5 6
if,, 
(,, 
host,, 
.,, 
Equals,, 
(,,  
username,,  (
),,( )
),,) *
{-- 
lobby.. 
... ,
 NotifyPlayersMatchHasBeenDeleted.. :
(..: ;
)..; <
;..< =
_matches// 
.// 
Remove// #
(//# $
match//$ )
)//) *
;//* +
}00 
else11 
{22 
lobby33 
.33 $
NotifyOnePlayerLeftLobby33 2
(332 3
username333 ;
)33; <
;33< =
}44 
}55 
}66 	
public88 
void88 
	StartGame88 
(88 
string88 $
host88% )
)88) *
{99 	
MatchDto:: 
match:: 
=:: 
GetMatch:: %
(::% &
host::& *
)::* +
;::+ ,
if;; 
(;; 
match;; 
!=;; 
null;; 
);; 
{<< 
match== 
.== 

StartMatch==  
(==  !
)==! "
;==" #
}>> 
}@@ 	
privateBB 
MatchDtoBB 
GetMatchBB !
(BB! "
stringBB" (
hostBB) -
)BB- .
{CC 	
MatchDtoDD 
	gameMatchDD 
=DD  
nullDD! %
;DD% &
foreachEE 
(EE 
varEE 
matchEE 
inEE !
_matchesEE" *
)EE* +
{FF 
ifGG 
(GG 
matchGG 
.GG 
HostGG 
.GG 
EqualsGG %
(GG% &
hostGG& *
)GG* +
)GG+ ,
{HH 
	gameMatchII 
=II 
matchII  %
;II% &
breakJJ 
;JJ 
}KK 
}LL 
returnMM 
	gameMatchMM 
;MM 
}NN 	
}OO 
}PP ÿ
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MailingService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
IMailingService- <
{ 
public		 
void		 !
SendVerificationToken		 )
(		) *$
VerificationTokenInfoDto		* B!
verificationTokenInfo		C X
)		X Y
{

 	
string 
name 
= !
verificationTokenInfo /
./ 0
Name0 4
;4 5
string 
emailAddress 
=  !!
verificationTokenInfo" 7
.7 8
EmailAddress8 D
;D E
string 
verificationToken $
=% &!
verificationTokenInfo' <
.< =
VerificationToken= N
;N O
MailTemplate 
mt 
= 
new !
MailTemplate" .
(. /
)/ 0
;0 1
mt 
. 
SetReceiver 
( 
name 
,  
emailAddress! -
)- .
;. /
mt 
. 

SetMessage 
( 
$str &
,& '
$str 9
+: ;
verificationToken< M
)M N
;N O
mt 
. 
Send 
( 
) 
; 
} 	
} 
} ´
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchCreationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,!
IMatchCreationService- B
{ 
public 
void 
CreateNewMatch "
(" #
MatchDto# +
gameMatchDto, 8
)8 9
{		 	
_matches

 
.

 
Add

 
(

 
gameMatchDto

 %
)

% &
;

& '
} 	
} 
} «
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchDiscoveryService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public		 

partial		 
class		 
MemoryGameService		 *
:		+ ,"
IMatchDiscoveryService		- C
{

 
public 
bool 
CanJoin 
( 
string "
	matchHost# ,
), -
{ 	
MatchDto 
	gameMatch 
=  
GetMatch! )
() *
	matchHost* 3
)3 4
;4 5
if 
( 
	gameMatch 
== 
null !
)! "
{ "
MatchAccessDeniedFault &"
matchAccessDeniedFault' =
=> ?
new@ C"
MatchAccessDeniedFaultD Z
(Z [
)[ \
{ 
Details 
= 
$str j
} 
; 
throw 
new 
FaultException (
<( )"
MatchAccessDeniedFault) ?
>? @
(@ A"
matchAccessDeniedFaultA W
)W X
;X Y
} 
else 
{ 
Lobby 
lobby 
= 
	gameMatch '
.' (
Lobby( -
;- .
IList 
< 
PlayerInLobby #
># $#
playersConnectedToLobby% <
== >
lobby? D
.D E&
GetPlayersConnectedToLobbyE _
(_ `
)` a
;a b
int +
numberOfPlayersConnectedToMatch 3
=4 5#
playersConnectedToLobby6 M
.M N
CountN S
;S T
int #
numberOfPlayersRequired +
=, -
	gameMatch. 7
.7 8
MaxNumberOfPlayers8 J
;J K
bool 
matchHasStarted $
=% &
	gameMatch' 0
.0 1

HasStarted1 ;
;; <
bool (
ThereIsSpaceForAnotherPlayer 1
=2 3
false4 9
;9 :
if 
( +
numberOfPlayersConnectedToMatch 3
<4 5#
numberOfPlayersRequired6 M
)M N
{   (
ThereIsSpaceForAnotherPlayer!! 0
=!!1 2
true!!3 7
;!!7 8
}"" 
if$$ 
($$ (
ThereIsSpaceForAnotherPlayer$$ 0
&&$$1 3
!$$4 5
matchHasStarted$$5 D
)$$D E
{%% 
return&& 
true&& 
;&&  
}'' 
return(( 
false(( 
;(( 
})) 
},, 	
public.. 
IList.. 
<.. 
MatchDto.. 
>.. 
GetActiveMatches.. /
(../ 0
)..0 1
{// 	
IList00 
<00 
MatchDto00 
>00 !
matchesWaitingToStart00 1
=002 3
new004 7
List008 <
<00< =
MatchDto00= E
>00E F
(00F G
)00G H
;00H I
foreach11 
(11 
var11 
match11 
in11 !
_matches11" *
)11* +
{22 
if33 
(33 
!33 
match33 
.33 

HasStarted33 %
)33% &
{44 !
matchesWaitingToStart55 )
.55) *
Add55* -
(55- .
match55. 3
)553 4
;554 5
}66 
}77 
return88 !
matchesWaitingToStart88 (
;88( )
}99 	
}:: 
};; ¢œ
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchService.cs
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
public 

partial 
class 
MemoryGameService *
:+ ,
IMatchService- :
{ 
public 
void 

EnterMatch 
( 
string %
host& *
,* +
string, 2
username3 ;
); <
{ 	
MatchDto 
	gameMatch 
=  
GetMatch! )
() *
host* .
). /
;/ 0
bool 
hasActiveTurn 
=  
false! &
;& '
if 
( 
host 
. 
Equals 
( 
username $
)$ %
)% &
{ 
hasActiveTurn 
= 
true  $
;$ %
} 
PlayerInMatch 
player  
=! "
new# &
PlayerInMatch' 4
(4 5
)5 6
{ 
Username 
= 
username #
,# $
Score 
= 
$num 
, 
HasActiveTurn 
= 
hasActiveTurn  -
,- ."
MatchServiceConnection &
=' (
OperationContext) 9
.9 :
Current: A
.A B
GetCallbackChannelB T
<T U!
IMatchServiceCallbackU j
>j k
(k l
)l m
,m n
ExpulsionVotes 
=  
$num! "
} 
; 
	gameMatch   
.   
	AddPlayer   
(    
player    &
)  & '
;  ' (
}!! 	
public## 
IList## 
<## 
PlayerInMatch## "
>##" #&
GetPlayersConnectedToMatch##$ >
(##> ?
string##? E
host##F J
)##J K
{$$ 	
MatchDto%% 
match%% 
=%% 
GetMatch%% %
(%%% &
host%%& *
)%%* +
;%%+ ,
return&& 
match&& 
.&& &
GetPlayersConnectedToMatch&& 3
(&&3 4
)&&4 5
;&&5 6
}'' 	
public)) 
void)) #
NotifyCardWasUncoveredd)) +
())+ ,
PlayerMovementDto)), =
playerMovementDto))> O
)))O P
{** 	
string++ 
host++ 
=++ 
playerMovementDto++ +
.+++ ,
Host++, 0
;++0 1
MatchDto,, 
	gameMatch,, 
=,,  
GetMatch,,! )
(,,) *
host,,* .
),,. /
;,,/ 0
PlayerInMatch.. 
player..  
=..! "
	gameMatch..# ,
..., -
	GetPlayer..- 6
(..6 7
playerMovementDto..7 H
...H I
Username..I Q
)..Q R
;..R S
if// 
(// 
playerMovementDto// !
.//! "
HasFormedAPair//" 0
)//0 1
{00 
player11 
.11 
AddUncoveredCard11 '
(11' (
playerMovementDto11( 9
.119 :
	CardIndex11: C
)11C D
;11D E
	gameMatch22 
.22 

TotalPairs22 $
++22$ &
;22& '
}33 
else44 
{55 
if66 
(66 
playerMovementDto66 %
.66% &
MovementsLeft66& 3
==664 6
$num667 8
)668 9
{77 
player88 
.88 
RemoveUncoveredCard88 .
(88. /
)88/ 0
;880 1
}99 
else:: 
{;; 
player<< 
.<< 
AddUncoveredCard<< +
(<<+ ,
playerMovementDto<<, =
.<<= >
	CardIndex<<> G
)<<G H
;<<H I
}== 
}>> 
IList@@ 
<@@ 
PlayerInMatch@@ 
>@@  
playersInMatch@@! /
=@@0 1
	gameMatch@@2 ;
.@@; <&
GetPlayersConnectedToMatch@@< V
(@@V W
)@@W X
;@@X Y
foreachBB 
(BB 
varBB 
playerInMatchBB %
inBB& (
playersInMatchBB) 7
)BB7 8
{CC 
playerInMatchDD 
.DD "
MatchServiceConnectionDD 4
.DD4 5
UncoverCarddDD5 A
(DDA B
playerMovementDtoDDB S
.DDS T
	CardIndexDDT ]
)DD] ^
;DD^ _
}EE 
}GG 	
publicII 
voidII 
NotifyMatchHasEndedII '
(II' (
stringII( .
hostII/ 3
)II3 4
{JJ 	
MatchDtoLL 
	gameMatchLL 
=LL  
GetMatchLL! )
(LL) *
hostLL* .
)LL. /
;LL/ 0
ifMM 
(MM 
hostMM 
!=MM 
nullMM 
)MM 
{NN 
PlayerInMatchOO 
playerWithBestScoreOO 1
=OO2 3
	gameMatchOO4 =
.OO= >"
GetPlayerWithBestScoreOO> T
(OOT U
)OOU V
;OOV W
stringPP )
usernameOfPlayerWithBestScorePP 4
=PP5 6
playerWithBestScorePP7 J
.PPJ K
UsernamePPK S
;PPS T
IListQQ 
<QQ 
PlayerInMatchQQ #
>QQ# $#
playersConnectedToMatchQQ% <
=QQ= >
	gameMatchQQ? H
.QQH I&
GetPlayersConnectedToMatchQQI c
(QQc d
)QQd e
;QQe f
foreachRR 
(RR 
varRR 
playerConnectedRR ,
inRR- /#
playersConnectedToMatchRR0 G
)RRG H
{SS 
varTT 
channelTT 
=TT  !
playerConnectedTT" 1
.TT1 2"
MatchServiceConnectionTT2 H
;TTH I
channelUU 
.UU 
ShowWinnersUU '
(UU' ()
usernameOfPlayerWithBestScoreUU( E
)UUE F
;UUF G
channelVV 
.VV 
MatchHasEndedVV )
(VV) *
)VV* +
;VV+ ,
}WW 

UnitOfWorkYY 

unitOfWorkYY %
=YY& '
newYY( +

UnitOfWorkYY, 6
(YY6 7
newYY7 :
MemoryGameContextYY; L
(YYL M
)YYM N
)YYN O
;YYO P
tryZZ 
{[[ 
foreach\\ 
(\\ 
var\\  
playerInMatch\\! .
in\\/ 1
	gameMatch\\2 ;
.\\; <&
GetPlayersConnectedToMatch\\< V
(\\V W
)\\W X
)\\X Y
{]] 

unitOfWork^^ "
.^^" #
Players^^# *
.^^* +*
UpdateScoreOfPlayersAfterMatch^^+ I
(^^I J
playerInMatch^^J W
.^^W X
Username^^X `
,^^` a
playerInMatch^^b o
.^^o p
Score^^p u
)^^u v
;^^v w
}__ 
Playeraa 
winneraa !
=aa" #

unitOfWorkaa$ .
.aa. /
Playersaa/ 6
.aa6 7 
FindPlayerByUsernameaa7 K
(aaK L)
usernameOfPlayerWithBestScoreaaL i
)aai j
;aaj k
CardDeckbb 
cardDeckbb %
=bb& '

unitOfWorkbb( 2
.bb2 3
	CardDecksbb3 <
.bb< =
Getbb= @
(bb@ A
	gameMatchbbA J
.bbJ K
CardDeckDtobbK V
.bbV W

CardDeckIdbbW a
)bba b
;bbb c
Matchdd 
matchToBeSaveddd (
=dd) *
newdd+ .
Matchdd/ 4
(dd4 5
)dd5 6
{ee 
CardDeckff  
=ff! "
cardDeckff# +
,ff+ ,
Winnergg 
=gg  
winnergg! '
,gg' (
Datehh 
=hh 
DateTimehh '
.hh' (
Nowhh( +
}ii 
;ii 

unitOfWorkjj 
.jj 
Matchesjj &
.jj& '
Addjj' *
(jj* +
matchToBeSavedjj+ 9
)jj9 :
;jj: ;

unitOfWorkkk 
.kk 
Completekk '
(kk' (
)kk( )
;kk) *
}ll 
catchmm 
(mm 
	Exceptionmm  
emm! "
)mm" #
{nn 
Consoleoo 
.oo 
	WriteLineoo %
(oo% &
eoo& '
)oo' (
;oo( )
Consolepp 
.pp 
ReadLinepp $
(pp$ %
)pp% &
;pp& '
}qq 
finallyrr 
{ss 

unitOfWorktt 
.tt 
Disposett &
(tt& '
)tt' (
;tt( )
}uu 
_matchesww 
.ww 
Removeww 
(ww  
	gameMatchww  )
)ww) *
;ww* +
}xx 
}yy 	
public{{ 
void{{ 
EndTurn{{ 
({{ 
string{{ "
host{{# '
,{{' (
string{{) /
username{{0 8
,{{8 9
CardPairDto{{: E
cardPairDto{{F Q
){{Q R
{|| 	
MatchDto}} 
	gameMatch}} 
=}}  
GetMatch}}! )
(}}) *
host}}* .
)}}. /
;}}/ 0
PlayerInMatch~~ 
player~~  
=~~! "
	gameMatch~~# ,
.~~, -
	GetPlayer~~- 6
(~~6 7
username~~7 ?
)~~? @
;~~@ A
int (
indexOfPlayerWithCurrentTurn ,
=- .
	gameMatch/ 8
.8 9&
GetPlayersConnectedToMatch9 S
(S T
)T U
.U V
IndexOfV ]
(] ^
player^ d
)d e
;e f
if
ÅÅ 
(
ÅÅ 
cardPairDto
ÅÅ 
.
ÅÅ 
BothCardsAreEqual
ÅÅ -
)
ÅÅ- .
{
ÇÇ 
player
ÉÉ 
.
ÉÉ 
Score
ÉÉ 
+=
ÉÉ 
$num
ÉÉ  #
;
ÉÉ# $
}
ÑÑ 
else
ÖÖ 
{
ÜÜ *
indexOfPlayerWithCurrentTurn
áá ,
=
áá- .

ChangeTurn
áá/ 9
(
áá9 :
	gameMatch
áá: C
,
ááC D*
indexOfPlayerWithCurrentTurn
ááE a
)
ááa b
;
ááb c
}
àà 
PlayerInMatch
ää 

nextPlayer
ää $
=
ää% &
	gameMatch
ää' 0
.
ää0 1(
GetPlayersConnectedToMatch
ää1 K
(
ääK L
)
ääL M
[
ääM N*
indexOfPlayerWithCurrentTurn
ääN j
]
ääj k
;
ääk l
player
ãã 
.
ãã 
HasActiveTurn
ãã  
=
ãã! "
false
ãã# (
;
ãã( )

nextPlayer
åå 
.
åå 
HasActiveTurn
åå $
=
åå% &
true
åå' +
;
åå+ ,
IList
éé 
<
éé 
PlayerInMatch
éé 
>
éé  
playersInMatch
éé! /
=
éé0 1
	gameMatch
éé2 ;
.
éé; <(
GetPlayersConnectedToMatch
éé< V
(
ééV W
)
ééW X
;
ééX Y
foreach
êê 
(
êê 
var
êê 
playerInMatch
êê &
in
êê' )
playersInMatch
êê* 8
)
êê8 9
{
ëë 
playerInMatch
íí 
.
íí $
MatchServiceConnection
íí 4
.
íí4 5 
NotifyTurnHasEnded
íí5 G
(
ííG H

nextPlayer
ííH R
.
ííR S
Username
ííS [
,
íí[ \
cardPairDto
íí] h
)
ííh i
;
ííi j
}
ìì 
if
ïï 
(
ïï 
	gameMatch
ïï 
.
ïï 

TotalPairs
ïï $
==
ïï% '
	gameMatch
ïï( 1
.
ïï1 2
CardDeckDto
ïï2 =
.
ïï= >
NumberOfPairs
ïï> K
)
ïïK L
{
ññ 
this
óó 
.
óó !
NotifyMatchHasEnded
óó (
(
óó( )
host
óó) -
)
óó- .
;
óó. /
}
òò 
}
öö 	
public
úú 
void
úú 

LeaveMatch
úú 
(
úú 
string
úú %
host
úú& *
,
úú* +
string
úú, 2
username
úú3 ;
)
úú; <
{
ùù 	
MatchDto
ûû 
	gameMatch
ûû 
=
ûû  
GetMatch
ûû! )
(
ûû) *
host
ûû* .
)
ûû. /
;
ûû/ 0
IList
†† 
<
†† 
PlayerInMatch
†† 
>
††  
playersInMatch
††! /
=
††0 1
	gameMatch
††2 ;
.
††; <(
GetPlayersConnectedToMatch
††< V
(
††V W
)
††W X
;
††X Y
PlayerInMatch
°° "
playerWithActiveTurn
°° .
=
°°/ 0
	gameMatch
°°1 :
.
°°: ;$
GetPlyerWithActiveTurn
°°; Q
(
°°Q R
)
°°R S
;
°°S T
PlayerInMatch
¢¢ 
leavePlayer
¢¢ %
=
¢¢& '
	gameMatch
¢¢( 1
.
¢¢1 2
	GetPlayer
¢¢2 ;
(
¢¢; <
username
¢¢< D
)
¢¢D E
;
¢¢E F
if
§§ 
(
§§ "
playerWithActiveTurn
§§ $
.
§§$ %
Username
§§% -
.
§§- .
Equals
§§. 4
(
§§4 5
username
§§5 =
)
§§= >
)
§§> ?
{
•• 
leavePlayer
¶¶ 
=
¶¶ "
playerWithActiveTurn
¶¶ 2
;
¶¶2 3
int
ßß *
indexOfPlayerWithCurrentTurn
ßß 0
=
ßß1 2
	gameMatch
ßß3 <
.
ßß< =(
GetPlayersConnectedToMatch
ßß= W
(
ßßW X
)
ßßX Y
.
ßßY Z
IndexOf
ßßZ a
(
ßßa b"
playerWithActiveTurn
ßßb v
)
ßßv w
;
ßßw x*
indexOfPlayerWithCurrentTurn
®® ,
=
®®- .

ChangeTurn
®®/ 9
(
®®9 :
	gameMatch
®®: C
,
®®C D*
indexOfPlayerWithCurrentTurn
®®E a
)
®®a b
;
®®b c
PlayerInMatch
™™ 

nextPlayer
™™ (
=
™™) *
	gameMatch
™™+ 4
.
™™4 5(
GetPlayersConnectedToMatch
™™5 O
(
™™O P
)
™™P Q
[
™™Q R*
indexOfPlayerWithCurrentTurn
™™R n
]
™™n o
;
™™o p"
playerWithActiveTurn
´´ $
.
´´$ %
HasActiveTurn
´´% 2
=
´´3 4
false
´´5 :
;
´´: ;

nextPlayer
¨¨ 
.
¨¨ 
HasActiveTurn
¨¨ (
=
¨¨) *
true
¨¨+ /
;
¨¨/ 0
foreach
ÆÆ 
(
ÆÆ 
var
ÆÆ 
playerInMatch
ÆÆ *
in
ÆÆ+ -
playersInMatch
ÆÆ. <
)
ÆÆ< =
{
ØØ 
playerInMatch
∞∞ !
.
∞∞! "$
MatchServiceConnection
∞∞" 8
.
∞∞8 9"
EndTurnOfExpelPlayer
∞∞9 M
(
∞∞M N

nextPlayer
∞∞N X
.
∞∞X Y
Username
∞∞Y a
)
∞∞a b
;
∞∞b c
}
±± 
}
≤≤ 
IList
¥¥ 
<
¥¥ 
int
¥¥ 
>
¥¥ 
cardsUncovered
¥¥ %
=
¥¥& '
leavePlayer
¥¥( 3
.
¥¥3 4
GetUncoveredCards
¥¥4 E
(
¥¥E F
)
¥¥F G
;
¥¥G H
foreach
µµ 
(
µµ 
var
µµ 
playerConnected
µµ (
in
µµ) +
playersInMatch
µµ, :
)
µµ: ;
{
∂∂ 
var
∑∑ 
channel
∑∑ 
=
∑∑ 
playerConnected
∑∑ -
.
∑∑- .$
MatchServiceConnection
∑∑. D
;
∑∑D E
channel
∏∏ 
.
∏∏ $
NotifyPlayerLeaveMatch
∏∏ .
(
∏∏. /
username
∏∏/ 7
,
∏∏7 8
cardsUncovered
∏∏9 G
)
∏∏G H
;
∏∏H I
}
ππ 
RemovePairs
ªª 
(
ªª 
	gameMatch
ªª !
,
ªª! "
cardsUncovered
ªª# 1
)
ªª1 2
;
ªª2 3
	gameMatch
ºº 
.
ºº 
RemovePlayer
ºº "
(
ºº" #
username
ºº# +
)
ºº+ ,
;
ºº, -
if
ææ 
(
ææ 
playersInMatch
ææ 
.
ææ 
Count
ææ $
==
ææ% '
$num
ææ( )
)
ææ) *
{
øø 
this
¿¿ 
.
¿¿ !
NotifyMatchHasEnded
¿¿ (
(
¿¿( )
host
¿¿) -
)
¿¿- .
;
¿¿. /
}
¡¡ 
}
¬¬ 	
public
ƒƒ 
void
ƒƒ 
ExpelPlayer
ƒƒ 
(
ƒƒ  
ExpelVoteDto
ƒƒ  ,
	expelVote
ƒƒ- 6
)
ƒƒ6 7
{
≈≈ 	
string
∆∆ 
host
∆∆ 
=
∆∆ 
	expelVote
∆∆ #
.
∆∆# $
Host
∆∆$ (
;
∆∆( )
MatchDto
«« 
	gameMatch
«« 
=
««  
GetMatch
««! )
(
««) *
host
««* .
)
««. /
;
««/ 0
string
»» #
usernameOfExpelPlayer
»» (
=
»») *
	expelVote
»»+ 4
.
»»4 5#
UsernameOfExpelPlayer
»»5 J
;
»»J K
int
   
playerExpelVotes
    
=
  ! "
	gameMatch
  # ,
.
  , -
AddExpelVote
  - 9
(
  9 :#
usernameOfExpelPlayer
  : O
)
  O P
;
  P Q
PlayerInMatch
ÀÀ 
voterPlayer
ÀÀ %
=
ÀÀ& '
	gameMatch
ÀÀ( 1
.
ÀÀ1 2
	GetPlayer
ÀÀ2 ;
(
ÀÀ; <
	expelVote
ÀÀ< E
.
ÀÀE F#
UsernameOfVoterPlayer
ÀÀF [
)
ÀÀ[ \
;
ÀÀ\ ]
voterPlayer
ÃÃ 
.
ÃÃ 
AddPlayerVoted
ÃÃ &
(
ÃÃ& '#
usernameOfExpelPlayer
ÃÃ' <
)
ÃÃ< =
;
ÃÃ= >
IList
ŒŒ 
<
ŒŒ 
PlayerInMatch
ŒŒ 
>
ŒŒ  
playersInMatch
ŒŒ! /
=
ŒŒ0 1
	gameMatch
ŒŒ2 ;
.
ŒŒ; <(
GetPlayersConnectedToMatch
ŒŒ< V
(
ŒŒV W
)
ŒŒW X
;
ŒŒX Y
int
œœ 
numOfPlayers
œœ 
=
œœ 
playersInMatch
œœ -
.
œœ- .
Count
œœ. 3
;
œœ3 4
if
—— 
(
—— 
playerExpelVotes
——  
>
——! "
(
——# $
numOfPlayers
——$ 0
/
——1 2
$num
——3 4
)
——4 5
)
——5 6
{
““ 
PlayerInMatch
”” "
playerWithActiveTurn
”” 2
=
””3 4
	gameMatch
””5 >
.
””> ?$
GetPlyerWithActiveTurn
””? U
(
””U V
)
””V W
;
””W X
PlayerInMatch
‘‘ 
expelPlayer
‘‘ )
=
‘‘* +
	gameMatch
‘‘, 5
.
‘‘5 6
	GetPlayer
‘‘6 ?
(
‘‘? @#
usernameOfExpelPlayer
‘‘@ U
)
‘‘U V
;
‘‘V W
if
÷÷ 
(
÷÷ "
playerWithActiveTurn
÷÷ (
.
÷÷( )
Username
÷÷) 1
.
÷÷1 2
Equals
÷÷2 8
(
÷÷8 9#
usernameOfExpelPlayer
÷÷9 N
)
÷÷N O
)
÷÷O P
{
◊◊ 
expelPlayer
ÿÿ 
=
ÿÿ  !"
playerWithActiveTurn
ÿÿ" 6
;
ÿÿ6 7
int
ŸŸ *
indexOfPlayerWithCurrentTurn
ŸŸ 4
=
ŸŸ5 6
	gameMatch
ŸŸ7 @
.
ŸŸ@ A(
GetPlayersConnectedToMatch
ŸŸA [
(
ŸŸ[ \
)
ŸŸ\ ]
.
ŸŸ] ^
IndexOf
ŸŸ^ e
(
ŸŸe f"
playerWithActiveTurn
ŸŸf z
)
ŸŸz {
;
ŸŸ{ |*
indexOfPlayerWithCurrentTurn
⁄⁄ 0
=
⁄⁄1 2

ChangeTurn
⁄⁄3 =
(
⁄⁄= >
	gameMatch
⁄⁄> G
,
⁄⁄G H*
indexOfPlayerWithCurrentTurn
⁄⁄I e
)
⁄⁄e f
;
⁄⁄f g
PlayerInMatch
‹‹ !

nextPlayer
‹‹" ,
=
‹‹- .
	gameMatch
‹‹/ 8
.
‹‹8 9(
GetPlayersConnectedToMatch
‹‹9 S
(
‹‹S T
)
‹‹T U
[
‹‹U V*
indexOfPlayerWithCurrentTurn
‹‹V r
]
‹‹r s
;
‹‹s t"
playerWithActiveTurn
›› (
.
››( )
HasActiveTurn
››) 6
=
››7 8
false
››9 >
;
››> ?

nextPlayer
ﬁﬁ 
.
ﬁﬁ 
HasActiveTurn
ﬁﬁ ,
=
ﬁﬁ- .
true
ﬁﬁ/ 3
;
ﬁﬁ3 4
foreach
‡‡ 
(
‡‡ 
var
‡‡  
playerInMatch
‡‡! .
in
‡‡/ 1
playersInMatch
‡‡2 @
)
‡‡@ A
{
·· 
playerInMatch
‚‚ %
.
‚‚% &$
MatchServiceConnection
‚‚& <
.
‚‚< ="
EndTurnOfExpelPlayer
‚‚= Q
(
‚‚Q R

nextPlayer
‚‚R \
.
‚‚\ ]
Username
‚‚] e
)
‚‚e f
;
‚‚f g
}
„„ 
}
‰‰ 
IList
ÊÊ 
<
ÊÊ 
int
ÊÊ 
>
ÊÊ 
cardsUncovered
ÊÊ )
=
ÊÊ* +
expelPlayer
ÊÊ, 7
.
ÊÊ7 8
GetUncoveredCards
ÊÊ8 I
(
ÊÊI J
)
ÊÊJ K
;
ÊÊK L
foreach
ÁÁ 
(
ÁÁ 
var
ÁÁ 
playerConnected
ÁÁ ,
in
ÁÁ- /
playersInMatch
ÁÁ0 >
)
ÁÁ> ?
{
ËË 
var
ÈÈ 
channel
ÈÈ 
=
ÈÈ  !
playerConnected
ÈÈ" 1
.
ÈÈ1 2$
MatchServiceConnection
ÈÈ2 H
;
ÈÈH I
channel
ÍÍ 
.
ÍÍ "
NotifyPlayerWasExpel
ÍÍ 0
(
ÍÍ0 1#
usernameOfExpelPlayer
ÍÍ1 F
,
ÍÍF G
cardsUncovered
ÍÍH V
)
ÍÍV W
;
ÍÍW X
}
ÎÎ 
RemovePairs
ÌÌ 
(
ÌÌ 
	gameMatch
ÌÌ %
,
ÌÌ% &
cardsUncovered
ÌÌ' 5
)
ÌÌ5 6
;
ÌÌ6 7
	gameMatch
ÓÓ 
.
ÓÓ 
RemovePlayer
ÓÓ &
(
ÓÓ& '#
usernameOfExpelPlayer
ÓÓ' <
)
ÓÓ< =
;
ÓÓ= >
if
 
(
 
playersInMatch
 "
.
" #
Count
# (
==
) +
$num
, -
)
- .
{
ÒÒ 
this
ÚÚ 
.
ÚÚ !
NotifyMatchHasEnded
ÚÚ ,
(
ÚÚ, -
host
ÚÚ- 1
)
ÚÚ1 2
;
ÚÚ2 3
}
ÛÛ 
}
ıı 
}
ˆˆ 	
public
¯¯ 
IList
¯¯ 
<
¯¯ 
string
¯¯ 
>
¯¯ 3
%GetUsernamesOfPlayersConnectedToMatch
¯¯ B
(
¯¯B C
string
¯¯C I
host
¯¯J N
)
¯¯N O
{
˘˘ 	
MatchDto
˙˙ 
	gameMatch
˙˙ 
=
˙˙  
GetMatch
˙˙! )
(
˙˙) *
host
˙˙* .
)
˙˙. /
;
˙˙/ 0
IList
¸¸ 
<
¸¸ 
string
¸¸ 
>
¸¸ 
playerUsername
¸¸ (
=
¸¸) *
	gameMatch
¸¸+ 4
.
¸¸4 53
%GetUsernamesOfPlayersConnectedToMatch
¸¸5 Z
(
¸¸Z [
)
¸¸[ \
;
¸¸\ ]
return
˛˛ 
playerUsername
˛˛ !
;
˛˛! "
}
ˇˇ 	
public
ÅÅ 
IList
ÅÅ 
<
ÅÅ 
string
ÅÅ 
>
ÅÅ 
GetPlayersVoted
ÅÅ ,
(
ÅÅ, -
string
ÅÅ- 3
host
ÅÅ4 8
,
ÅÅ8 9
string
ÅÅ: @
username
ÅÅA I
)
ÅÅI J
{
ÇÇ 	
MatchDto
ÉÉ 
	gameMatch
ÉÉ 
=
ÉÉ  
GetMatch
ÉÉ! )
(
ÉÉ) *
host
ÉÉ* .
)
ÉÉ. /
;
ÉÉ/ 0
PlayerInMatch
ÖÖ 
player
ÖÖ  
=
ÖÖ! "
	gameMatch
ÖÖ# ,
.
ÖÖ, -
	GetPlayer
ÖÖ- 6
(
ÖÖ6 7
username
ÖÖ7 ?
)
ÖÖ? @
;
ÖÖ@ A
IList
ÜÜ 
<
ÜÜ 
string
ÜÜ 
>
ÜÜ 
playersVoted
ÜÜ &
=
ÜÜ' (
player
ÜÜ) /
.
ÜÜ/ 0
GetPlayersVoted
ÜÜ0 ?
(
ÜÜ? @
)
ÜÜ@ A
;
ÜÜA B
return
àà 
playersVoted
àà 
;
àà  
}
ââ 	
public
ãã 
int
ãã 

ChangeTurn
ãã 
(
ãã 
MatchDto
ãã &
	gameMatch
ãã' 0
,
ãã0 1
int
ãã2 5*
indexOfPlayerWithCurrentTurn
ãã6 R
)
ããR S
{
åå 	
if
çç 
(
çç *
indexOfPlayerWithCurrentTurn
çç ,
==
çç- /
(
çç0 1
	gameMatch
çç1 :
.
çç: ;(
GetPlayersConnectedToMatch
çç; U
(
ççU V
)
ççV W
.
ççW X
Count
ççX ]
-
çç^ _
$num
çç` a
)
çça b
)
ççb c
{
éé *
indexOfPlayerWithCurrentTurn
èè ,
=
èè- .
$num
èè/ 0
;
èè0 1
}
êê 
else
ëë 
{
íí *
indexOfPlayerWithCurrentTurn
ìì ,
++
ìì, .
;
ìì. /
}
îî 
return
ññ *
indexOfPlayerWithCurrentTurn
ññ /
;
ññ/ 0
}
óó 	
public
ôô 
void
ôô 
RemovePairs
ôô 
(
ôô  
MatchDto
ôô  (
	gameMatch
ôô) 2
,
ôô2 3
IList
ôô4 9
<
ôô9 :
int
ôô: =
>
ôô= >
cardsUncovered
ôô? M
)
ôôM N
{
öö 	
if
õõ 
(
õõ 
(
õõ 
cardsUncovered
õõ 
.
õõ  
Count
õõ  %
%
õõ& '
$num
õõ( )
)
õõ) *
==
õõ+ -
$num
õõ. /
)
õõ/ 0
{
úú 
	gameMatch
ùù 
.
ùù 

TotalPairs
ùù $
=
ùù% &
	gameMatch
ùù' 0
.
ùù0 1

TotalPairs
ùù1 ;
-
ùù< =
(
ùù> ?
cardsUncovered
ùù? M
.
ùùM N
Count
ùùN S
/
ùùT U
$num
ùùV W
)
ùùW X
;
ùùX Y
}
ûû 
else
üü 
{
†† 
	gameMatch
°° 
.
°° 

TotalPairs
°° $
=
°°% &
	gameMatch
°°' 0
.
°°0 1

TotalPairs
°°1 ;
-
°°< =
(
°°> ?
(
°°? @
cardsUncovered
°°@ N
.
°°N O
Count
°°O T
-
°°U V
$num
°°W X
)
°°X Y
/
°°Z [
$num
°°\ ]
)
°°] ^
;
°°^ _
}
¢¢ 
}
££ 	
}
§§ 
}•• ü
]C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MemoryGameService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?

PerSession? I
,I J
ConcurrencyMode 
= 
ConcurrencyMode )
.) *
Single* 0
)0 1
]1 2
public		 

partial		 
class		 
MemoryGameService		 *
{

 
private 
static 
IList 
< 
MatchDto %
>% &
_matches' /
=0 1
new2 5
List6 :
<: ;
MatchDto; C
>C D
(D E
)E F
;F G
public 
MemoryGameService  
(  !
)! "
{# $
}% &
} 
} Ã:
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\PlayerRegistryService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,"
IPlayerRegistryService- C
{ 
public 
bool 
RegisterNewPlayer %
(% &
	PlayerDTO& /
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
{$$ 
var%% 
transaction%% 
=%%  !
memoryGameContext%%" 3
.%%3 4
Database%%4 <
.%%< =
BeginTransaction%%= M
(%%M N
)%%N O
;%%O P

unitOfWork&& 
.&& 
Accounts&& #
.&&# $
Add&&$ '
(&&' (

newAccount&&( 2
)&&2 3
;&&3 4

unitOfWork'' 
.'' 
Players'' "
.''" #
Add''# &
(''& '
	newPlayer''' 0
)''0 1
;''1 2
int(( 
rowsAffected((  
=((! "

unitOfWork((# -
.((- .
Complete((. 6
(((6 7
)((7 8
;((8 9
transaction)) 
.)) 
Commit)) "
())" #
)))# $
;))$ %
return** 
rowsAffected** #
>**$ %
$num**& '
;**' (
}++ 
catch,, 
(,, 
SqlException,, 
),,  
{-- '
DatabaseConnectionLostFault.. +'
databaseConnectionLostFault.., G
=..H I
new..J M'
DatabaseConnectionLostFault..N i
(..i j
)..j k
;..k l
throw// 
new// 
FaultException// (
<//( )'
DatabaseConnectionLostFault//) D
>//D E
(//E F'
databaseConnectionLostFault//F a
)//a b
;//b c
}00 
catch11 
(11 
	Exception11 
e11 
)11 
{22 
Console33 
.33 
	WriteLine33 !
(33! "
e33" #
)33# $
;33$ %
Console44 
.44 
ReadLine44  
(44  !
)44! "
;44" #
throw55 
;55 
}66 
finally77 
{88 

unitOfWork99 
.99 
Dispose99 "
(99" #
)99# $
;99$ %
}:: 
};; 	
public== 
bool== #
EmailAddressIsAvailable== +
(==+ ,
string==, 2
emailAddress==3 ?
)==? @
{>> 	

UnitOfWork?? 

unitOfWork?? !
=??" #
new??$ '

UnitOfWork??( 2
(??2 3
new??3 6
MemoryGameContext??7 H
(??H I
)??I J
)??J K
;??K L
try@@ 
{AA 
AccountBB /
#accountWithTheSpecifiedEmailAddressBB ;
=BB< =

unitOfWorkBB> H
.BBH I
AccountsBBI Q
.BBQ R
GetBBR U
(BBU V
emailAddressBBV b
)BBb c
;BBc d
ifCC 
(CC /
#accountWithTheSpecifiedEmailAddressCC 7
==CC8 :
nullCC; ?
)CC? @
{DD 
returnEE 
trueEE 
;EE  
}FF 
returnGG 
falseGG 
;GG 
}HH 
catchII 
(II 
SqlExceptionII 
)II 
{JJ '
DatabaseConnectionLostFaultKK +'
databaseConnectionLostFaultKK, G
=KKH I
newKKJ M'
DatabaseConnectionLostFaultKKN i
(KKi j
)KKj k
;KKk l
throwLL 
newLL 
FaultExceptionLL (
<LL( )'
DatabaseConnectionLostFaultLL) D
>LLD E
(LLE F'
databaseConnectionLostFaultLLF a
)LLa b
;LLb c
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
publicTT 
boolTT 
UserNameIsAvailableTT '
(TT' (
stringTT( .
usernameTT/ 7
)TT7 8
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
AccountYY +
accountWithTheSpecifiedUsernameYY 7
=YY8 9

unitOfWorkYY: D
.YYD E
AccountsYYE M
.YYM N
FindFirstOccurenceYYN `
(YY` a
accountYYa h
=>YYi k
accountYYl s
.YYs t
UsernameYYt |
==YY} 
username
YYÄ à
)
YYà â
;
YYâ ä
ifZZ 
(ZZ +
accountWithTheSpecifiedUsernameZZ 3
==ZZ4 6
nullZZ7 ;
)ZZ; <
{[[ 
return\\ 
true\\ 
;\\  
}]] 
return^^ 
false^^ 
;^^ 
}__ 
catch`` 
(`` 
SqlException`` 
)``  
{aa '
DatabaseConnectionLostFaultbb +'
databaseConnectionLostFaultbb, G
=bbH I
newbbJ M'
DatabaseConnectionLostFaultbbN i
(bbi j
)bbj k
;bbk l
throwcc 
newcc 
FaultExceptioncc (
<cc( )'
DatabaseConnectionLostFaultcc) D
>ccD E
(ccE F'
databaseConnectionLostFaultccF a
)cca b
;ccb c
}dd 
finallyee 
{ff 

unitOfWorkgg 
.gg 
Disposegg "
(gg" #
)gg# $
;gg$ %
}hh 
}ii 	
}ll 
}mm ù
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\ScoreService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
IScoreService- :
{ 
List 
< 
PlayerScoreDTO 
> 
IScoreService *
.* +#
GetPlayersWithBestScore+ B
(B C
intC F(
numberOfPlayersToBeRetrievedG c
)c d
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
{ 
IEnumerable 
< 
Account #
># $
accountEntities% 4
=5 6

unitOfWork7 A
.A B
AccountsB J
.J K-
!GetNumberOfAccountsWithPlayerInfoK l
(l m)
numberOfPlayersToBeRetrieved	m â
)
â ä
;
ä ã
List 
< 
PlayerScoreDTO #
># $!
playersWithBestScores% :
=; <
new= @
ListA E
<E F
PlayerScoreDTOF T
>T U
(U V
)V W
;W X
foreach 
( 
var 
account #
in$ &
accountEntities' 6
)6 7
{ 
PlayerScoreDTO "
playerScore# .
=/ 0
new1 4
PlayerScoreDTO5 C
(C D
)D E
{ 
Username  
=! "
account# *
.* +
Username+ 3
,3 4

TotalScore "
=# $
account% ,
., -
Player- 3
.3 4
Score4 9
} 
; !
playersWithBestScores )
.) *
Add* -
(- .
playerScore. 9
)9 :
;: ;
} 
return!! !
playersWithBestScores!! ,
;!!, -
}"" 
catch## 
(## 
	Exception## 
e## 
)## 
{$$ 
Console%% 
.%% 
	WriteLine%% !
(%%! "
e%%" #
)%%# $
;%%$ %
Console&& 
.&& 
ReadLine&&  
(&&  !
)&&! "
;&&" #'
DatabaseConnectionLostFault'' +'
databaseConnectionLostFault'', G
=''H I
new''J M'
DatabaseConnectionLostFault''N i
(''i j
)''j k
;''k l
throw(( 
new(( 
FaultException(( (
<((( )'
DatabaseConnectionLostFault(() D
>((D E
(((E F'
databaseConnectionLostFault((F a
)((a b
;((b c
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
}.. 	
}// 
}00 †	
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\TokenGenerator.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
ITokenGenerator- <
{ 
public 
string 
GenerateToken #
(# $
int$ '
length( .
). /
{		 	
string

 
token

 
=

 
Guid

 
.

  
NewGuid

  '
(

' (
)

( )
.

) *
ToString

* 2
(

2 3
)

3 4
;

4 5
token 
= 
token 
. 
Replace !
(! "
$str" %
,% &
$str' )
)) *
;* +
token 
= 
token 
. 
	Substring #
(# $
$num$ %
,% &
length' -
)- .
;. /
return 
token 
; 
} 	
} 
} ∆
YC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\CardShuffler.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public 

class 
CardShuffler 
{ 
private 
	IShuffler 
< 
CardDto !
>! "
_shufflerAlgorithm# 5
;5 6
public

 
CardShuffler

 
(

 
)

 
{ 	
_shufflerAlgorithm 
=  
new! $
FisherYatesShuffler% 8
<8 9
CardDto9 @
>@ A
(A B
)B C
;C D
} 	
public 
void 
ShuffleCards  
(  !
IList! &
<& '
CardDto' .
>. /
cardDeck0 8
)8 9
{ 	
_shufflerAlgorithm 
. 
Shuffle &
(& '
cardDeck' /
)/ 0
;0 1
} 	
} 
} ˛
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\FisherYatesShuffler.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public 

class 
FisherYatesShuffler $
<$ %
ShufflingCollection% 8
>8 9
:: ;
	IShuffler< E
<E F
ShufflingCollectionF Y
>Y Z
where[ `
ShufflingCollectiona t
:u v
classw |
{ 
public 
void 
Shuffle 
( 
IList !
<! "
ShufflingCollection" 5
>5 6
collectionToShuffle7 J
)J K
{		 	
int

 
	lastIndex

 
=

 
collectionToShuffle

 /
.

/ 0
Count

0 5
-

6 7
$num

8 9
;

9 :
while 
( 
	lastIndex 
> 
$num  
)  !
{ 
int 
randomIndex 
=  !,
 GenerateRandomNumberBetweenRange" B
(B C
$numC D
,D E
	lastIndexF O
)O P
;P Q
var 
auxiliaryContainer &
=' (
collectionToShuffle) <
[< =
	lastIndex= F
]F G
;G H
collectionToShuffle #
[# $
	lastIndex$ -
]- .
=/ 0
collectionToShuffle1 D
[D E
randomIndexE P
]P Q
;Q R
collectionToShuffle #
[# $
randomIndex$ /
]/ 0
=1 2
auxiliaryContainer3 E
;E F
	lastIndex 
-- 
; 
} 
} 	
private 
int ,
 GenerateRandomNumberBetweenRange 4
(4 5
int5 8
minimum9 @
,@ A
intB E
maximumF M
)M N
{ 	
Random !
randomNumberGenerator (
=) *
new+ .
Random/ 5
(5 6
)6 7
;7 8
int 
randomNumber 
= !
randomNumberGenerator 4
.4 5
Next5 9
(9 :
minimum: A
,A B
maximumC J
)J K
;K L
return 
randomNumber 
;  
} 	
} 
} à
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\IShuffler.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public 

	interface 
	IShuffler 
< 
ShufflingCollection 2
>2 3
where4 9
ShufflingCollection: M
:N O
classP U
{ 
void 
Shuffle 
( 
IList 
< 
ShufflingCollection .
>. /
collectionToShuffle0 C
)C D
;D E
} 
}		 Ä
YC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\MailTemplate.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public 

class 
MailTemplate 
{ 
private 
TextPart 
_message !
;! "
private		 
MimeMessage		 
_content		 $
;		$ %
private

 
readonly

 
MailboxAddress

 '
_sender

( /
;

/ 0
private 
MailboxAddress 
	_receiver (
;( )
private 
string 
_subject 
;  
private 

SmtpClient 
_client "
;" #
public 
MailTemplate 
( 
) 
{ 	
_message 
= 
new 
TextPart #
(# $
$str$ +
)+ ,
;, -
_content 
= 
new 
MimeMessage &
(& '
)' (
;( )
_client 
= 
new 

SmtpClient $
($ %
)% &
;& '
_client 
. 
Connect 
( 
$str ,
,, -
$num. 1
,1 2
false3 8
)8 9
;9 :
var 
sender 
= 
new 
MailboxAddress +
(+ ,
$str, G
,G H
$strI [
)[ \
;\ ]
_content 
. 
From 
. 
Add 
( 
sender $
)$ %
;% &
_sender 
= 
new 
MailboxAddress (
(( )
$str) 9
,9 :
$str; V
)V W
;W X
_client 
. 
Authenticate  
(  !
$str! <
,< =
$str> P
)P Q
;Q R
} 	
public 
void 
SetReceiver 
(  
string  &
name' +
,+ ,
string- 3
emailAddress4 @
)@ A
{ 	
	_receiver 
= 
new 
MailboxAddress *
(* +
name+ /
,/ 0
emailAddress1 =
)= >
;> ?
_content 
. 
To 
. 
Add 
( 
	_receiver %
)% &
;& '
} 	
public!! 
void!! 

SetMessage!! 
(!! 
string!! %
subject!!& -
,!!- .
string!!/ 5
message!!6 =
)!!= >
{"" 	
_message## 
.## 
Text## 
=## 
message## #
;### $
_subject$$ 
=$$ 
subject$$ 
;$$ 
_content%% 
.%% 
Body%% 
=%% 
_message%% $
;%%$ %
_content&& 
.&& 
Subject&& 
=&& 
subject&& &
;&&& '
}'' 	
public)) 
void)) 
Send)) 
()) 
))) 
{** 	
_client++ 
.++ 
Send++ 
(++ 
_content++ !
)++! "
;++" #
_client,, 
.,, 

Disconnect,, 
(,, 
true,, #
),,# $
;,,$ %
}-- 	
}.. 
}// 