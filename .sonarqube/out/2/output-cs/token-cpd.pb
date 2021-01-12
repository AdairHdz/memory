�
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
} �
hC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IAccountVerificationService.cs
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
	interface '
IAccountVerificationService 0
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
bool  
SetAccountAsVerified !
(! "
string" (
emailAddress) 5
)5 6
;6 7
[ 	
OperationContract	 
] 
bool $
AssignNewActivationToken %
(% &
string& ,
emailAddress- 9
,9 :
string; A
activationTokenB Q
)Q R
;R S
[ 	
OperationContract	 
] 
bool "
AssignNewRecoveryToken #
(# $
string$ *
emailAddress+ 7
,7 8
string9 ?
recoveryToken@ M
)M N
;N O
[ 	
OperationContract	 
] 
bool !
VerifyActivationToken "
(" #
string# )
emailAddress* 6
,6 7
string8 >
activationToken? N
)N O
;O P
[ 	
OperationContract	 
] 
bool 
VerifyRecoveryToken  
(  !
string! '
emailAddress( 4
,4 5
string6 <
activationToken= L
)L M
;M N
} 
} �
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
} �
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\ILobbyService.cs
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
}   �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IMatchCreationService.cs
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
} �
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
} �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckDTO.cs
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
}'' �
fC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardDeckInfoDto.cs
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
} �
^C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardDto.cs
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
} �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\CardPairDto.cs
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
} �
cC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\ExpelVoteDto.cs
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
} �F
_C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\MatchDto.cs
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
�� 	
PlayerInMatch
�� 
playerRetrieved
�� )
=
��* +
null
��, 0
;
��0 1
foreach
�� 
(
�� 
var
�� 
player
�� 
in
�� !
_players
��" *
)
��* +
{
�� 
if
�� 
(
�� 
player
�� 
.
�� 
Username
�� #
.
��# $
Equals
��$ *
(
��* +
username
��+ 3
)
��3 4
)
��4 5
{
�� 
return
�� 
player
�� !
;
��! "
}
�� 
}
�� 
return
�� 
playerRetrieved
�� "
;
��" #
}
�� 	
public
�� 
void
�� 

StartMatch
�� 
(
�� 
)
��  
{
�� 	
IList
�� 
<
�� 
PlayerInLobby
�� 
>
��  %
playersConnectedToLobby
��! 8
=
��9 :
Lobby
��; @
.
��@ A(
GetPlayersConnectedToLobby
��A [
(
��[ \
)
��\ ]
;
��] ^
IList
�� 
<
�� 
string
�� 
>
�� 0
"usernamesOfPlayersConnectedToLobby
�� <
=
��= >
Lobby
��? D
.
��D E3
%GetUsernamesOfPlayersConnectedToLobby
��E j
(
��j k
)
��k l
;
��l m
foreach
�� 
(
�� 
var
�� 
playerInLobby
�� &
in
��' )%
playersConnectedToLobby
��* A
)
��A B
{
�� 
var
�� 
channel
�� 
=
�� 
playerInLobby
�� +
.
��+ ,

Connection
��, 6
;
��6 7
channel
�� 
.
�� $
TakePlayersToMatchView
�� .
(
��. /0
"usernamesOfPlayersConnectedToLobby
��/ Q
)
��Q R
;
��R S
}
�� 

HasStarted
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
PlayerInMatch
�� $
GetPlayerWithBestScore
�� 3
(
��3 4
)
��4 5
{
�� 	
PlayerInMatch
�� !
playerWithBestScore
�� -
=
��. /
_players
��0 8
[
��8 9
$num
��9 :
]
��: ;
;
��; <
for
�� 
(
�� 
int
�� 
currentIndex
��  
=
��! "
$num
��# $
;
��$ %
currentIndex
��& 2
<
��3 4
_players
��5 =
.
��= >
Count
��> C
-
��D E
$num
��F G
;
��G H
currentIndex
��I U
++
��U W
)
��W X
{
�� 
if
�� 
(
�� !
playerWithBestScore
�� &
.
��& '
Score
��' ,
<
��- .
_players
��/ 7
[
��7 8
currentIndex
��8 D
+
��E F
$num
��G H
]
��H I
.
��I J
Score
��J O
)
��O P
{
�� !
playerWithBestScore
�� '
=
��( )
_players
��* 2
[
��2 3
currentIndex
��3 ?
+
��@ A
$num
��B C
]
��C D
;
��D E
}
�� 
}
�� 
return
�� !
playerWithBestScore
�� &
;
��& '
}
�� 	
public
�� 
int
�� 
AddExpelVote
�� 
(
��  
string
��  &
playerUsername
��' 5
)
��5 6
{
�� 	
int
�� 
playerExpelVotes
��  
=
��! "
$num
��# $
;
��$ %
foreach
�� 
(
�� 
var
�� 
player
�� 
in
��  "
_players
��# +
)
��+ ,
{
�� 
if
�� 
(
�� 
player
�� 
.
�� 
Username
�� #
.
��# $
Equals
��$ *
(
��* +
playerUsername
��+ 9
)
��9 :
)
��: ;
{
�� 
player
�� 
.
�� 
ExpulsionVotes
�� )
++
��) +
;
��+ ,
playerExpelVotes
�� $
=
��% &
player
��' -
.
��- .
ExpulsionVotes
��. <
;
��< =
}
�� 
}
�� 
return
�� 
playerExpelVotes
�� #
;
��# $
}
�� 	
public
�� 
void
�� 
RemovePlayer
��  
(
��  !
string
��! '
playerUsername
��( 6
)
��6 7
{
�� 	
PlayerInMatch
�� 
playerToRemove
�� (
=
��) *
this
��+ /
.
��/ 0
	GetPlayer
��0 9
(
��9 :
playerUsername
��: H
)
��H I
;
��I J
_players
�� 
.
�� 
Remove
�� 
(
�� 
playerToRemove
�� *
)
��* +
;
��+ ,
}
�� 	
public
�� 
PlayerInMatch
�� $
GetPlyerWithActiveTurn
�� 3
(
��3 4
)
��4 5
{
�� 	
PlayerInMatch
�� "
playerWithActiveTurn
�� .
=
��/ 0
null
��1 5
;
��5 6
foreach
�� 
(
�� 
var
�� 
player
�� 
in
��  "
_players
��# +
)
��+ ,
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
�� (
)
��( )
{
�� "
playerWithActiveTurn
�� (
=
��) *
player
��+ 1
;
��1 2
}
�� 
}
�� 
return
�� "
playerWithActiveTurn
�� '
;
��' (
}
�� 	
}
�� 
}�� �
yC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PasswordModificationCredentialsDto.cs
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
} �
dC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInLobby.cs
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
} �,
\C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\Lobby.cs
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
�� 
var
�� 
channel
�� 
=
�� 
playerInLobby
�� +
.
��+ ,

