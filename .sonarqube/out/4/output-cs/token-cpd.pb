˙
ÖC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\EmailAddressAvailabilityValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class 2
&EmailAddressAvailabilityValidationRule 7
:8 9
IRegistryRule: G
{ 
private 
string 
_emailAddress $
;$ %
public  
ValidationRuleResult #
Validate$ ,
(, -
RegistryData- 9
registryData: F
)F G
{ 	
_emailAddress 
= 
registryData (
.( )
EmailAddress) 5
;5 6
if

 
(

 #
EmailAddressIsAvailable

 '
(

' (
)

( )
)

) *
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G
$strH \
+] ^
$str E
)E F
;F G
} 	
private 
bool #
EmailAddressIsAvailable ,
(, -
)- .
{ 	
MemoryGameService 
. '
PlayerRegistryServiceClient 9'
playerRegistryServiceClient: U
=V W
new 
MemoryGameService %
.% &'
PlayerRegistryServiceClient& A
(A B
)B C
;C D
bool #
emailAddressIsAvailable (
=) *'
playerRegistryServiceClient +
.+ ,#
EmailAddressIsAvailable, C
(C D
_emailAddressD Q
)Q R
;R S
return #
emailAddressIsAvailable *
;* +
} 	
} 
} ¸
yC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\EmailAddressValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class &
EmailAddressValidationRule +
:, -
IRegistryRule. ;
{ 
private 
string 
_emailAddress $
;$ %
public		  
ValidationRuleResult		 #
Validate		$ ,
(		, -
RegistryData		- 9
registryData		: F
)		F G
{

 	
_emailAddress 
= 
registryData (
.( )
EmailAddress) 5
;5 6
if 
( 
HasValidFormat 
( 
)  
&&! #1
%IsLessOrEqualsThan254CharactersLength$ I
(I J
)J K
)K L
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G
$strH X
)X Y
;Y Z
} 	
private 
bool 
HasValidFormat #
(# $
)$ %
{ 	
Regex 
regularExpression #
=$ %
new& )
Regex* /
(/ 0
$str0 W
)W X
;X Y
bool 
hasValidFormat 
=  !
regularExpression" 3
.3 4
IsMatch4 ;
(; <
_emailAddress< I
)I J
;J K
return 
hasValidFormat !
;! "
} 	
private 
bool 1
%IsLessOrEqualsThan254CharactersLength :
(: ;
); <
{ 	
return 
_emailAddress  
.  !
Length! '
<=( *
$num+ .
;. /
} 	
} 
}   ç
lC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\IRegistryRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

	interface 
IRegistryRule "
{  
ValidationRuleResult 
Validate %
(% &
RegistryData& 2
registryData3 ?
)? @
;@ A
} 
} Ç$
uC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\PasswordValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class "
PasswordValidationRule '
:( )
IRegistryRule* 7
{ 
private 
string 
	_password  
;  !
private 
Regex 
_regularExpression (
;( )
private		 
MatchCollection		 
_matches		  (
;		( )
public

  
ValidationRuleResult

 #
Validate

$ ,
(

, -
RegistryData

- 9
registryData

: F
)

F G
{ 	
	_password 
= 
registryData $
.$ %
Password% -
;- .
if 
( )
HasAtLeastOneSpecialCharacter ,
(, -
)- .
&& &
HasAtLeastOneCapitalLetter -
(- .
). /
&& (
HasAtLeastOneLowercaseLetter /
(/ 0
)0 1
&& +
IsBetween8And25CharactersLength 2
(2 3
)3 4
&& )
HasAtLeastOneNumericCharacter 0
(0 1
)1 2
)2 3
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G
$strH ]
)] ^
;^ _
} 	
private 
bool )
HasAtLeastOneSpecialCharacter 2
(2 3
)3 4
{ 	
_regularExpression 
=  
new! $
Regex% *
(* +
$str+ 1
)1 2
;2 3
_matches 
= 
_regularExpression )
.) *
Matches* 1
(1 2
	_password2 ;
); <
;< =
return 
_matches 
. 
Count !
>=" $
$num% &
;& '
} 	
private   
bool   &
HasAtLeastOneCapitalLetter   /
(  / 0
)  0 1
{!! 	
_regularExpression"" 
=""  
new""! $
Regex""% *
(""* +
$str""+ 3
)""3 4
;""4 5
_matches## 
=## 
_regularExpression## )
.##) *
Matches##* 1
(##1 2
	_password##2 ;
)##; <
;##< =
return$$ 
_matches$$ 
.$$ 
Count$$ !
>=$$" $
$num$$% &
;$$& '
}%% 	
private'' 
bool'' )
HasAtLeastOneNumericCharacter'' 2
(''2 3
)''3 4
{(( 	
_regularExpression)) 
=))  
new))! $
Regex))% *
())* +
$str))+ 2
)))2 3
;))3 4
_matches** 
=** 
_regularExpression** )
.**) *
Matches*** 1
(**1 2
	_password**2 ;
)**; <
;**< =
return++ 
_matches++ 
.++ 
Count++ !
>=++" $
$num++% &
;++& '
},, 	
private.. 
bool.. (
HasAtLeastOneLowercaseLetter.. 1
(..1 2
)..2 3
{// 	
_regularExpression00 
=00  
new00! $
Regex00% *
(00* +
$str00+ 3
)003 4
;004 5
_matches11 
=11 
_regularExpression11 )
.11) *
Matches11* 1
(111 2
	_password112 ;
)11; <
;11< =
return22 
_matches22 
.22 
Count22 !
>=22" $
$num22% &
;22& '
}33 	
private55 
bool55 +
IsBetween8And25CharactersLength55 4
(554 5
)555 6
{66 	
return77 
	_password77 
.77 
Length77 #
>=77$ &
$num77' (
&&77) +
	_password77, 5
.775 6
Length776 <
<=77= ?
$num77@ B
;77B C
}88 	
}99 
}:: Ø
ÅC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\UsernameAvailabilityValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class .
"UsernameAvailabilityValidationRule 3
:4 5
IRegistryRule6 C
{ 
private 
string 
	_username  
;  !
public  
ValidationRuleResult #
Validate$ ,
(, -
RegistryData- 9
registryData: F
)F G
{ 	
	_username 
= 
registryData $
.$ %
Username% -
;- .
if

 
(

 
UsernameIsAvailable

 #
(

# $
)

$ %
)

% &
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G
$strH q
)q r
;r s
} 	
private 
bool 
UsernameIsAvailable (
(( )
)) *
{ 	
MemoryGameService 
. '
PlayerRegistryServiceClient 9(
_playerRegistryServiceClient: V
=W X
new 
MemoryGameService %
.% &'
PlayerRegistryServiceClient& A
(A B
)B C
;C D
bool 
usernameIsAvailable $
=% &(
_playerRegistryServiceClient' C
.C D
UserNameIsAvailableD W
(W X
	_usernameX a
)a b
;b c
return 
usernameIsAvailable &
;& '
} 	
} 
} ¿
uC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\UsernameValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class "
UsernameValidationRule '
:( )
IRegistryRule* 7
{ 
private 
string 
	_username  
;  !
public  
ValidationRuleResult #
Validate$ ,
(, -
RegistryData- 9
registryData: F
)F G
{		 	
	_username

 
=

 
registryData

 $
.

$ %
Username

% -
;

- .
if 
( 
HasValidFormat 
( 
) 
&&  "+
IsBetween4And16CharactersLength# B
(B C
)C D
)D E
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G
$strH d
)d e
;e f
} 	
private 
bool 
HasValidFormat #
(# $
)$ %
{ 	
Regex 
regularExpression #
=$ %
new& )
Regex* /
(/ 0
$str0 8
)8 9
;9 :
bool 
hasValidFormat 
=  !
regularExpression" 3
.3 4
IsMatch4 ;
(; <
	_username< E
)E F
;F G
return 
hasValidFormat !
;! "
} 	
private 
bool +
IsBetween4And16CharactersLength 4
(4 5
)5 6
{ 	
return 
	_username 
. 
Length #
>=$ &
$num' (
&&) +
	_username, 5
