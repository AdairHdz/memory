≈
iC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccountModifiabilityService.cs
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
	interface (
IAccountModifiabilityService 1
{ 
[		 	
OperationContract			 
]		 
bool

 
SetNewPassword

 
(

  
PlayerCredentialsDTO

 0 
playerCredentialsDTO

1 E
)

E F
;

F G
[ 	
OperationContract	 
] 
bool 
ChangeUsername 
(  
PlayerCredentialsDTO 0 
playerCredentialsDTO1 E
)E F
;F G
} 
} 
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
} ‘
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ICardDeckRetrieverService.cs
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
	interface %
ICardDeckRetrieverService .
{ 
[		 	
OperationContract			 
]		 
CardDeckDTO

 
GetCardDeckAndCards

 '
(

' (
int

( +

cardDeckId

, 6
)

6 7
;

7 8
} 
} å	
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IPlayerRegistryService.cs
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
	interface "
IPlayerRegistryService +
{		 
[

 	
OperationContract

	 
]

 
[ 	
FaultContract	 
( 
typeof 
( !
EndpointNotFoundFault 3
)3 4
)4 5
]5 6
bool 
RegisterNewPlayer 
( 
	PlayerDTO (
	playerDTO) 2
)2 3
;3 4
[ 	
OperationContract	 
] 
bool #
EmailAddressIsAvailable $
($ %
string% +
emailAddress, 8
)8 9
;9 :
[ 	
OperationContract	 
] 
bool 
UserNameIsAvailable  
(  !
string! '
username( 0
)0 1
;1 2
} 
} û
eC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ITimerInitializerService.cs
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
	interface $
ITimerInitializerService -
{ 
[ 	
OperationContract	 
] 
void		 
InitializeTimer		 
(		 
)		 
;		 
}

 
} Û	
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ITimerService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
( 
SessionMode  
=! "
SessionMode# .
.. /
Required/ 7
,7 8
CallbackContract !
=" #
typeof$ *
(* +!
ITimerServiceCallback+ @
)@ A
)A B
]B C
public 

	interface 
ITimerService "
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
 
UpdateTimer

 
(

 
)

 
;

 
} 
public 

	interface !
ITimerServiceCallback *
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
DisplayTimerValue 
( 
int "

timerValue# -
)- .
;. /
} 
} ˝
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
} π
tC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjectMappers\PlayerCredentialsMapper.cs
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
{ 
Username 
= 
player !
.! "
UserName" *
,* +
Password 
= 
player !
.! "
Password" *
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
{ 
UserName 
=  
playerCredentialsDTO /
./ 0
Username0 8
,8 9
Password 
=  
playerCredentialsDTO /
./ 0
Password0 8
} 
; 
return 
player 
; 
} 	
} 
} ‚
iC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjectMappers\PlayerMapper.cs
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
{ 
EmailAddress 
= 
player %
.% &
EmailAddress& 2
,2 3
Username 
= 
player !
.! "
UserName" *
,* +
Password 
= 
player !
.! "
Password" *
,* +
VerificationToken !
=" #
player$ *
.* +
ActivationToken+ :
} 
; 
return 
	mappedDTO 
; 
} 	
public 
static 
Player 
CreateEntity )
() *
	PlayerDTO* 3
dto4 7
)7 8
{ 	
Player 
mappedEntity 
=  !
new" %
Player& ,
(, -
)- .
{ 
EmailAddress 
= 
dto "
." #
EmailAddress# /
,/ 0
UserName 
= 
dto 
. 
Username '
,' (
Password 
= 
dto 
. 
Password '
,' (
ActivationToken 
=  !
dto" %
.% &
VerificationToken& 7
} 
; 
return 
mappedEntity 
;  
} 	
} 
}   ˇ
nC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjectMappers\PlayerScoreMapper.cs
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
{ 
Username 
= 
player !
.! "
UserName" *
,* +

TotalScore 
= 
player #
.# $

TotalScore$ .
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
{ 
UserName 
= 
playerScoreDTO )
.) *
Username* 2
,2 3

