�	
iC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IAccountModifiabilityService.cs
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
} �
hC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IAccountVerificationService.cs
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
} �
fC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\ICardDeckRetrieverService.cs
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
} �
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\ILobbyService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
( 
SessionMode  
=! "
SessionMode# .
.. /
Required/ 7
,7 8
CallbackContract 
= 
typeof !
(! "!
ILobbyServiceCallback" 7
)7 8
)8 9
]9 :
public		 

	interface		 
ILobbyService		 "
{

 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	JoinLobby 
( 
string 
host "
," #
string$ *
username+ 3
)3 4
;4 5
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

LeaveLobby 
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
] 
IList 
< 
string 
> #
GetActivePlayersInLobby -
(- .
string. 4
host5 9
)9 :
;: ;
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	StartGame 
( 
string 
host "
)" #
;# $
} 
[ 
ServiceContract 
] 
public 

	interface !
ILobbyServiceCallback *
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void "
NotifyNewPlayerEntered #
(# $
string$ *
username+ 3
)3 4
;4 5
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
NotifyPlayerLeft 
( 
string $
username% -
)- .
;. /
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void "
TakePlayersToMatchView #
(# $
IList$ )
<) *
string* 0
>0 1
playersInMatch2 @
)@ A
;A B
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void !
TakePlayersOutOfLobby "
(" #
)# $
;$ %
}   
}!! �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IMatchCreationService.cs
	namespace		 	
MemoryGameService		
 
.		 
	Contracts		 %
{

 
[ 
ServiceContract 
] 
public 

	interface !
IMatchCreationService *
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
CreateNewMatch 
( 
MatchDto $
gameMatchDto% 1
)1 2
;2 3
} 
} �
cC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IMatchDiscoveryService.cs
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
} �
cC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IPlayerRegistryService.cs
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
} �
kC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjectMappers\CardDeckMapper.cs
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
}## �
gC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjectMappers\CardMapper.cs
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
} �

tC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjectMappers\PlayerCredentialsMapper.cs
	namespace 	
MemoryGameService
 
. %
DataTransferObjectMappers 5
{ 
public 

static 
class #
PlayerCredentialsMapper /
{ 
public 
static  
PlayerCredentialsDTO *
	CreateDTO+ 4
(4 5
Player5 ;
player< B
)B C
{		 	 
PlayerCredentialsDTO

   
playerCredentialsDTO

! 5
=

6 7
new

8 ; 
PlayerCredentialsDTO

< P
(

P Q
)

Q R
{ 
} 
; 
return  
playerCredentialsDTO '
;' (
} 	
public 
static 
Player 
CreateEntity )
() * 
PlayerCredentialsDTO* > 
playerCredentialsDTO? S
)S T
{ 	
Player 
player 
= 
new 
Player  &
(& '
)' (
{ 
} 
; 
return 
player 
; 
} 	
} 
} �
iC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjectMappers\PlayerMapper.cs
	namespace 	
MemoryGameService
 
{ 
public 

static 
class 
PlayerMapper $
{ 
public 
static 
	PlayerDTO 
	CreateDTO  )
() *
Player* 0
player1 7
)7 8
{		 	
	PlayerDTO

 
	mappedDTO

 
=

  !
new

" %
	PlayerDTO

& /
(

/ 0
)

0 1
{ 
} 
; 
return 
	mappedDTO 
; 
} 	
public 
static 
Player 
CreateEntity )
() *
	PlayerDTO* 3
dto4 7
)7 8
{ 	
Player 
mappedEntity 
=  !
new" %
Player& ,
(, -
)- .
{ 
} 
; 
return 
mappedEntity 
;  
}   	
}!! 
}"" �

nC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjectMappers\PlayerScoreMapper.cs
	namespace 	
MemoryGameService
 
. %
DataTransferObjectMappers 5
{ 
public 

static 
class 
PlayerScoreMapper )
{ 
public 
static 
PlayerScoreDTO $
	createDTO% .
(. /
Player/ 5
player6 <
)< =
{		 	
PlayerScoreDTO

 
playerScoreDTO

 )
=

* +
new

, /
PlayerScoreDTO

0 >
(

> ?
)

? @
{ 
} 
; 
return 
playerScoreDTO !
;! "
} 	
public 
static 
Player 
createEntity )
() *
PlayerScoreDTO* 8
playerScoreDTO9 G
)G H
{ 	
Player 
player 
= 
new 
Player  &
(& '
)' (
{ 
Score 
= 
playerScoreDTO &
.& '

TotalScore' 1
} 
; 
return 
player 
; 
} 	
} 
} �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckDTO.cs
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
} �
fC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckInfoDto.cs
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
} �
^C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardDto.cs
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
} �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardPairDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{		 
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
CardPairDto 
{ 
[ 	

DataMember	 
] 
public 
int 
IndexOfCard1 
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
int 
IndexOfCard2 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
bool 
BothCardsAreEqual %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} �?
_C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\MatchDto.cs
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
{++ 	
foreach,, 
(,, 
var,, 
player,, 
in,, !
_players,," *
),,* +
{-- 
if.. 
(.. 
player.. 
... 
Username.. #
...# $
Equals..$ *
(..* +
username..+ 3
)..3 4
)..4 5
{// 
return00 
player00 !
;00! "
}11 
}22 
throw44 
new44 
	Exception44 
(44  
$str44  "
)44" #
;44# $
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
;TT$ %
forUU 
(UU 
intUU 
currentIndexUU !
=UU" #
$numUU$ %
;UU% &
currentIndexUU' 3
<UU4 5
_playersUU6 >
.UU> ?
CountUU? D
;UUD E
currentIndexUUF R
++UUR T
)UUT U
{VV 
ifWW 
(WW 
_playersWW 
[WW 
currentIndexWW )
]WW) *
.WW* +
UsernameWW+ 3
.WW3 4
EqualsWW4 :
(WW: ;
playerUsernameWW; I
)WWI J
)WWJ K
{XX 
_playersYY 
[YY 
currentIndexYY )
]YY) *
.YY* +
ExpulsionVotesYY+ 9
++YY9 ;
;YY; <
playerExpelVotesZZ $
=ZZ% &
_playersZZ' /
[ZZ/ 0
currentIndexZZ0 <
]ZZ< =
.ZZ= >
ExpulsionVotesZZ> L
;ZZL M
}[[ 
}\\ 
return]] 
playerExpelVotes]] #
;]]# $
}^^ 	
public`` 
void`` 
RemovePlayer``  
(``  !
string``! '
playerUsername``( 6
)``6 7
{aa 	
PlayerInMatchbb 
playerToRemovebb (
=bb) *
thisbb+ /
.bb/ 0
	GetPlayerbb0 9
(bb9 :
playerUsernamebb: H
)bbH I
;bbI J
_playerscc 
.cc 
Removecc 
(cc 
playerToRemovecc *
)cc* +
;cc+ ,
}dd 	
}ff 
}gg �
yC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PasswordModificationCredentialsDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{		 
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
class .
"PasswordModificationCredentialsDto 3
{ 
[ 	

DataMember	 
] 
public 
string 
EmailAddress "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	

DataMember	 
] 
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
string 
Salt 
{ 
get  
;  !
set" %
;% &
}' (
} 
} �
dC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInLobby.cs
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
} �+
\C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\Lobby.cs
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
}RR �
kC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerCredentialsDTO.cs
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
} �	
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerDTO.cs
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
} �
dC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInMatch.cs
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
{++ 	
_uncoveredCards,, 
.,, 
Remove,, "
(,," #
_uncoveredCards,,# 2
[,,2 3
_uncoveredCards,,3 B
.,,B C
Count,,C H
-,,I J
$num,,K L
],,L M
),,M N
;,,N O
}-- 	
}.. 
}// �
eC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerScoreDTO.cs
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
} �
hC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerMovementDto.cs
	namespace		 	