.5 6
Length6 <
<== ?
$num@ B
;B C
} 	
} 
} ∆
kC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\RegistryData.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class 
RegistryData 
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
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 í
`C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\ValidationRuleResult.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

class  
ValidationRuleResult %
{ 
public 
const 
int 
ERROR 
=  
$num! "
;" #
public 
const 
int 
SUCCESS  
=! "
$num# $
;$ %
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Message		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public  
ValidationRuleResult #
(# $
)$ %
{ 	
} 	
public  
ValidationRuleResult #
(# $
int$ '
status( .
). /
{ 	
Status 
= 
status 
; 
} 	
public  
ValidationRuleResult #
(# $
int$ '
status( .
,. /
string0 6
message7 >
)> ?
{ 	
Status 
= 
status 
; 
Message 
= 
message 
; 
} 	
} 
} à
RC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Utilities\TokenManager.cs
	namespace 	

MemoryGame
 
. 
	Utilities 
{ 
public 

static 
class 
TokenManager $
{ 
public 
static 
string %
GenerateVerificationToken 6
(6 7
)7 8
{ 	
MemoryGameService 
.  
TokenGeneratorClient 2
client3 9
=: ;
new 
MemoryGameService %
.% & 
TokenGeneratorClient& :
(: ;
); <
;< =
return		 
client		 
.		 
GenerateToken		 '
(		' (
$num		( )
)		) *
;		* +
}

 	
public 
static 
void !
SendVerificationToken 0
(0 1
string1 7
username8 @
,@ A
stringB H
emailAddressI U
,U V
stringW ]
verificationToken^ o
)o p
{ 	
MemoryGameService 
.  
MailingServiceClient 2
client3 9
=: ;
new 
MemoryGameService %
.% & 
MailingServiceClient& :
(: ;
); <
;< =
client 
. !
SendVerificationToken (
(( )
username) 1
,1 2
emailAddress3 ?
,? @
verificationTokenA R
)R S
;S T
} 	
} 
} ì0
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ActivationToken.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
ActivationToken (
:) *
Window+ 1
{		 
private

 
string

 
_emailAddress

 $
;

$ %
private 
string 
	_username  
;  !
public 
ActivationToken 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
ActivationToken 
( 
string %
emailAddress& 2
,2 3
string4 :
username; C
)C D
{ 	
InitializeComponent 
(  
)  !
;! "
_emailAddress 
= 
emailAddress (
;( )
	_username 
= 
username  
;  !
} 	
private 
void 
OkButtonClicked $
($ %
object% +
sender, 2
,2 3
RoutedEventArgs4 C
eD E
)E F
{ 	
if 
( 
TokenIsCorrect 
( 
)  
)  !
{ 
if 
( *
AccountWasSuccessfullyVerified 2
(2 3
)3 4
)4 5
{ 

MessageBox 
. 
Show #
(# $
$str$ B
)B C
;C D
Login!! 
	loginView!! #
=!!$ %
new!!& )
Login!!* /
(!!/ 0
)!!0 1
;!!1 2
	loginView"" 
."" 
Show"" "
(""" #
)""# $
;""$ %
this## 
.## 
Close## 
(## 
)##  
;##  !
}$$ 
else%% 
{&& 

MessageBox'' 
.'' 
Show'' #
(''# $
$str''$ B
)''B C
;''C D
}(( 
})) 
else** 
{++ 

MessageBox,, 
.,, 
Show,, 
(,,  
$str,,  p
),,p q
;,,q r
}-- 
}.. 	
private00 
void00 $
SendNewCodeButtonClicked00 -
(00- .
object00. 4
sender005 ;
,00; <
RoutedEventArgs00= L
e00M N
)00N O
{11 	
MemoryGameService33 
.33  
TokenGeneratorClient33 2 
tokenGeneratorClient333 G
=33H I
new44 
MemoryGameService44 %
.44% & 
TokenGeneratorClient44& :
(44: ;
)44; <
;44< =
string55 
newToken55 
=55  
tokenGeneratorClient55 2
.552 3
GenerateToken553 @
(55@ A
$num55A B
)55B C
;55C D
MemoryGameService77 
.77 ,
 AccountVerificationServiceClient77 >,
 accountVerificationServiceClient77? _
=77` a
new88 
MemoryGameService88 %
.88% &,
 AccountVerificationServiceClient88& F
(88F G
)88G H
;88H I,
 accountVerificationServiceClient99 ,
.99, -&
AssignNewVerificationToken99- G
(99G H
_emailAddress99H U
,99U V
newToken99W _
)99_ `
;99` a
MemoryGameService;; 
.;;  
MailingServiceClient;; 2 
mailingServiceClient;;3 G
=;;H I
new<< 
MemoryGameService<< %
.<<% & 
MailingServiceClient<<& :
(<<: ;
)<<; <
;<<< = 
mailingServiceClient==  
.==  !!
SendVerificationToken==! 6
(==6 7
	_username==7 @
,==@ A
_emailAddress==B O
,==O P
newToken==Q Y
)==Y Z
;==Z [

MessageBox?? 
.?? 
Show?? 
(?? 
$str?? 2
)??2 3
;??3 4
}AA 	
privateCC 
boolCC 
TokenIsCorrectCC #
(CC# $
)CC$ %
{DD 	
MemoryGameServiceEE 
.EE ,
 AccountVerificationServiceClientEE >,
 accountVerificationServiceClientEE? _
=EE` a
newFF 
MemoryGameServiceFF %
.FF% &,
 AccountVerificationServiceClientFF& F
(FFF G
)FFG H
;FFH I
returnGG ,
 accountVerificationServiceClientGG 3
.GG3 4
VerifyTokenGG4 ?
(GG? @
_emailAddressGG@ M
,GGM N
TextBoxTokenGGO [
.GG[ \
TextGG\ `
)GG` a
;GGa b
}HH 	
privateJJ 
boolJJ *
AccountWasSuccessfullyVerifiedJJ 3
(JJ3 4
)JJ4 5
{KK 	
MemoryGameServiceLL 
.LL ,
 AccountVerificationServiceClientLL >,
 accountVerificationServiceClientLL? _
=LL` a
newMM 
MemoryGameServiceMM %
.MM% &,
 AccountVerificationServiceClientMM& F
(MMF G
)MMG H
;MMH I
returnNN ,
 accountVerificationServiceClientNN 3