TotalScore 
= 
playerScoreDTO +
.+ ,

TotalScore, 6
} 
; 
return 
player 
; 
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
} ∏
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
} ´
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
} 
} 	
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
} §
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
} ¬
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataTransferObjects\TurnTimerDTO.cs
	namespace 	
MemoryGameService
 
. 
DataTransferObjects /
{ 
public 

class 
TurnTimerDTO 
{ 
} 
} π
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataValidators\IPlayerValidator.cs
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
} ˚
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\DataValidators\PlayerValidator.cs
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
<4 5

DataAccess5 ?
.? @
Entities@ H
.H I
PlayerI O
>O P
,P Q
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
;} ~
RuleFor 
( 
player 
=> 
player $
.$ %
UserName% -
)- .
.. /
Cascade/ 6
(6 7
CascadeMode7 B
.B C
StopC G
)G H
.H I
NotEmptyI Q
(Q R
)R S
.S T
MinimumLengthT a
(a b
$numb c
)c d
;d e
RuleFor 
( 
player 
=> 
player $
.$ %
Password% -
)- .
.. /
Cascade/ 6
(6 7
CascadeMode7 B
.B C
StopC G
)G H
.H I
MatchesI P
(P Q
$str	Q á
)
á à
;
à â
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
{ 
EmailAddress 
= 
emailAddress +
,+ ,
UserName 
= 
username #
,# $
Password 
= 
password #
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
} Ì

bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IAccessibilityService.cs
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
IAccessibilityService *
{ 
[		 	
OperationContract			 
]		 
bool

 
HasAccessRights

 
(

  
PlayerCredentialsDTO

 1 
playerCredentialsDTO

2 F
)

F G
;

G H
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
[ 	
OperationContract	 
] 
string 
GetUserEmailAddress "
(" #
string# )
username* 2
)2 3
;3 4
[ 	
OperationContract	 
] 
string 
GetUsername 
( 
string !
emailAddress" .
). /
;/ 0
} 
} ‰
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IChatClient.cs
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
	interface 
IChatClient  
{ 
[ 	
OperationContract	 
] 
void		 
ReciveMessage		 
(		 
string		 !
username		" *
,		* +
string		, 2
message		3 :
)		: ;
;		; <
} 
} µ
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\ICommunicationService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IChatClient/ :
): ;
); <
]< =
public 

	interface !
ICommunicationService *
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
 
Join

 
(

 
string

 
username

 !
)

! "
;

" #
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
string 
message  '
)' (
;( )
} 
} ∑
\C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMailingService.cs
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
IMailingService $
{ 
[ 	
OperationContract	 
] 
void		 !
SendVerificationToken		 "
(		" #
string		# )
name		* .
,		. /
string		0 6
emailAddress		7 C
,		C D
string		E K
verificationToken		L ]
)		] ^
;		^ _
}

 
} π	
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Contracts\IMatchService.cs
	namespace 	
MemoryGameService
 
. 
	Contracts %
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /!
IMatchServiceCallback/ D
)D E
)E F
]F G
public 

	interface 
IMatchService "
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
 
GetActivePlayers

 
(

 
)

 
;

  
} 
public 

	interface !
IMatchServiceCallback *
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
ShowActivePlayers 
( 
List #
<# $
string$ *
>* +
activePlayers, 9
)9 :
;: ;
} 
} Ö
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
} π
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Faults\EndpointNotFoundFault.cs
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
class !
EndpointNotFoundFault &
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
}* +
} 
} ó
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
},, Ö
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str ,
), -
]- .
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str .
). /
]/ 0
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
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
]$$) *ˇ.
_C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccesibilityService.cs
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
:		+ ,!
IAccessibilityService		- B
{

 
public 
string 
GetUserEmailAddress )
() *
string* 0
username1 9
)9 :
{ 	
var 

unitOfWork 
= 
new  

UnitOfWork! +
(+ ,
new, /
MemoryGameContext0 A
(A B
)B C
)C D
;D E
var 
player 
= 

unitOfWork #
.# $
Players$ +
.+ ,
Find, 0
(0 1
x1 2
=>3 5
x6 7
.7 8
UserName8 @
==A C
usernameD L
)L M
;M N
string 
emailAddress 
=  !
player" (
.( )
	ElementAt) 2