MemoryGame		
 
.		 
MemoryGameService		 &
.		& '
DataTransferObjects		' :
{

 
public 

class 
PlayerMovementDto "
{ 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
HasFormedAPair "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
	CardIndex 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
MovementsLeft  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} �
oC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\VerificationTokenInfoDto.cs
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
}		 �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataValidators\IPlayerValidator.cs
	namespace 	
MemoryGameService
 
. 
DataValidators *
{ 
public 

	interface 
IPlayerValidator %
{ 
bool 
Validate 
( 
string 
emailAddress )
,) *
string+ 1
username2 :
,: ;
string< B
passwordC K
)K L
;L M
} 
} �
aC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataValidators\PlayerValidator.cs
	namespace 	
MemoryGameService
 
. 
DataValidators *
{ 
public 

class 
PlayerValidator  
:! "
AbstractValidator# 4
<4 5
Player5 ;
>; <
,< =
IPlayerValidator 
{		 
public

 
PlayerValidator

 
(

 
)

  
{ 	
RuleFor 
( 
player 
=> 
player $
.$ %
EmailAddress% 1
)1 2
.2 3
Cascade3 :
(: ;
CascadeMode; F
.F G
StopG K
)K L
.L M
MatchesM T
(T U
$strU |
)| }
;} ~
} 	
public 
bool 
Validate 
( 
string #
emailAddress$ 0
,0 1
string2 8
username9 A
,A B
stringC I
passwordJ R
)R S
{ 	
Player 
playerToBeValidated &
=' (
new) ,
Player- 3
(3 4
)4 5
{ 
} 
; 
ValidationResult 
validationResult -
=. /
this0 4
.4 5
Validate5 =
(= >
playerToBeValidated> Q
)Q R
;R S
return 
validationResult #
.# $
IsValid$ +
;+ ,
} 	
} 
} �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IAccessibilityService.cs
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
}(( �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\ICommunicationService.cs
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
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
string 
sender  &
,& '
string( .
message/ 6
)6 7
;7 8
} 
[ 
ServiceContract 
] 
public 

	interface )
ICommunicationServiceCallback 2
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ReciveMessage 
( 
string !
username" *
,* +
string, 2
message3 :
): ;
;; <
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void '
NotifyUserHasEnteredTheChat (
(( )
string) /
username0 8
)8 9
;9 :
} 
} �
\C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IMailingService.cs
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
} �-
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IMatchService.cs
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
( 
string 
host  $
,$ %
string& ,
expelPlayerUsername- @
,@ A
stringB H
playerUsernameI W
)W X
;X Y
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
}22 �
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IScoreService.cs
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
} �
\C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\ITokenGenerator.cs
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
} �
aC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\CardDeckRetrievingFault.cs
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
} �
eC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\DatabaseConnectionLostFault.cs
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
} �
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\DataStorageFault.cs
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
} �
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\MatchAccessDeniedFault.cs
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
} �
^C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\NonExistentUserFault.cs
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
} �	
TC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\TypedFault.cs
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
}* +
public 

TypedFault 
( 
) 
{ 
} 
public 

TypedFault 
( 
string  
error! &
,& '
string( .
details/ 6
)6 7
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
} �
UC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\GlobalErrorHandler.cs
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
} �
fC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\GlobalErrorHandlerBehaviorAttribute.cs
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
ServiceEndpoint	| �
>
� �
	endpoints
� �
,
� �(
BindingParameterCollection
� �
bindingParameters
� �
)
� �
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
},, �
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Properties\AssemblyInfo.cs
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
]$$) *ǁ
_C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\AccesibilityService.cs
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
:+ ,!
IAccessibilityService- B
{ 
private 
readonly 
log4net  
.  !
ILog! %
_logger& -
=. /
log4net0 7
.7 8

LogManager8 B
.B C
	GetLoggerC L
(L M
$strM e
)e f
;f g
public 
string 
GetUserEmailAddress )
() *
string* 0
username1 9
)9 :
{ 	
var 

unitOfWork 
= 
new  

UnitOfWork! +
(+ ,
new, /
MemoryGameContext0 A
(A B
)B C
)C D
;D E
try 
{ 
Account 
accountRetrieved (
=) *

unitOfWork+ 5
.5 6
Accounts6 >
.> ?
FindFirstOccurence? Q
(Q R
accountR Y
=>Z \
account] d
.d e
Usernamee m
==n p
usernameq y
)y z
;z {
if 
( 
accountRetrieved $
!=% '
null( ,
), -
{ 
string 
emailAddress '
=( )
accountRetrieved* :
.: ;
EmailAddress; G
;G H
return 
emailAddress '
;' (
}  
NonExistentUserFault $ 
nonExistentUserFault% 9
=: ;
new< ? 
NonExistentUserFault@ T
(T U
)U V
;V W
throw 
new 
FaultException (
<( ) 
NonExistentUserFault) =
>= >
(> ? 
nonExistentUserFault? S
)S T
;T U
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
( 
sqlException *
)* +
;+ ,'
DatabaseConnectionLostFault   +'
databaseConnectionLostFault  , G
=  H I
new  J M'
DatabaseConnectionLostFault  N i
(  i j
)  j k
;  k l
throw!! 
new!! 
FaultException!! (
<!!( )'
DatabaseConnectionLostFault!!) D
>!!D E
(!!E F'
databaseConnectionLostFault!!F a
)!!a b
;!!b c
}"" 
finally## 
{$$ 

unitOfWork%% 
.%% 
Dispose%% "
(%%" #
)%%# $
;%%$ %
}&& 
}'' 	
public)) 
string)) 
GetUsername)) !
())! "
string))" (
emailAddress))) 5
)))5 6
{** 	
var++ 

unitOfWork++ 
=++ 
new++  

UnitOfWork++! +
(+++ ,
new++, /
MemoryGameContext++0 A
(++A B
)++B C
)++C D
;++D E
try,, 
{-- 
Account.. 
accountRetrieved.. (
=..) *

unitOfWork..+ 5
...5 6
Accounts..6 >
...> ?
Get..? B
(..B C
emailAddress..C O
)..O P
;..P Q
if// 
(// 
accountRetrieved// #
!=//$ &
null//' +
)//+ ,
{00 
return11 
accountRetrieved11 +
.11+ ,
Username11, 4
;114 5
}22  
NonExistentUserFault33 $ 
nonExistentUserFault33% 9
=33: ;
new33< ? 
NonExistentUserFault33@ T
(33T U
)33U V
;33V W
throw44 
new44 
FaultException44 (
<44( ) 
NonExistentUserFault44) =
>44= >
(44> ? 
nonExistentUserFault44? S
)44S T
;44T U
}55 
catch66 
(66 
SqlException66 
sqlException66  ,
)66, -
{77 
_logger88 
.88 
Fatal88 
(88 
sqlException88 *
)88* +
;88+ ,'
DatabaseConnectionLostFault99 +'
databaseConnectionLostFault99, G
=99H I
new99J M'
DatabaseConnectionLostFault99N i
(99i j
)99j k
;99k l
throw:: 
new:: 
FaultException:: (
<::( )'
DatabaseConnectionLostFault::) D
>::D E
(::E F'
databaseConnectionLostFault::F a
)::a b
;::b c
};; 
finally<< 
{== 

unitOfWork>> 
.>> 
Dispose>> "
(>>" #
)>># $
;>>$ %
}?? 
}@@ 	
publicBB 
boolBB 