.NN3 4 
SetAccountAsVerifiedNN4 H
(NNH I
_emailAddressNNI V
)NNV W
;NNW X
}OO 	
privateQQ 
voidQQ 
BackButtonClickedQQ &
(QQ& '
objectQQ' -
senderQQ. 4
,QQ4 5
RoutedEventArgsQQ6 E
eQQF G
)QQG H
{RR 	

MainWindowSS 
mainWindowViewSS %
=SS& '
newSS( +

MainWindowSS, 6
(SS6 7
)SS7 8
;SS8 9
mainWindowViewTT 
.TT 
ShowTT 
(TT  
)TT  !
;TT! "
thisUU 
.UU 
CloseUU 
(UU 
)UU 
;UU 
}VV 	
}WW 
}XX Ò
UC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ChangePassword.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
ChangePassword '
:( )
Window* 0
{		 
public

 
ChangePassword

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ·9
UC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ChangeUsername.xaml.cs
	namespace 	

MemoryGame
 
{ 
public		 

partial		 
class		 
ChangeUsername		 '
:		( )
Window		* 0
{

 
private 
string 
_userEmailAddress (
;( )
private 
string 
_newUsername #
;# $
public 
ChangeUsername 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
Sesion 
userSession 
=  
Sesion! '
.' (
	GetSesion( 1
;1 2
_userEmailAddress 
= 
userSession  +
.+ ,
EmailAddress, 8
;8 9
LabelOldUsername 
. 
Content $
=% &
GetOldUsername' 5
(5 6
)6 7
;7 8
} 	
private 
void (
TextBoxNewUsername_LostFocus 1
(1 2
object2 8
sender9 ?
,? @
RoutedEventArgsA P
eQ R
)R S
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
TextBoxNewUsername% 7
.7 8
Text8 <
)< =
)= >
{ 
TextBoxNewUsername "
." #

Visibility# -
=. /
System0 6
.6 7
Windows7 >
.> ?

Visibility? I
.I J
	CollapsedJ S
;S T
waterMarkText 
. 

Visibility (
=) *
System+ 1
.1 2
Windows2 9
.9 :

Visibility: D
.D E
VisibleE L
;L M
} 
} 	
private 
void "
waterMarkText_GotFocus +
(+ ,
object, 2
sender3 9
,9 :
RoutedEventArgs; J
eK L
)L M
{ 	
waterMarkText   
.   

Visibility   $
=  % &
System  ' -
.  - .
Windows  . 5
.  5 6

Visibility  6 @
.  @ A
	Collapsed  A J
;  J K
TextBoxNewUsername!! 
.!! 

Visibility!! )
=!!* +
System!!, 2
.!!2 3
Windows!!3 :
.!!: ;

Visibility!!; E
.!!E F
Visible!!F M
;!!M N
TextBoxNewUsername"" 
."" 
Focus"" $
(""$ %
)""% &
;""& '
}## 	
private%% 
string%% 
GetOldUsername%% %
(%%% &
)%%& '
{&& 	
MemoryGameService'' 
.'' &
AccessibilityServiceClient'' 8%
accesibilityServiceClient''9 R
=''S T
new(( 
MemoryGameService(( %
.((% &&
AccessibilityServiceClient((& @
(((@ A
)((A B
;((B C
return)) %
accesibilityServiceClient)) ,
.)), -
GetUsername))- 8
())8 9
_userEmailAddress))9 J
)))J K
;))K L
}** 	
private,, 
void,, $
SaveChangesButtonClicked,, -
(,,- .
object,,. 4
sender,,5 ;
,,,; <
RoutedEventArgs,,= L
e,,M N
),,N O
{-- 	
_newUsername// 
=// 
TextBoxNewUsername// -
.//- .
Text//. 2
;//2 3
if00 
(00 
UsernameIsValid00 
(00  
)00  !
)00! "
{11 
if22 
(22 
UsernameIsAvailable22 '
(22' (
)22( )
)22) *
{33 
if44 
(44 
ChangeUserName44 &
(44& '
)44' (
)44( )
{55 

MessageBox66 "
.66" #
Show66# '
(66' (
$str66( X
)66X Y
;66Y Z
GoToMainWindow77 &
(77& '
)77' (
;77( )
}88 
else99 
{:: 

MessageBox;; "
.;;" #
Show;;# '
(;;' (
$str	;;( É
)
;;É Ñ
;
;;Ñ Ö
}<< 
}>> 
else?? 
{@@ 

MessageBoxAA 
.AA 
ShowAA #
(AA# $
$str	AA$ ê
)
AAê ë
;
AAë í
}BB 
}CC 
elseDD 
{EE 

MessageBoxFF 
.FF 
ShowFF 
(FF  
$strFF  \
)FF\ ]
;FF] ^
}GG 
}II 	
privateKK 
boolKK 
UsernameIsAvailableKK (
(KK( )
)KK) *
{LL 	
MemoryGameServiceMM 
.MM '
PlayerRegistryServiceClientMM 9'
playerRegistryServiceClientMM: U
=MMV W
newNN 
MemoryGameServiceNN %
.NN% &'
PlayerRegistryServiceClientNN& A
(NNA B
)NNB C
;NNC D
returnOO '
playerRegistryServiceClientOO .
.OO. /
UserNameIsAvailableOO/ B
(OOB C
_newUsernameOOC O
)OOO P
;OOP Q
}PP 	
privateRR 
boolRR 
UsernameIsValidRR $
(RR$ %
)RR% &
{SS 	
returnTT 
_newUsernameTT 
.TT  
LengthTT  &
>TT' (
$numTT) *
;TT* +
}UU 	
privateWW 
boolWW 
ChangeUserNameWW #
(WW# $
)WW$ %
{XX 	
MemoryGameServiceYY 
.YY -
!AccountModifiabilityServiceClientYY ?-
!accountModifiabilityServiceClientYY@ a
=YYb c
newZZ 
MemoryGameServiceZZ %
.ZZ% &-
!AccountModifiabilityServiceClientZZ& G
(ZZG H
)ZZH I
;ZZI J
MemoryGameService\\ 
.\\ 
DataTransferObjects\\ 1
.\\1 2 
PlayerCredentialsDTO\\2 F 
playerCredentialsDTO\\G [
=\\\ ]
new]] 
MemoryGameService]] %
.]]% &
DataTransferObjects]]& 9
.]]9 : 
PlayerCredentialsDTO]]: N
(]]N O
)]]O P
{^^ 
Username__ 
=__ 
_newUsername__ +
,__+ ,
EmailAddress``  
=``! "
_userEmailAddress``# 4
}aa 
;aa 
returncc -
!accountModifiabilityServiceClientcc 4
.cc4 5
ChangeUsernamecc5 C
(ccC D 
playerCredentialsDTOccD X
)ccX Y
;ccY Z
}dd 	
privateff 
voidff 
GoToMainWindowff #
(ff# $
)ff$ %
{gg 	

MainWindowhh 

mainWindowhh !
=hh" #
newhh$ '

MainWindowhh( 2
(hh2 3
)hh3 4
;hh4 5

mainWindowii 
.ii 
Showii 
(ii 
)ii 
;ii 
thisjj 
.jj 
Closejj 
(jj 
)jj 
;jj 
}kk 	
}ll 
}mm ¨
KC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Chat.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
Chat 
: 
Window  &
,& '
Proxy( -
.- .)
ICommunicationServiceCallback. K
{ 
private 
Proxy 
. &
CommunicationServiceClient 0
server1 7
=8 9
null: >
;> ?
private 
InstanceContext 
context  '
=( )
null* .
;. /
Sesion 
playerSesion 
= 
Sesion $
.$ %
	GetSesion% .
;. /
public 
Chat 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
context 
= 
new 
InstanceContext )
() *
this* .
). /
;/ 0
server 
= 
new 
Proxy 
. &
CommunicationServiceClient 9
(9 :
context: A
)A B
;B C
server 
. 
Join 
( 
playerSesion $
.$ %
Username% -
)- .
;. /
} 	
public 
void 
ReciveMessage !
(! "
string" (
username) 1
,1 2
string3 9
message: A
)A B
{ 	
string 
format 
= 
$str  
+! "
username# +
+, -
$str. 2
+3 4
message5 <
;< =
ChatBox 
. 

AppendText 
( 
format %
)% &
;& '
ChatBox 
. 
ScrollToEnd 
(  
)  !
;! "
} 	
private   
void   $
SendMessageClickedButton   -
(  - .
object  . 4
sender  5 ;
,  ; <
RoutedEventArgs  = L
e  M N
)  N O
{!! 	
string"" 
message"" 
="" !
TextBoxMessageContent"" 2
.""2 3
Text""3 7
;""7 8
if## 
(## 
!## 
string## 
.## 
IsNullOrEmpty## %
(##% &
message##& -
)##- .
)##. /
{$$ 
server%% 
.%% 
SendMessage%% "
(%%" #
message%%# *
)%%* +
;%%+ ,
}&& 
string(( 
format(( 
=(( 
$str((  
+((! "
playerSesion((# /
.((/ 0
Username((0 8
+((9 :
$str((; ?
+((@ A
message((B I
;((I J
ChatBox)) 
.)) 

AppendText)) 
()) 
format)) %
)))% &
;))& '
ChatBox** 
.** 
ScrollToEnd** 
(**  
)**  !
;**! "!
TextBoxMessageContent++ !
.++! "
Clear++" '
(++' (
)++( )
;++) *
},, 	
private.. 
void.. 
EnterKeyPressed.. $
(..% &
object..& ,
sender..- 3
,..3 4
KeyEventArgs..5 A
e..B C
)..C D
{// 	
if00 
(00 
e00 
.00 
Key00 
==00 
Key00 
.00 
Enter00 "
)00" #
{11 $
SendMessageClickedButton22 (
(22( )
this22) -
,22- .
new22/ 2
RoutedEventArgs223 B
(22B C
)22C D
)22D E
;22E F
}33 
}44 	
}55 
}66 ¶
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\CreateGame.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 

CreateGame #
:$ %
Window& ,
{		 
public

 

CreateGame

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
BackButtonClicked &
(& '
object' -
sender. 4
,4 5
RoutedEventArgs6 E
eF G
)G H
{ 	
MainMenu 
mainMenuView !
=" #
new$ '
MainMenu( 0
(0 1
)1 2
;2 3
mainMenuView 
. 
Show 
( 
) 
;  
this 
. 
Close 
( 
) 
; 
} 	
} 
} †
OC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\JoinGame.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
JoinGame !
:" #
Window$ *
{		 
public

 
JoinGame

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
BackButtonClicked &
(& '
object' -
sender. 4
,4 5
RoutedEventArgs6 E
eF G
)G H
{ 	
MainMenu 
mainMenuView !
=" #
new$ '
MainMenu( 0
(0 1
)1 2
;2 3
mainMenuView 
. 
Show 
( 
) 
;  
this 
. 
Close 
( 
) 
; 
} 	
} 
} Æ2
LC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Login.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
Login 
:  
Window! '
{ 
public 
Login 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
bool 
LoginIsValid  
(  !
)! "
{ 	&
AccessibilityServiceClient &
client' -
=. /
new0 3&
AccessibilityServiceClient4 N
(N O
)O P
;P Q
string 
encryptedPassword $
=% &
MD5Encryption' 4
.4 5
Encrypt5 <
(< =
PasswordBoxPassword= P
.P Q
PasswordQ Y
)Y Z
;Z [
string 
username 
= 
TextBoxUsername -
.- .
Text. 2
;2 3
MemoryGameService 
. 
DataTransferObjects 1
.1 2 
PlayerCredentialsDTO2 F 
playerCredentialsDTOG [
=\ ]
new 
MemoryGameService %
.% &
DataTransferObjects& 9
.9 : 
PlayerCredentialsDTO: N
(N O
)O P
{ 
Username 
= 
username '
,' (
Password 
= 
encryptedPassword 0
} 
; 
return   
client   
.   
HasAccessRights   )
(  ) * 
playerCredentialsDTO  * >
)  > ?
;  ? @
}!! 	
public## 
bool## 
EmailIsVerified## #
(### $
)##$ %
{$$ 	&
AccessibilityServiceClient%% &
client%%' -
=%%. /
new%%0 3&
AccessibilityServiceClient%%4 N
(%%N O
)%%O P
;%%P Q
string'' 
username'' 
='' 
TextBoxUsername'' -
.''- .
Text''. 2
;''2 3
return)) 
client)) 
.)) 

IsVerified)) $
())$ %
username))% -
)))- .
;)). /
}** 	
public-- 
void-- 
GoToMainMenu--  
(--  !
)--! "
{.. 	
MainMenu// 
mainMenuView// !
=//" #
new//$ '
MainMenu//( 0
(//0 1
)//1 2
;//2 3
mainMenuView00 
.00 
Show00 
(00 
)00 
;00  
this11 
.11 
Close11 
(11 
)11 
;11 
}22 	
public44 
string44 
GetUserEmailAdress44 (
(44( )
)44) *
{55 	&
AccessibilityServiceClient66 &
client66' -
=66. /
new660 3&
AccessibilityServiceClient664 N
(66N O
)66O P
;66P Q
string88 
username88 
=88 
TextBoxUsername88 -
.88- .
Text88. 2
;882 3
return:: 
client:: 
.:: 
GetUserEmailAddress:: -
(::- .
username::. 6
)::6 7
;::7 8
};; 	
private== 
void== 
LoginButtonClicked== '
(==' (
object==( .
sender==/ 5
,==5 6
RoutedEventArgs==7 F
e==G H
)==H I
{>> 	
if?? 
(?? 
LoginIsValid?? 
(?? 
)?? 
)?? 
{@@ 
ifAA 
(AA 
EmailIsVerifiedAA #
(AA# $
)AA$ %
)AA% &
{BB 
SesionCC 
playerSesionCC '
=CC( )
SesionCC* 0
.CC0 1
	GetSesionCC1 :
;CC: ;
playerSesionDD  
.DD  !
UsernameDD! )
=DD* +
TextBoxUsernameDD, ;
.DD; <
TextDD< @
;DD@ A
playerSesionEE  
.EE  !
EmailAddressEE! -
=EE. /
GetUserEmailAdressEE0 B
(EEB C
)EEC D
;EED E
GoToMainMenuFF  
(FF  !
)FF! "
;FF" #
}GG 
elseHH 
{II 
ActivationTokenJJ #!
activationTokenWindowJJ$ 9
=JJ: ;
newKK 
ActivationTokenKK  /
(KK/ 0
GetUserEmailAdressKK0 B
(KKB C
)KKC D
,KKD E
TextBoxUsernameKKF U
.KKU V
TextKKV Z
)KKZ [
;KK[ \!
activationTokenWindowMM )
.MM) *
ShowMM* .
(MM. /
)MM/ 0
;MM0 1
thisNN 
.NN 
CloseNN 
(NN 
)NN  
;NN  !
}OO 
}PP 
elseQQ 
{RR 

MessageBoxSS 
.SS 
ShowSS 
(SS  
$strSS  \
)SS\ ]
;SS] ^
}TT 
}UU 	
privateWW 
voidWW 
BackButtonClickedWW &
(WW& '
objectWW' -
senderWW. 4
,WW4 5
RoutedEventArgsWW6 E
eWWF G
)WWG H
{XX 	

MainWindowYY 
mainWindowViewYY %
=YY& '
newYY( +

MainWindowYY, 6
(YY6 7
)YY7 8
;YY8 9
mainWindowViewZZ 
.ZZ 
ShowZZ 
(ZZ  
)ZZ  !
;ZZ! "
this[[ 
.[[ 
Close[[ 
([[ 
)[[ 
;[[ 
}\\ 	
private^^ 
void^^ '
RecoverPasswordLabelClicked^^ 0
(^^0 1
object^^1 7
sender^^8 >
,^^> ?
RoutedEventArgs^^@ O
e^^P Q
)^^Q R
{__ 	
RecoverPassword`` 
mainWindowView`` *
=``+ ,
new``- 0
RecoverPassword``1 @
(``@ A
)``A B
;``B C
mainWindowViewaa 
.aa 
Showaa 
(aa  
)aa  !
;aa! "
thisbb 
.bb 
Closebb 
(bb 
)bb 
;bb 
}cc 	
}dd 
}ee ¬
OC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\MainMenu.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
MainMenu !
:" #
Window$ *
{		 
public

 
MainMenu

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void #
CreateGameButtonClicked ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{ 	

CreateGame 
createGameView %
=& '
new( +

CreateGame, 6
(6 7
)7 8
;8 9
createGameView 
. 
Show 
(  
)  !
;! "
this 
. 
Close 
( 
) 
; 
} 	
private 
void !
JoinGameButtonClicked *
(* +
object+ 1
sender2 8
,8 9
RoutedEventArgs: I
eJ K
)K L
{ 	
JoinGame 
joinGameView !
=" #
new$ '
JoinGame( 0
(0 1
)1 2
;2 3
joinGameView 
. 
Show 
( 
) 
;  
this 
. 
Close 
( 
) 
; 
} 	
private 
void #
ScoreTableButtonClicked ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{ 	

ScoreTable 
scoreTableView %
=& '
new( +

ScoreTable, 6
(6 7
)7 8
;8 9
scoreTableView   
.   
Show   
(    
)    !
;  ! "
this!! 
.!! 
Close!! 
(!! 
)!! 
;!! 
}"" 	
}## 
}$$ €D
LC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Match.xaml.cs
	namespace 	

MemoryGame
 
. 
Views 
{		 
public 

partial 
class 
Match 
:  
Window! '
{ 
private 
InstanceContext 
_context  (
=) *
null+ /
;/ 0
private 
MemoryGameService !
.! "
DataTransferObjects" 5
.5 6
CardDeckDTO6 A
	_cardDeckB K
;K L
public 
Match 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
DrawGameBoard 
( 
) 
; 
_context 
= 
new 
InstanceContext *
(* +
this+ /
)/ 0
;0 1
} 	
private 
void 
LoadCardDeck !
(! "
)" #
{ 	
MemoryGameService 
. *
CardDeckRetrieverServiceClient <*
cardDeckRetrieverServiceClient= [
=\ ]
new 
MemoryGameService %
.% &*
CardDeckRetrieverServiceClient& D
(D E
)E F
;F G
	_cardDeck 
= *
cardDeckRetrieverServiceClient 6
.6 7
GetCardDeckAndCards7 J
(J K
$numK L
)L M
;M N
}   	
private"" 
void"" 
DrawGameBoard"" "
(""" #
)""# $
{## 	
LoadCardDeck$$ 
($$ 
)$$ 
;$$ 
DrawColumns%% 
(%% 
)%% 
;%% 
DrawRows&& 
(&& 
)&& 
;&& 

DrawImages'' 
('' 
)'' 
;'' 
}(( 	
private** 
void** 
DrawRows** 
(** 
)** 
{++ 	
int,, 
numberOfCards,, 
=,, 
	_cardDeck,,  )
.,,) *
Cards,,* /
.,,/ 0
Count,,0 5
;,,5 6
int--  
numberOfColumnsDrawn-- $
=--% &
GameBoardGrid--' 4
.--4 5
ColumnDefinitions--5 F
.--F G
Count--G L
;--L M
int00  
numberOfRequiredRows00 $
=00% &
(00' (
int00( +
)00+ ,
Math00, 0
.000 1
Ceiling001 8
(008 9
Convert009 @
.00@ A
ToDouble00A I
(00I J
numberOfCards00J W
/00X Y 
numberOfColumnsDrawn00Z n
)00n o
)00o p
+00q r
$num00s t
;00t u
Console11 
.11 
	WriteLine11 
(11 
$str11 &
+11' ( 
numberOfRequiredRows11) =
)11= >
;11> ?
Console22 
.22 
	WriteLine22 
(22 
$str22 (
+22) *
numberOfCards22+ 8
)228 9
;229 :
for33 
(33 
int33 
i33 
=33 
$num33 
;33 
i33 
<33  
numberOfRequiredRows33  4
;334 5
i336 7
++337 9
)339 :
{44 
GameBoardGrid55 
.55 
RowDefinitions55 ,
.55, -
Add55- 0
(550 1
new551 4
RowDefinition555 B
(55B C
)55C D
)55D E
;55E F
}66 
}77 	
private99 
void99 
DrawColumns99  
(99  !
)99! "
{:: 	
for;; 
(;; 
int;; 
i;; 
=;; 
$num;; 
;;; 
i;; 
<;; 
$num;;  !
;;;! "
i;;# $
++;;$ &
);;& '
{<< 
GameBoardGrid== 
.== 
ColumnDefinitions== /
.==/ 0
Add==0 3
(==3 4
new==4 7
ColumnDefinition==8 H
(==H I
)==I J
)==J K
;==K L
}>> 
}?? 	
privateAA 
voidAA 

DrawImagesAA 
(AA  
)AA  !
{BB 	
intCC 
rowIndexCC 
=CC 
$numCC 
;CC 
intDD 
columnIndexDD 
=DD 
$numDD 
;DD  
intEE 
columnCountEE 
=EE 
GameBoardGridEE +
.EE+ ,
ColumnDefinitionsEE, =
.EE= >
CountEE> C
;EEC D
IListFF 
<FF 
MemoryGameServiceFF #
.FF# $
DataTransferObjectsFF$ 7
.FF7 8
CardDtoFF8 ?
>FF? @
cardsFFA F
=FFG H
	_cardDeckFFI R
.FFR S
CardsFFS X
;FFX Y
forGG 
(GG 
intGG 
numberOfActualCardGG '
=GG( )
$numGG* +
;GG+ ,
numberOfActualCardGG- ?
<GG@ A
cardsGGB G
.GGG H
CountGGH M
;GGM N
numberOfActualCardGGO a
++GGa c
)GGc d
{HH 
ifII 
(II 
columnIndexII 
>=II !
columnCountII" -
)II- .
{JJ 
columnIndexKK 
=KK  !
$numKK" #
;KK# $
rowIndexLL 
++LL 
;LL 
}MM 
MemoryGameServiceOO !
.OO! "
DataTransferObjectsOO" 5
.OO5 6
CardDtoOO6 =

actualCardOO> H
=OOI J
	_cardDeckOOK T
.OOT U
CardsOOU Z
[OOZ [
numberOfActualCardOO[ m
]OOm n
;OOn o
stringPP "
frontImageOfActualCardPP -
=PP. /

actualCardPP0 :
.PP: ;

FrontImagePP; E
;PPE F
varRR 
imageSourceRR 
=RR  !
newRR" %
BitmapImageRR& 1
(RR1 2
newRR2 5
UriRR6 9
(RR9 :
$strRR: o
+RRp q#
frontImageOfActualCard	RRr à
)
RRà â
)
RRâ ä
;
RRä ã
	ImageCardTT 
	imageCardTT #
=TT$ %
newTT& )
	ImageCardTT* 3
(TT3 4
)TT4 5
{UU 
SourceVV 
=VV 
imageSourceVV (
,VV( )
CardIdWW 
=WW 

actualCardWW '
.WW' (
CardIdWW( .
}XX 
;XX 
GridZZ 
.ZZ 
SetRowZZ 
(ZZ 
	imageCardZZ %
,ZZ% &
rowIndexZZ' /
)ZZ/ 0
;ZZ0 1
Grid[[ 
.[[ 
	SetColumn[[ 
([[ 
	imageCard[[ (
,[[( )
columnIndex[[* 5
)[[5 6
;[[6 7
	imageCard\\ 
.\\ 
Margin\\  
=\\! "
new\\# &
	Thickness\\' 0
(\\0 1
$num\\1 2
)\\2 3
;\\3 4
	imageCard]] 
.]] 
	MouseDown]] #
+=]]$ &
GetClickedCard]]' 5
;]]5 6
GameBoardGrid^^ 
.^^ 
Children^^ &
.^^& '
Add^^' *
(^^* +
	imageCard^^+ 4
)^^4 5
;^^5 6
columnIndex__ 
++__ 
;__ 
}`` 
}aa 	
publiccc 
voidcc 
DisplayTimerValuecc %
(cc% &
intcc& )

timerValuecc* 4
)cc4 5
{dd 	

MessageBoxee 
.ee 
Showee 
(ee 
$stree %
+ee& '

timerValueee( 2
)ee2 3
;ee3 4
}ff 	
privatehh 
voidhh 
GetClickedCardhh #
(hh# $
objecthh$ *
senderhh+ 1
,hh1 2
	EventArgshh3 <
ehh= >
)hh> ?
{ii 	
intjj 
cardIdjj 
=jj 
(jj 
(jj 
	ImageCardjj $
)jj$ %
senderjj% +
)jj+ ,
.jj, -
CardIdjj- 3
;jj3 4

MessageBoxkk 
.kk 
Showkk 
(kk 
cardIdkk "
+kk# $
$strkk% '
)kk' (
;kk( )
}ll 	
privatenn 
classnn 
	ImageCardnn 
:nn  !
Imagenn" '
{oo 	
publicpp 
intpp 
CardIdpp 
{pp 
setpp  #
;pp# $
getpp% (
;pp( )
}pp* +
}qq 	
}rr 
}ss ÿ'
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\RecoverPassword.xaml.cs
	namespace 	

MemoryGame
 
{ 
public		 

partial		 
class		 
RecoverPassword		 (
:		) *
Window		+ 1
{

 
private 
string 
_verificationToken )
;) *
public 
RecoverPassword 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
CancelButtonClicked (
(( )
object) /
sender0 6
,6 7
RoutedEventArgs8 G
eH I
)I J
{ 	
Login 
	loginView 
= 
new !
Login" '
(' (
)( )
;) *
	loginView 
. 
Show 
( 
) 
; 
this 
. 
Close 
( 
) 
; 
} 	
private 
bool 
EmailIsRegistered &
(& '
)' (
{ 	&
AccessibilityServiceClient &
client' -
=. /
new0 3&
AccessibilityServiceClient4 N
(N O
)O P
;P Q
string 
emailAddress 
=  !
TextBoxEmail" .
.. /
Text/ 3
;3 4
return 
client 
. 
ItsRegistered '
(' (
emailAddress( 4
)4 5
;5 6
} 	
private!! 
string!! 
GetUsername!! "
(!!" #
)!!# $
{"" 	&
AccessibilityServiceClient## &
client##' -
=##. /
new##0 3&
AccessibilityServiceClient##4 N
(##N O
)##O P
;##P Q
string%% 
emailAddress%% 
=%%  !
TextBoxEmail%%" .
.%%. /
Text%%/ 3
;%%3 4
return'' 
client'' 
.'' 
GetUsername'' %
(''% &
emailAddress''& 2
)''2 3
;''3 4
}(( 	
private** 
void** %
GenerateVerificationToken** .
(**. /
)**/ 0
{++ 	 
TokenGeneratorClient,,  
client,,! '
=,,( )
new,,* - 
TokenGeneratorClient,,. B
(,,B C
),,C D
;,,D E
_verificationToken-- 
=--  
client--! '
.--' (
GenerateToken--( 5
(--5 6
$num--6 7
)--7 8
;--8 9
}.. 	
private00 
void00  
SendVerificationCode00 )
(00) *
)00* +
{11 	 
MailingServiceClient22  
client22! '
=22( )
new33  
MailingServiceClient33 (
(33( )
)33) *
;33* +
client44 
.44 !
SendVerificationToken44 (
(44( )
GetUsername44) 4
(444 5
)445 6
,446 7
TextBoxEmail448 D
.44D E
Text44E I
,44I J
_verificationToken44K ]
)44] ^
;44^ _,
 AccountVerificationServiceClient66 ,,
 accountVerificationServiceClient66- M
=66N O
new77 ,
 AccountVerificationServiceClient77 4
(774 5
)775 6
;776 7,
 accountVerificationServiceClient88 ,
.88, -&
AssignNewVerificationToken88- G
(88G H
TextBoxEmail88H T
.88T U
Text88U Y
,88Y Z
_verificationToken88[ m
)88m n
;88n o
}99 	
private;; 
void;; !
SendCodeButtonClicked;; *
(;;* +
object;;+ 1
sender;;2 8
,;;8 9
RoutedEventArgs;;: I
e;;J K
);;K L
{<< 	
if== 
(== 
EmailIsRegistered== !
(==! "
)==" #
)==# $
{>> %
GenerateVerificationToken?? )
(??) *
)??* +
;??+ , 
SendVerificationCode@@ $
(@@$ %
)@@% &
;@@& '
RestorePasswordAA !
restorePasswordWindowAA  5
=AA6 7
newBB 
RestorePasswordBB '
(BB' (
TextBoxEmailBB( 4
.BB4 5
TextBB5 9
,BB9 :
GetUsernameBB; F
(BBF G
)BBG H
)BBH I
;BBI J!
restorePasswordWindowCC %
.CC% &
ShowCC& *
(CC* +
)CC+ ,
;CC, -
thisDD 
.DD 
CloseDD 
(DD 
)DD 
;DD 
}EE 
elseFF 
{GG 

MessageBoxHH 
.HH 
ShowHH 
(HH  
$strHH  S
)HHS T
;HHT U
}II 
}KK 	
}MM 
}NN ‘O
OC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Register.xaml.cs
	namespace		 	

MemoryGame		
 
{

 
public 

partial 
class 
Register !
:" #
Window$ *
{ 
private 
string 
_verificationToken )
;) *
private 
RegistryData 
_registryData *
;* +
private 
List 
< 
IRegistryRule "
>" #
_rules$ *
;* +
private 
List 
<  
ValidationRuleResult )
>) *#
_validationResultErrors+ B
;B C
public 
Register 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
SetFormValidation 
( 
) 
;  
} 	
private 
void 
SetFormValidation &
(& '
)' (
{ 	
_rules   
=   
new   
List   
<   
IRegistryRule   +
>  + ,
(  , -
)  - .
;  . /
_rules!! 
.!! 
Add!! 
(!! 
new!! "
UsernameValidationRule!! 1
(!!1 2
)!!2 3
)!!3 4
;!!4 5
_rules"" 
."" 
Add"" 
("" 
new"" &
EmailAddressValidationRule"" 5
(""5 6
)""6 7
)""7 8
;""8 9
_rules## 
.## 
Add## 
(## 
new## "
PasswordValidationRule## 1
(##1 2
)##2 3
)##3 4
;##4 5
_rules$$ 
.$$ 
Add$$ 
($$ 
new$$ 2
&EmailAddressAvailabilityValidationRule$$ A
($$A B
)$$B C
)$$C D
;$$D E
_rules%% 
.%% 
Add%% 
(%% 
new%% .
"UsernameAvailabilityValidationRule%% =
(%%= >
)%%> ?
)%%? @
;%%@ A
}&& 	
private(( 
void(( "
ObtainValidationErrors(( +
(((+ ,
)((, -
{)) 	#
_validationResultErrors** #
=**$ %
new**& )
List*** .
<**. / 
ValidationRuleResult**/ C
>**C D
(**D E
)**E F
;**F G
foreach++ 
(++ 
IRegistryRule++ "
rule++# '
in++( *
_rules+++ 1
)++1 2
{,,  
ValidationRuleResult-- $ 
validationRuleResult--% 9
=--: ;
rule--< @
.--@ A
Validate--A I
(--I J
_registryData--J W
)--W X
;--X Y
if.. 
(..  
validationRuleResult.. (
...( )
Status..) /
==..0 2 
ValidationRuleResult..3 G
...G H
ERROR..H M
)..M N
{// #
_validationResultErrors00 +
.00+ ,
Add00, /
(00/ 0 
validationRuleResult000 D
)00D E
;00E F
}11 
}22 
}33 	
private55 
void55 
ShowErrorMessage55 %
(55% &
)55& '
{66 	
foreach77 
(77  
ValidationRuleResult77 ) 
validationRuleResult77* >
in88 #
_validationResultErrors88 *
)88* +
{99 

MessageBox:: 
.:: 
Show:: 
(::   
validationRuleResult::  4
.::4 5
Message::5 <
)::< =
;::= >
return;; 
;;; 
}<< 
}== 	
private?? 
bool?? 
ValidationPassed?? %
(??% &
)??& '
{@@ 	"
ObtainValidationErrorsAA "
(AA" #
)AA# $
;AA$ %
ifBB 
(BB #
_validationResultErrorsBB '
.BB' (
CountBB( -
==BB. 0
$numBB1 2
)BB2 3
{CC 
returnDD 
trueDD 
;DD 
}EE 
returnFF 
falseFF 
;FF 
}GG 	
privateII 
voidII !
RegisterButtonClickedII *
(II* +
objectII+ 1
senderII2 8
,II8 9
RoutedEventArgsII: I
eIIJ K
)IIK L
{JJ 	
_registryDataKK 
=KK 
newKK 
RegistryDataKK  ,
(KK, -
)KK- .
{LL 
EmailAddressMM 
=MM 
TextBoxEmailMM +
.MM+ ,
TextMM, 0
,MM0 1
UsernameNN 
=NN 
TextBoxUsernameNN *
.NN* +
TextNN+ /
,NN/ 0
PasswordOO 
=OO 
PasswordBoxPasswordOO .
.OO. /
PasswordOO/ 7
}PP 
;PP 
ifRR 
(RR 
ValidationPassedRR  
(RR  !
)RR! "
)RR" #
{SS 
_registryDataTT 
.TT 
PasswordTT &
=TT' (
MD5EncryptionTT) 6
.TT6 7
EncryptTT7 >
(TT> ?
_registryDataTT? L
.TTL M
PasswordTTM U
)TTU V
;TTV W
_verificationTokenUU "
=UU# $
TokenManagerUU% 1
.UU1 2%
GenerateVerificationTokenUU2 K
(UUK L
)UUL M
;UUM N
_verificationTokenVV "
=VV# $
$strVV% '
;VV' (
ifXX 
(XX +
PlayerWasSuccessfullyRegisteredXX 3
(XX3 4
)XX4 5
)XX5 6
{YY !
SendVerificationTokenZZ )
(ZZ) *
)ZZ* +
;ZZ+ ,%
GoToActivationTokenWindow[[ -
([[- .
)[[. /
;[[/ 0
}\\ 
else]] 
{^^ 

MessageBox__ 
.__ 
Show__ #
(__# $
$str__$ 8
)__8 9
;__9 :
}`` 
}aa 
elsebb 
{cc 
ShowErrorMessagedd  
(dd  !
)dd! "
;dd" #
}ee 
}ff 	
privatehh 
voidhh !
SendVerificationTokenhh *
(hh* +
)hh+ ,
{ii 	
TokenManagerjj 
.jj !
SendVerificationTokenjj .
(jj. /
_registryDatajj/ <
.jj< =
Usernamejj= E
,jjE F
_registryDatakk !
.kk! "
EmailAddresskk" .
,kk. /
_verificationTokenkk0 B
)kkB C
;kkC D
}ll 	
privatenn 
voidnn 
CancelButtonClickednn (
(nn( )
objectnn) /
sendernn0 6
,nn6 7
RoutedEventArgsnn8 G
ennH I
)nnI J
{oo 	

MainWindowpp 
mainWindowViewpp %
=pp& '
newpp( +

MainWindowpp, 6
(pp6 7
)pp7 8
;pp8 9
mainWindowViewqq 
.qq 
Showqq 
(qq  
)qq  !
;qq! "
thisrr 
.rr 
Closerr 
(rr 
)rr 
;rr 
}ss 	
privateuu 
booluu +
PlayerWasSuccessfullyRegistereduu 4
(uu4 5
)uu5 6
{vv 	
MemoryGameServiceww 
.ww '
PlayerRegistryServiceClientww 9'
playerRegistryServiceClientww: U
=wwV W
newxx 
MemoryGameServicexx %
.xx% &'
PlayerRegistryServiceClientxx& A
(xxA B
)xxB C
;xxC D
MemoryGameServicezz 
.zz 
DataTransferObjectszz 1
.zz1 2
	PlayerDTOzz2 ;
	playerDTOzz< E
=zzF G
new{{ 
MemoryGameService{{ %
.{{% &
DataTransferObjects{{& 9
.{{9 :
	PlayerDTO{{: C
({{C D
){{D E
{|| 
Username}} 
=}} 
_registryData}} ,
.}}, -
Username}}- 5
,}}5 6
EmailAddress~~  
=~~! "
_registryData~~# 0
.~~0 1
EmailAddress~~1 =
,~~= >
Password 
= 
_registryData ,
., -
Password- 5
,5 6
VerificationToken
ÄÄ %
=
ÄÄ& ' 
_verificationToken
ÄÄ( :
}
ÅÅ 
;
ÅÅ 
bool
ÇÇ ,
playerWasSucessfullyRegistered
ÇÇ /
=
ÇÇ0 1
false
ÇÇ2 7
;
ÇÇ7 8
try
ÉÉ 
{
ÑÑ ,
playerWasSucessfullyRegistered
ÖÖ .
=
ÖÖ/ 0)
playerRegistryServiceClient
ÖÖ1 L
.
ÖÖL M
RegisterNewPlayer
ÖÖM ^
(
ÖÖ^ _
	playerDTO
ÖÖ_ h
)
ÖÖh i
;
ÖÖi j
}
ÜÜ 
catch
ÜÜ 
(
ÜÜ '
EndpointNotFoundException
ÜÜ ,
faultException
ÜÜ- ;
)
ÜÜ; <
{
áá 

MessageBox
àà 
.
àà 
Show
àà 
(
àà  
faultException
àà  .
.
àà. /
Message
àà/ 6
)
àà6 7
;
àà7 8
}
ââ 
return
ää ,
playerWasSucessfullyRegistered
ää 1
;
ää1 2
}
ãã 	
private
çç 
void
çç '
GoToActivationTokenWindow
çç .
(
çç. /
)
çç/ 0
{
éé 	
ActivationToken
èè #
activationTokenWindow
èè 1
=
èè2 3
new
êê 
ActivationToken
êê #
(
êê# $
_registryData
êê$ 1
.
êê1 2
EmailAddress
êê2 >
,
êê> ?
_registryData
êê@ M
.
êêM N
Username
êêN V
)
êêV W
;
êêW X#
activationTokenWindow
ëë !
.
ëë! "
Show
ëë" &
(
ëë& '
)
ëë' (
;
ëë( )
this
íí 
.
íí 
Close
íí 
(
íí 
)
íí 
;
íí 
}
ìì 	
}
îî 
}ïï Ñ3
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\RestorePassword.xaml.cs
	namespace 	

MemoryGame
 
{ 
public

 

partial

 
class

 
RestorePassword

 (
:

) *
Window

+ 1
{ 
private 
string 
_emailAddress $
;$ %
private 
string 
	_username  
;  !
public 
RestorePassword 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
RestorePassword 
( 
string %
emailAddress& 2
,2 3
string4 :
username; C
)C D
{ 	
InitializeComponent 
(  
)  !
;! "
_emailAddress 
= 
emailAddress (
;( )
	_username 
= 
username  
;  !
} 	
public 
bool 
SetNewPassword "
(" #
)# $
{ 	
string 
password 
= 
MD5Encryption +
.+ ,
Encrypt, 3
(3 4
NewPasswordBox4 B
.B C
PasswordC K
)K L
;L M-
!AccountModifiabilityServiceClient --
!accountModifiabilityServiceClient. O
=P Q
new -
!AccountModifiabilityServiceClient 5
(5 6
)6 7
;7 8
MemoryGameService!! 
.!! 
DataTransferObjects!! 1
.!!1 2 
PlayerCredentialsDTO!!2 F 
playerCredentialsDTO!!G [
=!!\ ]
new"" 
MemoryGameService"" %
.""% &
DataTransferObjects""& 9
.""9 : 
PlayerCredentialsDTO"": N
(""N O
)""O P
{## 
EmailAddress$$  
=$$! "
_emailAddress$$# 0
,$$0 1
Password%% 
=%% 
password%% '
}&& 
;&& 
return(( -
!accountModifiabilityServiceClient(( 4
.((4 5
SetNewPassword((5 C
(((C D 
playerCredentialsDTO((D X
)((X Y
;((Y Z
})) 	
private++ 
void++ 
OkButtonClicked++ $
(++$ %
object++% +
sender++, 2
,++2 3
RoutedEventArgs++4 C
e++D E
)++E F
{,, 	
if.. 
(.. 
TokenIsCorrect.. 
(.. 
)..  
)..  !
{// 
bool00 
passwordRestored00 %
=00& '
SetNewPassword00( 6
(006 7
)007 8
;008 9
if11 
(11 
passwordRestored11 $
)11$ %
{22 

MessageBox33 
.33 
Show33 #
(33# $
$str33$ J
)33J K
;33K L
Login55 
	loginView55 #
=55$ %
new55& )
Login55* /
(55/ 0
)550 1
;551 2
	loginView66 
.66 
Show66 "
(66" #
)66# $
;66$ %
this77 
.77 
Close77 
(77 
)77  
;77  !
}88 
else99 
{:: 

MessageBox;; 
.;; 
Show;; #
(;;# $
$str;;$ J
);;J K
;;;K L
}<< 
}== 
else>> 
{?? 

MessageBox@@ 
.@@ 
Show@@ 
(@@  
$str@@  p
)@@p q
;@@q r
}AA 
}BB 	
privateDD 
voidDD $
SendNewCodeButtonClickedDD -
(DD- .
objectDD. 4
senderDD5 ;
,DD; <
RoutedEventArgsDD= L
eDDM N
)DDN O
{EE 	 
TokenGeneratorClientGG   
tokenGeneratorClientGG! 5
=GG6 7
newHH  
TokenGeneratorClientHH (
(HH( )
)HH) *
;HH* +
stringII 
newTokenII 
=II  
tokenGeneratorClientII 2
.II2 3
GenerateTokenII3 @
(II@ A
$numIIA B
)IIB C
;IIC D,
 AccountVerificationServiceClientKK ,,
 accountVerificationServiceClientKK- M
=KKN O
newLL ,
 AccountVerificationServiceClientLL 4
(LL4 5
)LL5 6
;LL6 7,
 accountVerificationServiceClientMM ,
.MM, -&
AssignNewVerificationTokenMM- G
(MMG H
_emailAddressMMH U
,MMU V
newTokenMMW _
)MM_ `
;MM` a 
MailingServiceClientOO   
mailingServiceClientOO! 5
=OO6 7
newPP  
MailingServiceClientPP (
(PP( )
)PP) *
;PP* + 
mailingServiceClientQQ  
.QQ  !!
SendVerificationTokenQQ! 6
(QQ6 7
	_usernameQQ7 @
,QQ@ A
_emailAddressQQB O
,QQO P
newTokenQQQ Y
)QQY Z
;QQZ [

MessageBoxSS 
.SS 
ShowSS 
(SS 
$strSS 2
)SS2 3
;SS3 4
}UU 	
privateWW 
boolWW 
TokenIsCorrectWW #
(WW# $
)WW$ %
{XX 	,
 AccountVerificationServiceClientYY ,,
 accountVerificationServiceClientYY- M
=YYN O
newZZ ,
 AccountVerificationServiceClientZZ 4
(ZZ4 5
)ZZ5 6
;ZZ6 7
return[[ ,
 accountVerificationServiceClient[[ 3
.[[3 4
VerifyToken[[4 ?
([[? @
_emailAddress[[@ M
,[[M N
TextBoxToken[[O [
.[[[ \
Text[[\ `
)[[` a
;[[a b
}\\ 	
private^^ 
void^^ 
BackButtonClicked^^ &
(^^& '
object^^' -
sender^^. 4
,^^4 5
RoutedEventArgs^^6 E
e^^F G
)^^G H
{__ 	
Login`` 
	loginView`` 
=`` 
new`` !
Login``" '
(``' (
)``( )
;``) *
	loginViewaa 
.aa 
Showaa 
(aa 
)aa 
;aa 
thisbb 
.bb 
Closebb 
(bb 
)bb 
;bb 
}cc 	
}dd 
}ee ‹
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ScoreTable.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 

ScoreTable #
:$ %
Window& ,
{		 
public

 

ScoreTable

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "'
PopulateTableWithBestScores '
(' (
)( )
;) *
} 	
private 
MemoryGameService !
.! "
DataTransferObjects" 5
.5 6
PlayerScoreDTO6 D
[D E
]E F
GetBestScoresG T
(T U
)U V
{ 	
MemoryGameService 
. 
ScoreServiceClient 0
client1 7
=8 9
new 
MemoryGameService %
.% &
ScoreServiceClient& 8
(8 9
)9 :
;: ;
return 
client 
. #
GetPlayersWithBestScore 1
(1 2
$num2 4
)4 5
;5 6
} 	
private 
void '
PopulateTableWithBestScores 0
(0 1
)1 2
{ 	
MemoryGameService 
. 
DataTransferObjects 1
.1 2
PlayerScoreDTO2 @
[@ A
]A B
playerScoreDTOsC R
;R S
playerScoreDTOs 
= 
GetBestScores +
(+ ,
), -
;- .
for 
( 
int 
i 
= 
$num 
; 
i 
< 
playerScoreDTOs .
.. /
Length/ 5
;5 6
i7 8
++8 :
): ;
{ 
var   
data   
=   
new   
PlayerScore   *
{!! 
Username"" 
="" 
playerScoreDTOs"" .
["". /
i""/ 0
]""0 1
.""1 2
Username""2 :
,"": ;
Score## 
=## 
playerScoreDTOs## +
[##+ ,
i##, -
]##- .
.##. /

TotalScore##/ 9
}$$ 
;$$ 
ScoreDataGrid%% 
.%% 
Items%% #
.%%# $
Add%%$ '
(%%' (
data%%( ,
)%%, -
;%%- .
}&& 
}'' 	
private)) 
void)) 
BackButtonClicked)) &
())& '
object))' -
sender)). 4
,))4 5
RoutedEventArgs))6 E
e))F G
)))G H
{** 	
MainMenu++ 
mainMenuView++ !
=++" #
new++$ '
MainMenu++( 0
(++0 1
)++1 2
;++2 3
mainMenuView,, 
.,, 
Show,, 
(,, 
),, 
;,,  
this-- 
.-- 
Close-- 
(-- 
)-- 
;-- 
}.. 	
class// 
PlayerScore// 
{00 	
public11 
string11 
Username11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
public22 
int22 
Score22 
{22 
get22 "
;22" #
set22$ '
;22' (
}22) *
}33 	
}44 
}88 •
OC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Settings.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
Settings !
:" #
Window$ *
{ 
private 
string 
_selectedTag #
;# $
public 
Settings 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
void $
SaveChangesButtonClicked ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{ 	
_selectedTag 
= 
( 
( 
ComboBoxItem )
)) *%
ComboBoxLanguageSelection* C
.C D
SelectedItemD P
)P Q
.Q R
TagR U
.U V
ToStringV ^
(^ _
)_ `
;` a
try 
{ 
var 
culture 
= 
new !
CultureInfo" -
(- .
_selectedTag. :
): ;
;; <
Thread 
. 
CurrentThread $
.$ %
CurrentCulture% 3
=4 5
culture6 =
;= >
Thread 
. 
CurrentThread $
.$ %
CurrentUICulture% 5
=6 7
culture8 ?
;? @

Properties 
. 
Settings #
.# $
Default$ +
.+ ,
LanguageSettings, <
== >
_selectedTag? K
;K L

Properties 
. 
Settings #
.# $
Default$ +
.+ ,
Save, 0
(0 1
)1 2
;2 3

MessageBox 
. 
Show 
(  

Properties  *
.* +
Langs+ 0
.0 1
	Resources1 :
.: ;)
ChangeLanguageSettingsSuccess; X
)X Y
;Y Z
} 
catch 
( $
CultureNotFoundException +
)+ ,
{   

MessageBox!! 
.!! 
Show!! 
(!!  

Properties!!  *
.!!* +
Langs!!+ 0
.!!0 1
	Resources!!1 :
.!!: ;'
ChangeLanguageSettingsError!!; V
)!!V W
;!!W X
}"" 
GoToMainWindow$$ 
($$ 
)$$ 
;$$ 
}%% 	
public'' 
void'' 
BackButtonClicked'' %
(''% &
object''& ,
sender''- 3
,''3 4
RoutedEventArgs''5 D
e''E F
)''F G
{(( 	
GoToMainWindow)) 
()) 
))) 
;)) 
}** 	
private,, 
void,, 
GoToMainWindow,, #
(,,# $
),,$ %
{-- 	

MainWindow.. 

mainWindow.. !
=.." #
new..$ '

MainWindow..( 2
(..2 3
)..3 4
;..4 5

mainWindow// 
.// 
Show// 
(// 
)// 
;// 
this00 
.00 
Close00 
(00 
)00 
;00 
}11 	
}22 
}33 Ë
RC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\WaitingRoom.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
WaitingRoom $
:% &
Window' -
{		 
public

 
WaitingRoom

 
(

 
)

 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
} 
} ﬂ
DC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\App.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
App 
: 
Application *
{		 
	protected

 
override

 
void

 
	OnStartup

  )
(

) *
StartupEventArgs

* :
e

; <
)

< =
{ 	
} 	
} 
} ≠
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\MainWindow.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{		 
public

 

MainWindow

 
(

 
)

 
{ 	
System 
. 
	Threading 
. 
Thread #
.# $
CurrentThread$ 1
.1 2
CurrentUICulture2 B
=C D
newE H
SystemI O
.O P
GlobalizationP ]
.] ^
CultureInfo^ i
(i j

Propertiesj t
.t u
Settingsu }
.} ~
Default	~ Ö
.
Ö Ü
LanguageSettings
Ü ñ
)
ñ ó
;
ó ò
InitializeComponent 
(  
)  !
;! "
} 	
private 
void &
GetRegisteredButtonClicked /
(/ 0
object0 6
sender7 =
,= >
RoutedEventArgs? N
eO P
)P Q
{ 	
Register 
registerView !
=" #
new$ '
Register( 0
(0 1
)1 2
;2 3
registerView 
. 
Show 
( 
) 
;  
this 
. 
Close 
( 
) 
; 
} 	
private 
void &
ConfigurationButtonClicked /
(/ 0
object0 6
sender7 =
,= >
RoutedEventArgs? N
eO P
)P Q
{ 	
Settings 
settingsView !
=" #
new$ '
Settings( 0
(0 1
)1 2
;2 3
settingsView 
. 
Show 
( 
) 
;  
this 
. 
Close 
( 
) 
; 
} 	
private   
void   
LoginButtonClicked   '
(  ' (
object  ( .
sender  / 5
,  5 6
RoutedEventArgs  7 F
e  G H
)  H I
{!! 	
Login"" 
	loginView"" 
="" 
new"" !
Login""" '
(""' (
)""( )
;"") *
	loginView## 
.## 
Show## 
(## 
)## 
;## 
this$$ 
.$$ 
Close$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ö
SC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 %
)

% &
]

& '
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str '
)' (
]( )
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *