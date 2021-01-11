Ñ
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
 	
OperationContract

	 
]

 
bool 
SetNewPassword 
( .
"PasswordModificationCredentialsDto >+
passwordModificationCredentials? ^
)^ _
;_ `
[ 	
OperationContract	 
] 
bool 
ChangeUsername 
( 
string "
emailAddress# /
,/ 0
string1 7
newUsername8 C
)C D
;D E
} 
} 
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
} ™
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
[ 	
OperationContract	 
] 
CardDeckDTO 
GetCardDeckAndCards '
(' (
int( +

cardDeckId, 6
)6 7
;7 8
[ 	
OperationContract	 
] 
IList 
< 
CardDeckInfoDto 
> 
GetCardDecksInfo /
(/ 0
)0 1
;1 2
} 
} ƒ
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
CardDeckDTO 
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
} ÌF
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\MatchDto.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public22 

class22 
MatchDto22 
{33 
public77 
int77 
MaxNumberOfPlayers77 %
{77& '
get77( +
;77+ ,
set77- 0
;770 1
}772 3
public;; 
CardDeckDTO;; 
CardDeckDto;; &
{;;' (
get;;) ,
;;;, -
set;;. 1
;;;1 2
};;3 4
public?? 
string?? 
Host?? 
{?? 
get??  
;??  !
set??" %
;??% &
}??' (
publicCC 
boolCC 

HasStartedCC 
{CC  
getCC! $
;CC$ %
setCC& )
;CC) *
}CC+ ,
publicGG 
LobbyGG 
LobbyGG 
{GG 
getGG  
;GG  !
setGG" %
;GG% &
}GG' (
privateKK 
IListKK 
<KK 
PlayerInMatchKK #
>KK# $
_playersKK% -
;KK- .
publicOO 
intOO 

TotalPairsOO 
{OO 
getOO  #
;OO# $
setOO% (
;OO( )
}OO* +
publicTT 
MatchDtoTT 
(TT 
)TT 
{UU 	
LobbyVV 
=VV 
newVV 
LobbyVV 
(VV 
)VV 
;VV  
_playersWW 
=WW 
newWW 
ListWW 
<WW  
PlayerInMatchWW  -
>WW- .
(WW. /
)WW/ 0
;WW0 1
}XX 	
public^^ 
IList^^ 
<^^ 
PlayerInMatch^^ "
>^^" #&
GetPlayersConnectedToMatch^^$ >
(^^> ?
)^^? @
{__ 	
return`` 
_players`` 
;`` 
}aa 	
publicgg 
IListgg 
<gg 
stringgg 
>gg 1
%GetUsernamesOfPlayersConnectedToMatchgg B
(ggB C
)ggC D
{hh 	
IListii 
<ii 
stringii 
>ii .
"usernamesOfPlayersConnectedToMatchii <
=ii= >
newii? B
ListiiC G
<iiG H
stringiiH N
>iiN O
(iiO P
)iiP Q
;iiQ R
foreachjj 
(jj 
varjj 
playerjj 
injj !
_playersjj" *
)jj* +
{kk .
"usernamesOfPlayersConnectedToMatchll 2
.ll2 3
Addll3 6
(ll6 7
playerll7 =
.ll= >
Usernamell> F
)llF G
;llG H
}mm 
returnnn .
"usernamesOfPlayersConnectedToMatchnn 5
;nn5 6
}oo 	
publicuu 
voiduu 
	AddPlayeruu 
(uu 
PlayerInMatchuu +
playeruu, 2
)uu2 3
{vv 	
_playersww 
.ww 
Addww 
(ww 
playerww 
)ww  
;ww  !
}xx 	
public 
PlayerInMatch 
	GetPlayer &
(& '
string' -
username. 6
)6 7
{
ÄÄ 	
PlayerInMatch
ÅÅ 
playerRetrieved
ÅÅ )
=
ÅÅ* +
null
ÅÅ, 0
;
ÅÅ0 1
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ 
player
ÇÇ 
in
ÇÇ !
_players
ÇÇ" *
)
ÇÇ* +
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 
player
ÑÑ 
.
ÑÑ 
Username
ÑÑ #
.
ÑÑ# $
Equals
ÑÑ$ *
(
ÑÑ* +
username
ÑÑ+ 3
)
ÑÑ3 4
)
ÑÑ4 5
{
ÖÖ 
return
ÜÜ 
player
ÜÜ !
;
ÜÜ! "
}
áá 
}
àà 
return
ââ 
playerRetrieved
ââ "
;
ââ" #
}
ää 	
public
èè 
void
èè 

StartMatch
èè 
(
èè 
)
èè  
{
êê 	
IList
ëë 
<
ëë 
PlayerInLobby
ëë 
>
ëë  %
playersConnectedToLobby
ëë! 8
=
ëë9 :
Lobby
ëë; @
.
ëë@ A(
GetPlayersConnectedToLobby
ëëA [
(
ëë[ \
)
ëë\ ]
;
ëë] ^
IList
íí 
<
íí 
string
íí 
>
íí 0
"usernamesOfPlayersConnectedToLobby
íí <
=
íí= >
Lobby
íí? D
.
ííD E3
%GetUsernamesOfPlayersConnectedToLobby
ííE j
(
ííj k
)
íík l
;
ííl m
foreach
ìì 
(
ìì 
var
ìì 
playerInLobby
ìì &
in
ìì' )%
playersConnectedToLobby
ìì* A
)
ììA B
{
îî 
var
ïï 
channel
ïï 
=
ïï 
playerInLobby
ïï +
.
ïï+ ,

Connection
ïï, 6
;
ïï6 7
channel
ññ 
.
ññ $
TakePlayersToMatchView
ññ .
(
ññ. /0
"usernamesOfPlayersConnectedToLobby
ññ/ Q
)
ññQ R
;
ññR S
}
óó 

HasStarted
òò 
=
òò 
true
òò 
;
òò 
}
ôô 	
public
üü 
PlayerInMatch
üü $
GetPlayerWithBestScore
üü 3
(
üü3 4
)
üü4 5
{
†† 	
PlayerInMatch
°° !
playerWithBestScore
°° -
=
°°. /
_players
°°0 8
[
°°8 9
$num
°°9 :
]
°°: ;
;
°°; <
for
££ 
(
££ 
int
££ 
currentIndex
££  
=
££! "
$num
££# $
;
££$ %
currentIndex
££& 2
<
££3 4
_players
££5 =
.
££= >
Count
££> C
-
££D E
$num
££F G
;
££G H
currentIndex
££I U
++
££U W
)
££W X
{
§§ 
if
•• 
(
•• !
playerWithBestScore
•• &
.
••& '
Score
••' ,
<
••- .
_players
••/ 7
[
••7 8
currentIndex
••8 D
+
••E F
$num
••G H
]
••H I
.
••I J
Score
••J O
)
••O P
{
¶¶ !
playerWithBestScore
ßß '
=
ßß( )
_players
ßß* 2
[
ßß2 3
currentIndex
ßß3 ?
+
ßß@ A
$num
ßßB C
]
ßßC D
;
ßßD E
}
®® 
}
©© 
return
™™ !
playerWithBestScore
™™ &
;
™™& '
}
´´ 	
public
≤≤ 
int
≤≤ 
AddExpelVote
≤≤ 
(
≤≤  
string
≤≤  &
playerUsername
≤≤' 5
)
≤≤5 6
{
≥≥ 	
int
¥¥ 
playerExpelVotes
¥¥  
=
¥¥! "
$num
¥¥# $
;
¥¥$ %
foreach
µµ 
(
µµ 
var
µµ 
player
µµ 
in
µµ  "
_players
µµ# +
)
µµ+ ,
{
∂∂ 
if
∑∑ 
(
∑∑ 
player
∑∑ 
.
∑∑ 
Username
∑∑ #
.
∑∑# $
Equals
∑∑$ *
(
∑∑* +
playerUsername
∑∑+ 9
)
∑∑9 :
)
∑∑: ;
{
∏∏ 
player
ππ 
.
ππ 
ExpulsionVotes
ππ )
++
ππ) +
;
ππ+ ,
playerExpelVotes
∫∫ $
=
∫∫% &
player
∫∫' -
.
∫∫- .
ExpulsionVotes
∫∫. <
;
∫∫< =
}
ªª 
}
ºº 
return
ææ 
playerExpelVotes
ææ #
;
ææ# $
}
øø 	
public
≈≈ 
void
≈≈ 
RemovePlayer
≈≈  
(
≈≈  !
string
≈≈! '
playerUsername
≈≈( 6
)
≈≈6 7
{
∆∆ 	
PlayerInMatch
«« 
playerToRemove
«« (
=
««) *
this
««+ /
.
««/ 0
	GetPlayer
««0 9
(
««9 :
playerUsername
««: H
)
««H I
;
««I J
_players
»» 
.
»» 
Remove
»» 
(
»» 
playerToRemove
»» *
)
»»* +
;
»»+ ,
}
…… 	
public
œœ 
PlayerInMatch
œœ $
GetPlyerWithActiveTurn
œœ 3
(
œœ3 4
)
œœ4 5
{
–– 	
PlayerInMatch
—— "
playerWithActiveTurn
—— .
=
——/ 0
null
——1 5
;
——5 6
foreach
““ 
(
““ 
var
““ 
player
““ 
in
““  "
_players
““# +
)
““+ ,
{
”” 
if
‘‘ 
(
‘‘ 
player
‘‘ 
.
‘‘ 
HasActiveTurn
‘‘ (
)
‘‘( )
{
’’ "
playerWithActiveTurn
÷÷ (
=
÷÷) *
player
÷÷+ 1
;
÷÷1 2
}
◊◊ 
}
ÿÿ 
return
⁄⁄ "
playerWithActiveTurn
⁄⁄ '
;
⁄⁄' (
}
€€ 	
}
›› 
}ﬁﬁ ∆
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
} Ã
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInLobby.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public		 

class		 
PlayerInLobby		 
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
} ú,
\C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\Lobby.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public** 

class** 
Lobby** 
{++ 
private,, 
IList,, 
<,, 
PlayerInLobby,, #
>,,# $$
_playersConnectedToLobby,,% =
;,,= >
public11 
Lobby11 
(11 
)11 
{22 	$
_playersConnectedToLobby33 $
=33% &
new33' *
List33+ /
<33/ 0
PlayerInLobby330 =
>33= >
(33> ?
)33? @
;33@ A
}44 	
public;; 
void;; 
AddPlayerToLobby;; $
(;;$ %
string;;% +
host;;, 0
,;;0 1
string;;2 8
username;;9 A
);;A B
{<< 	
PlayerInLobby== 
lobbyRequestDto== )
===* +
new==, /
PlayerInLobby==0 =
(=== >
)==> ?
{>> 
Host?? 
=?? 
host?? 
,?? 
Username@@ 
=@@ 
username@@ #
,@@# $

ConnectionAA 
=AA 
OperationContextAA -
.AA- .
CurrentAA. 5
.AA5 6
GetCallbackChannelAA6 H
<AAH I!
ILobbyServiceCallbackAAI ^
>AA^ _
(AA_ `
)AA` a
}BB 
;BB $
_playersConnectedToLobbyCC $
.CC$ %
AddCC% (
(CC( )
lobbyRequestDtoCC) 8
)CC8 9
;CC9 :
}DD 	
publicJJ 
voidJJ !
RemovePlayerFromLobbyJJ )
(JJ) *
stringJJ* 0'
usernameOfPlayerToBeRemovedJJ1 L
)JJL M
{KK 	
foreachLL 
(LL 
varLL 
playerInLobbyLL %
inLL& ($
_playersConnectedToLobbyLL) A
)LLA B
{MM 
ifNN 
(NN '
usernameOfPlayerToBeRemovedNN /
.NN/ 0
EqualsNN0 6
(NN6 7
playerInLobbyNN7 D
.NND E
UsernameNNE M
)NNM N
)NNN O
{OO $
_playersConnectedToLobbyPP ,
.PP, -
RemovePP- 3
(PP3 4
playerInLobbyPP4 A
)PPA B
;PPB C
breakQQ 
;QQ 
}RR 
}SS 
}TT 	
publicZZ 
IListZZ 
<ZZ 
PlayerInLobbyZZ "
>ZZ" #&
GetPlayersConnectedToLobbyZZ$ >
(ZZ> ?
)ZZ? @
{[[ 	
return\\ $
_playersConnectedToLobby\\ +
;\\+ ,
}]] 	
publiccc 
IListcc 
<cc 
stringcc 
>cc 1
%GetUsernamesOfPlayersConnectedToLobbycc B
(ccB C
)ccC D
{dd 	
IListee 
<ee 
stringee 
>ee .
"usernamesOfPlayersConnectedToLobbyee <
=ee= >
newee? B
ListeeC G
<eeG H
stringeeH N
>eeN O
(eeO P
)eeP Q
;eeQ R
foreachff 
(ff 
varff "
playerConnectedToLobbyff /
inff0 2$
_playersConnectedToLobbyff3 K
)ffK L
{gg .
"usernamesOfPlayersConnectedToLobbyhh 2
.hh2 3
Addhh3 6
(hh6 7"
playerConnectedToLobbyhh7 M
.hhM N
UsernamehhN V
)hhV W
;hhW X
}ii 
returnjj .
"usernamesOfPlayersConnectedToLobbyjj 5
;jj5 6
}kk 	
publicpp 
voidpp ,
 NotifyPlayersMatchHasBeenDeletedpp 4
(pp4 5
)pp5 6
{qq 	
foreachrr 
(rr 
varrr 
playerInLobbyrr &
inrr' )$
_playersConnectedToLobbyrr* B
)rrB C
{ss 
vartt 
channeltt 
=tt 
playerInLobbytt +
.tt+ ,

Connectiontt, 6
;tt6 7
channeluu 
.uu !
TakePlayersOutOfLobbyuu -
(uu- .
)uu. /
;uu/ 0
}vv 
}ww 	
public}} 
void}} $
NotifyOnePlayerLeftLobby}} ,
(}}, -
string}}- 3
username}}4 <
)}}< =
{~~ 	
foreach 
( 
var 
playerInLobby &
in' )$
_playersConnectedToLobby* B
)B C
{
ÄÄ 
var
ÅÅ 
channel
ÅÅ 
=
ÅÅ 
playerInLobby
ÅÅ +
.
ÅÅ+ ,

Connection
ÅÅ, 6
;
ÅÅ6 7
channel
ÇÇ 
.
ÇÇ 
NotifyPlayerLeft
ÇÇ (
(
ÇÇ( )
username
ÇÇ) 1
)
ÇÇ1 2
;
ÇÇ2 3
}
ÉÉ 
}
ÑÑ 	
public
ää 
void
ää )
NotifyNewPlayerEnteredLobby
ää /
(
ää/ 0
string
ää0 6
username
ää7 ?
)
ää? @
{
ãã 	
foreach
åå 
(
åå 
var
åå 
playerInLobby
åå &
in
åå' )&
_playersConnectedToLobby
åå* B
)
ååB C
{
çç 
var
éé 
channel
éé 
=
éé 
playerInLobby
éé +
.
éé+ ,

Connection
éé, 6
;
éé6 7
channel
èè 
.
èè $
NotifyNewPlayerEntered
èè .
(
èè. /
username
èè/ 7
)
èè7 8
;
èè8 9
}
êê 
}
ëë 	
}
ìì 
}îî ´
kC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerCredentialsDTO.cs
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
PlayerCredentialsDTO
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
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerDTO.cs
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
	PlayerDTO
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
}!! æ
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInMatch.cs
	namespace 	

MemoryGame
 
. 
MemoryGameService &
.& '
DataTransferObjects' :
{ 
public!! 

class!! 
PlayerInMatch!! 
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
PlayerInMatchCC 
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
}vv §
eC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerScoreDTO.cs
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
PlayerScoreDTO 
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
} ë	
oC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\VerificationTokenInfoDto.cs
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
class $
VerificationTokenInfoDto )
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
string 
VerificationToken '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
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
} ¢
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
 	
OperationContract

	 
]

 
bool 

IsVerified 
( 
string 
username '
)' (
;( )
[ 	
OperationContract	 
] 
bool 
ItsRegistered 
( 
string !
emailAddress" .
). /
;/ 0
[ 	
FaultContract	 
( 
typeof 
(  
NonExistentUserFault 2
)2 3
)3 4
]4 5
[ 	
OperationContract	 
] 
string 
GetUserEmailAddress "
(" #
string# )
username* 2
)2 3
;3 4
[ 	
FaultContract	 
( 
typeof 
(  
NonExistentUserFault 2
)2 3
)3 4
]4 5
[ 	
OperationContract	 
] 
string 
GetUsername 
( 
string !
emailAddress" .
). /
;/ 0
[ 	
FaultContract	 
( 
typeof 
(  
NonExistentUserFault 2
)2 3
)3 4
]4 5
[ 	
OperationContract	 
]  
PlayerCredentialsDTO  
GetPlayerCredentials 1
(1 2
string2 8
username9 A
)A B
;B C
[ 	
OperationContract	 
] 
string 
GetSalt 
( 
string 
username &
)& '
;' (
[   	
OperationContract  	 
]   
bool!! 
HasAccessRights!! 
(!! 
string!! #
username!!$ ,
,!!, -
string!!. 4
password!!5 =
)!!= >
;!!> ?
}"" 
}## »
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
} ˘
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
}(( ó
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
]$$) *˙Ä
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccesibilityService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public00 

partial00 
class00 
MemoryGameService00 *
:00+ ,!
IAccessibilityService00- B
{11 
private22 
readonly22 
log4net22  
.22  !
ILog22! %
_logger22& -
=22. /
log4net220 7
.227 8

LogManager228 B
.22B C
	GetLogger22C L
(22L M
$str22M e
)22e f
;22f g
public;; 
string;; 
GetUserEmailAddress;; )
(;;) *
string;;* 0
username;;1 9
);;9 :
{<< 	
var== 

unitOfWork== 
=== 
new==  

UnitOfWork==! +
(==+ ,
new==, /
MemoryGameContext==0 A
(==A B
)==B C
)==C D
;==D E
try>> 
{?? 
Account@@ 
accountRetrieved@@ (
=@@) *

unitOfWork@@+ 5
.@@5 6
Accounts@@6 >
.@@> ?
FindFirstOccurence@@? Q
(@@Q R
account@@R Y
=>@@Z \
account@@] d
.@@d e
Username@@e m
==@@n p
username@@q y
)@@y z
;@@z {
ifAA 
(AA 
accountRetrievedAA $
!=AA% '
nullAA( ,
)AA, -
{BB 
stringCC 
emailAddressCC '
=CC( )
accountRetrievedCC* :
.CC: ;
EmailAddressCC; G
;CCG H
returnDD 
emailAddressDD '
;DD' (
}EE  
NonExistentUserFaultFF $ 
nonExistentUserFaultFF% 9
=FF: ;
newFF< ? 
NonExistentUserFaultFF@ T
(FFT U
)FFU V
;FFV W
throwGG 
newGG 
FaultExceptionGG (
<GG( ) 
NonExistentUserFaultGG) =
>GG= >
(GG> ? 
nonExistentUserFaultGG? S
)GGS T
;GGT U
}HH 
catchII 
(II 
SqlExceptionII 
sqlExceptionII  ,
)II, -
{JJ 
_loggerKK 
.KK 
FatalKK 
(KK 
sqlExceptionKK *
)KK* +
;KK+ ,
throwLL 
;LL 
}MM 
catchNN 
(NN 
EntityExceptionNN "
entityExceptionNN# 2
)NN2 3
{OO 
_loggerPP 
.PP 
FatalPP 
(PP 
entityExceptionPP -
)PP- .
;PP. /
throwQQ 
;QQ 
}RR 
finallySS 
{TT 

unitOfWorkUU 
.UU 
DisposeUU "
(UU" #
)UU# $
;UU$ %
}VV 
}WW 	
public`` 
string`` 
GetUsername`` !
(``! "
string``" (
emailAddress``) 5
)``5 6
{aa 	
varbb 

unitOfWorkbb 
=bb 
newbb  

UnitOfWorkbb! +
(bb+ ,
newbb, /
MemoryGameContextbb0 A
(bbA B
)bbB C
)bbC D
;bbD E
trycc 
{dd 
Accountee 
accountRetrievedee (
=ee) *

unitOfWorkee+ 5
.ee5 6
Accountsee6 >
.ee> ?
Getee? B
(eeB C
emailAddresseeC O
)eeO P
;eeP Q
ifff 
(ff 
accountRetrievedff #
!=ff$ &
nullff' +
)ff+ ,
{gg 
returnhh 
accountRetrievedhh +
.hh+ ,
Usernamehh, 4
;hh4 5
}ii  
NonExistentUserFaultjj $ 
nonExistentUserFaultjj% 9
=jj: ;
newjj< ? 
NonExistentUserFaultjj@ T
(jjT U
)jjU V
;jjV W
throwkk 
newkk 
FaultExceptionkk (
<kk( ) 
NonExistentUserFaultkk) =
>kk= >
(kk> ? 
nonExistentUserFaultkk? S
)kkS T
;kkT U
}ll 
catchmm 
(mm 
SqlExceptionmm 
sqlExceptionmm  ,
)mm, -
{nn 
_loggeroo 
.oo 
Fataloo 
(oo 
sqlExceptionoo *
)oo* +
;oo+ ,
throwpp 
;pp 
}qq 
catchrr 
(rr 
EntityExceptionrr "
entityExceptionrr# 2
)rr2 3
{ss 
_loggertt 
.tt 
Fataltt 
(tt 
entityExceptiontt -
)tt- .
;tt. /
throwuu 
;uu 
}vv 
finallyww 
{xx 

unitOfWorkyy 
.yy 
Disposeyy "
(yy" #
)yy# $
;yy$ %
}zz 
}{{ 	
public
ÑÑ 
bool
ÑÑ 

IsVerified
ÑÑ 
(
ÑÑ 
string
ÑÑ %
username
ÑÑ& .
)
ÑÑ. /
{
ÖÖ 	
var
ÜÜ 

unitOfWork
ÜÜ 
=
ÜÜ 
new
ÜÜ  

UnitOfWork
ÜÜ! +
(
ÜÜ+ ,
new
ÜÜ, /
MemoryGameContext
ÜÜ0 A
(
ÜÜA B
)
ÜÜB C
)
ÜÜC D
;
ÜÜD E
try
áá 
{
àà 
Account
ââ 
accountRetrieved
ââ (
=
ââ) *

unitOfWork
ââ+ 5
.
ââ5 6
Accounts
ââ6 >
.
ââ> ? 
FindFirstOccurence
ââ? Q
(
ââQ R
account
ââR Y
=>
ââZ \
account
ââ] d
.
ââd e
Username
ââe m
==
âân p
username
ââq y
&&
ââz |
accountââ} Ñ
.ââÑ Ö 
EmailWasVerifiedââÖ ï
)ââï ñ
;ââñ ó
if
ää 
(
ää 
accountRetrieved
ää $
!=
ää% '
null
ää( ,
)
ää, -
{
ãã 
return
åå 
true
åå 
;
åå  
}
çç 
return
éé 
false
éé 
;
éé 
}
èè 
catch
êê 
(
êê 
SqlException
êê 
sqlException
êê  ,
)
êê, -
{
ëë 
_logger
íí 
.
íí 
Fatal
íí 
(
íí 
sqlException
íí *
)
íí* +
;
íí+ ,
throw
ìì 
;
ìì 
}
îî 
catch
ïï 
(
ïï 
EntityException
ïï "
entityException
ïï# 2
)
ïï2 3
{
ññ 
_logger
óó 
.
óó 
Fatal
óó 
(
óó 
entityException
óó -
)
óó- .
;
óó. /
throw
òò 
;
òò 
}
ôô 
finally
öö 
{
õõ 

unitOfWork
úú 
.
úú 
Dispose
úú "
(
úú" #
)
úú# $
;
úú$ %
}
ùù 
}
ûû 	
public
ßß 
bool
ßß 
ItsRegistered
ßß !
(
ßß! "
string
ßß" (
emailAddress
ßß) 5
)
ßß5 6
{
®® 	
var
©© 

unitOfWork
©© 
=
©© 
new
©©  

UnitOfWork
©©! +
(
©©+ ,
new
©©, /
MemoryGameContext
©©0 A
(
©©A B
)
©©B C
)
©©C D
;
©©D E
try
™™ 
{
´´ 
Account
¨¨ 
accountRetrieved
¨¨ (
=
¨¨) *

unitOfWork
¨¨+ 5
.
¨¨5 6
Accounts
¨¨6 >
.
¨¨> ?
Get
¨¨? B
(
¨¨B C
emailAddress
¨¨C O
)
¨¨O P
;
¨¨P Q
if
≠≠ 
(
≠≠ 
accountRetrieved
≠≠ $
!=
≠≠% '
null
≠≠( ,
)
≠≠, -
{
ÆÆ 
return
ØØ 
true
ØØ 
;
ØØ  
}
∞∞ 
return
±± 
false
±± 
;
±± 
}
≤≤ 
catch
≥≥ 
(
≥≥ 
SqlException
≥≥ 
sqlException
≥≥  ,
)
≥≥, -
{
¥¥ 
_logger
µµ 
.
µµ 
Fatal
µµ 
(
µµ 
sqlException
µµ *
)
µµ* +
;
µµ+ ,
throw
∂∂ 
;
∂∂ 
}
∑∑ 
catch
∏∏ 
(
∏∏ 
EntityException
∏∏ "
entityException
∏∏# 2
)
∏∏2 3
{
ππ 
_logger
∫∫ 
.
∫∫ 
Fatal
∫∫ 
(
∫∫ 
entityException
∫∫ -
)
∫∫- .
;
∫∫. /
throw
ªª 
;
ªª 
}
ºº 
finally
ΩΩ 
{
ææ 

unitOfWork
øø 
.
øø 
Dispose
øø "
(
øø" #
)
øø# $
;
øø$ %
}
¿¿ 
}
¡¡ 	
public
   "
PlayerCredentialsDTO
   #"
GetPlayerCredentials
  $ 8
(
  8 9
string
  9 ?
username
  @ H
)
  H I
{
ÀÀ 	
var
ÃÃ 

unitOfWork
ÃÃ 
=
ÃÃ 
new
ÃÃ  

UnitOfWork
ÃÃ! +
(
ÃÃ+ ,
new
ÃÃ, /
MemoryGameContext
ÃÃ0 A
(
ÃÃA B
)
ÃÃB C
)
ÃÃC D
;
ÃÃD E
try
ÕÕ 
{
ŒŒ 
Account
œœ 
accountRetrieved
œœ (
=
œœ) *

unitOfWork
œœ+ 5
.
œœ5 6
Accounts
œœ6 >
.
œœ> ? 
FindFirstOccurence
œœ? Q
(
œœQ R
account
œœR Y
=>
œœZ \
account
œœ] d
.
œœd e
Username
œœe m
==
œœn p
username
œœq y
)
œœy z
;
œœz {
if
–– 
(
–– 
accountRetrieved
–– $
!=
––% '
null
––( ,
)
––, -
{
—— "
PlayerCredentialsDTO
““ (
playerCredentials
““) :
=
““; <
new
““= @"
PlayerCredentialsDTO
““A U
(
““U V
)
““V W
{
”” 
EmailAddress
‘‘ $
=
‘‘% &
accountRetrieved
‘‘' 7
.
‘‘7 8
EmailAddress
‘‘8 D
,
‘‘D E
Username
’’  
=
’’! "
accountRetrieved
’’# 3
.
’’3 4
Username
’’4 <
,
’’< =
Password
÷÷  
=
÷÷! "
accountRetrieved
÷÷# 3
.
÷÷3 4
Password
÷÷4 <
}
◊◊ 
;
◊◊ 
return
ÿÿ 
playerCredentials
ÿÿ ,
;
ÿÿ, -
}
ŸŸ "
NonExistentUserFault
⁄⁄ $"
nonExistentUserFault
⁄⁄% 9
=
⁄⁄: ;
new
⁄⁄< ?"
NonExistentUserFault
⁄⁄@ T
(
⁄⁄T U
)
⁄⁄U V
;
⁄⁄V W
throw
€€ 
new
€€ 
FaultException
€€ (
<
€€( )"
NonExistentUserFault
€€) =
>
€€= >
(
€€> ?"
nonExistentUserFault
€€? S
)
€€S T
;
€€T U
}
‹‹ 
catch
›› 
(
›› 
SqlException
›› 
sqlException
››  ,
)
››, -
{
ﬁﬁ 
_logger
ﬂﬂ 
.
ﬂﬂ 
Fatal
ﬂﬂ 
(
ﬂﬂ 
sqlException
ﬂﬂ *
)
ﬂﬂ* +
;
ﬂﬂ+ ,
throw
‡‡ 
;
‡‡ 
}
·· 
catch
‚‚ 
(
‚‚ 
EntityException
‚‚ "
entityException
‚‚# 2
)
‚‚2 3
{
„„ 
_logger
‰‰ 
.
‰‰ 
Fatal
‰‰ 
(
‰‰ 
entityException
‰‰ -
)
‰‰- .
;
‰‰. /
throw
ÂÂ 
;
ÂÂ 
}
ÊÊ 
finally
ÁÁ 
{
ËË 

unitOfWork
ÈÈ 
.
ÈÈ 
Dispose
ÈÈ "
(
ÈÈ" #
)
ÈÈ# $
;
ÈÈ$ %
}
ÍÍ 
}
ÎÎ 	
public
ÙÙ 
string
ÙÙ 
GetSalt
ÙÙ 
(
ÙÙ 
string
ÙÙ $
username
ÙÙ% -
)
ÙÙ- .
{
ıı 	

UnitOfWork
ˆˆ 

unitOfWork
ˆˆ !
=
ˆˆ" #
new
ˆˆ$ '

UnitOfWork
ˆˆ( 2
(
ˆˆ2 3
new
ˆˆ3 6
MemoryGameContext
ˆˆ7 H
(
ˆˆH I
)
ˆˆI J
)
ˆˆJ K
;
ˆˆK L
try
˜˜ 
{
¯¯ 
Account
˘˘ 
retrievedAccount
˘˘ (
=
˘˘) *

unitOfWork
˘˘+ 5
.
˘˘5 6
Accounts
˘˘6 >
.
˘˘> ? 
FindFirstOccurence
˘˘? Q
(
˘˘Q R
account
˘˘R Y
=>
˘˘Z \
account
˘˘] d
.
˘˘d e
Username
˘˘e m
==
˘˘n p
username
˘˘q y
)
˘˘y z
;
˘˘z {
if
˙˙ 
(
˙˙ 
retrievedAccount
˙˙ $
!=
˙˙% '
null
˙˙( ,
)
˙˙, -
{
˚˚ 
return
¸¸ 
retrievedAccount
¸¸ +
.
¸¸+ ,
Salt
¸¸, 0
;
¸¸0 1
}
˝˝ "
NonExistentUserFault
˛˛ $"
nonExistentUserFault
˛˛% 9
=
˛˛: ;
new
˛˛< ?"
NonExistentUserFault
˛˛@ T
(
˛˛T U
)
˛˛U V
;
˛˛V W
throw
ˇˇ 
new
ˇˇ 
FaultException
ˇˇ (
<
ˇˇ( )"
NonExistentUserFault
ˇˇ) =
>
ˇˇ= >
(
ˇˇ> ?"
nonExistentUserFault
ˇˇ? S
)
ˇˇS T
;
ˇˇT U
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
SqlException
ÅÅ 
sqlException
ÅÅ  ,
)
ÅÅ, -
{
ÇÇ 
_logger
ÉÉ 
.
ÉÉ 
Fatal
ÉÉ 
(
ÉÉ 
sqlException
ÉÉ *
.
ÉÉ* +
Message
ÉÉ+ 2
)
ÉÉ2 3
;
ÉÉ3 4
throw
ÑÑ 
;
ÑÑ 
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
EntityException
ÜÜ !
entityException
ÜÜ" 1
)
ÜÜ1 2
{
áá 
_logger
àà 
.
àà 
Fatal
àà 
(
àà 
entityException
àà -
)
àà- .
;
àà. /
throw
ââ 
;
ââ 
}
ää 
finally
ãã 
{
åå 

unitOfWork
çç 
.
çç 
Dispose
çç "
(
çç" #
)
çç# $
;
çç$ %
}
éé 
}
èè 	
public
ôô 
bool
ôô 
HasAccessRights
ôô #
(
ôô# $
string
ôô$ *
username
ôô+ 3
,
ôô3 4
string
ôô5 ;
password
ôô< D
)
ôôD E
{
öö 	

UnitOfWork
õõ 

unitOfWork
õõ !
=
õõ" #
new
õõ$ '

UnitOfWork
õõ( 2
(
õõ2 3
new
õõ3 6
MemoryGameContext
õõ7 H
(
õõH I
)
õõI J
)
õõJ K
;
õõK L
try
úú 
{
ùù 
Account
ûû 
retrievedAccount
ûû (
=
ûû) *

unitOfWork
ûû+ 5
.
ûû5 6
Accounts
ûû6 >
.
ûû> ? 
FindFirstOccurence
ûû? Q
(
ûûQ R
account
ûûR Y
=>
ûûZ \
account
ûû] d
.
ûûd e
Username
ûûe m
==
ûûn p
username
ûûq y
&&
ûûz |
accountûû} Ñ
.ûûÑ Ö
PasswordûûÖ ç
==ûûé ê
passwordûûë ô
)ûûô ö
;ûûö õ
if
üü 
(
üü 
retrievedAccount
üü #
!=
üü$ &
null
üü' +
)
üü+ ,
{
†† 
return
°° 
true
°° 
;
°°  
}
¢¢ 
return
££ 
false
££ 
;
££ 
}
§§ 
catch
•• 
(
•• 
SqlException
•• 
sqlException
••  ,
)
••, -
{
¶¶ 
_logger
ßß 
.
ßß 
Fatal
ßß 
(
ßß 
sqlException
ßß *
)
ßß* +
;
ßß+ ,
throw
®® 
;
®® 
}
©© 
catch
™™ 
(
™™ 
EntityException
™™ "
entityException
™™# 2
)
™™2 3
{
´´ 
_logger
¨¨ 
.
¨¨ 
Fatal
¨¨ 
(
¨¨ 
entityException
¨¨ -
)
¨¨- .
;
¨¨. /
throw
≠≠ 
;
≠≠ 
}
ÆÆ 
finally
ØØ 
{
∞∞ 

unitOfWork
±± 
.
±± 
Dispose
±± "
(
±±" #
)
±±# $
;
±±$ %
}
≤≤ 
}
≥≥ 	
}
¥¥ 
}µµ ô'
gC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountModifiabilityService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,(
IAccountModifiabilityService- I
{ 
public&& 
bool&& 
ChangeUsername&& "
(&&" #
string&&# )
emailAddress&&* 6
,&&6 7
string&&8 >
newUsername&&? J
)&&J K
{'' 	

UnitOfWork(( 

unitOfWork(( !
=((" #
new(($ '

UnitOfWork((( 2
(((2 3
new((3 6
MemoryGameContext((7 H
(((H I
)((I J
)((J K
;((K L
try)) 
{** 
Account++ 
account++ 
=++  !

unitOfWork++" ,
.++, -
Accounts++- 5
.++5 6
Get++6 9
(++9 :
emailAddress++: F
)++F G
;++G H
if,, 
(,, 
account,, 
!=,, 
null,, "
),," #
{-- 
account.. 
... 
Username.. $
=..% &
newUsername..' 2
;..2 3
int// 
rowsModified// $
=//% &

unitOfWork//' 1
.//1 2
Complete//2 :
(//: ;
)//; <
;//< =
return00 
rowsModified00 '
==00( *
$num00+ ,
;00, -
}11 
return22 
false22 
;22 
}33 
catch44 
(44 
SqlException44 
sqlException44  ,
)44, -
{55 
_logger66 
.66 
Fatal66 
(66 
sqlException66 *
)66* +
;66+ ,
throw77 
;77 
}88 
catch99 
(99 
EntityException99 "
entityException99# 2
)992 3
{:: 
_logger;; 
.;; 
Fatal;; 
(;; 
entityException;; -
);;- .
;;;. /
throw<< 
;<< 
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
}BB 	
publicLL 
boolLL 
SetNewPasswordLL "
(LL" #.
"PasswordModificationCredentialsDtoLL# E+
passwordModificationCredentialsLLF e
)LLe f
{MM 	

UnitOfWorkNN 

unitOfWorkNN !
=NN" #
newNN$ '

UnitOfWorkNN( 2
(NN2 3
newNN3 6
MemoryGameContextNN7 H
(NNH I
)NNI J
)NNJ K
;NNK L
stringOO 
emailAddressOO 
=OO  !+
passwordModificationCredentialsOO" A
.OOA B
EmailAddressOOB N
;OON O
stringPP 
saltPP 
=PP +
passwordModificationCredentialsPP 9
.PP9 :
SaltPP: >
;PP> ?
stringQQ 
newPasswordQQ 
=QQ  +
passwordModificationCredentialsQQ! @
.QQ@ A
NewPasswordQQA L
;QQL M
tryRR 
{SS 
AccountTT 
accountTT 
=TT  !

unitOfWorkTT" ,
.TT, -
AccountsTT- 5
.TT5 6
GetTT6 9
(TT9 :
emailAddressTT: F
)TTF G
;TTG H
ifUU 
(UU 
accountUU 
!=UU 
nullUU "
)UU" #
{VV 
accountWW 
.WW 
PasswordWW $
=WW% &
newPasswordWW' 2
;WW2 3
accountXX 
.XX 
SaltXX  
=XX! "
saltXX# '
;XX' (
intYY 
rowsModifiedYY $
=YY% &

unitOfWorkYY' 1
.YY1 2
CompleteYY2 :
(YY: ;
)YY; <
;YY< =
returnZZ 
rowsModifiedZZ '
==ZZ( *
$numZZ+ ,
;ZZ, -
}[[ 
return\\ 
false\\ 
;\\ 
}]] 
catch^^ 
(^^ 
SqlException^^ 
sqlException^^  ,
)^^, -
{__ 
_logger`` 
.`` 
Fatal`` 
(`` 
sqlException`` *
)``* +
;``+ ,
throwaa 
;aa 
}bb 
catchcc 
(cc 
EntityExceptioncc "
entityExceptioncc# 2
)cc2 3
{dd 
_loggeree 
.ee 
Fatalee 
(ee 
entityExceptionee -
)ee- .
;ee. /
throwff 
;ff 
}gg 
finallyhh 
{ii 

unitOfWorkjj 
.jj 
Disposejj "
(jj" #
)jj# $
;jj$ %
}kk 
}mm 	
}nn 
}oo º3
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountVerificationService.cs
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
public   

partial   
class   
MemoryGameService   *
:  + ,'
IAccountVerificationService  - H
{!! 
public)) 
bool))  
SetAccountAsVerified)) (
())( )
string))) /
emailAddress))0 <
)))< =
{** 	

UnitOfWork++ 

unitOfWork++ !
=++" #
new++$ '

UnitOfWork++( 2
(++2 3
new++3 6
MemoryGameContext++7 H
(++H I
)++I J
)++J K
;++K L
try,, 
{-- 
Account.. 
retrievedAccount.. (
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
retrievedAccount// #
!=//$ &
null//' +
)//+ ,
{00 
retrievedAccount11 $
.11$ %
EmailWasVerified11% 5
=116 7
true118 <
;11< =
int22 
rowsModified22 $
=22% &

unitOfWork22' 1
.221 2
Complete222 :
(22: ;
)22; <
;22< =
return33 
rowsModified33 '
==33( *
$num33+ ,
;33, -
}44 
return55 
false55 
;55 
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
;99+ ,
throw:: 
;:: 
};; 
catch<< 
(<< 
EntityException<< "
entityException<<# 2
)<<2 3
{== 
_logger>> 
.>> 
Fatal>> 
(>> 
entityException>> -
)>>- .
;>>. /
throw?? 
;?? 
}@@ 
finallyAA 
{BB 

unitOfWorkCC 
.CC 
DisposeCC "
(CC" #
)CC# $
;CC$ %
}DD 
}EE 	
publicOO 
boolOO &
AssignNewVerificationTokenOO .
(OO. /
stringOO/ 5
emailAddressOO6 B
,OOB C
stringOOD J
verificationTokenOOK \
)OO\ ]
{PP 	

UnitOfWorkQQ 

unitOfWorkQQ !
=QQ" #
newQQ$ '

UnitOfWorkQQ( 2
(QQ2 3
newQQ3 6
MemoryGameContextQQ7 H
(QQH I
)QQI J
)QQJ K
;QQK L
tryRR 
{SS 
AccountTT 
retrievedAccountTT (
=TT) *

unitOfWorkTT+ 5
.TT5 6
AccountsTT6 >
.TT> ?
GetTT? B
(TTB C
emailAddressTTC O
)TTO P
;TTP Q
ifUU 
(UU 
retrievedAccountUU $
!=UU% '
nullUU( ,
)UU, -
{VV 
retrievedAccountWW $
.WW$ %
ActivationTokenWW% 4
=WW5 6
verificationTokenWW7 H
;WWH I
intXX 
rowsModifiedXX $
=XX% &

unitOfWorkXX' 1
.XX1 2
CompleteXX2 :
(XX: ;
)XX; <
;XX< =
returnYY 
rowsModifiedYY '
==YY( *
$numYY+ ,
;YY, -
}ZZ 
return[[ 
false[[ 
;[[ 
}\\ 
catch]] 
(]] 
SqlException]] 
sqlException]]  ,
)]], -
{^^ 
_logger__ 
.__ 
Fatal__ 
(__ 
sqlException__ *
)__* +
;__+ ,
throw`` 
;`` 
}aa 
catchbb 
(bb 
EntityExceptionbb "
entityExceptionbb# 2
)bb2 3
{cc 
_loggerdd 
.dd 
Fataldd 
(dd 
entityExceptiondd -
)dd- .
;dd. /
throwee 
;ee 
}ff 
finallygg 
{hh 

unitOfWorkii 
.ii 
Disposeii "
(ii" #
)ii# $
;ii$ %
}jj 
}kk 	
publicuu 
booluu 
VerifyTokenuu 
(uu  
stringuu  &
emailAddressuu' 3
,uu3 4
stringuu5 ;
verificationTokenuu< M
)uuM N
{vv 	

UnitOfWorkww 

unitOfWorkww !
=ww" #
newww$ '

UnitOfWorkww( 2
(ww2 3
newww3 6
MemoryGameContextww7 H
(wwH I
)wwI J
)wwJ K
;wwK L
tryxx 
{yy 
Accountzz 
retrievedAccountzz (
=zz) *

unitOfWorkzz+ 5
.zz5 6
Accountszz6 >
.zz> ?
FindFirstOccurencezz? Q
(zzQ R
accountzzR Y
=>zzZ \
accountzz] d
.zzd e
EmailAddresszze q
==zzr t
emailAddress	zzu Å
&&
zzÇ Ñ
account
zzÖ å
.
zzå ç
ActivationToken
zzç ú
==
zzù ü
verificationToken
zz† ±
)
zz± ≤
;
zz≤ ≥
if{{ 
({{ 
retrievedAccount{{ #
!={{$ &
null{{' +
){{+ ,
{|| 
return}} 
true}} 
;}}  
}~~ 
return 
false 
; 
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
SqlException
ÅÅ 
sqlException
ÅÅ  ,
)
ÅÅ, -
{
ÇÇ 
_logger
ÉÉ 
.
ÉÉ 
Fatal
ÉÉ 
(
ÉÉ 
sqlException
ÉÉ *
)
ÉÉ* +
;
ÉÉ+ ,
throw
ÑÑ 
;
ÑÑ 
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
EntityException
ÜÜ "
entityException
ÜÜ# 2
)
ÜÜ2 3
{
áá 
_logger
àà 
.
àà 
Fatal
àà 
(
àà 
entityException
àà -
)
àà- .
;
àà. /
throw
ââ 
;
ââ 
}
ää 
finally
ãã 
{
åå 

unitOfWork
çç 
.
çç 
Dispose
çç "
(
çç" #
)
çç# $
;
çç$ %
}
éé 
}
èè 	
}
êê 
}ëë Í1
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\CardDeckRetrieverService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public'' 

partial'' 
class'' 
MemoryGameService'' *
:''+ ,%
ICardDeckRetrieverService''- F
{(( 
private)) 
CardDeckDTO)) 
_cardDeckDTO)) (
;))( )
private** 
IEnumerable** 
<** 
Card**  
>**  !
_cards**" (
;**( )
public33 
CardDeckDTO33 
GetCardDeckAndCards33 .
(33. /
int33/ 2

cardDeckId333 =
)33= >
{44 	

UnitOfWork55 

unitOfWork55 !
=55" #
new55$ '

UnitOfWork55( 2
(552 3
new553 6
MemoryGameContext557 H
(55H I
)55I J
)55J K
;55K L
try66 
{77 
CardDeck88 
cardDeck88 !
=88" #

unitOfWork88$ .
.88. /
	CardDecks88/ 8
.888 9
GetCardDeckAndCards889 L
(88L M

cardDeckId88M W
)88W X
;88X Y
_cardDeckDTO99 
=99 
CardDeckMapper99 -
.99- .
	CreateDTO99. 7
(997 8
cardDeck998 @
)99@ A
;99A B
_cards:: 
=:: 
cardDeck:: !
.::! "
Cards::" '
;::' ((
PopulateCardDeckDtoWithCards?? ,
(??, -
)??- .
;??. /(
PopulateCardDeckDtoWithCards@@ ,
(@@, -
)@@- .
;@@. /
ShuffleCardsBB 
(BB 
)BB 
;BB 
returnCC 
_cardDeckDTOCC #
;CC# $
}DD 
catchEE 
(EE 
SqlExceptionEE 
sqlExceptionEE  ,
)EE, -
{FF 
_loggerGG 
.GG 
FatalGG 
(GG 
sqlExceptionGG *
)GG* +
;GG+ ,
throwHH 
;HH 
}II 
catchJJ 
(JJ 
EntityExceptionJJ "
entityExceptionJJ# 2
)JJ2 3
{KK 
_loggerLL 
.LL 
FatalLL 
(LL 
entityExceptionLL -
)LL- .
;LL. /
throwMM 
;MM 
}NN 
finallyOO 
{PP 

unitOfWorkQQ 
.QQ 
DisposeQQ "
(QQ" #
)QQ# $
;QQ$ %
}RR 
}SS 	
public\\ 
IList\\ 
<\\ 
CardDeckInfoDto\\ $
>\\$ %
GetCardDecksInfo\\& 6
(\\6 7
)\\7 8
{]] 	

UnitOfWork^^ 

unitOfWork^^ !
=^^" #
new^^$ '

UnitOfWork^^( 2
(^^2 3
new^^3 6
MemoryGameContext^^7 H
(^^H I
)^^I J
)^^J K
;^^K L
try__ 
{`` 
IEnumerableaa 
<aa 
CardDeckaa $
>aa$ %
	cardDecksaa& /
=aa0 1

unitOfWorkaa2 <
.aa< =
	CardDecksaa= F
.aaF G
GetAllaaG M
(aaM N
)aaN O
;aaO P
IListbb 
<bb 
CardDeckInfoDtobb %
>bb% &
listOfCardDecksInfobb' :
=bb; <
newbb= @
ListbbA E
<bbE F
CardDeckInfoDtobbF U
>bbU V
(bbV W
)bbW X
;bbX Y
foreachcc 
(cc 
varcc 
individualCardDeckcc /
incc0 2
	cardDeckscc3 <
)cc< =
{dd 
CardDeckInfoDtoee #
cardDeckInfoee$ 0
=ee1 2
newee3 6
CardDeckInfoDtoee7 F
(eeF G
)eeG H
{ff 

CardDeckIdgg "
=gg# $
individualCardDeckgg% 7
.gg7 8

CardDeckIdgg8 B
,ggB C
CardDeckNamehh $
=hh% &
individualCardDeckhh' 9
.hh9 :
Namehh: >
}ii 
;ii 
listOfCardDecksInfojj '
.jj' (
Addjj( +
(jj+ ,
cardDeckInfojj, 8
)jj8 9
;jj9 :
}kk 
returnll 
listOfCardDecksInfoll *
;ll* +
}mm 
catchnn 
(nn 
SqlExceptionnn 
sqlExceptionnn  ,
)nn, -
{oo 
_loggerpp 
.pp 
Fatalpp 
(pp 
sqlExceptionpp *
)pp* +
;pp+ ,
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
(uu 
entityExceptionuu -
)uu- .
;uu. /
throwvv 
;vv 
}ww 
finallyxx 
{yy 

unitOfWorkzz 
.zz 
Disposezz "
(zz" #
)zz# $
;zz$ %
}{{ 
}|| 	
private
ÅÅ 
void
ÅÅ *
PopulateCardDeckDtoWithCards
ÅÅ 1
(
ÅÅ1 2
)
ÅÅ2 3
{
ÇÇ 	
foreach
ÉÉ 
(
ÉÉ 
Card
ÉÉ 

actualCard
ÉÉ $
in
ÉÉ% '
_cards
ÉÉ( .
)
ÉÉ. /
{
ÑÑ 
CardDto
ÖÖ 
cardDTO
ÖÖ 
=
ÖÖ  !

CardMapper
ÖÖ" ,
.
ÖÖ, -
	CreateDTO
ÖÖ- 6
(
ÖÖ6 7

actualCard
ÖÖ7 A
)
ÖÖA B
;
ÖÖB C
_cardDeckDTO
ÜÜ 
.
ÜÜ 
Cards
ÜÜ "
.
ÜÜ" #
Add
ÜÜ# &
(
ÜÜ& '
cardDTO
ÜÜ' .
)
ÜÜ. /
;
ÜÜ/ 0
}
áá 
}
àà 	
private
çç 
void
çç 
ShuffleCards
çç !
(
çç! "
)
çç" #
{
éé 	
CardShuffler
èè 
cardShuffler
èè %
=
èè& '
new
èè( +
CardShuffler
èè, 8
(
èè8 9
)
èè9 :
;
èè: ;
cardShuffler
êê 
.
êê 
ShuffleCards
êê %
(
êê% &
_cardDeckDTO
êê& 2
.
êê2 3
Cards
êê3 8
)
êê8 9
;
êê9 :
}
ëë 	
}
íí 
}ìì Ú
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
}44 ‰'
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\LobbyService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public"" 

partial"" 
class"" 
MemoryGameService"" *
:""+ ,
ILobbyService""- :
{## 
public)) 
IList)) 
<)) 
string)) 
>)) #
GetActivePlayersInLobby)) 4
())4 5
string))5 ;
host))< @
)))@ A
{** 	
MatchDto++ 
match++ 
=++ 
GetMatch++ %
(++% &
host++& *
)++* +
;+++ ,
if,, 
(,, 
match,, 
!=,, 
null,, 
),, 
{-- 
Lobby.. 
lobby.. 
=.. 
match.. #
...# $
Lobby..$ )
;..) *
IList// 
<// 
string// 
>// "
activePlayersFromMatch// 4
=//5 6
lobby//7 <
.//< =1
%GetUsernamesOfPlayersConnectedToLobby//= b
(//b c
)//c d
;//d e
return00 "
activePlayersFromMatch00 -
;00- .
}11 
throw33 
new33 
System33 
.33 
	Exception33 &
(33& '
)33' (
;33( )
}44 	
public;; 
void;; 
	JoinLobby;; 
(;; 
string;; $
host;;% )
,;;) *
string;;+ 1
username;;2 :
);;: ;
{<< 	
MatchDto== 
match== 
=== 
GetMatch== %
(==% &
host==& *
)==* +
;==+ ,
if>> 
(>> 
match>> 
!=>> 
null>> 
)>> 
{?? 
Lobby@@ 
lobby@@ 
=@@ 
match@@ #
.@@# $
Lobby@@$ )
;@@) *
lobbyAA 
.AA 
AddPlayerToLobbyAA &
(AA& '
hostAA' +
,AA+ ,
usernameAA- 5
)AA5 6
;AA6 7
lobbyBB 
.BB '
NotifyNewPlayerEnteredLobbyBB 1
(BB1 2
usernameBB2 :
)BB: ;
;BB; <
}CC 
elseDD 
{EE 
}GG 
}HH 	
publicOO 
voidOO 

LeaveLobbyOO 
(OO 
stringOO %
hostOO& *
,OO* +
stringOO, 2
usernameOO3 ;
)OO; <
{PP 	
MatchDtoQQ 
matchQQ 
=QQ 
GetMatchQQ %
(QQ% &
hostQQ& *
)QQ* +
;QQ+ ,
ifRR 
(RR 
matchRR 
!=RR 
nullRR 
)RR 
{SS 
LobbyTT 
lobbyTT 
=TT 
matchTT #
.TT# $
LobbyTT$ )
;TT) *
lobbyUU 
.UU !
RemovePlayerFromLobbyUU +
(UU+ ,
usernameUU, 4
)UU4 5
;UU5 6
ifVV 
(VV 
hostVV 
.VV 
EqualsVV 
(VV  
usernameVV  (
)VV( )
)VV) *
{WW 
lobbyXX 
.XX ,
 NotifyPlayersMatchHasBeenDeletedXX :
(XX: ;
)XX; <
;XX< =
_matchesYY 
.YY 
RemoveYY #
(YY# $
matchYY$ )
)YY) *
;YY* +
}ZZ 
else[[ 
{\\ 
lobby]] 
.]] $
NotifyOnePlayerLeftLobby]] 2
(]]2 3
username]]3 ;
)]]; <
;]]< =
}^^ 
}__ 
}`` 	
publicff 
voidff 
	StartGameff 
(ff 
stringff $
hostff% )
)ff) *
{gg 	
MatchDtohh 
matchhh 
=hh 
GetMatchhh %
(hh% &
hosthh& *
)hh* +
;hh+ ,
ifii 
(ii 
matchii 
!=ii 
nullii 
)ii 
{jj 
matchkk 
.kk 

StartMatchkk  
(kk  !
)kk! "
;kk" #
}ll 
}nn 	
privateuu 
MatchDtouu 
GetMatchuu !
(uu! "
stringuu" (
hostuu) -
)uu- .
{vv 	
MatchDtoww 
	gameMatchww 
=ww  
nullww! %
;ww% &
foreachxx 
(xx 
varxx 
matchxx 
inxx !
_matchesxx" *
)xx* +
{yy 
ifzz 
(zz 
matchzz 
.zz 
Hostzz 
.zz 
Equalszz %
(zz% &
hostzz& *
)zz* +
)zz+ ,
{{{ 
	gameMatch|| 
=|| 
match||  %
;||% &
break}} 
;}} 
}~~ 
} 
return
ÄÄ 
	gameMatch
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ —
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MailingService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{		 
public 

partial 
class 
MemoryGameService *
:+ ,
IMailingService- <
{ 
public 
void !
SendVerificationToken )
() *$
VerificationTokenInfoDto* B!
verificationTokenInfoC X
)X Y
{ 	
string 
name 
= !
verificationTokenInfo /
./ 0
Name0 4
;4 5
string 
emailAddress 
=  !!
verificationTokenInfo" 7
.7 8
EmailAddress8 D
;D E
string   
verificationToken   $
=  % &!
verificationTokenInfo  ' <
.  < =
VerificationToken  = N
;  N O
string!! 
subjectOfTheMessage!! &
=!!' (!
verificationTokenInfo!!) >
.!!> ?
Subject!!? F
;!!F G
string"" 
bodyOfTheMessage"" #
=""$ %!
verificationTokenInfo""& ;
.""; <
Body""< @
;""@ A
MailTemplate## 
mt## 
=## 
new## !
MailTemplate##" .
(##. /
)##/ 0
;##0 1
mt$$ 
.$$ 
SetReceiver$$ 
($$ 
name$$ 
,$$  
emailAddress$$! -
)$$- .
;$$. /
mt%% 
.%% 

SetMessage%% 
(%% 
subjectOfTheMessage%% -
,%%- .
bodyOfTheMessage%%/ ?
+%%@ A
$str%%B F
+%%G H
verificationToken%%I Z
)%%Z [
;%%[ \
try&& 
{'' 
mt(( 
.(( 
Send(( 
((( 
)(( 
;(( 
})) 
catch** 
(** 
SocketException** "
socketException**# 2
)**2 3
{++ 
_logger,, 
.,, 
Fatal,, 
(,, 
$str,, M
+,,N O
$str-- J
+--K L
$str.. (
,..( )
socketException..* 9
)..9 :
;..: ;
}// 
catch00 
(00 
ProtocolException00 $
protocolException00% 6
)006 7
{11 
_logger22 
.22 
Fatal22 
(22 
$str22 Q
+22R S
$str33 Q
+33R S
$str44 6
,446 7
protocolException448 I
)44I J
;44J K
}55 
}77 	
}88 
}99 ´
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchCreationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,!
IMatchCreationService- B
{ 
public 
void 
CreateNewMatch "
(" #
MatchDto# +
gameMatchDto, 8
)8 9
{ 	
_matches 
. 
Add 
( 
gameMatchDto %
)% &
;& '
} 	
} 
} «
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchDiscoveryService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,"
IMatchDiscoveryService- C
{ 
public&& 
bool&& 
CanJoin&& 
(&& 
string&& "
	matchHost&&# ,
)&&, -
{'' 	
MatchDto(( 
	gameMatch(( 
=((  
GetMatch((! )
((() *
	matchHost((* 3
)((3 4
;((4 5
if)) 
()) 
	gameMatch)) 
==)) 
null)) !
)))! "
{** "
MatchAccessDeniedFault++ &"
matchAccessDeniedFault++' =
=++> ?
new++@ C"
MatchAccessDeniedFault++D Z
(++Z [
)++[ \
{,, 
Details-- 
=-- 
$str-- j
}.. 
;.. 
throw// 
new// 
FaultException// (
<//( )"
MatchAccessDeniedFault//) ?
>//? @
(//@ A"
matchAccessDeniedFault//A W
)//W X
;//X Y
}00 
else11 
{22 
Lobby33 
lobby33 
=33 
	gameMatch33 '
.33' (
Lobby33( -
;33- .
IList44 
<44 
PlayerInLobby44 #
>44# $#
playersConnectedToLobby44% <
=44= >
lobby44? D
.44D E&
GetPlayersConnectedToLobby44E _
(44_ `
)44` a
;44a b
int55 +
numberOfPlayersConnectedToLobby55 3
=554 5#
playersConnectedToLobby556 M
.55M N
Count55N S
;55S T
int66 #
numberOfPlayersRequired66 +
=66, -
	gameMatch66. 7
.667 8
MaxNumberOfPlayers668 J
;66J K
bool77 
matchHasStarted77 $
=77% &
	gameMatch77' 0
.770 1

HasStarted771 ;
;77; <
bool88 (
ThereIsSpaceForAnotherPlayer88 1
=882 3
false884 9
;889 :
if:: 
(:: +
numberOfPlayersConnectedToLobby:: 3
<::4 5#
numberOfPlayersRequired::6 M
)::M N
{;; (
ThereIsSpaceForAnotherPlayer<< 0
=<<1 2
true<<3 7
;<<7 8
}== 
if?? 
(?? (
ThereIsSpaceForAnotherPlayer?? 0
&&??1 3
!??4 5
matchHasStarted??5 D
)??D E
{@@ 
returnAA 
trueAA 
;AA  
}BB 
returnCC 
falseCC 
;CC 
}DD 
}EE 	
publicKK 
IListKK 
<KK 
MatchDtoKK 
>KK 
GetActiveMatchesKK /
(KK/ 0
)KK0 1
{LL 	
IListMM 
<MM 
MatchDtoMM 
>MM !
matchesWaitingToStartMM 1
=MM2 3
newMM4 7
ListMM8 <
<MM< =
MatchDtoMM= E
>MME F
(MMF G
)MMG H
;MMH I
foreachNN 
(NN 
varNN 
matchNN 
inNN !
_matchesNN" *
)NN* +
{OO 
ifPP 
(PP 
!PP 
matchPP 
.PP 

HasStartedPP %
)PP% &
{QQ !
matchesWaitingToStartRR )
.RR) *
AddRR* -
(RR- .
matchRR. 3
)RR3 4
;RR4 5
}SS 
}TT 
returnUU !
matchesWaitingToStartUU (
;UU( )
}VV 	
}WW 
}XX ú‘
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
publicBB 

partialBB 
classBB 
MemoryGameServiceBB *
:BB+ ,
IMatchServiceBB- :
{CC 
publicII 
voidII 

EnterMatchII 
(II 
stringII %
hostII& *
,II* +
stringII, 2
usernameII3 ;
)II; <
{JJ 	
MatchDtoKK 
	gameMatchKK 
=KK  
GetMatchKK! )
(KK) *
hostKK* .
)KK. /
;KK/ 0
boolMM 
hasActiveTurnMM 
=MM  
falseMM! &
;MM& '
ifNN 
(NN 
hostNN 
.NN 
EqualsNN 
(NN 
usernameNN $
)NN$ %
)NN% &
{OO 
hasActiveTurnPP 
=PP 
truePP  $
;PP$ %
}QQ 
PlayerInMatchSS 
playerSS  
=SS! "
newSS# &
PlayerInMatchSS' 4
(SS4 5
)SS5 6
{TT 
UsernameUU 
=UU 
usernameUU #
,UU# $
ScoreVV 
=VV 
$numVV 
,VV 
HasActiveTurnWW 
=WW 
hasActiveTurnWW  -
,WW- ."
MatchServiceConnectionXX &
=XX' (
OperationContextXX) 9
.XX9 :
CurrentXX: A
.XXA B
GetCallbackChannelXXB T
<XXT U!
IMatchServiceCallbackXXU j
>XXj k
(XXk l
)XXl m
,XXm n
ExpulsionVotesYY 
=YY  
$numYY! "
}ZZ 
;ZZ 
	gameMatch[[ 
.[[ 
	AddPlayer[[ 
([[  
player[[  &
)[[& '
;[[' (
}\\ 	
publiccc 
IListcc 
<cc 
PlayerInMatchcc "
>cc" #&
GetPlayersConnectedToMatchcc$ >
(cc> ?
stringcc? E
hostccF J
)ccJ K
{dd 	
MatchDtoee 
matchee 
=ee 
GetMatchee %
(ee% &
hostee& *
)ee* +
;ee+ ,
returnff 
matchff 
.ff &
GetPlayersConnectedToMatchff 3
(ff3 4
)ff4 5
;ff5 6
}gg 	
publicmm 
voidmm #
NotifyCardWasUncovereddmm +
(mm+ ,
PlayerMovementDtomm, =
playerMovementDtomm> O
)mmO P
{nn 	
stringoo 
hostoo 
=oo 
playerMovementDtooo +
.oo+ ,
Hostoo, 0
;oo0 1
MatchDtopp 
	gameMatchpp 
=pp  
GetMatchpp! )
(pp) *
hostpp* .
)pp. /
;pp/ 0
PlayerInMatchrr 
playerrr  
=rr! "
	gameMatchrr# ,
.rr, -
	GetPlayerrr- 6
(rr6 7
playerMovementDtorr7 H
.rrH I
UsernamerrI Q
)rrQ R
;rrR S
ifss 
(ss 
playerMovementDtoss !
.ss! "
HasFormedAPairss" 0
)ss0 1
{tt 
playeruu 
.uu 
AddUncoveredCarduu '
(uu' (
playerMovementDtouu( 9
.uu9 :
	CardIndexuu: C
)uuC D
;uuD E
	gameMatchvv 
.vv 

TotalPairsvv $
++vv$ &
;vv& '
}ww 
elsexx 
{yy 
ifzz 
(zz 
playerMovementDtozz %
.zz% &
MovementsLeftzz& 3
==zz4 6
$numzz7 8
)zz8 9
{{{ 
player|| 
.|| 
RemoveUncoveredCard|| .
(||. /
)||/ 0
;||0 1
}}} 
else~~ 
{ 
player
ÄÄ 
.
ÄÄ 
AddUncoveredCard
ÄÄ +
(
ÄÄ+ ,
playerMovementDto
ÄÄ, =
.
ÄÄ= >
	CardIndex
ÄÄ> G
)
ÄÄG H
;
ÄÄH I
}
ÅÅ 
}
ÇÇ 
IList
ÑÑ 
<
ÑÑ 
PlayerInMatch
ÑÑ 
>
ÑÑ  
playersInMatch
ÑÑ! /
=
ÑÑ0 1
	gameMatch
ÑÑ2 ;
.
ÑÑ; <(
GetPlayersConnectedToMatch
ÑÑ< V
(
ÑÑV W
)
ÑÑW X
;
ÑÑX Y
foreach
ÜÜ 
(
ÜÜ 
var
ÜÜ 
playerInMatch
ÜÜ %
in
ÜÜ& (
playersInMatch
ÜÜ) 7
)
ÜÜ7 8
{
áá 
playerInMatch
àà 
.
àà $
MatchServiceConnection
àà 4
.
àà4 5
UncoverCardd
àà5 A
(
ààA B
playerMovementDto
ààB S
.
ààS T
	CardIndex
ààT ]
)
àà] ^
;
àà^ _
}
ââ 
}
ãã 	
public
ëë 
void
ëë !
NotifyMatchHasEnded
ëë '
(
ëë' (
string
ëë( .
host
ëë/ 3
)
ëë3 4
{
íí 	
MatchDto
îî 
	gameMatch
îî 
=
îî  
GetMatch
îî! )
(
îî) *
host
îî* .
)
îî. /
;
îî/ 0
if
ïï 
(
ïï 
host
ïï 
!=
ïï 
null
ïï 
)
ïï 
{
ññ 
PlayerInMatch
óó !
playerWithBestScore
óó 1
=
óó2 3
	gameMatch
óó4 =
.
óó= >$
GetPlayerWithBestScore
óó> T
(
óóT U
)
óóU V
;
óóV W
string
òò +
usernameOfPlayerWithBestScore
òò 4
=
òò5 6!
playerWithBestScore
òò7 J
.
òòJ K
Username
òòK S
;
òòS T
IList
ôô 
<
ôô 
PlayerInMatch
ôô #
>
ôô# $%
playersConnectedToMatch
ôô% <
=
ôô= >
	gameMatch
ôô? H
.
ôôH I(
GetPlayersConnectedToMatch
ôôI c
(
ôôc d
)
ôôd e
;
ôôe f
foreach
öö 
(
öö 
var
öö 
playerConnected
öö ,
in
öö- /%
playersConnectedToMatch
öö0 G
)
ööG H
{
õõ 
var
úú 
channel
úú 
=
úú  !
playerConnected
úú" 1
.
úú1 2$
MatchServiceConnection
úú2 H
;
úúH I
channel
ùù 
.
ùù 
ShowWinners
ùù '
(
ùù' (+
usernameOfPlayerWithBestScore
ùù( E
)
ùùE F
;
ùùF G
channel
ûû 
.
ûû 
MatchHasEnded
ûû )
(
ûû) *
)
ûû* +
;
ûû+ ,
}
üü 

UnitOfWork
°° 

unitOfWork
°° %
=
°°& '
new
°°( +

UnitOfWork
°°, 6
(
°°6 7
new
°°7 :
MemoryGameContext
°°; L
(
°°L M
)
°°M N
)
°°N O
;
°°O P
try
¢¢ 
{
££ 
foreach
§§ 
(
§§ 
var
§§  
playerInMatch
§§! .
in
§§/ 1
	gameMatch
§§2 ;
.
§§; <(
GetPlayersConnectedToMatch
§§< V
(
§§V W
)
§§W X
)
§§X Y
{
•• 

unitOfWork
¶¶ "
.
¶¶" #
Players
¶¶# *
.
¶¶* +,
UpdateScoreOfPlayersAfterMatch
¶¶+ I
(
¶¶I J
playerInMatch
¶¶J W
.
¶¶W X
Username
¶¶X `
,
¶¶` a
playerInMatch
¶¶b o
.
¶¶o p
Score
¶¶p u
)
¶¶u v
;
¶¶v w
}
ßß 
Player
©© 
winner
©© !
=
©©" #

unitOfWork
©©$ .
.
©©. /
Players
©©/ 6
.
©©6 7"
FindPlayerByUsername
©©7 K
(
©©K L+
usernameOfPlayerWithBestScore
©©L i
)
©©i j
;
©©j k
CardDeck
™™ 
cardDeck
™™ %
=
™™& '

unitOfWork
™™( 2
.
™™2 3
	CardDecks
™™3 <
.
™™< =
Get
™™= @
(
™™@ A
	gameMatch
™™A J
.
™™J K
CardDeckDto
™™K V
.
™™V W

CardDeckId
™™W a
)
™™a b
;
™™b c
Match
¨¨ 
matchToBeSaved
¨¨ (
=
¨¨) *
new
¨¨+ .
Match
¨¨/ 4
(
¨¨4 5
)
¨¨5 6
{
≠≠ 
CardDeck
ÆÆ  
=
ÆÆ! "
cardDeck
ÆÆ# +
,
ÆÆ+ ,
Winner
ØØ 
=
ØØ  
winner
ØØ! '
,
ØØ' (
Date
∞∞ 
=
∞∞ 
DateTime
∞∞ '
.
∞∞' (
Now
∞∞( +
}
±± 
;
±± 

unitOfWork
≤≤ 
.
≤≤ 
Matches
≤≤ &
.
≤≤& '
Add
≤≤' *
(
≤≤* +
matchToBeSaved
≤≤+ 9
)
≤≤9 :
;
≤≤: ;

unitOfWork
≥≥ 
.
≥≥ 
Complete
≥≥ '
(
≥≥' (
)
≥≥( )
;
≥≥) *
}
¥¥ 
catch
µµ 
(
µµ 
	Exception
µµ  
e
µµ! "
)
µµ" #
{
∂∂ 
Console
∑∑ 
.
∑∑ 
	WriteLine
∑∑ %
(
∑∑% &
e
∑∑& '
)
∑∑' (
;
∑∑( )
Console
∏∏ 
.
∏∏ 
ReadLine
∏∏ $
(
∏∏$ %
)
∏∏% &
;
∏∏& '
}
ππ 
finally
∫∫ 
{
ªª 

unitOfWork
ºº 
.
ºº 
Dispose
ºº &
(
ºº& '
)
ºº' (
;
ºº( )
}
ΩΩ 
_matches
øø 
.
øø 
Remove
øø 
(
øø  
	gameMatch
øø  )
)
øø) *
;
øø* +
}
¿¿ 
}
¡¡ 	
public
…… 
void
…… 
EndTurn
…… 
(
…… 
string
…… "
host
……# '
,
……' (
string
……) /
username
……0 8
,
……8 9
CardPairDto
……: E
cardPairDto
……F Q
)
……Q R
{
   	
MatchDto
ÀÀ 
	gameMatch
ÀÀ 
=
ÀÀ  
GetMatch
ÀÀ! )
(
ÀÀ) *
host
ÀÀ* .
)
ÀÀ. /
;
ÀÀ/ 0
PlayerInMatch
ÃÃ 
player
ÃÃ  
=
ÃÃ! "
	gameMatch
ÃÃ# ,
.
ÃÃ, -
	GetPlayer
ÃÃ- 6
(
ÃÃ6 7
username
ÃÃ7 ?
)
ÃÃ? @
;
ÃÃ@ A
int
ÕÕ *
indexOfPlayerWithCurrentTurn
ÕÕ ,
=
ÕÕ- .
	gameMatch
ÕÕ/ 8
.
ÕÕ8 9(
GetPlayersConnectedToMatch
ÕÕ9 S
(
ÕÕS T
)
ÕÕT U
.
ÕÕU V
IndexOf
ÕÕV ]
(
ÕÕ] ^
player
ÕÕ^ d
)
ÕÕd e
;
ÕÕe f
if
œœ 
(
œœ 
cardPairDto
œœ 
.
œœ 
BothCardsAreEqual
œœ -
)
œœ- .
{
–– 
player
—— 
.
—— 
Score
—— 
+=
—— 
$num
——  #
;
——# $
}
““ 
else
”” 
{
‘‘ *
indexOfPlayerWithCurrentTurn
’’ ,
=
’’- .

ChangeTurn
’’/ 9
(
’’9 :
	gameMatch
’’: C
,
’’C D*
indexOfPlayerWithCurrentTurn
’’E a
)
’’a b
;
’’b c
}
÷÷ 
PlayerInMatch
ÿÿ 

nextPlayer
ÿÿ $
=
ÿÿ% &
	gameMatch
ÿÿ' 0
.
ÿÿ0 1(
GetPlayersConnectedToMatch
ÿÿ1 K
(
ÿÿK L
)
ÿÿL M
[
ÿÿM N*
indexOfPlayerWithCurrentTurn
ÿÿN j
]
ÿÿj k
;
ÿÿk l
player
ŸŸ 
.
ŸŸ 
HasActiveTurn
ŸŸ  
=
ŸŸ! "
false
ŸŸ# (
;
ŸŸ( )

nextPlayer
⁄⁄ 
.
⁄⁄ 
HasActiveTurn
⁄⁄ $
=
⁄⁄% &
true
⁄⁄' +
;
⁄⁄+ ,
IList
‹‹ 
<
‹‹ 
PlayerInMatch
‹‹ 
>
‹‹  
playersInMatch
‹‹! /
=
‹‹0 1
	gameMatch
‹‹2 ;
.
‹‹; <(
GetPlayersConnectedToMatch
‹‹< V
(
‹‹V W
)
‹‹W X
;
‹‹X Y
foreach
ﬁﬁ 
(
ﬁﬁ 
var
ﬁﬁ 
playerInMatch
ﬁﬁ &
in
ﬁﬁ' )
playersInMatch
ﬁﬁ* 8
)
ﬁﬁ8 9
{
ﬂﬂ 
playerInMatch
‡‡ 
.
‡‡ $
MatchServiceConnection
‡‡ 4
.
‡‡4 5 
NotifyTurnHasEnded
‡‡5 G
(
‡‡G H

nextPlayer
‡‡H R
.
‡‡R S
Username
‡‡S [
,
‡‡[ \
cardPairDto
‡‡] h
)
‡‡h i
;
‡‡i j
}
·· 
if
„„ 
(
„„ 
	gameMatch
„„ 
.
„„ 

TotalPairs
„„ $
==
„„% '
	gameMatch
„„( 1
.
„„1 2
CardDeckDto
„„2 =
.
„„= >
NumberOfPairs
„„> K
)
„„K L
{
‰‰ 
this
ÂÂ 
.
ÂÂ !
NotifyMatchHasEnded
ÂÂ (
(
ÂÂ( )
host
ÂÂ) -
)
ÂÂ- .
;
ÂÂ. /
}
ÊÊ 
}
ËË 	
public
ÔÔ 
void
ÔÔ 

LeaveMatch
ÔÔ 
(
ÔÔ 
string
ÔÔ %
host
ÔÔ& *
,
ÔÔ* +
string
ÔÔ, 2
username
ÔÔ3 ;
)
ÔÔ; <
{
 	
MatchDto
ÒÒ 
	gameMatch
ÒÒ 
=
ÒÒ  
GetMatch
ÒÒ! )
(
ÒÒ) *
host
ÒÒ* .
)
ÒÒ. /
;
ÒÒ/ 0
IList
ÛÛ 
<
ÛÛ 
PlayerInMatch
ÛÛ 
>
ÛÛ  
playersInMatch
ÛÛ! /
=
ÛÛ0 1
	gameMatch
ÛÛ2 ;
.
ÛÛ; <(
GetPlayersConnectedToMatch
ÛÛ< V
(
ÛÛV W
)
ÛÛW X
;
ÛÛX Y
PlayerInMatch
ÙÙ "
playerWithActiveTurn
ÙÙ .
=
ÙÙ/ 0
	gameMatch
ÙÙ1 :
.
ÙÙ: ;$
GetPlyerWithActiveTurn
ÙÙ; Q
(
ÙÙQ R
)
ÙÙR S
;
ÙÙS T
PlayerInMatch
ıı 
leavePlayer
ıı %
=
ıı& '
	gameMatch
ıı( 1
.
ıı1 2
	GetPlayer
ıı2 ;
(
ıı; <
username
ıı< D
)
ııD E
;
ııE F
if
˜˜ 
(
˜˜ "
playerWithActiveTurn
˜˜ $
.
˜˜$ %
Username
˜˜% -
.
˜˜- .
Equals
˜˜. 4
(
˜˜4 5
username
˜˜5 =
)
˜˜= >
)
˜˜> ?
{
¯¯ 
leavePlayer
˘˘ 
=
˘˘ "
playerWithActiveTurn
˘˘ 2
;
˘˘2 3
int
˙˙ *
indexOfPlayerWithCurrentTurn
˙˙ 0
=
˙˙1 2
	gameMatch
˙˙3 <
.
˙˙< =(
GetPlayersConnectedToMatch
˙˙= W
(
˙˙W X
)
˙˙X Y
.
˙˙Y Z
IndexOf
˙˙Z a
(
˙˙a b"
playerWithActiveTurn
˙˙b v
)
˙˙v w
;
˙˙w x*
indexOfPlayerWithCurrentTurn
˚˚ ,
=
˚˚- .

ChangeTurn
˚˚/ 9
(
˚˚9 :
	gameMatch
˚˚: C
,
˚˚C D*
indexOfPlayerWithCurrentTurn
˚˚E a
)
˚˚a b
;
˚˚b c
PlayerInMatch
˝˝ 

nextPlayer
˝˝ (
=
˝˝) *
	gameMatch
˝˝+ 4
.
˝˝4 5(
GetPlayersConnectedToMatch
˝˝5 O
(
˝˝O P
)
˝˝P Q
[
˝˝Q R*
indexOfPlayerWithCurrentTurn
˝˝R n
]
˝˝n o
;
˝˝o p"
playerWithActiveTurn
˛˛ $
.
˛˛$ %
HasActiveTurn
˛˛% 2
=
˛˛3 4
false
˛˛5 :
;
˛˛: ;

nextPlayer
ˇˇ 
.
ˇˇ 
HasActiveTurn
ˇˇ (
=
ˇˇ) *
true
ˇˇ+ /
;
ˇˇ/ 0
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
playerInMatch
ÅÅ *
in
ÅÅ+ -
playersInMatch
ÅÅ. <
)
ÅÅ< =
{
ÇÇ 
playerInMatch
ÉÉ !
.
ÉÉ! "$
MatchServiceConnection
ÉÉ" 8
.
ÉÉ8 9"
EndTurnOfExpelPlayer
ÉÉ9 M
(
ÉÉM N

nextPlayer
ÉÉN X
.
ÉÉX Y
Username
ÉÉY a
)
ÉÉa b
;
ÉÉb c
}
ÑÑ 
}
ÖÖ 
IList
áá 
<
áá 
int
áá 
>
áá 
cardsUncovered
áá %
=
áá& '
leavePlayer
áá( 3
.
áá3 4
GetUncoveredCards
áá4 E
(
ááE F
)
ááF G
;
ááG H
foreach
àà 
(
àà 
var
àà 
playerConnected
àà (
in
àà) +
playersInMatch
àà, :
)
àà: ;
{
ââ 
var
ää 
channel
ää 
=
ää 
playerConnected
ää -
.
ää- .$
MatchServiceConnection
ää. D
;
ääD E
channel
ãã 
.
ãã $
NotifyPlayerLeaveMatch
ãã .
(
ãã. /
username
ãã/ 7
,
ãã7 8
cardsUncovered
ãã9 G
)
ããG H
;
ããH I
}
åå 
RemovePairs
éé 
(
éé 
	gameMatch
éé !
,
éé! "
cardsUncovered
éé# 1
)
éé1 2
;
éé2 3
	gameMatch
èè 
.
èè 
RemovePlayer
èè "
(
èè" #
username
èè# +
)
èè+ ,
;
èè, -
if
ëë 
(
ëë 
playersInMatch
ëë 
.
ëë 
Count
ëë $
==
ëë% '
$num
ëë( )
)
ëë) *
{
íí 
this
ìì 
.
ìì !
NotifyMatchHasEnded
ìì (
(
ìì( )
host
ìì) -
)
ìì- .
;
ìì. /
}
îî 
}
ïï 	
public
ùù 
void
ùù 
ExpelPlayer
ùù 
(
ùù  
ExpelVoteDto
ùù  ,
	expelVote
ùù- 6
)
ùù6 7
{
ûû 	
string
üü 
host
üü 
=
üü 
	expelVote
üü #
.
üü# $
Host
üü$ (
;
üü( )
MatchDto
†† 
	gameMatch
†† 
=
††  
GetMatch
††! )
(
††) *
host
††* .
)
††. /
;
††/ 0
string
°° #
usernameOfExpelPlayer
°° (
=
°°) *
	expelVote
°°+ 4
.
°°4 5#
UsernameOfExpelPlayer
°°5 J
;
°°J K
int
££ 
playerExpelVotes
££  
=
££! "
	gameMatch
££# ,
.
££, -
AddExpelVote
££- 9
(
££9 :#
usernameOfExpelPlayer
££: O
)
££O P
;
££P Q
PlayerInMatch
§§ 
voterPlayer
§§ %
=
§§& '
	gameMatch
§§( 1
.
§§1 2
	GetPlayer
§§2 ;
(
§§; <
	expelVote
§§< E
.
§§E F#
UsernameOfVoterPlayer
§§F [
)
§§[ \
;
§§\ ]
voterPlayer
•• 
.
•• 
AddPlayerVoted
•• &
(
••& '#
usernameOfExpelPlayer
••' <
)
••< =
;
••= >
IList
ßß 
<
ßß 
PlayerInMatch
ßß 
>
ßß  
playersInMatch
ßß! /
=
ßß0 1
	gameMatch
ßß2 ;
.
ßß; <(
GetPlayersConnectedToMatch
ßß< V
(
ßßV W
)
ßßW X
;
ßßX Y
int
®® 
numOfPlayers
®® 
=
®® 
playersInMatch
®® -
.
®®- .
Count
®®. 3
;
®®3 4
if
™™ 
(
™™ 
playerExpelVotes
™™  
>
™™! "
(
™™# $
numOfPlayers
™™$ 0
/
™™1 2
$num
™™3 4
)
™™4 5
)
™™5 6
{
´´ 
PlayerInMatch
¨¨ "
playerWithActiveTurn
¨¨ 2
=
¨¨3 4
	gameMatch
¨¨5 >
.
¨¨> ?$
GetPlyerWithActiveTurn
¨¨? U
(
¨¨U V
)
¨¨V W
;
¨¨W X
PlayerInMatch
≠≠ 
expelPlayer
≠≠ )
=
≠≠* +
	gameMatch
≠≠, 5
.
≠≠5 6
	GetPlayer
≠≠6 ?
(
≠≠? @#
usernameOfExpelPlayer
≠≠@ U
)
≠≠U V
;
≠≠V W
if
ØØ 
(
ØØ "
playerWithActiveTurn
ØØ (
.
ØØ( )
Username
ØØ) 1
.
ØØ1 2
Equals
ØØ2 8
(
ØØ8 9#
usernameOfExpelPlayer
ØØ9 N
)
ØØN O
)
ØØO P
{
∞∞ 
expelPlayer
±± 
=
±±  !"
playerWithActiveTurn
±±" 6
;
±±6 7
int
≤≤ *
indexOfPlayerWithCurrentTurn
≤≤ 4
=
≤≤5 6
	gameMatch
≤≤7 @
.
≤≤@ A(
GetPlayersConnectedToMatch
≤≤A [
(
≤≤[ \
)
≤≤\ ]
.
≤≤] ^
IndexOf
≤≤^ e
(
≤≤e f"
playerWithActiveTurn
≤≤f z
)
≤≤z {
;
≤≤{ |*
indexOfPlayerWithCurrentTurn
≥≥ 0
=
≥≥1 2

ChangeTurn
≥≥3 =
(
≥≥= >
	gameMatch
≥≥> G
,
≥≥G H*
indexOfPlayerWithCurrentTurn
≥≥I e
)
≥≥e f
;
≥≥f g
PlayerInMatch
µµ !

nextPlayer
µµ" ,
=
µµ- .
	gameMatch
µµ/ 8
.
µµ8 9(
GetPlayersConnectedToMatch
µµ9 S
(
µµS T
)
µµT U
[
µµU V*
indexOfPlayerWithCurrentTurn
µµV r
]
µµr s
;
µµs t"
playerWithActiveTurn
∂∂ (
.
∂∂( )
HasActiveTurn
∂∂) 6
=
∂∂7 8
false
∂∂9 >
;
∂∂> ?

nextPlayer
∑∑ 
.
∑∑ 
HasActiveTurn
∑∑ ,
=
∑∑- .
true
∑∑/ 3
;
∑∑3 4
foreach
ππ 
(
ππ 
var
ππ  
playerInMatch
ππ! .
in
ππ/ 1
playersInMatch
ππ2 @
)
ππ@ A
{
∫∫ 
playerInMatch
ªª %
.
ªª% &$
MatchServiceConnection
ªª& <
.
ªª< ="
EndTurnOfExpelPlayer
ªª= Q
(
ªªQ R

nextPlayer
ªªR \
.
ªª\ ]
Username
ªª] e
)
ªªe f
;
ªªf g
}
ºº 
}
ΩΩ 
IList
øø 
<
øø 
int
øø 
>
øø 
cardsUncovered
øø )
=
øø* +
expelPlayer
øø, 7
.
øø7 8
GetUncoveredCards
øø8 I
(
øøI J
)
øøJ K
;
øøK L
foreach
¿¿ 
(
¿¿ 
var
¿¿ 
playerConnected
¿¿ ,
in
¿¿- /
playersInMatch
¿¿0 >
)
¿¿> ?
{
¡¡ 
var
¬¬ 
channel
¬¬ 
=
¬¬  !
playerConnected
¬¬" 1
.
¬¬1 2$
MatchServiceConnection
¬¬2 H
;
¬¬H I
channel
√√ 
.
√√ "
NotifyPlayerWasExpel
√√ 0
(
√√0 1#
usernameOfExpelPlayer
√√1 F
,
√√F G
cardsUncovered
√√H V
)
√√V W
;
√√W X
}
ƒƒ 
RemovePairs
∆∆ 
(
∆∆ 
	gameMatch
∆∆ %
,
∆∆% &
cardsUncovered
∆∆' 5
)
∆∆5 6
;
∆∆6 7
	gameMatch
«« 
.
«« 
RemovePlayer
«« &
(
««& '#
usernameOfExpelPlayer
««' <
)
««< =
;
««= >
if
…… 
(
…… 
playersInMatch
…… "
.
……" #
Count
……# (
==
……) +
$num
……, -
)
……- .
{
   
this
ÀÀ 
.
ÀÀ !
NotifyMatchHasEnded
ÀÀ ,
(
ÀÀ, -
host
ÀÀ- 1
)
ÀÀ1 2
;
ÀÀ2 3
}
ÃÃ 
}
ŒŒ 
}
œœ 	
public
÷÷ 
IList
÷÷ 
<
÷÷ 
string
÷÷ 
>
÷÷ 3
%GetUsernamesOfPlayersConnectedToMatch
÷÷ B
(
÷÷B C
string
÷÷C I
host
÷÷J N
)
÷÷N O
{
◊◊ 	
MatchDto
ÿÿ 
	gameMatch
ÿÿ 
=
ÿÿ  
GetMatch
ÿÿ! )
(
ÿÿ) *
host
ÿÿ* .
)
ÿÿ. /
;
ÿÿ/ 0
IList
⁄⁄ 
<
⁄⁄ 
string
⁄⁄ 
>
⁄⁄ 
playerUsername
⁄⁄ (
=
⁄⁄) *
	gameMatch
⁄⁄+ 4
.
⁄⁄4 53
%GetUsernamesOfPlayersConnectedToMatch
⁄⁄5 Z
(
⁄⁄Z [
)
⁄⁄[ \
;
⁄⁄\ ]
return
‹‹ 
playerUsername
‹‹ !
;
‹‹! "
}
›› 	
public
ÂÂ 
IList
ÂÂ 
<
ÂÂ 
string
ÂÂ 
>
ÂÂ 
GetPlayersVoted
ÂÂ ,
(
ÂÂ, -
string
ÂÂ- 3
host
ÂÂ4 8
,
ÂÂ8 9
string
ÂÂ: @
username
ÂÂA I
)
ÂÂI J
{
ÊÊ 	
MatchDto
ÁÁ 
	gameMatch
ÁÁ 
=
ÁÁ  
GetMatch
ÁÁ! )
(
ÁÁ) *
host
ÁÁ* .
)
ÁÁ. /
;
ÁÁ/ 0
PlayerInMatch
ÈÈ 
player
ÈÈ  
=
ÈÈ! "
	gameMatch
ÈÈ# ,
.
ÈÈ, -
	GetPlayer
ÈÈ- 6
(
ÈÈ6 7
username
ÈÈ7 ?
)
ÈÈ? @
;
ÈÈ@ A
IList
ÍÍ 
<
ÍÍ 
string
ÍÍ 
>
ÍÍ 
playersVoted
ÍÍ &
=
ÍÍ' (
player
ÍÍ) /
.
ÍÍ/ 0
GetPlayersVoted
ÍÍ0 ?
(
ÍÍ? @
)
ÍÍ@ A
;
ÍÍA B
return
ÏÏ 
playersVoted
ÏÏ 
;
ÏÏ  
}
ÌÌ 	
public
ıı 
int
ıı 

ChangeTurn
ıı 
(
ıı 
MatchDto
ıı &
	gameMatch
ıı' 0
,
ıı0 1
int
ıı2 5*
indexOfPlayerWithCurrentTurn
ıı6 R
)
ııR S
{
ˆˆ 	
if
˜˜ 
(
˜˜ *
indexOfPlayerWithCurrentTurn
˜˜ ,
==
˜˜- /
(
˜˜0 1
	gameMatch
˜˜1 :
.
˜˜: ;(
GetPlayersConnectedToMatch
˜˜; U
(
˜˜U V
)
˜˜V W
.
˜˜W X
Count
˜˜X ]
-
˜˜^ _
$num
˜˜` a
)
˜˜a b
)
˜˜b c
{
¯¯ *
indexOfPlayerWithCurrentTurn
˘˘ ,
=
˘˘- .
$num
˘˘/ 0
;
˘˘0 1
}
˙˙ 
else
˚˚ 
{
¸¸ *
indexOfPlayerWithCurrentTurn
˝˝ ,
++
˝˝, .
;
˝˝. /
}
˛˛ 
return
ÄÄ *
indexOfPlayerWithCurrentTurn
ÄÄ /
;
ÄÄ/ 0
}
ÅÅ 	
public
ââ 
void
ââ 
RemovePairs
ââ 
(
ââ  
MatchDto
ââ  (
	gameMatch
ââ) 2
,
ââ2 3
IList
ââ4 9
<
ââ9 :
int
ââ: =
>
ââ= >
cardsUncovered
ââ? M
)
ââM N
{
ää 	
if
ãã 
(
ãã 
(
ãã 
cardsUncovered
ãã 
.
ãã  
Count
ãã  %
%
ãã& '
$num
ãã( )
)
ãã) *
==
ãã+ -
$num
ãã. /
)
ãã/ 0
{
åå 
	gameMatch
çç 
.
çç 

TotalPairs
çç $
=
çç% &
	gameMatch
çç' 0
.
çç0 1

TotalPairs
çç1 ;
-
çç< =
(
çç> ?
cardsUncovered
çç? M
.
ççM N
Count
ççN S
/
ççT U
$num
ççV W
)
ççW X
;
ççX Y
}
éé 
else
èè 
{
êê 
	gameMatch
ëë 
.
ëë 

TotalPairs
ëë $
=
ëë% &
	gameMatch
ëë' 0
.
ëë0 1

TotalPairs
ëë1 ;
-
ëë< =
(
ëë> ?
(
ëë? @
cardsUncovered
ëë@ N
.
ëëN O
Count
ëëO T
-
ëëU V
$num
ëëW X
)
ëëX Y
/
ëëZ [
$num
ëë\ ]
)
ëë] ^
;
ëë^ _
}
íí 
}
ìì 	
}
îî 
}ïï ü
]C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MemoryGameService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
[

 
ServiceBehavior

 
(

 
InstanceContextMode

 (
=

) *
InstanceContextMode

+ >
.

> ?

PerSession

? I
,

I J
ConcurrencyMode 
= 
ConcurrencyMode )
.) *
Single* 0
)0 1
]1 2
public 