IsVerifiedBB 
(BB 
stringBB %
usernameBB& .
)BB. /
{CC 	
varDD 

unitOfWorkDD 
=DD 
newDD  

UnitOfWorkDD! +
(DD+ ,
newDD, /
MemoryGameContextDD0 A
(DDA B
)DDB C
)DDC D
;DDD E
tryEE 
{FF 
AccountGG 
accountRetrievedGG (
=GG) *

unitOfWorkGG+ 5
.GG5 6
AccountsGG6 >
.GG> ?
FindFirstOccurenceGG? Q
(GGQ R
accountGGR Y
=>GGZ \
accountGG] d
.GGd e
UsernameGGe m
==GGn p
usernameGGq y
&&GGz |
account	GG} �
.
GG� �
EmailWasVerified
GG� �
)
GG� �
;
GG� �
ifHH 
(HH 
accountRetrievedHH $
!=HH% '
nullHH( ,
)HH, -
{II 
returnJJ 
trueJJ 
;JJ  
}KK 
returnLL 
falseLL 
;LL 
}MM 
catchNN 
(NN 
SqlExceptionNN 
sqlExceptionNN +
)NN+ ,
{OO 
_loggerPP 
.PP 
FatalPP 
(PP 
sqlExceptionPP *
)PP* +
;PP+ ,'
DatabaseConnectionLostFaultQQ +'
databaseConnectionLostFaultQQ, G
=QQH I
newQQJ M'
DatabaseConnectionLostFaultQQN i
(QQi j
)QQj k
;QQk l
throwRR 
newRR 
FaultExceptionRR (
<RR( )'
DatabaseConnectionLostFaultRR) D
>RRD E
(RRE F'
databaseConnectionLostFaultRRF a
)RRa b
;RRb c
}SS 
finallyTT 
{UU 

unitOfWorkVV 
.VV 
DisposeVV "
(VV" #
)VV# $
;VV$ %
}WW 
}XX 	
publicZZ 
boolZZ 
ItsRegisteredZZ !
(ZZ! "
stringZZ" (
emailAddressZZ) 5
)ZZ5 6
{[[ 	
var\\ 

unitOfWork\\ 
=\\ 
new\\  

UnitOfWork\\! +
(\\+ ,
new\\, /
MemoryGameContext\\0 A
(\\A B
)\\B C
)\\C D
;\\D E
try]] 
{^^ 
Account__ 
accountRetrieved__ (
=__) *

unitOfWork__+ 5
.__5 6
Accounts__6 >
.__> ?
Get__? B
(__B C
emailAddress__C O
)__O P
;__P Q
if`` 
(`` 
accountRetrieved`` $
!=``% '
null``( ,
)``, -
{aa 
returnbb 
truebb 
;bb  
}cc 
returndd 
falsedd 
;dd 
}ee 
catchff 
(ff 
SqlExceptionff 
sqlExceptionff  ,
)ff, -
{gg 
_loggerhh 
.hh 
Fatalhh 
(hh 
sqlExceptionhh *
)hh* +
;hh+ ,'
DatabaseConnectionLostFaultii +'
databaseConnectionLostFaultii, G
=iiH I
newiiJ M'
DatabaseConnectionLostFaultiiN i
(iii j
)iij k
;iik l
throwjj 
newjj 
FaultExceptionjj (
<jj( )'
DatabaseConnectionLostFaultjj) D
>jjD E
(jjE F'
databaseConnectionLostFaultjjF a
)jja b
;jjb c
}kk 
finallyll 
{mm 

unitOfWorknn 
.nn 
Disposenn "
(nn" #
)nn# $
;nn$ %
}oo 
}pp 	
publicrr  
PlayerCredentialsDTOrr # 
GetPlayerCredentialsrr$ 8
(rr8 9
stringrr9 ?
usernamerr@ H
)rrH I
{ss 	
vartt 

unitOfWorktt 
=tt 
newtt  

UnitOfWorktt! +
(tt+ ,
newtt, /
MemoryGameContexttt0 A
(ttA B
)ttB C
)ttC D
;ttD E
tryuu 
{vv 
Accountww 
accountRetrievedww (
=ww) *

unitOfWorkww+ 5
.ww5 6
Accountsww6 >
.ww> ?
FindFirstOccurenceww? Q
(wwQ R
accountwwR Y
=>wwZ \
accountww] d
.wwd e
Usernamewwe m
==wwn p
usernamewwq y
)wwy z
;wwz {
ifxx 
(xx 
accountRetrievedxx $
!=xx% '
nullxx( ,
)xx, -
{yy  
PlayerCredentialsDTOzz (
playerCredentialszz) :
=zz; <
newzz= @ 
PlayerCredentialsDTOzzA U
(zzU V
)zzV W
{{{ 
EmailAddress|| $
=||% &
accountRetrieved||' 7
.||7 8
EmailAddress||8 D
,||D E
Username}}  
=}}! "
accountRetrieved}}# 3
.}}3 4
Username}}4 <
,}}< =
Password~~  
=~~! "
accountRetrieved~~# 3
.~~3 4
Password~~4 <
} 
; 
return
�� 
playerCredentials
�� ,
;
��, -
}
�� "
NonExistentUserFault
�� $"
nonExistentUserFault
��% 9
=
��: ;
new
��< ?"
NonExistentUserFault
��@ T
(
��T U
)
��U V
;
��V W
throw
�� 
new
�� 
FaultException
�� (
<
��( )"
NonExistentUserFault
��) =
>
��= >
(
��> ?"
nonExistentUserFault
��? S
)
��S T
;
��T U
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
sqlException
�� *
)
��* +
;
��+ ,)
DatabaseConnectionLostFault
�� +)
databaseConnectionLostFault
��, G
=
��H I
new
��J M)
DatabaseConnectionLostFault
��N i
(
��i j
)
��j k
;
��k l
throw
�� 
new
�� 
FaultException
�� (
<
��( ))
DatabaseConnectionLostFault
��) D
>
��D E
(
��E F)
databaseConnectionLostFault
��F a
)
��a b
;
��b c
}
�� 
finally
�� 
{
�� 

unitOfWork
�� 
.
�� 
Dispose
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
public
�� 
string
�� 
GetSalt
�� 
(
�� 
string
�� $
username
��% -
)
��- .
{
�� 	

UnitOfWork
�� 

unitOfWork
�� !
=
��" #
new
��$ '

UnitOfWork
��( 2
(
��2 3
new
��3 6
MemoryGameContext
��7 H
(
��H I
)
��I J
)
��J K
;
��K L
try
�� 
{
�� 
Account
�� 
retrievedAccount
�� (
=
��) *

unitOfWork
��+ 5
.
��5 6
Accounts
��6 >
.
��> ? 
FindFirstOccurence
��? Q
(
��Q R
account
��R Y
=>
��Z \
account
��] d
.
��d e
Username
��e m
==
��n p
username
��q y
)
��y z
;
��z {
if
�� 
(
�� 
retrievedAccount
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
return
�� 
retrievedAccount
�� +
.
��+ ,
Salt
��, 0
;
��0 1
}
�� "
NonExistentUserFault
�� $"
nonExistentUserFault
��% 9
=
��: ;
new
��< ?"
NonExistentUserFault
��@ T
(
��T U
)
��U V
;
��V W
throw
�� 
new
�� 
FaultException
�� (
<
��( )"
NonExistentUserFault
��) =
>
��= >
(
��> ?"
nonExistentUserFault
��? S
)
��S T
;
��T U
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
sqlException
�� *
.
��* +
Message
��+ 2
)
��2 3
;
��3 4)
DatabaseConnectionLostFault
�� +)
databaseConnectionLostFault
��, G
=
��H I
new
��J M)
DatabaseConnectionLostFault
��N i
(
��i j
)
��j k
;
��k l
throw
�� 
new
�� 
FaultException
�� (
<
��( ))
DatabaseConnectionLostFault
��) D
>
��D E
(
��E F)
databaseConnectionLostFault
��F a
)
��a b
;
��b c
}
�� 
finally
�� 
{
�� 

unitOfWork
�� 
.
�� 
Dispose
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
public
�� 
bool
�� 
HasAccessRights
�� #
(
��# $
string
��$ *
username
��+ 3
,
��3 4
string
��5 ;
password
��< D
)
��D E
{
�� 	

UnitOfWork
�� 

unitOfWork
�� !
=
��" #
new
��$ '

UnitOfWork
��( 2
(
��2 3
new
��3 6
MemoryGameContext
��7 H
(
��H I
)
��I J
)
��J K
;
��K L
try
�� 
{
�� 
Account
�� 
retrievedAccount
�� (
=
��) *

unitOfWork
��+ 5
.
��5 6
Accounts
��6 >
.
��> ? 
FindFirstOccurence
��? Q
(
��Q R
account
��R Y
=>
��Z \
account
��] d
.
��d e
Username
��e m
==
��n p
username
��q y
&&
��z |
account��} �
.��� �
Password��� �
==��� �
password��� �
)��� �
;��� �
if
�� 
(
�� 
retrievedAccount
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
SqlException
�� 
sqlException
��  ,
)
��, -
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
sqlException
�� *
)
��* +
;
��+ ,)
DatabaseConnectionLostFault
�� +)
databaseConnectionLostFault
��, G
=
��H I
new
��J M)
DatabaseConnectionLostFault
��N i
(
��i j
)
��j k
;
��k l
throw
�� 
new
�� 
FaultException
�� (
<
��( ))
DatabaseConnectionLostFault
��) D
>
��D E
(
��E F)
databaseConnectionLostFault
��F a
)
��a b
;
��b c
}
�� 
finally
�� 
{
�� 

unitOfWork
�� 
.
�� 
Dispose
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
}
�� 	
}
�� 
}�� �&
gC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\AccountModifiabilityService.cs
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
}EE �1
fC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\AccountVerificationService.cs
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
emailAddress	FFu �
&&
FF� �
account
FF� �
.
FF� �
ActivationToken
FF� �
==
FF� �
verificationToken
FF� �
)
FF� �
;
FF� �
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
}XX �3
dC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\CardDeckRetrieverService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,%
ICardDeckRetrieverService- F
{ 
private 
CardDeckDTO 
_cardDeckDTO (
;( )
private 
IEnumerable 
< 
Card  
>  !
_cards" (
;( )
public 
CardDeckDTO 
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
;X Y
if 
( 
cardDeck 
!= 
null #
)# $
{ 
_cardDeckDTO  
=! "
CardDeckMapper# 1
.1 2
	CreateDTO2 ;
(; <
cardDeck< D
)D E
;E F
_cards 
= 
cardDeck %
.% &
Cards& +
;+ ,(
PopulateCardDeckDtoWithCards$$ 0
($$0 1
)$$1 2
;$$2 3(
PopulateCardDeckDtoWithCards%% 0
(%%0 1
)%%1 2
;%%2 3
ShuffleCards''  
(''  !
)''! "
;''" #
return(( 
_cardDeckDTO(( '
;((' (
})) #
CardDeckRetrievingFault** '#
cardDeckRetrievingFault**( ?
=**@ A
new**B E#
CardDeckRetrievingFault**F ]
(**] ^
)**^ _
{++ 
Error,, 
=,, 
$str,, 6
,,,6 7
Details-- 
=-- 
$str-- o
}.. 
;.. 
throw// 
new// 
FaultException// (
<//( )#
CardDeckRetrievingFault//) @
>//@ A
(//A B#
cardDeckRetrievingFault//B Y
)//Y Z
;//Z [
}00 
catch11 
(11 
SqlException11 
)11  
{22 '
DatabaseConnectionLostFault33 +'
databaseConnectionLostFault33, G
=33H I
new33J M'
DatabaseConnectionLostFault33N i
(33i j
)33j k
;33k l
throw44 
new44 
FaultException44 (
<44( )'
DatabaseConnectionLostFault44) D
>44D E
(44E F'
databaseConnectionLostFault44F a
)44a b
;44b c
}55 
finally66 
{77 

unitOfWork88 
.88 
Dispose88 "
(88" #
)88# $
;88$ %
}99 
}:: 	
public<< 
IList<< 
<<< 
CardDeckInfoDto<< $
><<$ %
GetCardDecksInfo<<& 6
(<<6 7
)<<7 8
{== 	

UnitOfWork>> 

unitOfWork>> !
=>>" #
new>>$ '

UnitOfWork>>( 2
(>>2 3
new>>3 6
MemoryGameContext>>7 H
(>>H I
)>>I J
)>>J K
;>>K L
try?? 
{@@ 
IEnumerableAA 
<AA 
CardDeckAA $
>AA$ %
	cardDecksAA& /
=AA0 1

unitOfWorkAA2 <
.AA< =
	CardDecksAA= F
.AAF G
GetAllAAG M
(AAM N
)AAN O
;AAO P
IListBB 
<BB 
CardDeckInfoDtoBB %
>BB% &
listOfCardDecksInfoBB' :
=BB; <
newBB= @
ListBBA E
<BBE F
CardDeckInfoDtoBBF U
>BBU V
(BBV W
)BBW X
;BBX Y
foreachCC 
(CC 
varCC 
individualCardDeckCC /
inCC0 2
	cardDecksCC3 <
)CC< =
{DD 
CardDeckInfoDtoEE #
cardDeckInfoEE$ 0
=EE1 2
newEE3 6
CardDeckInfoDtoEE7 F
(EEF G
)EEG H
{FF 

CardDeckIdGG "
=GG# $
individualCardDeckGG% 7
.GG7 8

CardDeckIdGG8 B
,GGB C
CardDeckNameHH $
=HH% &
individualCardDeckHH' 9
.HH9 :
NameHH: >
}II 
;II 
listOfCardDecksInfoJJ '
.JJ' (
AddJJ( +
(JJ+ ,
cardDeckInfoJJ, 8
)JJ8 9
;JJ9 :
}KK 
returnLL 
listOfCardDecksInfoLL *
;LL* +
}MM 
catchNN 
(NN 
SqlExceptionNN 
)NN  
{OO '
DatabaseConnectionLostFaultPP +'
databaseConnectionLostFaultPP, G
=PPH I
newPPJ M'
DatabaseConnectionLostFaultPPN i
(PPi j
)PPj k
;PPk l
throwQQ 
newQQ 
FaultExceptionQQ (
<QQ( )'
DatabaseConnectionLostFaultQQ) D
>QQD E
(QQE F'
databaseConnectionLostFaultQQF a
)QQa b
;QQb c
}RR 
}SS 	
privateUU 
voidUU (
PopulateCardDeckDtoWithCardsUU 1
(UU1 2
)UU2 3
{VV 	
foreachWW 
(WW 
CardWW 

actualCardWW $
inWW% '
_cardsWW( .
)WW. /
{XX 
CardDtoYY 
cardDTOYY 
=YY  !

CardMapperYY" ,
.YY, -
	CreateDTOYY- 6
(YY6 7

actualCardYY7 A
)YYA B
;YYB C
_cardDeckDTOZZ 
.ZZ 
CardsZZ "
.ZZ" #
AddZZ# &
(ZZ& '
cardDTOZZ' .
)ZZ. /
;ZZ/ 0
}[[ 
}\\ 	
private^^ 
void^^ 
ShuffleCards^^ !
(^^! "
)^^" #
{__ 	
CardShuffler`` 
cardShuffler`` %
=``& '
new``( +
CardShuffler``, 8
(``8 9
)``9 :
;``: ;
cardShuffleraa 
.aa 
ShuffleCardsaa %
(aa% &
_cardDeckDTOaa& 2
.aa2 3
Cardsaa3 8
)aa8 9
;aa9 :
}bb 	
}cc 
}dd �
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\CommunicationService.cs
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
}44 �'
XC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\LobbyService.cs
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
}PP �
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MailingService.cs
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
} �
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MatchCreationService.cs
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
} �
aC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MatchDiscoveryService.cs
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
};; ��
XC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MatchService.cs
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
{ 	

MemoryGame 
. 
MemoryGameService (
.( )
DataTransferObjects) <
.< =
MatchDto= E
	gameMatchF O
=P Q
GetMatchR Z
(Z [
host[ _
)_ `
;` a
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
{$$ 	

MemoryGame%% 
.%% 
MemoryGameService%% (
.%%( )
DataTransferObjects%%) <
.%%< =
MatchDto%%= E
match%%F K
=%%L M
GetMatch%%N V
(%%V W
host%%W [
)%%[ \
;%%\ ]
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
PlayerMovementDto)), =
playerTurnDto))> K
)))K L
{** 	
string++ 
host++ 
=++ 
playerTurnDto++ '
.++' (
Host++( ,
;++, -

MemoryGame,, 
.,, 
MemoryGameService,, (
.,,( )
DataTransferObjects,,) <
.,,< =
MatchDto,,= E
	gameMatch,,F O
=,,P Q
null,,R V
;,,V W
foreach-- 
(-- 
var-- 
match-- 
in--  
_matches--! )
)--) *
{.. 
if// 
(// 
match// 
.// 
Host// 
.// 
Equals// %
(//% &
host//& *
)//* +
)//+ ,
{00 
	gameMatch11 
=11 
match11  %
;11% &
}22 
}33 
PlayerInMatch55 
player55  
=55! "
	gameMatch55# ,
.55, -
	GetPlayer55- 6
(556 7
playerTurnDto557 D
.55D E
Username55E M
)55M N
;55N O
if66 
(66 
playerTurnDto66 
.66 
HasFormedAPair66 ,
)66, -
{77 
player88 
.88 
AddUncoveredCard88 '
(88' (
playerTurnDto88( 5
.885 6
	CardIndex886 ?
)88? @
;88@ A
	gameMatch99 
.99 

TotalPairs99 $
++99$ &
;99& '
}:: 
else;; 
{<< 
if== 
(== 
playerTurnDto== !
.==! "
MovementsLeft==" /
====0 2
$num==3 4
)==4 5
{>> 
player?? 
.?? 
RemoveUncoveredCard?? .
(??. /
)??/ 0
;??0 1
}@@ 
elseAA 
{BB 
playerCC 
.CC 
AddUncoveredCardCC +
(CC+ ,
playerTurnDtoCC, 9
.CC9 :
	CardIndexCC: C
)CCC D
;CCD E
}DD 
}EE 
IListGG 
<GG 
PlayerInMatchGG 
>GG  
playersInMatchGG! /
=GG0 1
	gameMatchGG2 ;
.GG; <&
GetPlayersConnectedToMatchGG< V
(GGV W
)GGW X
;GGX Y
foreachII 
(II 
varII 
playerInMatchII %
inII& (
playersInMatchII) 7
)II7 8
{JJ 
playerInMatchKK 
.KK "
MatchServiceConnectionKK 4
.KK4 5
UncoverCarddKK5 A
(KKA B
playerTurnDtoKKB O
.KKO P
	CardIndexKKP Y
)KKY Z
;KKZ [
}LL 
}NN 	
publicPP 
voidPP 
NotifyMatchHasEndedPP '
(PP' (
stringPP( .
hostPP/ 3
)PP3 4
{QQ 	
MatchDtoSS 
	gameMatchSS 
=SS  
nullSS! %
;SS% &
foreachTT 
(TT 
varTT 
matchTT 
inTT !
_matchesTT" *
)TT* +
{UU 
ifVV 
(VV 
matchVV 
.VV 
HostVV 
.VV 
EqualsVV %
(VV% &
hostVV& *
)VV* +
)VV+ ,
{WW 
	gameMatchXX 
=XX 
matchXX  %
;XX% &
}YY 
}ZZ 
PlayerInMatch\\ 
playerWithBestScore\\ -
=\\. /
	gameMatch\\0 9
.\\9 :"
GetPlayerWithBestScore\\: P
(\\P Q
)\\Q R
;\\R S
string]] )
usernameOfPlayerWithBestScore]] 0
=]]1 2
playerWithBestScore]]3 F
.]]F G
Username]]G O
;]]O P
IList^^ 
<^^ 
PlayerInMatch^^ 
>^^  #
playersConnectedToMatch^^! 8
=^^9 :
	gameMatch^^; D
.^^D E&
GetPlayersConnectedToMatch^^E _
(^^_ `
)^^` a
;^^a b
foreach__ 
(__ 
var__ 
playerConnected__ '
in__( *#
playersConnectedToMatch__+ B
)__B C
{`` 
varaa 
channelaa 
=aa 
playerConnectedaa -
.aa- ."
MatchServiceConnectionaa. D
;aaD E
channelbb 
.bb 
ShowWinnersbb #
(bb# $)
usernameOfPlayerWithBestScorebb$ A
)bbA B
;bbB C
channelcc 
.cc 
MatchHasEndedcc %
(cc% &
)cc& '
;cc' (
}dd 

UnitOfWorkff 

unitOfWorkff !
=ff" #
newff$ '

UnitOfWorkff( 2
(ff2 3
newff3 6
MemoryGameContextff7 H
(ffH I
)ffI J
)ffJ K
;ffK L
trygg 
{hh 
foreachii 
(ii 
varii 
playerInMatchii )
inii* ,
	gameMatchii- 6
.ii6 7&
GetPlayersConnectedToMatchii7 Q
(iiQ R
)iiR S
)iiS T
{jj 

unitOfWorkkk 
.kk 
Playerskk &
.kk& '*
UpdateScoreOfPlayersAfterMatchkk' E
(kkE F
playerInMatchkkF S
.kkS T
UsernamekkT \
,kk\ ]
playerInMatchkk^ k
.kkk l
Scorekkl q
)kkq r
;kkr s
}ll 
Playernn 
winnernn 
=nn 

unitOfWorknn  *
.nn* +
Playersnn+ 2
.nn2 3 
FindPlayerByUsernamenn3 G
(nnG H)
usernameOfPlayerWithBestScorennH e
)nne f
;nnf g
CardDeckoo 
cardDeckoo !
=oo" #

unitOfWorkoo$ .
.oo. /
	CardDecksoo/ 8
.oo8 9
Getoo9 <
(oo< =
	gameMatchoo= F
.ooF G
CardDeckDtoooG R
.ooR S

CardDeckIdooS ]
)oo] ^
;oo^ _