Connection
��, 6
;
��6 7
channel
�� 
.
�� 
NotifyPlayerLeft
�� (
(
��( )
username
��) 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
void
�� )
NotifyNewPlayerEnteredLobby
�� /
(
��/ 0
string
��0 6
username
��7 ?
)
��? @
{
�� 	
foreach
�� 
(
�� 
var
�� 
playerInLobby
�� &
in
��' )&
_playersConnectedToLobby
��* B
)
��B C
{
�� 
var
�� 
channel
�� 
=
�� 
playerInLobby
�� +
.
��+ ,

Connection
��, 6
;
��6 7
channel
�� 
.
�� $
NotifyNewPlayerEntered
�� .
(
��. /
username
��/ 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
}
�� 
}�� �
kC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerCredentialsDTO.cs
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
} �	
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerDTO.cs
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
}!! �
dC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerInMatch.cs
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
}vv �
eC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerScoreDTO.cs
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
} �
hC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\PlayerMovementDto.cs
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
} �
cC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\DataTransferObjects\TokenInfoDto.cs
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
} �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Contracts\IAccessibilityService.cs
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
[II 	
OperationContractII	 
]II 
stringJJ 
GetUserEmailAddressJJ "
(JJ" #
stringJJ# )
usernameJJ* 2
)JJ2 3
;JJ3 4
[TT 	
FaultContractTT	 
(TT 
typeofTT 
(TT  
NonExistentUserFaultTT 2
)TT2 3
)TT3 4
]TT4 5
[UU 	
OperationContractUU	 
]UU 
stringVV 
GetSaltVV 
(VV 
stringVV 
usernameVV &
)VV& '
;VV' (
[`` 	
OperationContract``	 
]`` 
boolaa 
HasAccessRightsaa 
(aa 
stringaa #
usernameaa$ ,
,aa, -
stringaa. 4
passwordaa5 =
)aa= >
;aa> ?
[hh 	
OperationContracthh	 
]hh 
stringii 
GetUsernameii 
(ii 
stringii !
emailAddressii" .
)ii. /
;ii/ 0
}jj 
}kk �
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
} �
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
" #
TokenInfoDto

# /!
verificationTokenInfo

0 E
)

E F
;

F G
} 
} �,
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
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\MatchAccessDeniedFault.cs
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
} �
^C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\NonExistentUserFault.cs
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
} �	
TC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Faults\TypedFault.cs
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
}(( �
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
]$$) *�g
_C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\AccesibilityService.cs
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
:+ ,!
IAccessibilityService- B
{ 
private 
readonly 
log4net  
.  !
ILog! %
_logger& -
=. /
log4net0 7
.7 8

LogManager8 B
.B C
	GetLoggerC L
(L M
$strM e
)e f
;f g
public 
string 
GetUserEmailAddress )
() *
string* 0
username1 9
)9 :
{ 	
var 

unitOfWork 
= 
new  

UnitOfWork! +
(+ ,
new, /
MemoryGameContext0 A
(A B
)B C
)C D
;D E
try 
{ 
Account 
accountRetrieved (
=) *

unitOfWork+ 5
.5 6
Accounts6 >
.> ?
FindFirstOccurence? Q
(Q R
accountR Y
=>Z \
account] d
.d e
Usernamee m
==n p
usernameq y
)y z
;z {
string 
emailAddress #
=$ %
accountRetrieved& 6
.6 7
EmailAddress7 C
;C D
return 
emailAddress #
;# $
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
$str ]
+^ _
$str F
+G H
$str   )
,  ) *
sqlException  + 7
)  7 8
;  8 9
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
$str%% k
+%%l m
$str&& j
+&&k l
$str'' 9
,''9 :
entityException''; J
)''J K
;''K L
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
public11 
string11 
GetUsername11 !
(11! "
string11" (
emailAddress11) 5
)115 6
{22 	
var33 

unitOfWork33 
=33 
new33  

UnitOfWork33! +
(33+ ,
new33, /
MemoryGameContext330 A
(33A B
)33B C
)33C D
;33D E
try44 
{55 
Account66 
accountRetrieved66 (
=66) *

unitOfWork66+ 5
.665 6
Accounts666 >
.66> ?
Get66? B
(66B C
emailAddress66C O
)66O P
;66P Q
return77 
accountRetrieved77 '
.77' (
Username77( 0
;770 1
}88 
catch99 
(99 
SqlException99 
sqlException99  ,
)99, -
{:: 
_logger;; 
.;; 
Fatal;; 
(;; 
$str;; ]
+;;^ _
$str<< _
+<<` a
$str== F
,==F G
sqlException==H T
)==T U
;==U V
throw>> 
;>> 
}?? 
catch@@ 
(@@ 
EntityException@@ "
entityException@@# 2
)@@2 3
{AA 
_loggerBB 
.BB 
FatalBB 
(BB 
$strBB k
+BBl m
$strCC j
+CCk l
$strDD 1
,DD1 2
entityExceptionDD3 B
)DDB C
;DDC D
throwEE 
;EE 
}FF 
finallyGG 
{HH 

unitOfWorkII 
.II 
DisposeII "
(II" #
)II# $
;II$ %
}JJ 
}KK 	
publicOO 
boolOO 

IsVerifiedOO 
(OO 
stringOO %
usernameOO& .
)OO. /
{PP 	
varQQ 

unitOfWorkQQ 
=QQ 
newQQ  

UnitOfWorkQQ! +
(QQ+ ,
newQQ, /
MemoryGameContextQQ0 A
(QQA B
)QQB C
)QQC D
;QQD E
tryRR 
{SS 
AccountTT 
accountRetrievedTT (
=TT) *

unitOfWorkTT+ 5
.TT5 6
AccountsTT6 >
.TT> ?
FindFirstOccurenceTT? Q
(TTQ R
accountTTR Y
=>TTZ \
accountTT] d
.TTd e
UsernameTTe m
==TTn p
usernameTTq y
&&TTz |
account	TT} �
.
TT� �
EmailWasVerified
TT� �
)
TT� �
;
TT� �
ifUU 
(UU 
accountRetrievedUU $
!=UU% '
nullUU( ,
)UU, -
{VV 
returnWW 
trueWW 
;WW  
}XX 
returnYY 
falseYY 
;YY 
}ZZ 
catch[[ 
([[ 
SqlException[[ 
sqlException[[  ,
)[[, -
{\\ 
_logger]] 
.]] 
Fatal]] 
(]] 
$str]] o
+]]p q
$str^^ p
+^^q r
$str__ 4
,__4 5
sqlException__6 B
)__B C
;__C D
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
(dd 
$strdd u
+ddv w
$stree _
+ee` a
$strff 0
,ff0 1
entityExceptionff2 A
)ffA B
;ffB C
throwgg 
;gg 
}hh 
finallyii 
{jj 

unitOfWorkkk 
.kk 
Disposekk "
(kk" #
)kk# $
;kk$ %
}ll 
}mm 	
publicpp 
boolpp 
ItsRegisteredpp !
(pp! "
stringpp" (
emailAddresspp) 5
)pp5 6
{qq 	
varrr 

unitOfWorkrr 
=rr 
newrr  

UnitOfWorkrr! +
(rr+ ,
newrr, /
MemoryGameContextrr0 A
(rrA B
)rrB C
)rrC D
;rrD E
tryss 
{tt 
Accountuu 
accountRetrieveduu (
=uu) *

unitOfWorkuu+ 5
.uu5 6
Accountsuu6 >
.uu> ?
Getuu? B
(uuB C
emailAddressuuC O
)uuO P
;uuP Q
ifvv 
(vv 
accountRetrievedvv $
!=vv% '
nullvv( ,
)vv, -
{ww 
returnxx 
truexx 
;xx  
}yy 
returnzz 
falsezz 
;zz 
}{{ 
catch|| 
(|| 
SqlException|| 
sqlException||  ,
)||, -
{}} 
_logger~~ 
.~~ 
Fatal~~ 
(~~ 
$str~~ o
+~~p q
$str e
,e f
sqlExceptiong s
)s t
;t u
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
$str
�� u
+
��v w
$str
�� _
+
��` a
$str
�� 3
,
��3 4
entityException
��5 D
)
��D E
;
��E F
throw
�� 
;
�� 
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
�� 
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
��> ?
new
��? B"
NonExistentUserFault
��C W
(
��W X
)
��X Y
{
�� 
Error
�� 
=
�� 
$str
�� [
,
��[ \
Details
�� 
=
�� 
$str
�� _
}
�� 
)
�� 
;
�� 
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
�� 
$str
�� n
+
��o p
$str
�� `
,
��` a
sqlException
��b n
)
��n o
;
��o p
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� !
entityException
��" 1
)
��1 2
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
$str
�� u
+
��v w
$str
�� _
+
��` a
$str
�� .
,
��. /
entityException
��0 ?
)
��? @
;
��@ A
throw
�� 
;
�� 
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
�� 
$str
�� 
+��� �
$str
�� Z
,
��Z [
sqlException
��\ h
)
��h i
;
��i j
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
$str
�� u
+
��v w
$str
�� _
+
��` a
$str
�� 6
,
��6 7
entityException
��8 G
)
��G H
;
��H I
throw
�� 
;
�� 
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
}�� �(
gC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\AccountModifiabilityService.cs
	namespace		 	
MemoryGameService		
 
.		 
Services		 $
{

 
public 

partial 
class 
MemoryGameService *
:+ ,(
IAccountModifiabilityService- I
{ 
public$$ 
bool$$ 
ChangeUsername$$ "
($$" #
string$$# )
emailAddress$$* 6
,$$6 7
string$$8 >
newUsername$$? J
)$$J K
{%% 	

UnitOfWork&& 

unitOfWork&& !
=&&" #
new&&$ '

UnitOfWork&&( 2
(&&2 3
new&&3 6
MemoryGameContext&&7 H
(&&H I
)&&I J
)&&J K
;&&K L
try'' 
{(( 
Account)) 
account)) 
=))  !

unitOfWork))" ,
.)), -
Accounts))- 5
.))5 6
Get))6 9
())9 :
emailAddress)): F
)))F G
;))G H
if** 
(** 
account** 
!=** 
null** "
)**" #
{++ 
account,, 
.,, 
Username,, $
=,,% &
newUsername,,' 2
;,,2 3
int-- 
rowsModified-- $
=--% &

unitOfWork--' 1
.--1 2
Complete--2 :
(--: ;
)--; <
;--< =
return.. 
rowsModified.. '
==..( *
$num..+ ,
;.., -
}// 
return00 
false00 
;00 
}11 
catch22 
(22 
SqlException22 
sqlException22  ,
)22, -
{33 
_logger44 
.44 
Fatal44 
(44 
$str44 |
+44} ~
$str55 ^
+55_ `
$str66 )
,66) *
sqlException66+ 7
)667 8
;668 9
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
(;; 
$str;; v
+;;w x
$str<< _
+<<` a
$str== 4
,==4 5
entityException==6 E
)==E F
;==F G
throw>> 
;>> 
}?? 
finally@@ 
{AA 

unitOfWorkBB 
.BB 
DisposeBB "
(BB" #
)BB# $
;BB$ %
}CC 
}DD 	
publicNN 
boolNN 
SetNewPasswordNN "
(NN" #.
"PasswordModificationCredentialsDtoNN# E+
passwordModificationCredentialsNNF e
)NNe f
{OO 	

UnitOfWorkPP 

unitOfWorkPP !
=PP" #
newPP$ '

UnitOfWorkPP( 2
(PP2 3
newPP3 6
MemoryGameContextPP7 H
(PPH I
)PPI J
)PPJ K
;PPK L
stringQQ 
emailAddressQQ 
=QQ  !+
passwordModificationCredentialsQQ" A
.QQA B
EmailAddressQQB N
;QQN O
stringRR 
saltRR 
=RR +
passwordModificationCredentialsRR 9
.RR9 :
SaltRR: >
;RR> ?
stringSS 
newPasswordSS 
=SS  +
passwordModificationCredentialsSS! @
.SS@ A
NewPasswordSSA L
;SSL M
tryTT 
{UU 
AccountVV 
accountVV 
=VV  !

unitOfWorkVV" ,
.VV, -
AccountsVV- 5
.VV5 6
GetVV6 9
(VV9 :
emailAddressVV: F
)VVF G
;VVG H
accountWW 
.WW 
PasswordWW  
=WW! "
newPasswordWW# .
;WW. /
accountXX 
.XX 
SaltXX 
=XX 
saltXX #
;XX# $
intYY 
rowsModifiedYY  
=YY! "

unitOfWorkYY# -
.YY- .
CompleteYY. 6
(YY6 7
)YY7 8
;YY8 9
returnZZ 
rowsModifiedZZ #
==ZZ$ &
$numZZ' (
;ZZ( )
}[[ 
catch\\ 
(\\ 
SqlException\\ 
sqlException\\  ,
)\\, -
{]] 
_logger^^ 
.^^ 
Fatal^^ 
(^^ 
$str^^ |
+^^} ~
$str__ ?
+__@ A
$str`` G
,``G H
sqlException``I U
)``U V
;``V W
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
(ee 
$stree v
+eew x
$strff _
+ff` a
$strgg 4
,gg4 5
entityExceptiongg6 E
)ggE F
;ggF G
throwhh 
;hh 
}ii 
finallyjj 
{kk 

unitOfWorkll 
.ll 
Disposell "
(ll" #
)ll# $
;ll$ %
}mm 
}oo 	
}pp 
}qq �_
fC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\AccountVerificationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{		 
public 

partial 
class 
MemoryGameService *
:+ ,'
IAccountVerificationService- H
{ 
public'' 
bool''  
SetAccountAsVerified'' (
(''( )
string'') /
emailAddress''0 <
)''< =
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
(-- 
retrievedAccount-- #
!=--$ &
null--' +
)--+ ,
{.. 
retrievedAccount// $
.//$ %
EmailWasVerified//% 5
=//6 7
true//8 <
;//< =
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
SqlException55 
sqlException55  ,
)55, -
{66 
_logger77 
.77 
Fatal77 
(77 
$str77 k
+77l m
$str88 V
+88W X
$str99 M
,99M N
sqlException99O [
)99[ \
;99\ ]
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
(>> 
$str>> |
+>>} ~
$str?? _
+??` a
$str@@ :
,@@: ;
entityException@@< K
)@@K L
;@@L M
throwAA 
;AA 
}BB 
finallyCC 
{DD 

unitOfWorkEE 
.EE 
DisposeEE "
(EE" #
)EE# $
;EE$ %
}FF 
}GG 	
publicQQ 
boolQQ $
AssignNewActivationTokenQQ ,
(QQ, -
stringQQ- 3
emailAddressQQ4 @
,QQ@ A
stringQQB H
verificationTokenQQI Z
)QQZ [
{RR 	

UnitOfWorkSS 

unitOfWorkSS !
=SS" #
newSS$ '

UnitOfWorkSS( 2
(SS2 3
newSS3 6
MemoryGameContextSS7 H
(SSH I
)SSI J
)SSJ K
;SSK L
tryTT 
{UU 
AccountVV 
retrievedAccountVV (
=VV) *

unitOfWorkVV+ 5
.VV5 6
AccountsVV6 >
.VV> ?
GetVV? B
(VVB C
emailAddressVVC O
)VVO P
;VVP Q
ifWW 
(WW 
retrievedAccountWW $
!=WW% '
nullWW( ,
)WW, -
{XX 
retrievedAccountYY $
.YY$ %
ActivationTokenYY% 4
=YY5 6
verificationTokenYY7 H
;YYH I
intZZ 
rowsModifiedZZ $
=ZZ% &

unitOfWorkZZ' 1
.ZZ1 2
CompleteZZ2 :
(ZZ: ;
)ZZ; <
;ZZ< =
return[[ 
rowsModified[[ '
==[[( *
$num[[+ ,
;[[, -
}\\ 
return]] 
false]] 
;]] 
}^^ 
catch__ 
(__ 
SqlException__ 
sqlException__  ,
)__, -
{`` 
_loggeraa 
.aa 
Fatalaa 
(aa 
$straa g
+aah i
$strbb G
+bbH I
$strcc >
,cc> ?
sqlExceptioncc@ L
)ccL M
;ccM N
throwdd 
;dd 
}ee 
catchff 
(ff 
EntityExceptionff "
entityExceptionff# 2
)ff2 3
{gg 
_loggerhh 
.hh 
Fatalhh 
(hh 
$strhh |
+hh} ~
$strii _
+ii` a
$strjj >
,jj> ?
entityExceptionjj@ O
)jjO P
;jjP Q
throwkk 
;kk 
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
publictt 
booltt "
AssignNewRecoveryTokentt *
(tt* +
stringtt+ 1
emailAddresstt2 >
,tt> ?
stringtt@ F
recoveryTokenttG T
)ttT U
{uu 	

UnitOfWorkvv 

unitOfWorkvv !
=vv" #
newvv$ '

UnitOfWorkvv( 2
(vv2 3
newvv3 6
MemoryGameContextvv7 H
(vvH I
)vvI J
)vvJ K
;vvK L
tryww 
{xx 
Accountyy 
retrievedAccountyy (
=yy) *

unitOfWorkyy+ 5
.yy5 6
Accountsyy6 >
.yy> ?
Getyy? B
(yyB C
emailAddressyyC O
)yyO P
;yyP Q
ifzz 
(zz 
retrievedAccountzz $
!=zz% '
nullzz( ,
)zz, -
{{{ 
retrievedAccount|| $
.||$ %
RecoveryToken||% 2
=||3 4
recoveryToken||5 B
;||B C
int}} 
rowsModified}} $
=}}% &

unitOfWork}}' 1
.}}1 2
Complete}}2 :
(}}: ;
)}}; <
;}}< =
return~~ 
rowsModified~~ '
==~~( *
$num~~+ ,
;~~, -
} 
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
�� 
$str
�� g
+
��h i
$str
�� G
+
��H I
$str
�� <
,
��< =
sqlException
��> J
)
��J K
;
��K L
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
$str
�� |
+
��} ~
$str
�� _
+
��` a
$str
�� <
,
��< =
entityException
��> M
)
��M N
;
��N O
throw
�� 
;
�� 
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
�� #
VerifyActivationToken
�� )
(
��) *
string
��* 0
emailAddress
��1 =
,
��= >
string
��? E
activationToken
��F U
)
��U V
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
��d e
EmailAddress
��e q
==
��r t
emailAddress��u �
&&��� �
account��� �
.��� �
ActivationToken��� �
==��� �
activationToken��� �
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
�� 
$str
�� 
+��� �
$str
�� T
+
��U V
$str
�� T
,
��T U
sqlException
��V b
)
��b c
;
��c d
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
$str
�� |
+
��} ~
$str
�� _
+
��` a
$str
�� <
,
��< =
entityException
��> M
)
��M N
;
��N O
throw
�� 
;
�� 
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
�� !
VerifyRecoveryToken
�� '
(
��' (
string
��( .
emailAddress
��/ ;
,
��; <
string
��= C
recoveryToken
��D Q
)
��Q R
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
��d e
EmailAddress
��e q
==
��r t
emailAddress��u �
&&��� �
account��� �
.��� �
RecoveryToken��� �
==��� �
recoveryToken��� �
)��� �
;��� �
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
�� 
$str
�� 
+��� �
$str
�� T
+
��U V
$str
�� P
,
��P Q
sqlException
��R ^
)
��^ _
;
��_ `
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
$str
�� |
+
��} ~
$str
�� _
+
��` a
$str
�� :
,
��: ;
entityException
��< K
)
��K L
;
��L M
throw
�� 
;
�� 
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
}�� �<
dC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\CardDeckRetrieverService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public$$ 