partial 
class 
MemoryGameService *
{ 
private 
static 
IList 
< 
MatchDto %
>% &
_matches' /
=0 1
new2 5
List6 :
<: ;
MatchDto; C
>C D
(D E
)E F
;F G
public 
MemoryGameService  
(  !
)! "
{# $
}% &
} 
} ê8
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\PlayerRegistryService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public!! 

partial!! 
class!! 
MemoryGameService!! *
:!!+ ,"
IPlayerRegistryService!!- C
{"" 
public++ 
bool++ 
RegisterNewPlayer++ %
(++% &
	PlayerDTO++& /
	playerDTO++0 9
,++9 :
string++; A
salt++B F
)++F G
{,, 	
Account.. 

newAccount.. 
=..  
new..! $
Account..% ,
(.., -
)..- .
{// 
EmailAddress00 
=00 
	playerDTO00 (
.00( )
EmailAddress00) 5
,005 6
Username11 
=11 
	playerDTO11 $
.11$ %
Username11% -
,11- .
Password22 
=22 
	playerDTO22 $
.22$ %
Password22% -
,22- .
Salt33 
=33 
salt33 
,33 
EmailWasVerified44  
=44! "
false44# (
,44( )
ActivationToken55 
=55  !
	playerDTO55" +
.55+ ,
VerificationToken55, =
}66 
;66 
Player88 
	newPlayer88 
=88 
new88 "
Player88# )
(88) *
)88* +
{99 
EmailAddress:: 
=:: 

newAccount:: )
.::) *
EmailAddress::* 6
,::6 7
Score;; 
=;; 
$num;; 
}<< 
;<< 
MemoryGameContext== 
memoryGameContext== /
===0 1
new==2 5
MemoryGameContext==6 G
(==G H
)==H I
;==I J