DataAccessqq 
.qq 
Entitiesqq #
.qq# $
Matchqq$ )
matchToBeSavedqq* 8
=qq9 :
newqq; >

DataAccessqq? I
.qqI J
EntitiesqqJ R
.qqR S
MatchqqS X
(qqX Y
)qqY Z
{rr 
CardDeckss 
=ss 
cardDeckss '
,ss' (
Winnertt 
=tt 
winnertt #
,tt# $
Dateuu 
=uu 
DateTimeuu #
.uu# $
Nowuu$ '
}vv 
;vv 

unitOfWorkww 
.ww 
Matchesww "
.ww" #
Addww# &
(ww& '
matchToBeSavedww' 5
)ww5 6
;ww6 7
intxx 
recordsAddedxx  
=xx! "

unitOfWorkxx# -
.xx- .
Completexx. 6
(xx6 7
)xx7 8
;xx8 9
}yy 
catchzz 
(zz 
	Exceptionzz 
ezz 
)zz 
{{{ 
Console|| 
.|| 
	WriteLine|| !
(||! "
e||" #
)||# $
;||$ %
Console}} 
.}} 
ReadLine}}  
(}}  !
)}}! "
;}}" #
}~~ 
finally 
{
�� 

unitOfWork
�� 
.
�� 
Dispose
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
_matches
�� 
.
�� 
Remove
�� 
(
�� 
	gameMatch
�� %
)
��% &
;
��& '
}
�� 	
public
�� 
void
�� 
EndTurn
�� 
(
�� 
string
�� "
host
��# '
,
��' (
string
��) /
username
��0 8
,
��8 9
CardPairDto
��: E
cardPairDto
��F Q
)
��Q R
{
�� 	

MemoryGame
�� 
.
�� 
MemoryGameService
�� (
.
��( )!
DataTransferObjects
��) <
.
��< =
MatchDto
��= E
	gameMatch
��F O
=
��P Q
null
��R V
;
��V W
foreach
�� 
(
�� 
var
�� 
match
�� 
in
�� !
_matches
��" *
)
��* +
{
�� 
if
�� 
(
�� 
match
�� 
.
�� 
Host
�� 
.
�� 
Equals
�� %
(
��% &
host
��& *
)
��* +
)
��+ ,
{
�� 
	gameMatch
�� 
=
�� 
match
��  %
;
��% &
}
�� 
}
�� 
PlayerInMatch
�� 
player
��  
=
��! "
	gameMatch
��# ,
.
��, -
	GetPlayer
��- 6
(
��6 7
username
��7 ?
)
��? @
;
��@ A
int
�� *
indexOfPlayerWithCurrentTurn
�� ,
=
��- .
	gameMatch
��/ 8
.
��8 9(
GetPlayersConnectedToMatch
��9 S
(
��S T
)
��T U
.
��U V
IndexOf
��V ]
(
��] ^
player
��^ d
)
��d e
;
��e f
if
�� 
(
�� 
cardPairDto
�� 
.
�� 
BothCardsAreEqual
�� -
)
��- .
{
�� 
player
�� 
.
�� 
Score
�� 
+=
�� 
$num
��  #
;
��# $
}
�� 
else
�� 
{
�� *
indexOfPlayerWithCurrentTurn
�� ,
=
��- .

ChangeTurn
��/ 9
(
��9 :
	gameMatch
��: C
,
��C D*
indexOfPlayerWithCurrentTurn
��E a
)
��a b
;
��b c
}
�� 
PlayerInMatch
�� 

nextPlayer
�� $
=
��% &
	gameMatch
��' 0
.
��0 1(
GetPlayersConnectedToMatch
��1 K
(
��K L
)
��L M
[
��M N*
indexOfPlayerWithCurrentTurn
��N j
]
��j k
;
��k l
player
�� 
.
�� 
HasActiveTurn
��  
=
��! "
false
��# (
;
��( )

nextPlayer
�� 
.
�� 
HasActiveTurn
�� $
=
��% &
true
��' +
;
��+ ,
IList
�� 
<
�� 
PlayerInMatch
�� 
>
��  
playersInMatch
��! /
=
��0 1
	gameMatch
��2 ;
.
��; <(
GetPlayersConnectedToMatch
��< V
(
��V W
)
��W X
;
��X Y
foreach
�� 
(
�� 
var
�� 
playerInMatch
�� &
in
��' )
playersInMatch
��* 8
)
��8 9
{
�� 
playerInMatch
�� 
.
�� $
MatchServiceConnection
�� 4
.
��4 5 
NotifyTurnHasEnded
��5 G
(
��G H

nextPlayer
��H R
.
��R S
Username
��S [
,
��[ \
cardPairDto
��] h
)
��h i
;
��i j
}
�� 
if
�� 
(
�� 
	gameMatch
�� 
.
�� 

TotalPairs
�� $
==
��% '
	gameMatch
��( 1
.
��1 2
CardDeckDto
��2 =
.
��= >
NumberOfPairs
��> K
)
��K L
{
�� 
this
�� 
.
�� !
NotifyMatchHasEnded
�� (
(
��( )
host
��) -
)
��- .
;
��. /
}
�� 
}
�� 	
public
�� 
void
�� 

LeaveMatch
�� 
(
�� 
string
�� %
host
��& *
,
��* +
string
��, 2
username
��3 ;
)
��; <
{
�� 	

MemoryGame
�� 
.
�� 
MemoryGameService
�� (
.
��( )!
DataTransferObjects
��) <
.
��< =
MatchDto
��= E
	gameMatch
��F O
=
��P Q
null
��R V
;
��V W
foreach
�� 
(
�� 
var
�� 
match
�� 
in
�� !
_matches
��" *
)
��* +
{
�� 
if
�� 
(
�� 
match
�� 
.
�� 
Host
�� 
.
�� 
Equals
�� %
(
��% &
host
��& *
)
��* +
)
��+ ,
{
�� 
	gameMatch
�� 
=
�� 
match
��  %
;
��% &
}
�� 
}
�� 
IList
�� 
<
�� 
PlayerInMatch
�� 
>
��  
playersInMatch
��! /
=
��0 1
	gameMatch
��2 ;
.
��; <(
GetPlayersConnectedToMatch
��< V
(
��V W
)
��W X
;
��X Y
PlayerInMatch
�� "
playerWithActiveTurn
�� .
=
��/ 0
null
��1 5
;
��5 6
PlayerInMatch
�� 
leavePlayer
�� %
=
��& '
	gameMatch
��( 1
.
��1 2
	GetPlayer
��2 ;
(
��; <
username
��< D
)
��D E
;
��E F
foreach
�� 
(
�� 
var
�� 
player
�� 
in
��  "
playersInMatch
��# 1
)
��1 2
{
�� 
if
�� 
(
�� 
player
�� 
.
�� 
HasActiveTurn
�� (
==
��) +
true
��, 0
)
��0 1
{
�� "
playerWithActiveTurn
�� (
=
��) *
player
��+ 1
;
��1 2
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� "
playerWithActiveTurn
�� $
.
��$ %
Username
��% -
.
��- .
Equals
��. 4
(
��4 5
username
��5 =
)
��= >
)
��> ?
{
�� 
leavePlayer
�� 
=
�� "
playerWithActiveTurn
�� 2
;
��2 3
int
�� *
indexOfPlayerWithCurrentTurn
�� 0
=
��1 2
	gameMatch
��3 <
.
��< =(
GetPlayersConnectedToMatch
��= W
(
��W X
)
��X Y
.
��Y Z
IndexOf
��Z a
(
��a b"
playerWithActiveTurn
��b v
)
��v w
;
��w x*
indexOfPlayerWithCurrentTurn
�� ,
=
��- .

ChangeTurn
��/ 9
(
��9 :
	gameMatch
��: C
,
��C D*
indexOfPlayerWithCurrentTurn
��E a
)
��a b
;
��b c
PlayerInMatch
�� 

nextPlayer
�� (
=
��) *
	gameMatch
��+ 4
.
��4 5(
GetPlayersConnectedToMatch
��5 O
(
��O P
)
��P Q
[
��Q R*
indexOfPlayerWithCurrentTurn
��R n
]
��n o
;
��o p"
playerWithActiveTurn
�� $
.
��$ %
HasActiveTurn
��% 2
=
��3 4
false
��5 :
;
��: ;

nextPlayer
�� 
.
�� 
HasActiveTurn
�� (
=
��) *
true
��+ /
;
��/ 0
foreach
�� 
(
�� 
var
�� 
playerInMatch
�� *
in
��+ -
playersInMatch
��. <
)
��< =
{
�� 
playerInMatch
�� !
.
��! "$
MatchServiceConnection
��" 8
.
��8 9"
EndTurnOfExpelPlayer
��9 M
(
��M N

nextPlayer
��N X
.
��X Y
Username
��Y a
)
��a b
;
��b c
}
�� 
}
�� 
IList
�� 
<
�� 
int
�� 
>
�� 
cardsUncovered
�� %
=
��& '
leavePlayer
��( 3
.
��3 4
GetUncoveredCards
��4 E
(
��E F
)
��F G
;
��G H
foreach
�� 
(
�� 
var
�� 
playerConnected
�� (
in
��) +
playersInMatch
��, :
)
��: ;
{
�� 
var
�� 
channel
�� 
=
�� 
playerConnected
�� -
.
��- .$
MatchServiceConnection
��. D
;
��D E
channel
�� 
.
�� $
NotifyPlayerLeaveMatch
�� .
(
��. /
username
��/ 7
,
��7 8
cardsUncovered
��9 G
)
��G H
;
��H I
}
�� 
RemovePairs
�� 
(
�� 
	gameMatch
�� !
,
��! "
cardsUncovered
��# 1
)
��1 2
;
��2 3
	gameMatch
�� 
.
�� 
RemovePlayer
�� "
(
��" #
username
��# +
)
��+ ,
;
��, -
if
�� 
(
�� 
playersInMatch
�� 
.
�� 
Count
�� $
==
��% '
$num
��( )
)
��) *
{
�� 
this
�� 
.
�� !
NotifyMatchHasEnded
�� (
(
��( )
host
��) -
)
��- .
;
��. /
}
�� 
}
�� 	
public
�� 
void
�� 
ExpelPlayer
�� 
(
��  
string
��  &
host
��' +
,
��+ ,
string
��- 3!
expelPlayerUsername
��4 G
,
��G H
string
��I O
playerUsername
��P ^
)
��^ _
{
�� 	

MemoryGame
�� 
.
�� 
MemoryGameService
�� (
.
��( )!
DataTransferObjects
��) <
.
��< =
MatchDto
��= E
	gameMatch
��F O
=
��P Q
null
��R V
;
��V W
foreach
�� 
(
�� 
var
�� 
match
�� 
in
�� !
_matches
��" *
)
��* +
{
�� 
if
�� 
(
�� 
match
�� 
.
�� 
Host
�� 
.
�� 
Equals
�� %
(
��% &
host
��& *
)
��* +
)
��+ ,
{
�� 
	gameMatch
�� 
=
�� 
match
��  %
;
��% &
}
�� 
}
�� 
int
�� 
playerExpelVotes
��  
=
��! "
	gameMatch
��# ,
.
��, -
AddExpelVote
��- 9
(
��9 :!
expelPlayerUsername
��: M
)
��M N
;
��N O
PlayerInMatch
�� 
currentPlayer
�� '
=
��( )
	gameMatch
��* 3
.
��3 4
	GetPlayer
��4 =
(
��= >
playerUsername
��> L
)
��L M
;
��M N
currentPlayer
�� 
.
�� 
AddPlayerVoted
�� (
(
��( )!
expelPlayerUsername
��) <
)
��< =
;
��= >
IList
�� 
<
�� 
PlayerInMatch
�� 
>
��  
playersInMatch
��! /
=
��0 1
	gameMatch
��2 ;
.
��; <(
GetPlayersConnectedToMatch
��< V
(
��V W
)
��W X
;
��X Y
int
�� 
numOfPlayers
�� 
=
�� 
playersInMatch
�� -
.
��- .
Count
��. 3
;
��3 4
if
�� 
(
�� 
playerExpelVotes
��  
>
��! "
(
��# $
numOfPlayers
��$ 0
/
��1 2
$num
��3 4
)
��4 5
)
��5 6
{
�� 
PlayerInMatch
�� "
playerWithActiveTurn
�� 2
=
��3 4
null
��5 9
;
��9 :
PlayerInMatch
�� 
expelPlayer
�� )
=
��* +
	gameMatch
��, 5
.
��5 6
	GetPlayer
��6 ?
(
��? @!
expelPlayerUsername
��@ S
)
��S T
;
��T U
foreach
�� 
(
�� 
var
�� 
player
�� #
in
��$ &
playersInMatch
��' 5
)
��5 6
{
�� 
if
�� 
(
�� 
player
�� 
.
�� 
HasActiveTurn
�� ,
==
��- /
true
��0 4
)
��4 5
{
�� "
playerWithActiveTurn
�� ,
=
��- .
player
��/ 5
;
��5 6
}
�� 
}
�� 
if
�� 
(
�� "
playerWithActiveTurn
�� (
.
��( )
Username
��) 1
.
��1 2
Equals
��2 8
(
��8 9!
expelPlayerUsername
��9 L
)
��L M
)
��M N
{
�� 
expelPlayer
�� 
=
��  !"
playerWithActiveTurn
��" 6
;
��6 7
int
�� *
indexOfPlayerWithCurrentTurn
�� 4
=
��5 6
	gameMatch
��7 @
.
��@ A(
GetPlayersConnectedToMatch
��A [
(
��[ \
)
��\ ]
.
��] ^
IndexOf
��^ e
(
��e f"
playerWithActiveTurn
��f z
)
��z {
;
��{ |*
indexOfPlayerWithCurrentTurn
�� 0
=
��1 2

ChangeTurn
��3 =
(
��= >
	gameMatch
��> G
,
��G H*
indexOfPlayerWithCurrentTurn
��I e
)
��e f
;
��f g
PlayerInMatch
�� !

nextPlayer
��" ,
=
��- .
	gameMatch
��/ 8
.
��8 9(
GetPlayersConnectedToMatch
��9 S
(
��S T
)
��T U
[
��U V*
indexOfPlayerWithCurrentTurn
��V r
]
��r s
;
��s t"
playerWithActiveTurn
�� (
.
��( )
HasActiveTurn
��) 6
=
��7 8
false
��9 >
;
��> ?

nextPlayer
�� 
.
�� 
HasActiveTurn
�� ,
=
��- .
true
��/ 3
;
��3 4
foreach
�� 
(
�� 
var
��  
playerInMatch
��! .
in
��/ 1
playersInMatch
��2 @
)
��@ A
{
�� 
playerInMatch
�� %
.
��% &$
MatchServiceConnection
��& <
.
��< ="
EndTurnOfExpelPlayer
��= Q
(
��Q R

nextPlayer
��R \
.
��\ ]
Username
��] e
)
��e f
;
��f g
}
�� 
}
�� 
IList
�� 
<
�� 
int
�� 
>
�� 
cardsUncovered
�� )
=
��* +
expelPlayer
��, 7
.
��7 8
GetUncoveredCards
��8 I
(
��I J
)
��J K
;
��K L
foreach
�� 
(
�� 
var
�� 
playerConnected
�� ,
in
��- /
playersInMatch
��0 >
)
��> ?
{
�� 
var
�� 
channel
�� 
=
��  !
playerConnected
��" 1
.
��1 2$
MatchServiceConnection
��2 H
;
��H I
channel
�� 
.
�� "
NotifyPlayerWasExpel
�� 0
(
��0 1!
expelPlayerUsername
��1 D
,
��D E
cardsUncovered
��F T
)
��T U
;
��U V
}
�� 
RemovePairs
�� 
(
�� 
	gameMatch
�� %
,
��% &
cardsUncovered
��' 5
)
��5 6
;
��6 7
	gameMatch
�� 
.
�� 
RemovePlayer
�� &
(
��& '!
expelPlayerUsername
��' :
)
��: ;
;
��; <
if
�� 
(
�� 
playersInMatch
�� "
.
��" #
Count
��# (
==
��) +
$num
��, -
)
��- .
{
�� 
this
�� 
.
�� !
NotifyMatchHasEnded
�� ,
(
��, -
host
��- 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 	
public
�� 
IList
�� 
<
�� 
string
�� 
>
�� 3
%GetUsernamesOfPlayersConnectedToMatch
�� B
(
��B C
string
��C I
host
��J N
)
��N O
{
�� 	

MemoryGame
�� 
.
�� 
MemoryGameService
�� (
.
��( )!
DataTransferObjects
��) <
.
��< =
MatchDto
��= E
	gameMatch
��F O
=
��P Q
null
��R V
;
��V W
foreach
�� 
(
�� 
var
�� 
match
�� 
in
�� !
_matches
��" *
)
��* +
{
�� 
if
�� 
(
�� 
match
�� 
.
�� 
Host
�� 
.
�� 
Equals
�� %
(
��% &
host
��& *
)
��* +
)
��+ ,
{
�� 
	gameMatch
�� 
=
�� 
match
��  %
;
��% &
}
�� 
}
�� 
IList
�� 
<
�� 
string
�� 
>
�� 
playerUsername
�� (
=
��) *
	gameMatch
��+ 4
.
��4 53
%GetUsernamesOfPlayersConnectedToMatch
��5 Z
(
��Z [
)
��[ \
;
��\ ]
return
�� 
playerUsername
�� !
;
��! "
}
�� 	
public
�� 
IList
�� 
<
�� 
string
�� 
>
�� 
GetPlayersVoted
�� ,
(
��, -
string
��- 3
host
��4 8
,
��8 9
string
��: @
username
��A I
)
��I J
{
�� 	

MemoryGame
�� 
.
�� 
MemoryGameService
�� (
.
��( )!
DataTransferObjects
��) <
.
��< =
MatchDto
��= E
	gameMatch
��F O
=
��P Q
null
��R V
;
��V W
foreach
�� 
(
�� 
var
�� 
match
�� 
in
�� !
_matches
��" *
)
��* +
{
�� 
if
�� 
(
�� 
match
�� 
.
�� 
Host
�� 
.
�� 
Equals
�� %
(
��% &
host
��& *
)
��* +
)
��+ ,
{
�� 
	gameMatch
�� 
=
�� 
match
��  %
;
��% &
}
�� 
}
�� 
PlayerInMatch
�� 
player
��  
=
��! "
	gameMatch
��# ,
.
��, -
	GetPlayer
��- 6
(
��6 7
username
��7 ?
)
��? @
;
��@ A
IList
�� 
<
�� 
string
�� 
>
�� 
playersVoted
�� &
=
��' (
player
��) /
.
��/ 0
GetPlayersVoted
��0 ?
(
��? @
)
��@ A
;
��A B
return
�� 
playersVoted
�� 
;
��  
}
�� 	
public
�� 
int
�� 

ChangeTurn
�� 
(
�� 
MatchDto
�� &
	gameMatch
��' 0
,
��0 1
int
��2 5*
indexOfPlayerWithCurrentTurn
��6 R
)
��R S
{
�� 	
if
�� 
(
�� *
indexOfPlayerWithCurrentTurn
�� ,
==
��- /
(
��0 1
	gameMatch
��1 :
.
��: ;(
GetPlayersConnectedToMatch
��; U
(
��U V
)
��V W
.
��W X
Count
��X ]
-
��^ _
$num
��` a
)
��a b
)
��b c
{
�� *
indexOfPlayerWithCurrentTurn
�� ,
=
��- .
$num
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� *
indexOfPlayerWithCurrentTurn
�� ,
++
��, .
;
��. /
}
�� 
return
�� *
indexOfPlayerWithCurrentTurn
�� /
;
��/ 0
}
�� 	
public
�� 
void
�� 
RemovePairs
�� 
(
��  
MatchDto
��  (
	gameMatch
��) 2
,
��2 3
IList
��4 9
<
��9 :
int
��: =
>
��= >
cardsUncovered
��? M
)
��M N
{
�� 	
if
�� 
(
�� 
(
�� 
cardsUncovered
�� 
.
��  
Count
��  %
%
��& '
$num
��( )
)
��) *
==
��+ -
$num
��. /
)
��/ 0
{
�� 
	gameMatch
�� 
.
�� 

TotalPairs
�� $
=
��% &
	gameMatch
��' 0
.
��0 1

TotalPairs
��1 ;
-
��< =
(
��> ?
cardsUncovered
��? M
.
��M N
Count
��N S
/
��T U
$num
��V W
)
��W X
;
��X Y
}
�� 
else
�� 
{
�� 
	gameMatch
�� 
.
�� 

TotalPairs
�� $
=
��% &
	gameMatch
��' 0
.
��0 1

TotalPairs
��1 ;
-
��< =
(
��> ?
(
��? @
cardsUncovered
��@ N
.
��N O
Count
��O T
-
��U V
$num
��W X
)
��X Y
/
��Z [
$num
��\ ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
}
�� 
}�� �
]C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MemoryGameService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
[		 
ServiceBehavior		 
(		 
InstanceContextMode		 (
=		) *
InstanceContextMode		+ >
.		> ?

PerSession		? I
,		I J
ConcurrencyMode

 
=

 
ConcurrencyMode

 )
.

) *
Single

* 0
)

0 1
]

1 2
public 

partial 
class 
MemoryGameService *
{ 
private 
static 
IList 
< 
MatchDto %
>% &
_matches' /
=0 1
new2 5
List6 :
<: ;
MatchDto; C
>C D
(D E
)E F
;F G
public 
MemoryGameService  
(  !
)! "
{# $
}% &
} 
} �:
aC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\PlayerRegistryService.cs
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
YY� �
)
YY� �
;
YY� �
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
}mm �
XC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\ScoreService.cs
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
numberOfPlayersToBeRetrieved	m �
)
� �
;
� �
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
}00 �	
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\TokenGenerator.cs
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
} �
YC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\CardShuffler.cs
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
} �
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\FisherYatesShuffler.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public 

class 
FisherYatesShuffler $
<$ %
ShufflingCollection% 8
>8 9
:: ;
	IShuffler< E
<E F
ShufflingCollectionF Y
>Y Z
where[ `
ShufflingCollectiona t
:u v
classw |
{ 
public		 
void		 
Shuffle		 
(		 
IList		 !
<		! "
ShufflingCollection		" 5
>		5 6
collectionToShuffle		7 J
)		J K
{

 	
int 
	lastIndex 
= 
collectionToShuffle /
./ 0
Count0 5
-6 7
$num8 9
;9 :
while 
( 
	lastIndex 
> 
$num  
)  !
{ 
int 
randomIndex 
=  !,
 GenerateRandomNumberBetweenRange" B
(B C
$numC D
,D E
	lastIndexF O
)O P
;P Q
var 
auxiliaryContainer &
=' (
collectionToShuffle) <
[< =
	lastIndex= F
]F G
;G H
collectionToShuffle #
[# $
	lastIndex$ -
]- .
=/ 0
collectionToShuffle1 D
[D E
randomIndexE P
]P Q
;Q R
collectionToShuffle #
[# $
randomIndex$ /
]/ 0
=1 2
auxiliaryContainer3 E
;E F
	lastIndex 
-- 
; 
} 
} 	
private 
int ,
 GenerateRandomNumberBetweenRange 4
(4 5
int5 8
minimum9 @
,@ A
intB E
maximumF M
)M N
{ 	
Random !
randomNumberGenerator (
=) *
new+ .
Random/ 5
(5 6
)6 7
;7 8
int 
randomNumber 
= !
randomNumberGenerator 4
.4 5
Next5 9
(9 :
minimum: A
,A B
maximumC J
)J K
;K L
return 
randomNumber 
;  
} 	
} 
} �
VC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\IShuffler.cs
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
}		 �
YC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\MailTemplate.cs
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
 
MailboxAddress

 
_sender

 &
;

& '
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
;9 :
_sender 
= 
new 
MailboxAddress (
(( )
$str) D
,D E
$strF X
)X Y
;Y Z
_content 
. 
From 
. 
Add 
( 
_sender %
)% &
;& '
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