(2 3
$num3 4
)4 5
.5 6
EmailAddress6 B
;B C

unitOfWork 
. 
Dispose 
( 
)  
;  !
return 
emailAddress 
;  
} 	
public 
string 
GetUsername !
(! "
string" (
emailAddress) 5
)5 6
{ 	
var 

unitOfWork 
= 
new  

UnitOfWork! +
(+ ,
new, /
MemoryGameContext0 A
(A B
)B C
)C D
;D E
var 
player 
= 

unitOfWork #
.# $
Players$ +
.+ ,
Get, /
(/ 0
emailAddress0 <
)< =
;= >
string 
username 
= 
player $
.$ %
UserName% -
;- .

unitOfWork 
. 
Dispose 
( 
)  
;  !
return 
username 
; 
} 	
public 
bool 
HasAccessRights #
(# $ 
PlayerCredentialsDTO$ 8 
playerCredentialsDTO9 M
)M N
{ 	
string 
username 
=  
playerCredentialsDTO 2
.2 3
Username3 ;
;; <
string   
password   
=    
playerCredentialsDTO   2
.  2 3
Password  3 ;
;  ; <
var"" 

unitOfWork"" 
="" 
new""  

UnitOfWork""! +
(""+ ,
new"", /
MemoryGameContext""0 A
(""A B
)""B C
)""C D
;""D E
var## 
player## 
=## 

unitOfWork## #
.### $
Players##$ +
.##+ ,
Find##, 0
(##0 1
x##1 2
=>##3 5
x##6 7
.##7 8
UserName##8 @
==##A C
username##D L
&&##M O
x##P Q
.##Q R
Password##R Z
==##[ ]
password##^ f
)##f g
;##g h
int$$ 
matches$$ 
=$$ 
player$$  
.$$  !
Count$$! &
($$& '
)$$' (
;$$( )

unitOfWork%% 
.%% 
Dispose%% 
(%% 
)%%  
;%%  !
return&& 
matches&& 
==&& 
$num&& 
;&&  
}'' 	
public)) 
bool)) 

IsVerified)) 
()) 
string)) %
username))& .
))). /
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
var,, 
player,, 
=,, 

unitOfWork,, #
.,,# $
Players,,$ +
.,,+ ,
Find,,, 0
(,,0 1
x,,1 2
=>,,3 5
x,,6 7
.,,7 8
UserName,,8 @
==,,A C
username,,D L
&&,,M O
x,,P Q
.,,Q R
EmailWasVerified,,R b
),,b c
;,,c d
int-- 
matches-- 
=-- 
player--  
.--  !
Count--! &
(--& '
)--' (
;--( )

unitOfWork.. 
... 
Dispose.. 
(.. 
)..  
;..  !
return// 
matches// 
==// 
$num// 
;//  
}00 	
public22 
bool22 
ItsRegistered22 !
(22! "
string22" (
emailAddress22) 5
)225 6
{33 	
var44 

unitOfWork44 
=44 
new44  

UnitOfWork44! +
(44+ ,
new44, /
MemoryGameContext440 A
(44A B
)44B C
)44C D
;44D E
var55 
player55 
=55 

unitOfWork55 #
.55# $
Players55$ +
.55+ ,
Find55, 0
(550 1
x551 2
=>553 5
x556 7
.557 8
EmailAddress558 D
==55E G
emailAddress55H T
)55T U
;55U V
int66 
matches66 
=66 
player66  
.66  !
Count66! &
(66& '
)66' (
;66( )

unitOfWork77 
.77 
Dispose77 
(77 
)77  
;77  !
return88 
matches88 
==88 
$num88 
;88  
}99 	
}:: 
};; ä
gC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountModifiabilityService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,(
IAccountModifiabilityService- I
{		 
public

 
bool

 
ChangeUsername

 "
(

" # 
PlayerCredentialsDTO

# 7 
playerCredentialsDTO

8 L
)

L M
{ 	
string 
emailAddress 
=  ! 
playerCredentialsDTO" 6
.6 7
EmailAddress7 C
;C D
string 
newUsername 
=   
playerCredentialsDTO! 5
.5 6
Username6 >
;> ?

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
var 
player 
= 

unitOfWork #
.# $
Players$ +
.+ ,
Get, /
(/ 0
emailAddress0 <
)< =
;= >
player 
. 
UserName 
= 
newUsername )
;) *
int 
rowsModified 
= 

unitOfWork )
.) *
Complete* 2
(2 3
)3 4
;4 5