UnitOfWork>> 

unitOfWork>> !
=>>" #
new>>$ '

UnitOfWork>>( 2
(>>2 3
memoryGameContext>>3 D
)>>D E
;>>E F
try?? 
{@@ 

unitOfWorkAA 
.AA 
AccountsAA #
.AA# $
AddAA$ '
(AA' (

newAccountAA( 2
)AA2 3
;AA3 4

unitOfWorkBB 
.BB 
PlayersBB "
.BB" #
AddBB# &
(BB& '
	newPlayerBB' 0
)BB0 1
;BB1 2
intCC 
rowsAffectedCC  
=CC! "

unitOfWorkCC# -
.CC- .
CompleteCC. 6
(CC6 7
)CC7 8
;CC8 9
returnDD 
rowsAffectedDD #
>DD$ %
$numDD& '
;DD' (
}EE 
catchFF 
(FF 
SqlExceptionFF 
sqlExceptionFF  ,
)FF, -
{GG 
_loggerHH 
.HH 
FatalHH 
(HH 
sqlExceptionHH *
)HH* +
;HH+ ,
throwII 
;II 
}JJ 
catchKK 
(KK 
EntityExceptionKK "
entityExceptionKK# 2
)KK2 3
{LL 
_loggerMM 
.MM 
FatalMM 
(MM 
entityExceptionMM -
)MM- .
;MM. /
throwNN 
;NN 
}OO 
finallyPP 
{QQ 

unitOfWorkRR 
.RR 
DisposeRR "
(RR" #
)RR# $
;RR$ %
}SS 
}TT 	
public\\ 
bool\\ #
EmailAddressIsAvailable\\ +
(\\+ ,
string\\, 2
emailAddress\\3 ?
)\\? @
{]] 	