partial$$ 
class$$ 
MemoryGameService$$ *
:$$+ ,%
ICardDeckRetrieverService$$- F
{%% 
private&& 
CardDeckDTO&& 
_cardDeckDTO&& (
=&&) *
new&&+ .
CardDeckDTO&&/ :
(&&: ;
)&&; <
;&&< =
private'' 
IEnumerable'' 
<'' 
Card''  
>''  !
_cards''" (
;''( )
public00 
CardDeckDTO00 
GetCardDeckAndCards00 .
(00. /
int00/ 2

cardDeckId003 =
)00= >
{11 	

UnitOfWork22 

unitOfWork22 !
=22" #
new22$ '

UnitOfWork22( 2
(222 3
new223 6
MemoryGameContext227 H
(22H I
)22I J
)22J K
;22K L
try33 
{44 
CardDeck55 
cardDeck55 !
=55" #

unitOfWork55$ .
.55. /
	CardDecks55/ 8
.558 9
GetCardDeckAndCards559 L
(55L M

cardDeckId55M W
)55W X
;55X Y
_cardDeckDTO66 
=66 
new66 "
CardDeckDTO66# .
(66. /
)66/ 0
{77 

CardDeckId88 
=88  
cardDeck88! )
.88) *

CardDeckId88* 4
,884 5
Name99 
=99 
cardDeck99 #
.99# $
Name99$ (
,99( )
	BackImage:: 
=:: 
cardDeck::  (
.::( )
	BackImage::) 2
,::2 3
NumberOfPairs;; !
=;;" #
cardDeck;;$ ,
.;;, -
NumberOfPairs;;- :
,;;: ;
Cards<< 
=<< 
new<< 
List<<  $
<<<$ %
CardDto<<% ,
><<, -
(<<- .
)<<. /
}== 
;== 
_cards>> 
=>> 
cardDeck>> !
.>>! "
Cards>>" '
;>>' ((
PopulateCardDeckDtoWithCardsCC ,
(CC, -
)CC- .
;CC. /(
PopulateCardDeckDtoWithCardsDD ,
(DD, -
)DD- .
;DD. /
ShuffleCardsFF 
(FF 
)FF 
;FF 
returnGG 
_cardDeckDTOGG #
;GG# $
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
(KK 
$strKK |
+KK} ~
$strLL =
+LL> ?
$strMM L
,MML M
sqlExceptionMMN Z
)MMZ [
;MM[ \
throwNN 
;NN 
}OO 
catchPP 
(PP 
EntityExceptionPP "
entityExceptionPP# 2
)PP2 3
{QQ 
_loggerRR 
.RR 
FatalRR 
(RR 
$strRR z
+RR{ |
$strSS _
+SS` a
$strTT 9
,TT9 :
entityExceptionTT; J
)TTJ K
;TTK L
throwUU 
;UU 
}VV 
finallyWW 
{XX 

unitOfWorkYY 
.YY 
DisposeYY "
(YY" #
)YY# $
;YY$ %
}ZZ 
}[[ 	
publicdd 
IListdd 
<dd 
CardDeckInfoDtodd $
>dd$ %
GetCardDecksInfodd& 6
(dd6 7
)dd7 8
{ee 	

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
{hh 
IEnumerableii 
<ii 
CardDeckii $
>ii$ %
	cardDecksii& /
=ii0 1

unitOfWorkii2 <
.ii< =
	CardDecksii= F
.iiF G
GetAlliiG M
(iiM N
)iiN O
;iiO P
IListjj 
<jj 
CardDeckInfoDtojj %
>jj% &
listOfCardDecksInfojj' :
=jj; <
newjj= @
ListjjA E
<jjE F
CardDeckInfoDtojjF U
>jjU V
(jjV W
)jjW X
;jjX Y
foreachkk 
(kk 
varkk 
individualCardDeckkk /
inkk0 2
	cardDeckskk3 <
)kk< =
{ll 
CardDeckInfoDtomm #
cardDeckInfomm$ 0
=mm1 2
newmm3 6
CardDeckInfoDtomm7 F
(mmF G
)mmG H
{nn 

CardDeckIdoo "
=oo# $
individualCardDeckoo% 7
.oo7 8

CardDeckIdoo8 B
,ooB C
CardDeckNamepp $
=pp% &
individualCardDeckpp' 9
.pp9 :
Namepp: >
}qq 
;qq 
listOfCardDecksInforr '
.rr' (
Addrr( +
(rr+ ,
cardDeckInforr, 8
)rr8 9
;rr9 :
}ss 
returntt 
listOfCardDecksInfott *
;tt* +
}uu 
catchvv 
(vv 
SqlExceptionvv 
sqlExceptionvv  ,
)vv, -
{ww 
_loggerxx 
.xx 
Fatalxx 
(xx 
$strxx m
+xxn o
$stryy U
+yyV W
$strzz 7
,zz7 8
sqlExceptionzz9 E
)zzE F
;zzF G
throw{{ 
;{{ 
}|| 
catch}} 
(}} 
EntityException}} "
entityException}}# 2
)}}2 3
{~~ 
_logger 
. 
Fatal 
( 
$str b
+c d
$str
�� x
+
��y z
$str
�� 7
,
��7 8
entityException
��9 H
)
��H I
;
��I J
throw
�� 
;
�� 
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
�� 	
private
�� 
void
�� *
PopulateCardDeckDtoWithCards
�� 1
(
��1 2
)
��2 3
{
�� 	
foreach
�� 
(
�� 
Card
�� 

actualCard
�� $
in
��% '
_cards
��( .
)
��. /
{
�� 
CardDto
�� 
cardDto
�� 
=
��  !
new
��" %
CardDto
��& -
(
��- .
)
��. /
{
�� 
CardId
�� 
=
�� 

actualCard
�� '
.
��' (
CardId
��( .
,
��. /

FrontImage
�� 
=
��  

actualCard
��! +
.
��+ ,

FrontImage
��, 6
}
�� 
;
�� 
_cardDeckDTO
�� 
.
�� 
Cards
�� "
.
��" #
Add
��# &
(
��& '
cardDto
��' .
)
��. /
;
��/ 0
}
�� 
}
�� 	
private
�� 
void
�� 
ShuffleCards
�� !
(
��! "
)
��" #
{
�� 	
CardShuffler
�� 
cardShuffler
�� %
=
��& '
new
��( +
CardShuffler
��, 8
(
��8 9
)
��9 :
;
��: ;
cardShuffler
�� 
.
�� 
ShuffleCards
�� %
(
��% &
_cardDeckDTO
��& 2
.
��2 3
Cards
��3 8
)
��8 9
;
��9 :
}
�� 	
}
�� 
}�� �
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
}CC 
}DD 	
publicKK 
voidKK 

LeaveLobbyKK 
(KK 
stringKK %
hostKK& *
,KK* +
stringKK, 2
usernameKK3 ;
)KK; <
{LL 	
MatchDtoMM 
matchMM 
=MM 
GetMatchMM %
(MM% &
hostMM& *
)MM* +
;MM+ ,
ifNN 
(NN 
matchNN 
!=NN 
nullNN 
)NN 
{OO 
LobbyPP 
lobbyPP 
=PP 
matchPP #
.PP# $
LobbyPP$ )
;PP) *
lobbyQQ 
.QQ !
RemovePlayerFromLobbyQQ +
(QQ+ ,
usernameQQ, 4
)QQ4 5
;QQ5 6
ifRR 
(RR 
hostRR 
.RR 
EqualsRR 
(RR  
usernameRR  (
)RR( )
)RR) *
{SS 
lobbyTT 
.TT ,
 NotifyPlayersMatchHasBeenDeletedTT :
(TT: ;
)TT; <
;TT< =
_matchesUU 
.UU 
RemoveUU #
(UU# $
matchUU$ )
)UU) *
;UU* +
}VV 
elseWW 
{XX 
lobbyYY 
.YY $
NotifyOnePlayerLeftLobbyYY 2
(YY2 3
usernameYY3 ;
)YY; <
;YY< =
}ZZ 
}[[ 
}\\ 	
publicbb 
voidbb 
	StartGamebb 
(bb 
stringbb $
hostbb% )
)bb) *
{cc 	
MatchDtodd 
matchdd 
=dd 
GetMatchdd %
(dd% &
hostdd& *
)dd* +
;dd+ ,
ifee 
(ee 
matchee 
!=ee 
nullee 
)ee 
{ff 
matchgg 
.gg 

StartMatchgg  
(gg  !
)gg! "
;gg" #
}hh 
}jj 	
privateqq 
MatchDtoqq 
GetMatchqq !
(qq! "
stringqq" (
hostqq) -
)qq- .
{rr 	
MatchDtoss 
	gameMatchss 
=ss  
nullss! %
;ss% &
foreachtt 
(tt 
vartt 
matchtt 
intt !
_matchestt" *
)tt* +
{uu 
ifvv 
(vv 
matchvv 
.vv 
Hostvv 
.vv 
Equalsvv %
(vv% &
hostvv& *
)vv* +
)vv+ ,
{ww 
	gameMatchxx 
=xx 
matchxx  %
;xx% &
breakyy 
;yy 
}zz 
}{{ 
return|| 
	gameMatch|| 
;|| 
}}} 	
}~~ 
} �
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MailingService.cs
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
() *
TokenInfoDto* 6!
verificationTokenInfo7 L
)L M
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
.  < =
Token  = B
;  B C
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
$str,, `
+,,a b
$str-- J
+--K L
$str.. =
,..= >
socketException..? N
)..N O
;..O P
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
$str22 d
+22e f
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
}99 �
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MatchCreationService.cs
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
} �
aC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MatchDiscoveryService.cs
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
$str-- 9
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
}XX ��
XC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MatchService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
publicAA 

partialAA 
classAA 
MemoryGameServiceAA *
:AA+ ,
IMatchServiceAA- :
{BB 
publicHH 
voidHH 

EnterMatchHH 
(HH 
stringHH %
hostHH& *
,HH* +
stringHH, 2
usernameHH3 ;
)HH; <
{II 	
MatchDtoJJ 
	gameMatchJJ 
=JJ  
GetMatchJJ! )
(JJ) *
hostJJ* .
)JJ. /
;JJ/ 0
boolLL 
hasActiveTurnLL 
=LL  
falseLL! &
;LL& '
ifMM 
(MM 
hostMM 
.MM 
EqualsMM 
(MM 
usernameMM $
)MM$ %
)MM% &
{NN 
hasActiveTurnOO 
=OO 
trueOO  $
;OO$ %
}PP 
PlayerInMatchRR 
playerRR  
=RR! "
newRR# &
PlayerInMatchRR' 4
(RR4 5
)RR5 6
{SS 
UsernameTT 
=TT 
usernameTT #
,TT# $
ScoreUU 
=UU 
$numUU 
,UU 
HasActiveTurnVV 
=VV 
hasActiveTurnVV  -
,VV- ."
MatchServiceConnectionWW &
=WW' (
OperationContextWW) 9
.WW9 :
CurrentWW: A
.WWA B
GetCallbackChannelWWB T
<WWT U!
IMatchServiceCallbackWWU j
>WWj k
(WWk l
)WWl m
,WWm n
ExpulsionVotesXX 
=XX  
$numXX! "
}YY 
;YY 
	gameMatchZZ 
.ZZ 
	AddPlayerZZ 
(ZZ  
playerZZ  &
)ZZ& '
;ZZ' (
}[[ 	
publicbb 
IListbb 
<bb 
PlayerInMatchbb "
>bb" #&
GetPlayersConnectedToMatchbb$ >
(bb> ?
stringbb? E
hostbbF J
)bbJ K
{cc 	
MatchDtodd 
matchdd 
=dd 
GetMatchdd %
(dd% &
hostdd& *
)dd* +
;dd+ ,
returnee 
matchee 
.ee &
GetPlayersConnectedToMatchee 3
(ee3 4
)ee4 5
;ee5 6
}ff 	
publicll 
voidll #
NotifyCardWasUncovereddll +
(ll+ ,
PlayerMovementDtoll, =
playerMovementDtoll> O
)llO P
{mm 	
stringnn 
hostnn 
=nn 
playerMovementDtonn +
.nn+ ,
Hostnn, 0
;nn0 1
MatchDtooo 
	gameMatchoo 
=oo  
GetMatchoo! )
(oo) *
hostoo* .
)oo. /
;oo/ 0
PlayerInMatchqq 
playerqq  
=qq! "
	gameMatchqq# ,
.qq, -
	GetPlayerqq- 6
(qq6 7
playerMovementDtoqq7 H
.qqH I
UsernameqqI Q
)qqQ R
;qqR S
ifrr 
(rr 
playerMovementDtorr !
.rr! "
HasFormedAPairrr" 0
)rr0 1
{ss 
playertt 
.tt 
AddUncoveredCardtt '
(tt' (
playerMovementDtott( 9
.tt9 :
	CardIndextt: C
)ttC D
;ttD E
	gameMatchuu 
.uu 

TotalPairsuu $
++uu$ &
;uu& '
}vv 
elseww 
{xx 
ifyy 
(yy 
playerMovementDtoyy %
.yy% &
MovementsLeftyy& 3
==yy4 6
$numyy7 8
)yy8 9
{zz 
player{{ 
.{{ 
RemoveUncoveredCard{{ .
({{. /
){{/ 0
;{{0 1
}|| 
else}} 
{~~ 
player 
. 
AddUncoveredCard +
(+ ,
playerMovementDto, =
.= >
	CardIndex> G
)G H
;H I
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
��X Y
foreach
�� 
(
�� 
var
�� 
playerInMatch
�� %
in
��& (
playersInMatch
��) 7
)
��7 8
{
�� 
playerInMatch
�� 
.
�� $
MatchServiceConnection
�� 4
.
��4 5
UncoverCardd
��5 A
(
��A B
playerMovementDto
��B S
.
��S T
	CardIndex
��T ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
public
�� 
void
�� !
NotifyMatchHasEnded
�� '
(
��' (
string
��( .
host
��/ 3
)
��3 4
{
�� 	
MatchDto
�� 
	gameMatch
�� 
=
��  
GetMatch
��! )
(
��) *
host
��* .
)
��. /
;
��/ 0
if
�� 
(
�� 
host
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
PlayerInMatch
�� !
playerWithBestScore
�� 1
=
��2 3
	gameMatch
��4 =
.
��= >$
GetPlayerWithBestScore
��> T
(
��T U
)
��U V
;
��V W
string
�� +
usernameOfPlayerWithBestScore
�� 4
=
��5 6!
playerWithBestScore
��7 J
.
��J K
Username
��K S
;
��S T
IList
�� 
<
�� 
PlayerInMatch
�� #
>
��# $%
playersConnectedToMatch
��% <
=
��= >
	gameMatch
��? H
.
��H I(
GetPlayersConnectedToMatch
��I c
(
��c d
)
��d e
;
��e f
foreach
�� 
(
�� 
var
�� 
playerConnected
�� ,
in
��- /%
playersConnectedToMatch
��0 G
)
��G H
{
�� 
var
�� 
channel
�� 
=
��  !
playerConnected
��" 1
.
��1 2$
MatchServiceConnection
��2 H
;
��H I
channel
�� 
.
�� 
ShowWinners
�� '
(
��' (+
usernameOfPlayerWithBestScore
��( E
)
��E F
;
��F G
channel
�� 
.
�� 
MatchHasEnded
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 

UnitOfWork
�� 

unitOfWork
�� %
=
��& '
new
��( +

UnitOfWork
��, 6
(
��6 7
new
��7 :
MemoryGameContext
��; L
(
��L M
)
��M N
)
��N O
;
��O P
try
�� 
{
�� 
foreach
�� 
(
�� 
var
��  
playerInMatch
��! .
in
��/ 1
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
)
��X Y
{
�� 

unitOfWork
�� "
.
��" #
Players
��# *
.
��* +,
UpdateScoreOfPlayersAfterMatch
��+ I
(
��I J
playerInMatch
��J W
.
��W X
Username
��X `
,
��` a
playerInMatch
��b o
.
��o p
Score
��p u
)
��u v
;
��v w
}
�� 
Player
�� 
winner
�� !
=
��" #

unitOfWork
��$ .
.
��. /
Players
��/ 6
.
��6 7"
FindPlayerByUsername
��7 K
(
��K L+
usernameOfPlayerWithBestScore
��L i
)
��i j
;
��j k
CardDeck
�� 
cardDeck
�� %
=
��& '

unitOfWork
��( 2
.
��2 3
	CardDecks
��3 <
.
��< =
Get
��= @
(
��@ A
	gameMatch
��A J
.
��J K
CardDeckDto
��K V
.
��V W

CardDeckId
��W a
)
��a b
;
��b c
Match
�� 
matchToBeSaved
�� (
=
��) *
new
��+ .
Match
��/ 4
(
��4 5
)
��5 6
{
�� 
CardDeck
��  
=
��! "
cardDeck
��# +
,
��+ ,
Winner
�� 
=
��  
winner
��! '
,
��' (
Date
�� 
=
�� 
DateTime
�� '
.
��' (
Now
��( +
}
�� 
;
�� 

unitOfWork
�� 
.
�� 
Matches
�� &
.
��& '
Add
��' *
(
��* +
matchToBeSaved
��+ 9
)
��9 :
;
��: ;

unitOfWork
�� 
.
�� 
Complete
�� '
(
��' (
)
��( )
;
��) *
}
�� 
catch
�� 
(
�� 
SqlException
�� #
sqlException
��$ 0
)
��0 1
{
�� 
_logger
�� 
.
�� 
Fatal
�� !
(
��! "
$str
��" Z
+
��[ \
$str
�� Y
+
��Z [
$str
�� N
+
��O P
$str
�� >
,
��> ?
sqlException
��@ L
)
��L M
;
��M N
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� &
entityException
��' 6
)
��6 7
{
�� 
_logger
�� 
.
�� 
Fatal
�� !
(
��! "
$str
��" h
+
��i j
$str
�� n
+
��o p
$str
�� >
,
��> ?
entityException
��@ O
)
��O P
;
��P Q
throw
�� 
;
�� 
}
�� 
finally
�� 
{
�� 

unitOfWork
�� 
.
�� 
Dispose
�� &
(
��& '
)
��' (
;
��( )
}
�� 
_matches
�� 
.
�� 
Remove
�� 
(
��  
	gameMatch
��  )
)
��) *
;
��* +
}
�� 
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
�� 	
MatchDto
�� 
	gameMatch
�� 
=
��  
GetMatch
��! )
(
��) *
host
��* .
)
��. /
;
��/ 0
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
�� 	
MatchDto
�� 
	gameMatch
�� 
=
��  
GetMatch
��! )
(
��) *
host
��* .
)
��. /
;
��/ 0
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
��/ 0
	gameMatch
��1 :
.
��: ;$
GetPlyerWithActiveTurn
��; Q
(
��Q R
)
��R S
;
��S T
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
��E F
if
�� 
(
�� "
playerWithActiveTurn
�� $
.
��$ %
Username
��% -
.
��- .
Equals
��. 4
(
��4 5
username
��5 =
)
��= >
)
��> ?
{
�� 
leavePlayer
�� 
=
�� "
playerWithActiveTurn
�� 2
;
��2 3
int
�� *
indexOfPlayerWithCurrentTurn
�� 0
=
��1 2
	gameMatch
��3 <
.
��< =(
GetPlayersConnectedToMatch
��= W
(
��W X
)
��X Y
.
��Y Z
IndexOf
��Z a
(
��a b"
playerWithActiveTurn
��b v
)
��v w
;
��w x*
indexOfPlayerWithCurrentTurn
�� ,
=
��- .

ChangeTurn
��/ 9
(
��9 :
	gameMatch
��: C
,
��C D*
indexOfPlayerWithCurrentTurn
��E a
)
��a b
;
��b c
PlayerInMatch
�� 

nextPlayer
�� (
=
��) *
	gameMatch
��+ 4
.
��4 5(
GetPlayersConnectedToMatch
��5 O
(
��O P
)
��P Q
[
��Q R*
indexOfPlayerWithCurrentTurn
��R n
]
��n o
;
��o p"
playerWithActiveTurn
�� $
.
��$ %
HasActiveTurn
��% 2
=
��3 4
false
��5 :
;
��: ;

nextPlayer
�� 
.
�� 
HasActiveTurn
�� (
=
��) *
true
��+ /
;
��/ 0
foreach
�� 
(
�� 
var
�� 
playerInMatch
�� *
in
��+ -
playersInMatch
��. <
)
��< =
{
�� 
playerInMatch
�� !
.
��! "$
MatchServiceConnection
��" 8
.
��8 9"
EndTurnOfExpelPlayer
��9 M
(
��M N

nextPlayer
��N X
.
��X Y
Username
��Y a
)
��a b
;
��b c
}
�� 
}
�� 
IList
�� 
<
�� 
int
�� 
>
�� 
cardsUncovered
�� %
=
��& '
leavePlayer
��( 3
.
��3 4
GetUncoveredCards
��4 E
(
��E F
)
��F G
;
��G H
foreach
�� 
(
�� 
var
�� 
playerConnected
�� (
in
��) +
playersInMatch
��, :
)
��: ;
{
�� 
var
�� 
channel
�� 
=
�� 
playerConnected
�� -
.
��- .$
MatchServiceConnection
��. D
;
��D E
channel
�� 
.
�� $
NotifyPlayerLeaveMatch
�� .
(
��. /
username
��/ 7
,
��7 8
cardsUncovered
��9 G
)
��G H
;
��H I
}
�� 
RemovePairs
�� 
(
�� 
	gameMatch
�� !
,
��! "
cardsUncovered
��# 1
)
��1 2
;
��2 3
	gameMatch
�� 
.
�� 
RemovePlayer
�� "
(
��" #
username
��# +
)
��+ ,
;
��, -
if
�� 
(
�� 
playersInMatch
�� 
.
�� 
Count
�� $
==
��% '
$num
��( )
)
��) *
{
�� 
this
�� 
.
�� !
NotifyMatchHasEnded
�� (
(
��( )
host
��) -
)
��- .
;
��. /
}
�� 
}
�� 	
public
�� 
void
�� 
ExpelPlayer
�� 
(
��  
ExpelVoteDto
��  ,
	expelVote
��- 6
)
��6 7
{
�� 	
string
�� 
host
�� 
=
�� 
	expelVote
�� #
.
��# $
Host
��$ (
;
��( )
MatchDto
�� 
	gameMatch
�� 
=
��  
GetMatch
��! )
(
��) *
host
��* .
)
��. /
;
��/ 0
string
�� #
usernameOfExpelPlayer
�� (
=
��) *
	expelVote
��+ 4
.
��4 5#
UsernameOfExpelPlayer
��5 J
;
��J K
int
�� 
playerExpelVotes
��  
=
��! "
	gameMatch
��# ,
.
��, -
AddExpelVote
��- 9
(
��9 :#
usernameOfExpelPlayer
��: O
)
��O P
;
��P Q
PlayerInMatch
�� 
voterPlayer
�� %
=
��& '
	gameMatch
��( 1
.
��1 2
	GetPlayer
��2 ;
(
��; <
	expelVote
��< E
.
��E F#
UsernameOfVoterPlayer
��F [
)
��[ \
;
��\ ]
voterPlayer
�� 
.
�� 
AddPlayerVoted
�� &
(
��& '#
usernameOfExpelPlayer
��' <
)
��< =
;
��= >
IList
�� 
<
�� 
PlayerInMatch
�� 
>
��  
playersInMatch
��! /
=
��0 1
	gameMatch
��2 ;
.
��; <(
GetPlayersConnectedToMatch
��< V
(
��V W
)
��W X
;
��X Y
int
�� 
numOfPlayers
�� 
=
�� 
playersInMatch
�� -
.
��- .
Count
��. 3
;
��3 4
if
�� 
(
�� 
playerExpelVotes
��  
>
��! "
(
��# $
numOfPlayers
��$ 0
/
��1 2
$num
��3 4
)
��4 5
)
��5 6
{
�� 
PlayerInMatch
�� "
playerWithActiveTurn
�� 2
=
��3 4
	gameMatch
��5 >
.
��> ?$
GetPlyerWithActiveTurn
��? U
(
��U V
)
��V W
;
��W X
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
��? @#
usernameOfExpelPlayer
��@ U
)
��U V
;
��V W
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
��8 9#
usernameOfExpelPlayer
��9 N
)
��N O
)
��O P
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
��0 1#
usernameOfExpelPlayer
��1 F
,
��F G
cardsUncovered
��H V
)
��V W
;
��W X
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
��& '#
usernameOfExpelPlayer
��' <
)
��< =
;
��= >
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
�� 	
MatchDto
�� 
	gameMatch
�� 
=
��  
GetMatch
��! )
(
��) *
host
��* .
)
��. /
;
��/ 0
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
�� 	
MatchDto
�� 
	gameMatch
�� 
=
��  
GetMatch
��! )
(
��) *
host
��* .
)
��. /
;
��/ 0
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
�� 
(
�� *
indexOfPlayerWithCurrentTurn
�� ,
==
��- /
(
��0 1
	gameMatch
��1 :
.
��: ;(
GetPlayersConnectedToMatch
��; U
(
��U V
)
��V W
.
��W X
Count
��X ]
-
��^ _
$num
��` a
)
��a b
)
��b c
{
�� *
indexOfPlayerWithCurrentTurn
�� ,
=
��- .
$num
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� *
indexOfPlayerWithCurrentTurn
�� ,
++
��, .
;
��. /
}
�� 
return
�� *
indexOfPlayerWithCurrentTurn
�� /
;
��/ 0
}
�� 	
public
�� 
void
�� 
RemovePairs
�� 
(
��  
MatchDto
��  (
	gameMatch
��) 2
,
��2 3
IList
��4 9
<
��9 :
int
��: =
>
��= >
cardsUncovered
��? M
)
��M N
{
�� 	
if
�� 
(
�� 
(
�� 
cardsUncovered
�� 
.
��  
Count
��  %
%
��& '
$num
��( )
)
��) *
==
��+ -
$num
��. /
)
��/ 0
{
�� 
	gameMatch
�� 
.
�� 

TotalPairs
�� $
=
��% &
	gameMatch
��' 0
.
��0 1

TotalPairs
��1 ;
-
��< =
(
��> ?
cardsUncovered
��? M
.
��M N
Count
��N S
/
��T U
$num
��V W
)
��W X
;
��X Y
}
�� 
else
�� 
{
�� 
	gameMatch
�� 
.
�� 

TotalPairs
�� $
=
��% &
	gameMatch
��' 0
.
��0 1

TotalPairs
��1 ;
-
��< =
(
��> ?
(
��? @
cardsUncovered
��@ N
.
��N O
Count
��O T
-
��U V
$num
��W X
)
��X Y
/
��Z [
$num
��\ ]
)
��] ^
;
��^ _
}
�� 
}
�� 	
}
�� 
}�� �
]C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\MemoryGameService.cs
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
} �=
aC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\PlayerRegistryService.cs
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
(HH 
$strHH p
+HHq r
$strII 3
+II4 5
$strJJ 8
,JJ8 9
sqlExceptionJJ: F
)JJF G
;JJG H
throwKK 
;KK 
}LL 
catchMM 
(MM 
EntityExceptionMM "
entityExceptionMM# 2
)MM2 3
{NN 
_loggerOO 
.OO 
FatalOO 
(OO 
$strOO w
+OOx y
$strPP _
+PP` a
$strQQ 8
,QQ8 9
entityExceptionQQ: I
)QQI J
;QQJ K
throwRR 
;RR 
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
public`` 
bool`` #
EmailAddressIsAvailable`` +
(``+ ,
string``, 2
emailAddress``3 ?
)``? @
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
Accountee /
#accountWithTheSpecifiedEmailAddressee ;
=ee< =

unitOfWorkee> H
.eeH I
AccountseeI Q
.eeQ R
GeteeR U
(eeU V
emailAddresseeV b
)eeb c
;eec d
ifff 
(ff /
#accountWithTheSpecifiedEmailAddressff 7
==ff8 :
nullff; ?
)ff? @
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
$strnn f
+nng h
$stroo G
+ooH I
$strpp ?
,pp? @
sqlExceptionppA M
)ppM N
;ppN O
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
$strww >
,ww> ?
entityExceptionww@ O
)wwO P
;wwP Q
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
}~~ 	
public
�� 
bool
�� !
UserNameIsAvailable
�� '
(
��' (
string
��( .
username
��/ 7
)
��7 8
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
�� -
accountWithTheSpecifiedUsername
�� 7
=
��8 9

unitOfWork
��: D
.
��D E
Accounts
��E M
.
��M N 
FindFirstOccurence
��N `
(
��` a
account
��a h
=>
��i k
account
��l s
.
��s t
Username
��t |
==
��} 
username��� �
)��� �
;��� �
if
�� 
(
�� -
accountWithTheSpecifiedUsername
�� 3
==
��4 6
null
��7 ;
)
��; <
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
�� 
$str
�� b
+
��c d
$str
�� Y
+
��Z [
$str
�� ;
,
��; <
sqlException
��= I
)
��I J
;
��J K
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
EntityException
�� "
entityException
��# 2
)
��2 3
{
�� 
_logger
�� 
.
�� 
Fatal
�� 
(
�� 
$str
�� ]
+
��^ _
$str
�� _
+
��` a
$str
�� :
,
��: ;
entityException
��< K
)
��K L
;
��L M
throw
�� 
;
�� 
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
}�� �
XC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\ScoreService.cs
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
public 

partial 
class 
MemoryGameService *
:+ ,
IScoreService- :
{ 
List   
<   
PlayerScoreDTO   
>   
IScoreService   *
.  * +#
GetPlayersWithBestScore  + B
(  B C
int  C F(
numberOfPlayersToBeRetrieved  G c
)  c d
{!! 	

UnitOfWork"" 

unitOfWork"" !
=""" #
new""$ '

UnitOfWork""( 2
(""2 3
new""3 6
MemoryGameContext""7 H
(""H I
)""I J
)""J K
;""K L
try## 
{$$ 
IEnumerable%% 
<%% 
Account%% #
>%%# $
accountEntities%%% 4
=%%5 6

unitOfWork%%7 A
.%%A B
Accounts%%B J
.%%J K-
!GetNumberOfAccountsWithPlayerInfo%%K l
(%%l m)
numberOfPlayersToBeRetrieved	%%m �
)
%%� �
;
%%� �
List&& 
<&& 
PlayerScoreDTO&& #
>&&# $!
playersWithBestScores&&% :
=&&; <
new&&= @
List&&A E
<&&E F
PlayerScoreDTO&&F T
>&&T U
(&&U V
)&&V W
;&&W X
foreach(( 
((( 
var(( 
account(( #
in(($ &
accountEntities((' 6
)((6 7
{)) 
PlayerScoreDTO** "
playerScore**# .
=**/ 0
new**1 4
PlayerScoreDTO**5 C
(**C D
)**D E
{++ 
Username,,  
=,,! "
account,,# *
.,,* +
Username,,+ 3
,,,3 4

TotalScore-- "
=--# $
account--% ,
.--, -
Player--- 3
.--3 4
Score--4 9
}.. 
;.. !
playersWithBestScores// )
.//) *
Add//* -
(//- .
playerScore//. 9
)//9 :
;//: ;
}00 
return22 !
playersWithBestScores22 ,
;22, -
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
(66 
$str66 d
+66e f
$str77 ;
+77< =
$str88 =
,88= >
sqlException88? K
)88K L
;88L M
throw99 
;99 
}:: 
catch;; 
(;; 
EntityException;; "
entityException;;# 2
);;2 3
{<< 
_logger== 
.== 
Fatal== 
(== 
$str== ]
+==^ _
$str>> _
+>>` a
$str?? =
,??= >
entityException??? N
)??N O
;??O P
throw@@ 
;@@ 
}AA 
finallyBB 
{CC 

unitOfWorkDD 
.DD 
DisposeDD "
(DD" #
)DD# $
;DD$ %
}EE 
}FF 	
}GG 
}HH �	
ZC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Services\TokenGenerator.cs
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
}   �
YC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\CardShuffler.cs
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
}   �
`C:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\FisherYatesShuffler.cs
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
}%% �
VC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\IShuffler.cs
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
} �
YC:\Users\Adair Hernández\source\repos\memory\MemoryGameService\Utilities\MailTemplate.cs
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