unitOfWork 
. 
Dispose 
( 
)  
;  !
return 
rowsModified 
==  "
$num# $
;$ %
} 	
public 
bool 
SetNewPassword "
(" # 
PlayerCredentialsDTO# 7 
playerCredentialsDTO8 L
)L M
{ 	
string 
emailAddress 
=  ! 
playerCredentialsDTO" 6
.6 7
EmailAddress7 C
;C D
string 
password 
=  
playerCredentialsDTO 2
.2 3
Password3 ;
;; <

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
var 
player 
= 

unitOfWork #
.# $
Players$ +
.+ ,
Get, /
(/ 0
emailAddress0 <
)< =
;= >
player 
. 
Password 
= 
password &
;& '
int 
rowsModified 
= 

unitOfWork )
.) *
Complete* 2
(2 3
)3 4
;4 5

unitOfWork 
. 
Dispose 
( 
)  
;  !
return 
rowsModified 
==  "
$num# $
;$ %
}   	
}!! 
}"" ı
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\AccountVerificationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,'
IAccountVerificationService- H
{		 
public

 
bool

  
SetAccountAsVerified

 (
(

( )
string

) /
emailAddress

0 <
)

< =
{ 	

UnitOfWork 

unitOfWork !
=" #
new$ '

UnitOfWork( 2
(2 3
new3 6
MemoryGameContext7 H
(H I
)I J
)J K
;K L
var 
player 
= 

unitOfWork #
.# $
Players$ +
.+ ,
Get, /
(/ 0
emailAddress0 <
)< =
;= >
player 
. 
EmailWasVerified #
=$ %
true& *
;* +
int 
rowsModified 
= 

unitOfWork )
.) *
Complete* 2
(2 3
)3 4
;4 5

unitOfWork 
. 
Dispose 
( 
)  
;  !
return 
rowsModified 
==  "
$num# $
;$ %
} 	
public 
bool &
AssignNewVerificationToken .
(. /
string/ 5
emailAddress6 B
,B C
stringD J
verificationTokenK \
)\ ]
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
var 
player 
= 

unitOfWork #
.# $
Players$ +
.+ ,
Get, /
(/ 0
emailAddress0 <
)< =
;= >
player 
. 
ActivationToken "
=# $
verificationToken% 6
;6 7
int 
rowsModified 
= 

unitOfWork )
.) *
Complete* 2
(2 3
)3 4
;4 5