UnitOfWork^^ 

unitOfWork^^ !
=^^" #
new^^$ '

UnitOfWork^^( 2
(^^2 3
new^^3 6
MemoryGameContext^^7 H
(^^H I
)^^I J
)^^J K
;^^K L
try__ 
{`` 
Accountaa /
#accountWithTheSpecifiedEmailAddressaa ;
=aa< =

unitOfWorkaa> H
.aaH I
AccountsaaI Q
.aaQ R
GetaaR U
(aaU V
emailAddressaaV b
)aab c
;aac d
ifbb 
(bb /
#accountWithTheSpecifiedEmailAddressbb 7
==bb8 :
nullbb; ?
)bb? @
{cc 
returndd 
truedd 
;dd  
}ee 
returnff 
falseff 
;ff 
}gg 
catchhh 
(hh 
SqlExceptionhh 
sqlExceptionhh  ,
)hh, -
{ii 
_loggerjj 
.jj 
Fataljj 
(jj 
sqlExceptionjj *
)jj* +
;jj+ ,
throwkk 
;kk 
}ll 
catchmm 
(mm 
EntityExceptionmm "
entityExceptionmm# 2
)mm2 3
{nn 
_loggeroo 
.oo 
Fataloo 
(oo 
entityExceptionoo -
)oo- .
;oo. /
throwpp 
;pp 
}qq 
finallyrr 
{ss 

unitOfWorktt 
.tt 
Disposett "
(tt" #
)tt# $
;tt$ %
}uu 
}vv 	
public~~ 
bool~~ 
UserNameIsAvailable~~ '
(~~' (
string~~( .
username~~/ 7
)~~7 8
{ 	

UnitOfWork
ÄÄ 

unitOfWork
ÄÄ !
=
ÄÄ" #
new
ÄÄ$ '

UnitOfWork
ÄÄ( 2
(
ÄÄ2 3
new
ÄÄ3 6
MemoryGameContext
ÄÄ7 H
(
ÄÄH I
)
ÄÄI J
)
ÄÄJ K
;
ÄÄK L
try
ÅÅ 
{
ÇÇ 
Account
ÉÉ -
accountWithTheSpecifiedUsername
ÉÉ 7
=
ÉÉ8 9

unitOfWork
ÉÉ: D
.
ÉÉD E
Accounts
ÉÉE M
.
ÉÉM N 
FindFirstOccurence
ÉÉN `
(
ÉÉ` a
account
ÉÉa h
=>
ÉÉi k
account
ÉÉl s
.
ÉÉs t
Username
ÉÉt |
==
ÉÉ} 
usernameÉÉÄ à
)ÉÉà â
;ÉÉâ ä
if
ÑÑ 
(
ÑÑ -
accountWithTheSpecifiedUsername
ÑÑ 3
==
ÑÑ4 6
null
ÑÑ7 ;
)
ÑÑ; <
{
ÖÖ 
return
ÜÜ 
true
ÜÜ 
;
ÜÜ  
}
áá 
return
àà 
false
àà 
;
àà 
}
ââ 
catch
ää 
(
ää 
SqlException
ää 
sqlException
ää  ,
)
ää, -
{
ãã 
_logger
åå 
.
åå 
Fatal
åå 
(
åå 
sqlException
åå *
)
åå* +
;
åå+ ,
throw
çç 
;
çç 
}
éé 
catch
èè 
(
èè 
EntityException
èè "
entityException
èè# 2
)
èè2 3
{
êê 
_logger
ëë 
.
ëë 
Fatal
ëë 
(
ëë 
entityException
ëë -
)
ëë- .
;
ëë. /
throw
íí 
;
íí 
}
ìì 
finally
îî 
{
ïï 

unitOfWork
ññ 
.
ññ 
Dispose
ññ "
(
ññ" #
)
ññ# $
;
ññ$ %
}
óó 
}
òò 	
}
õõ 
}úú Ù
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\ScoreService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
IScoreService- :
{ 
List## 
<## 
PlayerScoreDTO## 
>## 
IScoreService## *
.##* +#
GetPlayersWithBestScore##+ B
(##B C
int##C F(
numberOfPlayersToBeRetrieved##G c
)##c d
{$$ 	

UnitOfWork%% 

unitOfWork%% !
=%%" #
new%%$ '

UnitOfWork%%( 2
(%%2 3
new%%3 6
MemoryGameContext%%7 H
(%%H I
)%%I J
)%%J K
;%%K L
try&& 
{'' 
IEnumerable(( 
<(( 
Account(( #
>((# $
accountEntities((% 4
=((5 6

unitOfWork((7 A
.((A B
Accounts((B J
.((J K-
!GetNumberOfAccountsWithPlayerInfo((K l
(((l m)
numberOfPlayersToBeRetrieved	((m â
)
((â ä
;
((ä ã
List)) 
<)) 
PlayerScoreDTO)) #
>))# $!
playersWithBestScores))% :
=)); <
new))= @
List))A E
<))E F
PlayerScoreDTO))F T
>))T U
())U V
)))V W
;))W X
foreach++ 
(++ 
var++ 
account++ #
in++$ &
accountEntities++' 6
)++6 7
{,, 
PlayerScoreDTO-- "
playerScore--# .
=--/ 0
new--1 4
PlayerScoreDTO--5 C
(--C D
)--D E
{.. 
Username//  
=//! "
account//# *
.//* +
Username//+ 3
,//3 4

TotalScore00 "
=00# $
account00% ,
.00, -
Player00- 3
.003 4
Score004 9
}11 
;11 !
playersWithBestScores22 )
.22) *
Add22* -
(22- .
playerScore22. 9
)229 :
;22: ;
}33 
return55 !
playersWithBestScores55 ,
;55, -
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
;99+ ,
throw:: 
;:: 
};; 
catch<< 
(<< 
EntityException<< "
entityException<<# 2
)<<2 3
{== 
_logger>> 
.>> 
Fatal>> 
(>> 
entityException>> -
)>>- .
;>>. /
throw?? 
;?? 
}@@ 
finallyAA 
{BB 

unitOfWorkCC 
.CC 
DisposeCC "
(CC" #
)CC# $
;CC$ %
}DD 
}EE 	
}FF 
}GG †	
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\TokenGenerator.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
ITokenGenerator- <
{ 
public 
string 
GenerateToken #
(# $
int$ '
length( .
). /
{ 	
string 
token 
= 
Guid 
.  
NewGuid  '
(' (
)( )
.) *
ToString* 2
(2 3
)3 4
;4 5
token 
= 
token 
. 
Replace !
(! "
$str" %
,% &
$str' )
)) *
;* +
token 
= 
token 
. 
	Substring #
(# $
$num$ %
,% &
length' -
)- .
;. /
return 
token 
; 
} 	
} 
}   ∆
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
} ¶
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
private 
TextPart 
_message !
;! "
private 
MimeMessage 
_content $
;$ %
private 
readonly 
MailboxAddress '
_sender( /
;/ 0
private 
MailboxAddress 
	_receiver (
;( )
private 
string 
_subject 
;  
private 

SmtpClient 
_client "
;" #
private 
readonly 
log4net  
.  !
ILog! %
_logger& -
=. /
log4net0 7
.7 8

LogManager8 B
.B C
	GetLoggerC L
(L M
$strM ^
)^ _
;_ `
public 
MailTemplate 
( 
) 
{ 	
_message 
= 
new 
TextPart #
(# $
$str$ +
)+ ,
;, -
_content 
= 
new 
MimeMessage &
(& '
)' (
;( )
_client 
= 
new 

SmtpClient $
($ %
)% &
;& '
var 
sender 
= 
new 
MailboxAddress +
(+ ,
$str, G
,G H
$strI [
)[ \
;\ ]
_content 
. 
From 
. 
Add 
( 
sender $
)$ %
;% &
_sender 
= 
new 
MailboxAddress (
(( )
$str) 9
,9 :
$str; V
)V W
;W X
} 	
public%% 
void%% 
SetReceiver%% 
(%%  
string%%  &
name%%' +
,%%+ ,
string%%- 3
emailAddress%%4 @
)%%@ A
{&& 	
	_receiver'' 
='' 
new'' 
MailboxAddress'' *
(''* +
name''+ /
,''/ 0
emailAddress''1 =
)''= >
;''> ?
_content(( 
.(( 
To(( 
.(( 
Add(( 
((( 
	_receiver(( %
)((% &
;((& '
})) 	
public00 
void00 

SetMessage00 
(00 
string00 %
subject00& -
,00- .
string00/ 5
message006 =
)00= >
{11 	
_message22 
.22 
Text22 
=22 
message22 #
;22# $
_subject33 
=33 
subject33 
;33 
_content44 
.44 
Body44 
=44 
_message44 $
;44$ %
_content55 
.55 
Subject55 
=55 
subject55 &
;55& '
}66 	
public;; 
void;; 
Send;; 
(;; 
);; 
{<< 	
_client== 
.== 
Connect== 
(== 
$str== ,
,==, -
$num==. 1
,==1 2
false==3 8
)==8 9
;==9 :
_client>> 
.>> 
Authenticate>>  
(>>  !
$str>>! <
,>>< =
$str>>> P
)>>P Q
;>>Q R
_client?? 
.?? 
Send?? 
(?? 
_content?? !
)??! "
;??" #
_client@@ 
.@@ 

Disconnect@@ 
(@@ 
true@@ #
)@@# $
;@@$ %
}AA 	
}BB 
}CC 