unitOfWork 
. 
Dispose 
( 
)  
;  !
return 
rowsModified 
==  "
$num# $
;$ %
} 	
public 
bool 
VerifyToken 
(  
string  &
emailAddress' 3
,3 4
string5 ;
verificationToken< M
)M N
{ 	

UnitOfWork   

unitOfWork   !
=  " #
new  $ '

UnitOfWork  ( 2
(  2 3
new  3 6
MemoryGameContext  7 H
(  H I
)  I J
)  J K
;  K L
var!! 
player!! 
=!! 

unitOfWork!! #
.!!# $
Players!!$ +
.!!+ ,
Find!!, 0
(!!0 1
playerToFind!!1 =
=>!!> @
playerToFind!!A M
.!!M N
EmailAddress!!N Z
==!![ ]
emailAddress"" 
&&"" 
playerToFind"" (
.""( )
ActivationToken"") 8
==""9 ;
verificationToken""< M
)""M N
;""N O
int## 
matches## 
=## 
player##  
.##  !
Count##! &
(##& '
)##' (
;##( )

unitOfWork$$ 
.$$ 
Dispose$$ 
($$ 
)$$  
;$$  !
return%% 
matches%% 
==%% 
$num%% 
;%%  
}&& 	
}'' 
}(( œ*
dC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\CardDeckRetrieverService.cs
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
:+ ,%
ICardDeckRetrieverService- F
{ 
private 
CardDeckDTO 
_cardDeckDTO (
;( )
public 
CardDeckDTO 
GetCardDeckAndCards .
(. /
int/ 2

cardDeckId3 =
)= >
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
;K L
CardDeck 
cardDeck 
= 

unitOfWork  *
.* +
	CardDecks+ 4
.4 5
GetCardDeckAndCards5 H
(H I

cardDeckIdI S
)S T
;T U
_cardDeckDTO 
= 
CardDeckMapper )
.) *
	CreateDTO* 3
(3 4
cardDeck4 <
)< =
;= >
IEnumerable 
< 
Card 
> 
cards #
=$ %
cardDeck& .
.. /
Cards/ 4
;4 5
foreach 
( 
Card 

actualCard #
in$ &
cards' ,
), -
{ 
CardDto   
cardDTO   
=    !

CardMapper  " ,
.  , -
	CreateDTO  - 6
(  6 7

actualCard  7 A
)  A B
;  B C
_cardDeckDTO!! 
.!! 
Cards!! "
.!!" #
Add!!# &
(!!& '
cardDTO!!' .
)!!. /
;!!/ 0
_cardDeckDTO"" 
."" 
Cards"" "
.""" #
Add""# &
(""& '
cardDTO""' .
)"". /
;""/ 0
}## 
IList%% 
<%% 
CardDto%% 
>%% 
cardss%% !
=%%" #
_cardDeckDTO%%$ 0
.%%0 1
Cards%%1 6
;%%6 7
int&& 
	lastIndex&& 
=&& 
cardss&& "
.&&" #
Count&&# (
(&&( )
)&&) *
-&&+ ,
$num&&- .
;&&. /
while'' 
('' 
	lastIndex'' 
>'' 
$num''  
)''  !
{(( 
int)) 
randomIndex)) 
=))  !,
 GenerateRandomNumberBetweenRange))" B
())B C
$num))C D
,))D E
	lastIndex))F O
)))O P
;))P Q
CardDto** 
auxiliaryContainer** *
=**+ ,
cardss**- 3
[**3 4
	lastIndex**4 =
]**= >
;**> ?
cardss++ 
[++ 
	lastIndex++  
]++  !
=++" #
cardss++$ *
[++* +
randomIndex+++ 6
]++6 7
;++7 8
cardss,, 
[,, 
randomIndex,, "
],," #
=,,$ %
auxiliaryContainer,,& 8
;,,8 9
	lastIndex-- 
---- 
;-- 
}.. 
return// 
_cardDeckDTO// 
;//  
}00 	
private22 
void22 
ShuffleCards22 !
(22! "
)22" #
{33 	
IList44 
<44 
CardDto44 
>44 
cards44  
=44! "
_cardDeckDTO44# /
.44/ 0
Cards440 5
;445 6
int55 
	lastIndex55 
=55 
cards55 !
.55! "
Count55" '
(55' (
)55( )
-55* +
$num55, -
;55- .
while66 
(66 
	lastIndex66 
>66 
$num66  
)66  !
{77 
int88 
randomIndex88 
=88  !,
 GenerateRandomNumberBetweenRange88" B
(88B C
$num88C D
,88D E
	lastIndex88F O
)88O P
;88P Q
CardDto99 
auxiliaryContainer99 *
=99+ ,
cards99- 2
[992 3
	lastIndex993 <
]99< =
;99= >
cards:: 
[:: 
	lastIndex:: 
]::  
=::! "
cards::# (
[::( )
randomIndex::) 4
]::4 5
;::5 6
cards;; 
[;; 
randomIndex;; !
];;! "
=;;# $
auxiliaryContainer;;% 7
;;;7 8
	lastIndex<< 
--<< 
;<< 
}== 
}>> 	
private@@ 
int@@ ,
 GenerateRandomNumberBetweenRange@@ 4
(@@4 5
int@@5 8
minimum@@9 @
,@@@ A
int@@B E
maximum@@F M
)@@M N
{AA 	
RandomBB !
randomNumberGeneratorBB (
=BB) *
newBB+ .
RandomBB/ 5
(BB5 6
)BB6 7
;BB7 8
intCC 
randomNumberCC 
=CC !
randomNumberGeneratorCC 4
.CC4 5
NextCC5 9
(CC9 :
minimumCC: A
,CCA B
maximumCCC J
)CCJ K
;CCK L
returnDD 
randomNumberDD 
;DD  
}EE 	
}GG 
}HH Á
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\CommunicationService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
[ 
ServiceBehavior 
( 
ConcurrencyMode $
=% &
ConcurrencyMode' 6
.6 7
Single7 =
,= >
InstanceContextMode 
= 
InstanceContextMode 0
.0 1
Single1 7
)7 8
]8 9
public		 

partial		 
class		 
MemoryGameService		 *
:		+ ,!
ICommunicationService		- B
{

 
private 

Dictionary 
< 
IChatClient &
,& '
string( .
>. /
_players0 8
=9 :
new; >

Dictionary? I
<I J
IChatClientJ U
,U V
stringW ]
>] ^
(^ _
)_ `
;` a
public 
void 
SendMessage 
(  
string  &
message' .
). /
{ 	
var 

connection 
= 
OperationContext -
.- .
Current. 5
.5 6
GetCallbackChannel6 H
<H I
IChatClientI T
>T U
(U V
)V W
;W X
string 
player 
; 
if 
( 
! 
_players 
. 
TryGetValue %
(% &

connection& 0
,0 1
out2 5
player6 <
)< =
)= >
{ 
return 
; 
} 
foreach 
( 
var 
other 
in !
_players" *
.* +
Keys+ /
)/ 0
{ 
if 
( 
other 
== 

connection '
)' (
{ 
continue 
; 
} 
other 
. 
ReciveMessage #
(# $
player$ *
,* +
message, 3
)3 4
;4 5
} 
} 	
public 
void 
Join 
( 
string 
username  (
)( )
{ 	
var   

connection   
=   
OperationContext   -
.  - .
Current  . 5
.  5 6
GetCallbackChannel  6 H
<  H I
IChatClient  I T
>  T U
(  U V
)  V W
;  W X
_players!! 
[!! 

connection!! 
]!!  
=!!! "
username!!# +
;!!+ ,
}"" 	
}## 
}$$ Ú	
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MailingService.cs
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
IMailingService- <
{ 
public 
void !
SendVerificationToken )
() *
string* 0
name1 5
,5 6
string7 =
emailAddress> J
,J K
stringL R
verificationTokenS d
)d e
{		 	
MailTemplate

 
mt

 
=

 
new

 !
MailTemplate

" .
(

. /
)

/ 0
;

0 1
mt 
. 
SetReceiver 
( 
name 
,  
emailAddress! -
)- .
;. /
mt 
. 

SetMessage 
( 
$str &
,& '
$str 9
+: ;
verificationToken< M
)M N
;N O
mt 
. 
Send 
( 
) 
; 
} 	
} 
} á

XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MatchService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
public 

partial 
class 
MemoryGameService *
:+ ,
IMatchService- :
{		 
public

 
void

 
GetActivePlayers

 $
(

$ %
)

% &
{ 	
List 
< 
string 
> 
activePlayers &
=' (
new) ,
List- 1
<1 2
string2 8
>8 9
(9 :
): ;
;; <
activePlayers 
. 
Add 
( 
DateTime &
.& '
Now' *
.* +
ToString+ 3
(3 4
)4 5
)5 6
;6 7
OperationContext 
. 
Current $
.$ %
GetCallbackChannel% 7
<7 8!
IMatchServiceCallback8 M
>M N
(N O
)O P
.P Q
ShowActivePlayersQ b
(b c
activePlayersc p
)p q
;q r
} 	
} 
} Å
]C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\MemoryGameService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{ 
[ &
GlobalErrorHandlerBehavior 
(  
typeof  &
(& '
GlobalErrorHandler' 9
)9 :
): ;
]; <
public 

partial 
class 
MemoryGameService *
{ 
} 
} ‚
aC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\PlayerRegistryService.cs
	namespace 	
MemoryGameService
 
. 
Services $
{		 
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
+ ,"
IPlayerRegistryService

- C
{ 
public 
bool 
RegisterNewPlayer %
(% &
	PlayerDTO& /
	playerDTO0 9
)9 :
{ 	
Player"" 
	newPlayer"" 
="" 
PlayerMapper"" +
.""+ ,
CreateEntity"", 8
(""8 9
	playerDTO""9 B
)""B C
;""C D
	newPlayer## 
.## 
EmailWasVerified## &
=##' (
false##) .
;##. /
	newPlayer$$ 
.$$ 

TotalScore$$  
=$$! "
$num$$# $
;$$$ %
var%% 
unityOfWork%% 
=%% 
new%% !

UnitOfWork%%" ,
(%%, -
new%%- 0
MemoryGameContext%%1 B
(%%B C
)%%C D
)%%D E
;%%E F
unityOfWork&& 
.&& 
Players&& 
.&&  
Add&&  #
(&&# $
	newPlayer&&$ -
)&&- .
;&&. /
int'' 
playerWasRegistered'' #
=''$ %
unityOfWork''& 1
.''1 2
Complete''2 :
('': ;
)''; <
;''< =
unityOfWork(( 
.(( 
Dispose(( 
(((  
)((  !
;((! "
return)) 
playerWasRegistered)) &
==))' )
$num))* +
;))+ ,
}** 	
public,, 
bool,, #
EmailAddressIsAvailable,, +
(,,+ ,
string,,, 2
emailAddress,,3 ?
),,? @
{-- 	

UnitOfWork.. 

unitOfWork.. !
=.." #
new..$ '

UnitOfWork..( 2
(..2 3
new..3 6
MemoryGameContext..7 H
(..H I
)..I J
)..J K
;..K L
var// 
player// 
=// 

unitOfWork// #
.//# $
Players//$ +
.//+ ,
Get//, /
(/// 0
emailAddress//0 <
)//< =
;//= >

unitOfWork00 
.00 
Dispose00 
(00 
)00  
;00  !
return11 
player11 
==11 
null11 !
;11! "
}22 	
public44 
bool44 
UserNameIsAvailable44 '
(44' (
string44( .
username44/ 7
)447 8
{55 	

UnitOfWork66 

unitOfWork66 !
=66" #
new66$ '

UnitOfWork66( 2
(662 3
new663 6
MemoryGameContext667 H
(66H I
)66I J
)66J K
;66K L
var77 
player77 
=77 

unitOfWork77 #
.77# $
Players77$ +
.77+ ,
Find77, 0
(770 1
playerToFind771 =
=>77> @
playerToFind77A M
.77M N
UserName77N V
==77W Y
username77Z b
)77b c
;77c d
int88 (
playersWhichHaveThatUserName88 ,
=88- .
player88/ 5
.885 6
Count886 ;
(88; <
)88< =
;88= >

unitOfWork99 
.99 
Dispose99 
(99 
)99  
;99  !
return:: (
playersWhichHaveThatUserName:: /
==::0 2
$num::3 4
;::4 5
};; 	
}>> 
}?? ≈
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\ScoreService.cs
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
:+ ,
IScoreService- :
{ 
List 
< 
PlayerScoreDTO 
> 
IScoreService *
.* +#
GetPlayersWithBestScore+ B
(B C
intC F(
numberOfPlayersToBeRetrievedG c
)c d
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
;K L
IEnumerable 
< 
Player 
> 
playerEntities  .
=/ 0

unitOfWork 
. 
Players "
." ##
GetPlayersWithBestScore# :
(: ;(
numberOfPlayersToBeRetrieved; W
)W X
;X Y
List 
< 
PlayerScoreDTO 
>  !
playersWithBestScores! 6
=7 8!
MapFromEntitiesToDTOs9 N
(N O
playerEntitiesO ]
)] ^
;^ _
return !
playersWithBestScores (
;( )
} 	
private 
List 
< 
PlayerScoreDTO #
># $!
MapFromEntitiesToDTOs% :
(: ;
IEnumerable; F
<F G
PlayerG M
>M N
listOfEntitiesO ]
)] ^
{ 	
List 
< 
PlayerScoreDTO 
>  !
playersWithBestScores! 6
=7 8
new9 <
List= A
<A B
PlayerScoreDTOB P
>P Q
(Q R
)R S
;S T
foreach 
( 
Player 
player "
in# %
listOfEntities& 4
)4 5
{ 
PlayerScoreDTO 
playerScoreDTO -
=. /
PlayerScoreMapper0 A
.A B
	createDTOB K
(K L
playerL R
)R S
;S T!
playersWithBestScores %
.% &
Add& )
() *
playerScoreDTO* 8
)8 9
;9 :
} 
return !
playersWithBestScores (
;( )
}   	
}!! 
}"" ç
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\TimerInitializerService.cs
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
:+ ,$
ITimerInitializerService- E
{ 
public		 
void		 
InitializeTimer		 #
(		# $
)		$ %
{

 	
Timer 
timer 
= 
SingletonTimer (
.( )
GetInstance) 4
(4 5
)5 6
;6 7
timer 
. 
Start 
( 
) 
; 
} 	
} 
} Œ
XC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Services\TimerService.cs
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
ITimerService		- :
{

 
public 
void 
UpdateTimer 
(  
)  !
{ 	
Timer 
timer 
= 
SingletonTimer (
.( )
GetInstance) 4
(4 5
)5 6
;6 7
OperationContext 
. 
Current $
.$ %
GetCallbackChannel% 7
<7 8!
ITimerServiceCallback8 M
>M N
(N O
)O P
.P Q
DisplayTimerValueQ b
(b c
$numc e
)e f
;f g
} 	
} 
} †	
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
} Ã
[C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGameService\Utilities\SingletonTimer.cs
	namespace 	
MemoryGameService
 
. 
	Utilities %
{ 
public 

class 
SingletonTimer 
{ 
private 
static 
Timer 
_timer #
;# $
private

 
SingletonTimer

 
(

 
)

  
{ 	
} 	
public 
static 
Timer 
GetInstance '
(' (
)( )
{ 	
if 
( 
_timer 
== 
null 
) 
{ 
_timer 
= 
new 
Timer "
(" #
)# $
;$ %
_timer 
. 
Elapsed 
+= !
null" &
;& '
_timer 
. 
Interval 
=  !
$num" &
;& '
_timer 
. 
Enabled 
=  
true! %
;% &
_timer 
. 
Start 
( 
) 
; 
} 
return 
_timer 
; 
} 	
void 
HandleElapsed 
( 
object !
sender" (
,( )
System* 0
.0 1
Timers1 7
.7 8
ElapsedEventArgs8 H
eI J
)J K
{ 	
Console   
.   
	WriteLine   
(   
DateTime   &
.  & '
Now  ' *
.  * +
ToString  + 3
(  3 4
)  4 5
)  5 6
;  6 7
}!! 	
}## 
}$$ 