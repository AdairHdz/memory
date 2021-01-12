�F
VC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Components\GameBoardDrawer.cs
	namespace 	

MemoryGame
 
. 

Components 
{		 
public 

class 
GameBoardDrawer  
{ 
public 
int 
NumberOfColumns "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
MemoryGameService  
.  !
DataTransferObjects! 4
.4 5
CardDeckDto5 @
CardDeckA I
{J K
getL O
;O P
setQ T
;T U
}V W
public 
Grid 
GridToBeDrawnOn #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public!! 
IList!! 
<!! 
	ImageCard!! 
>!! 

ImageCards!!  *
{!!+ ,
get!!- 0
;!!0 1
set!!2 5
;!!5 6
}!!7 8
public&& 
GameBoardDrawer&& 
(&& 
)&&  
{&&! "
}&&# $
public++ 
void++ 
Draw++ 
(++ 
)++ 
{,, 	
DrawColumns-- 
(-- 
)-- 
;-- 
DrawRows.. 
(.. 
).. 
;.. 

DrawImages// 
(// 
)// 
;// 
}00 	
private22 
void22 
DrawColumns22  
(22  !
)22! "
{33 	
for44 
(44 
int44 !
numberOfCurrentColumn44 *
=44+ ,
$num44- .
;44. /!
numberOfCurrentColumn440 E
<44F G
NumberOfColumns44H W
;44W X!
numberOfCurrentColumn44Y n
++44n p
)44p q
{55 
GridToBeDrawnOn66 
.66  
ColumnDefinitions66  1
.661 2
Add662 5
(665 6
new666 9
ColumnDefinition66: J
(66J K
)66K L
)66L M
;66M N
}77 
}88 	
private:: 
void:: 
DrawRows:: 
(:: 
):: 
{;; 	
int<< 
numberOfCards<< 
=<< 
CardDeck<<  (
.<<( )
Cards<<) .
.<<. /
Count<</ 4
;<<4 5
int==  
numberOfColumnsDrawn== $
===% &
GridToBeDrawnOn==' 6
.==6 7
ColumnDefinitions==7 H
.==H I
Count==I N
;==N O
int??  
numberOfRequiredRows?? $
=??% &
(??' (
int??( +
)??+ ,
Math??, 0
.??0 1
Ceiling??1 8
(??8 9
Convert??9 @
.??@ A
ToDouble??A I
(??I J
numberOfCards??J W
/??X Y 
numberOfColumnsDrawn??Z n
)??n o
)??o p
+??q r
$num??s t
;??t u
for@@ 
(@@ 
int@@ 
numberOfCurrentRow@@ '
=@@( )
$num@@* +
;@@+ ,
numberOfCurrentRow@@- ?
<@@@ A 
numberOfRequiredRows@@B V
;@@V W
numberOfCurrentRow@@X j
++@@j l
)@@l m
{AA 
GridToBeDrawnOnBB 
.BB  
RowDefinitionsBB  .
.BB. /
AddBB/ 2
(BB2 3
newBB3 6
RowDefinitionBB7 D
(BBD E
)BBE F
)BBF G
;BBG H
}CC 
}DD 	
privateFF 
voidFF 
PopulateImageCardsFF '
(FF' (
)FF( )
{GG 	
IListHH 
<HH 
MemoryGameServiceHH #
.HH# $
DataTransferObjectsHH$ 7
.HH7 8
CardDtoHH8 ?
>HH? @
cardsHHA F
=HHG H
CardDeckHHI Q
.HHQ R
CardsHHR W
;HHW X
stringII 
backImageOfCardsII #
=II$ %
CardDeckII& .
.II. /
	BackImageII/ 8
;II8 9
BitmapImageJJ 
	backImageJJ !
=JJ" #
newJJ$ '
BitmapImageJJ( 3
(JJ3 4
newJJ4 7
UriJJ8 ;
(JJ; <
backImageOfCardsJJ< L
)JJL M
)JJM N
;JJN O
forLL 
(LL 
intLL 
numberOfActualCardLL '
=LL( )
$numLL* +
;LL+ ,
numberOfActualCardLL- ?
<LL@ A
cardsLLB G
.LLG H
CountLLH M
;LLM N
numberOfActualCardLLO a
++LLa c
)LLc d
{MM 
MemoryGameServiceNN !
.NN! "
DataTransferObjectsNN" 5
.NN5 6
CardDtoNN6 =

actualCardNN> H
=NNI J
CardDeckNNK S
.NNS T
CardsNNT Y
[NNY Z
numberOfActualCardNNZ l
]NNl m
;NNm n
stringPP "
frontImageOfActualCardPP -
=PP. /

actualCardPP0 :
.PP: ;

FrontImagePP; E
;PPE F
BitmapImageRR 

frontImageRR &
=RR' (
newRR) ,
BitmapImageRR- 8
(RR8 9
newRR9 <
UriRR= @
(RR@ A"
frontImageOfActualCardRRA W
)RRW X
)RRX Y
;RRY Z
	ImageCardSS 
	imageCardSS #
=SS$ %
newSS& )
	ImageCardSS* 3
(SS3 4
)SS4 5
{TT 

FrontImageUU 
=UU  

frontImageUU! +
,UU+ ,
	BackImageVV 
=VV 
	backImageVV  )
,VV) *
SourceWW 
=WW 
	backImageWW &
,WW& '
CardIdXX 
=XX 

actualCardXX '
.XX' (
CardIdXX( .
,XX. /
CardDtoYY 
=YY 

actualCardYY (
}ZZ 
;ZZ 

ImageCards[[ 
.[[ 
Add[[ 
([[ 
	imageCard[[ (
)[[( )
;[[) *
}\\ 
}^^ 	
private`` 
void`` 

DrawImages`` 
(``  
)``  !
{aa 	
PopulateImageCardsbb 
(bb 
)bb  
;bb  !
intcc 
rowIndexcc 
=cc 
$numcc 
;cc 
intdd 
columnIndexdd 
=dd 
$numdd 
;dd  
intee 
columnCountee 
=ee 
GridToBeDrawnOnee -
.ee- .
ColumnDefinitionsee. ?
.ee? @
Countee@ E
;eeE F
forgg 
(gg 
intgg 
numberOfActualCardgg '
=gg( )
$numgg* +
;gg+ ,
numberOfActualCardgg- ?
<gg@ A

ImageCardsggB L
.ggL M
CountggM R
;ggR S
numberOfActualCardggT f
++ggf h
)ggh i
{hh 
ifii 
(ii 
columnIndexii 
>=ii  "
columnCountii# .
)ii. /
{jj 
columnIndexkk 
=kk  !
$numkk" #
;kk# $
rowIndexll 
++ll 
;ll 
}mm 
Gridoo 
.oo 
SetRowoo 
(oo 

ImageCardsoo &
[oo& '
numberOfActualCardoo' 9
]oo9 :
,oo: ;
rowIndexoo< D
)ooD E
;ooE F
Gridpp 
.pp 
	SetColumnpp 
(pp 

ImageCardspp )
[pp) *
numberOfActualCardpp* <
]pp< =
,pp= >
columnIndexpp? J
)ppJ K
;ppK L

ImageCardsqq 
[qq 
numberOfActualCardqq -
]qq- .
.qq. /
Marginqq/ 5
=qq6 7
newqq8 ;
	Thicknessqq< E
(qqE F
$numqqF G
)qqG H
;qqH I
GridToBeDrawnOnrr 
.rr  
Childrenrr  (
.rr( )
Addrr) ,
(rr, -

ImageCardsrr- 7
[rr7 8
numberOfActualCardrr8 J
]rrJ K
)rrK L
;rrL M
columnIndexss 
++ss 
;ss 
}tt 
}uu 	
public|| 
void|| !
SetEventOnCardClicked|| )
(||) *#
MouseButtonEventHandler||* A
eventHandler||B N
)||N O
{}} 	
for~~ 
(~~ 
int~~ 
numberOfActualCard~~ '
=~~( )
$num~~* +
;~~+ ,
numberOfActualCard~~- ?
<~~@ A

ImageCards~~B L
.~~L M
Count~~M R
;~~R S
numberOfActualCard~~T f
++~~f h
)~~h i
{ 

ImageCards
�� 
[
��  
numberOfActualCard
�� -
]
��- .
.
��. /
	MouseDown
��/ 8
+=
��9 ;
eventHandler
��< H
;
��H I
}
�� 
}
�� 	
}
�� 
}�� �
PC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Components\ImageCard.cs
	namespace 	

MemoryGame
 
. 

Components 
{ 
public 

class 
	ImageCard 
: 
Image "
{ 
public 
int 
CardId 
{ 
set 
;  
get! $
;$ %
}& '
public 
BitmapImage 

FrontImage %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
BitmapImage 
	BackImage $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
CardDto   
CardDto   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
}!! 
}"" �
NC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Components\UserBox.cs
	namespace 	

MemoryGame
 
. 

Components 
{ 
public

 

class

 
UserBox

 
:

 
Grid

 
{ 
public 
void 
SetUsername 
(  
	TextBlock  )
username* 2
)2 3
{ 	
Grid 
. 
	SetColumn 
( 
username #
,# $
$num% &
)& '
;' (
Grid 
. 
SetRow 
( 
username  
,  !
$num" #
)# $
;$ %
this 
. 
Children 
. 
Add 
( 
username &
)& '
;' (
} 	
} 
} �
TC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Components\UserBoxDrawer.cs
	namespace 	

MemoryGame
 
. 

Components 
{ 
public 

class 
UserBoxDrawer 
{ 
public 
Grid 
GridToBeDrawnOn #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
[ 
] 
PlayersUsernames (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
void 
Draw 
( 
) 
{ 	
int 
rowIndex 
= 
$num 
; 
int 
columnIndex 
= 
$num 
;  
foreach 
( 
var 
player 
in  "
PlayersUsernames# 3
)3 4
{   
UserBox!! 
userBox!! 
=!!  !
new!!" %
UserBox!!& -
(!!- .
)!!. /
{"" 

Background## 
=##  
new##! $
SolidColorBrush##% 4
(##4 5
Color##5 :
.##: ;
FromRgb##; B
(##B C
$num##C F
,##F G
$num##H J
,##J K
$num##L O
)##O P
)##P Q
}$$ 
;$$ 
	TextBlock&& 
username&& "
=&&# $
new&&% (
	TextBlock&&) 2
(&&2 3
)&&3 4
{'' 
Text(( 
=(( 
player(( !
,((! "

Foreground)) 
=))  
new))! $
SolidColorBrush))% 4
())4 5
Color))5 :
.)): ;
FromRgb)); B
())B C
$num))C F
,))F G
$num))H K
,))K L
$num))M P
)))P Q
)))Q R
,))R S
VerticalAlignment** %
=**& '
VerticalAlignment**( 9
.**9 :
Center**: @
,**@ A
HorizontalAlignment++ '
=++( )
HorizontalAlignment++* =
.++= >
Center++> D
,++D E
FontSize,, 
=,, 
$num,, !
,,,! "
TextTrimming--  
=--! "
TextTrimming--# /
.--/ 0
CharacterEllipsis--0 A
}.. 
;.. 
userBox00 
.00 
SetUsername00 #
(00# $
username00$ ,
)00, -
;00- .
Grid22 
.22 
	SetColumn22 
(22 
userBox22 &
,22& '
rowIndex22( 0
)220 1
;221 2
Grid33 
.33 
SetRow33 
(33 
userBox33 #
,33# $
columnIndex33% 0
)330 1
;331 2
GridToBeDrawnOn44 
.44  
Children44  (
.44( )
Add44) ,
(44, -
userBox44- 4
)444 5
;445 6
if55 
(55 
columnIndex55 
==55  "
$num55# $
)55$ %
{66 
rowIndex77 
=77 
$num77  
;77  !
columnIndex88 
=88  !
$num88" #
;88# $
}99 
else:: 
{;; 
columnIndex<< 
=<<  !
$num<<" #
;<<# $
}== 
}>> 
}?? 	
}@@ 
}BB �
cC:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\NonEmptyFieldValidation.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
GenericValidations% 7
{ 
public 

class #
NonEmptyFieldValidation (
:) *
IValidationRule+ :
{ 
private 
readonly 
string 
_inputField  +
;+ ,
public #
NonEmptyFieldValidation &
(& '
string' -

inputField. 8
)8 9
{ 	
_inputField 
= 

inputField $
;$ %
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
if 
( 

IsNotEmpty 
( 
) 
) 
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G

Properties 
. 
Langs  
.  !
	Resources! *
.* +

EmptyField+ 5
)5 6
;6 7
} 	
public 
bool 
Validate 
( 
) 
{   	
throw!! 
new!! #
NotImplementedException!! -
(!!- .
)!!. /
;!!/ 0
}"" 	
private$$ 
bool$$ 2
&DoesNotContainWhiteSpaceAtTheBeggining$$ ;
($$; <
)$$< =
{%% 	
string&& 
trimInputField&& !
=&&" #
_inputField&&$ /
.&&/ 0
Trim&&0 4
(&&4 5
)&&5 6
;&&6 7
if'' 
('' 
trimInputField'' 
.'' 
Length'' $
!=''% '
$num''( )
)'') *
{(( 
return)) 
true)) 
;)) 
}** 
return++ 
false++ 
;++ 
},, 	
private.. 
bool.. 

IsNotEmpty.. 
(..  
)..  !
{// 	
int00 !
inputFieldValueLength00 %
=00& '
_inputField00( 3
.003 4
Length004 :
;00: ;
if11 
(11 2
&DoesNotContainWhiteSpaceAtTheBeggining11 5
(115 6
)116 7
&&22 !
inputFieldValueLength22 (
>22) *
$num22+ ,
)22, -
{33 
return44 
true44 
;44 
}55 
return66 
false66 
;66 
}77 	
}88 
}99 �
[C:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\IValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

	interface 
IValidationRule $
{ 
bool 
Validate 
( 
) 
;  
ValidationRuleResult #
GetValidationRuleResult 4
(4 5
)5 6
;6 7
}   
}!! �
fC:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\EmailAddressValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class &
EmailAddressValidationRule +
:, -
IValidationRule. =
{ 
private 
readonly 
string 
_emailAddress  -
;- .
public &
EmailAddressValidationRule )
() *
string* 0
emailAddress1 =
)= >
{ 	
_emailAddress 
= 
emailAddress (
;( )
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
if 
( 
HasValidFormat 
( 
)  
&&! #1
%IsLessOrEqualsThan254CharactersLength$ I
(I J
)J K
)K L
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G

Properties 
. 
Langs  
.  !
	Resources! *
.* +!
EmailAddressIsInvalid+ @
)@ A
;A B
} 	
public 
bool 
Validate 
( 
) 
{   	 
ValidationRuleResult!!   
validationRuleResult!!! 5
=!!6 7#
GetValidationRuleResult!!8 O
(!!O P
)!!P Q
;!!Q R
if"" 
(""  
validationRuleResult"" #
.""# $
Status""$ *
==""+ - 
ValidationRuleResult"". B
.""B C
SUCCESS""C J
)""J K
{## 
return$$ 
true$$ 
;$$ 
}%% 
return&& 
false&& 
;&& 
}'' 	
private)) 
bool)) 
HasValidFormat)) #
())# $
)))$ %
{** 	
Regex++ 
regularExpression++ #
=++$ %
new++& )
Regex++* /
(++/ 0
$str++0 W
)++W X
;++X Y
bool,, 
hasValidFormat,, 
=,,  !
regularExpression,," 3
.,,3 4
IsMatch,,4 ;
(,,; <
_emailAddress,,< I
),,I J
;,,J K
return-- 
hasValidFormat-- !
;--! "
}.. 	
private00 
bool00 1
%IsLessOrEqualsThan254CharactersLength00 :
(00: ;
)00; <
{11 	
return22 
_emailAddress22  
.22  !
Length22! '
<=22( *
$num22+ .
;22. /
}33 	
}44 
}55 �*
bC:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\PasswordValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class "
PasswordValidationRule '
:( )
IValidationRule* 9
{ 
private 
readonly 
string 
	_password  )
;) *
public "
PasswordValidationRule %
(% &
string& ,
password- 5
)5 6
{ 	
	_password 
= 
password  
;  !
} 	
private 
bool )
HasAtLeastOneSpecialCharacter 2
(2 3
)3 4
{ 	
Regex 
regularExpression #
=$ %
new& )
Regex* /
(/ 0
$str0 6
)6 7
;7 8
MatchCollection 
matches #
=$ %
regularExpression& 7
.7 8
Matches8 ?
(? @
	_password@ I
)I J
;J K
return 
matches 
. 
Count  
>=! #
$num$ %
;% &
} 	
private 
bool &
HasAtLeastOneCapitalLetter /
(/ 0
)0 1
{ 	
Regex 
regularExpression #
=$ %
new& )
Regex* /
(/ 0
$str0 8
)8 9
;9 :
MatchCollection 
matches #
=$ %
regularExpression& 7
.7 8
Matches8 ?
(? @
	_password@ I
)I J
;J K
return 
matches 
. 
Count  
>=! #
$num$ %
;% &
} 	
private!! 
bool!! )
HasAtLeastOneNumericCharacter!! 2
(!!2 3
)!!3 4
{"" 	
Regex## 
regularExpression## #
=##$ %
new##& )
Regex##* /
(##/ 0
$str##0 7
)##7 8
;##8 9
MatchCollection$$ 
matches$$ #
=$$$ %
regularExpression$$& 7
.$$7 8
Matches$$8 ?
($$? @
	_password$$@ I
)$$I J
;$$J K
return%% 
matches%% 
.%% 
Count%%  
>=%%! #
$num%%$ %
;%%% &
}&& 	
private(( 
bool(( (
HasAtLeastOneLowercaseLetter(( 1
(((1 2
)((2 3
{)) 	
Regex** 
regularExpression** #
=**$ %
new**& )
Regex*** /
(**/ 0
$str**0 8
)**8 9
;**9 :
MatchCollection++ 
matches++ #
=++$ %
regularExpression++& 7
.++7 8
Matches++8 ?
(++? @
	_password++@ I
)++I J
;++J K
return,, 
matches,, 
.,, 
Count,,  
>=,,! #
$num,,$ %
;,,% &
}-- 	
private// 
bool// +
IsBetween8And25CharactersLength// 4
(//4 5
)//5 6
{00 	
return11 
	_password11 
.11 
Length11 #
>=11$ &
$num11' (
&&11) +
	_password11, 5
.115 6
Length116 <
<=11= ?
$num11@ B
;11B C
}22 	
public55 
bool55 
Validate55 
(55 
)55 
{66 	 
ValidationRuleResult77   
validationRuleResult77! 5
=776 7#
GetValidationRuleResult778 O
(77O P
)77P Q
;77Q R
if88 
(88  
validationRuleResult88 $
.88$ %
Status88% +
==88, . 
ValidationRuleResult88/ C
.88C D
SUCCESS88D K
)88K L
{99 
return:: 
true:: 
;:: 
};; 
return<< 
false<< 
;<< 
}== 	
public@@  
ValidationRuleResult@@ ##
GetValidationRuleResult@@$ ;
(@@; <
)@@< =
{AA 	
ifBB 
(BB )
HasAtLeastOneSpecialCharacterBB -
(BB- .
)BB. /
&&CC &
HasAtLeastOneCapitalLetterCC -
(CC- .
)CC. /
&&DD (
HasAtLeastOneLowercaseLetterDD /
(DD/ 0
)DD0 1
&&EE +
IsBetween8And25CharactersLengthEE 2
(EE2 3
)EE3 4
&&FF )
HasAtLeastOneNumericCharacterFF 0
(FF0 1
)FF1 2
)FF2 3
{GG 
returnHH 
newHH  
ValidationRuleResultHH /
(HH/ 0 
ValidationRuleResultHH0 D
.HHD E
SUCCESSHHE L
)HHL M
;HHM N
}II 
returnKK 
newKK  
ValidationRuleResultKK +
(KK+ , 
ValidationRuleResultKK, @
.KK@ A
ERRORKKA F
,KKF G

PropertiesLL 
.LL 
LangsLL  
.LL  !
	ResourcesLL! *
.LL* +
PasswordIsInvalidLL+ <
)LL< =
;LL= >
}MM 	
}NN 
}OO �
bC:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\UsernameValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public 

class "
UsernameValidationRule '
:( )
IValidationRule* 9
{ 
private 
readonly 
string 
	_username  )
;) *
public "
UsernameValidationRule %
(% &
string& ,
username- 5
)5 6
{ 	
	_username 
= 
username  
;  !
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
if 
( 
HasValidFormat 
( 
)  
&&! #+
IsBetween4And16CharactersLength$ C
(C D
)D E
)E F
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G

Properties 
. 
Langs  
.  !
	Resources! *
.* +
UsernameIsInvalid+ <
)< =
;= >
} 	
public 
bool 
Validate 
( 
) 
{   	 
ValidationRuleResult!!   
validationRuleResult!!! 5
=!!6 7#
GetValidationRuleResult!!8 O
(!!O P
)!!P Q
;!!Q R
if"" 
(""  
validationRuleResult"" $
.""$ %
Status""% +
=="", . 
ValidationRuleResult""/ C
.""C D
SUCCESS""D K
)""K L
{## 
return$$ 
true$$ 
;$$ 
}%% 
return&& 
false&& 
;&& 
}'' 	
private** 
bool** 
HasValidFormat** #
(**# $
)**$ %
{++ 	
Regex,, 
regularExpression,, #
=,,$ %
new,,& )
Regex,,* /
(,,/ 0
$str,,0 8
),,8 9
;,,9 :
bool-- 
hasValidFormat-- 
=--  !
regularExpression--" 3
.--3 4
IsMatch--4 ;
(--; <
	_username--< E
)--E F
;--F G
return.. 
hasValidFormat.. !
;..! "
}// 	
private11 
bool11 +
IsBetween4And16CharactersLength11 4
(114 5
)115 6
{22 	
return33 
	_username33 
.33 
Length33 #
>=33$ &
$num33' (
&&33) +
	_username33, 5
.335 6
Length336 <
<=33= ?
$num33@ B
;33B C
}44 	
}55 
}66 �
TC:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\IRuleSet.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

	interface 
IRuleSet 
{   
void%% 
AddValidationRule%% 
(%% 
IValidationRule%% .
validationRule%%/ =
)%%= >
;%%> ?
bool,, (
AllValidationRulesHavePassed,, )
(,,) *
),,* +
;,,+ ,
List33 
<33  
ValidationRuleResult33 !
>33! "%
GetValidationResultErrors33# <
(33< =
)33= >
;33> ?
}44 
}55 �
SC:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\RuleSet.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

class 
RuleSet 
{ 
public 
List 
< 
IValidationRule #
># $
ValidationRules% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
private 
readonly 
List 
<  
ValidationRuleResult 2
>2 3#
_validationResultErrors4 K
;K L
public 
RuleSet 
( 
) 
{ 	
ValidationRules 
= 
new !
List" &
<& '
IValidationRule' 6
>6 7
(7 8
)8 9
;9 :#
_validationResultErrors #
=$ %
new& )
List* .
<. / 
ValidationRuleResult/ C
>C D
(D E
)E F
;F G
} 	
public 
void 
AddValidationRule %
(% &
IValidationRule& 5
validationRule6 D
)D E
{ 	
ValidationRules 
. 
Add 
(  
validationRule  .
). /
;/ 0
} 	
private 
void #
LookForValidationErrors ,
(, -
)- .
{ 	%
ClearValidationErrorsList %
(% &
)& '
;' (
foreach   
(   
IValidationRule   $
rule  % )
in  * ,
ValidationRules  - <
)  < =
{!!  
ValidationRuleResult"" $ 
validationRuleResult""% 9
="": ;
rule""< @
.""@ A#
GetValidationRuleResult""A X
(""X Y
)""Y Z
;""Z [
if## 
(##  
validationRuleResult## (
.##( )
Status##) /
==##0 2 
ValidationRuleResult##3 G
.##G H
ERROR##H M
)##M N
{$$ #
_validationResultErrors%% +
.%%+ ,
Add%%, /
(%%/ 0 
validationRuleResult%%0 D
)%%D E
;%%E F
}&& 
}'' 
}(( 	
public++ 
bool++ (
AllValidationRulesHavePassed++ 0
(++0 1
)++1 2
{,, 	#
LookForValidationErrors-- #
(--# $
)--$ %
;--% &
if.. 
(.. #
_validationResultErrors.. '
...' (
Count..( -
==... 0
$num..1 2
)..2 3
{// 
return00 
true00 
;00 
}11 
return22 
false22 
;22 
}33 	
public66 
List66 
<66  
ValidationRuleResult66 (
>66( )%
GetValidationResultErrors66* C
(66C D
)66D E
{77 	#
LookForValidationErrors88 #
(88# $
)88$ %
;88% &
return99 #
_validationResultErrors99 *
;99* +
}:: 	
private== 
void== %
ClearValidationErrorsList== .
(==. /
)==/ 0
{>> 	#
_validationResultErrors?? #
.??# $
Clear??$ )
(??) *
)??* +
;??+ ,
}@@ 	
}AA 
}BB �
`C:\Users\Adair Hernández\source\repos\memory\MemoryGame\InputValidation\ValidationRuleResult.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

class  
ValidationRuleResult %
{ 
public 
const 
int 
ERROR 
=  
$num! "
;" #
public 
const 
int 
SUCCESS  
=! "
$num# $
;$ %
public 
int 
Status 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public    
ValidationRuleResult   #
(  # $
)  $ %
{  & '
}  ( )
public&&  
ValidationRuleResult&& #
(&&# $
int&&$ '
status&&( .
)&&. /
{'' 	
Status(( 
=(( 
status(( 
;(( 
})) 	
public00  
ValidationRuleResult00 #
(00# $
int00$ '
status00( .
,00. /
string000 6
message007 >
)00> ?
{11 	
Status22 
=22 
status22 
;22 
Message33 
=33 
message33 
;33 
}44 	
}55 
}66 �
RC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Utilities\TokenManager.cs
	namespace 	

MemoryGame
 
. 
	Utilities 
{ 
public

 

static

 
class

 
TokenManager

 $
{ 
public 
static 
string 
GenerateToken *
(* +
)+ ,
{ 	
MemoryGameService 
.  
TokenGeneratorClient 2
client3 9
=: ;
new 
MemoryGameService %
.% & 
TokenGeneratorClient& :
(: ;
); <
;< =
return 
client 
. 
GenerateToken '
(' (
$num( )
)) *
;* +
} 	
public 
static 
void 
	SendToken $
($ %
TokenInfoDto% 1
	tokenInfo2 ;
); <
{   	
MemoryGameService!! 
.!!  
MailingServiceClient!! 2
client!!3 9
=!!: ;
new"" 
MemoryGameService"" %
.""% & 
MailingServiceClient""& :
("": ;
)""; <
;""< =
client## 
.## !
SendVerificationToken## (
(##( )
	tokenInfo##) 2
)##2 3
;##3 4
}$$ 	
}%% 
}&& �P
VC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\ActivationToken.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
ActivationToken (
:) *
Window+ 1
{ 
private 
string 
_emailAddress $
;$ %
private 
string 
	_username  
;  !
private 
string 
	_newToken  
;  !
private 
MemoryGameService !
.! ",
 AccountVerificationServiceClient" B-
!_accountVerificationServiceClientC d
;d e
public 
ActivationToken 
( 
string %
emailAddress& 2
,2 3
string4 :
username; C
)C D
{ 	
InitializeComponent 
(  
)  !
;! "-
!_accountVerificationServiceClient -
=. /
new0 3
MemoryGameService4 E
.E F,
 AccountVerificationServiceClientF f
(f g
)g h
;h i
_emailAddress 
= 
emailAddress (
;( )
	_username 
= 
username  
;  !
} 	
private   
void   
OkButtonClicked   $
(  $ %
object  % +
sender  , 2
,  2 3
RoutedEventArgs  4 C
e  D E
)  E F
{!! 	
try"" 
{## 
VerifyAccount$$ 
($$ 
)$$ 
;$$  
}%% 
catch&& 
(&& 
TimeoutException&& #
)&&# $
{'' 

MessageBox(( 
.(( 
Show(( 
(((  

Properties((  *
.((* +
Langs((+ 0
.((0 1
	Resources((1 :
.((: ;
ServerTimeoutError((; M
)((M N
;((N O
})) 
catch** 
(** %
EndpointNotFoundException** ,
)**, -
{++ 

MessageBox,, 
.,, 
Show,, 
(,,  

Properties,,  *
.,,* +
Langs,,+ 0
.,,0 1
	Resources,,1 :
.,,: ; 
ServerConnectionLost,,; O
),,O P
;,,P Q
}-- 
catch.. 
(.. "
CommunicationException.. )
)..) *
{// 

MessageBox00 
.00 
Show00 
(00  

Properties00  *
.00* +
Langs00+ 0
.000 1
	Resources001 :
.00: ;$
CommunicationInterrupted00; S
)00S T
;00T U
}11 
}22 	
private44 
void44 
VerifyAccount44 "
(44" #
)44# $
{55 	
if66 
(66 
TokenIsCorrect66 
(66 
)66  
)66  !
{77 
if88 
(88 *
AccountWasSuccessfullyVerified88 2
(882 3
)883 4
)884 5
{99 

MessageBox:: 
.:: 
Show:: #
(::# $

Properties::$ .
.::. /
Langs::/ 4
.::4 5
	Resources::5 >
.::> ?&
AccountVerificationSuccess::? Y
)::Y Z
;::Z [
	GoToLogin<< 
(<< 
)<< 
;<<  
}== 
else>> 
{?? 

MessageBox@@ 
.@@ 
Show@@ #
(@@# $

Properties@@$ .
.@@. /
Langs@@/ 4
.@@4 5
	Resources@@5 >
.@@> ?$
AccountVerificationError@@? W
)@@W X
;@@X Y
}AA 
}BB 
elseCC 
{DD 

MessageBoxEE 
.EE 
ShowEE 
(EE  

PropertiesEE  *
.EE* +
LangsEE+ 0
.EE0 1
	ResourcesEE1 :
.EE: ;'
NonMatchingVerificationCodeEE; V
)EEV W
;EEW X
}FF 
}GG 	
privateII 
voidII 
	GoToLoginII 
(II 
)II  
{JJ 	
LoginKK 
	loginViewKK 
=KK 
newKK !
LoginKK" '
(KK' (
)KK( )
;KK) *
	loginViewLL 
.LL 
ShowLL 
(LL 
)LL 
;LL 
thisMM 
.MM 
CloseMM 
(MM 
)MM 
;MM 
}NN 	
privatePP 
boolPP 
TokenIsCorrectPP #
(PP# $
)PP$ %
{QQ 	
stringRR 
tokenRR 
=RR 
TextBoxTokenRR '
.RR' (
TextRR( ,
;RR, -
ifSS 
(SS 
tokenSS 
==SS 
$strSS 
)SS 
{TT 
returnUU 
falseUU 
;UU 
}VV 
returnWW -
!_accountVerificationServiceClientWW 4
.WW4 5!
VerifyActivationTokenWW5 J
(WWJ K
_emailAddressWWK X
,WWX Y
tokenWWZ _
)WW_ `
;WW` a
}XX 	
privateZZ 
boolZZ *
AccountWasSuccessfullyVerifiedZZ 3
(ZZ3 4
)ZZ4 5
{[[ 	
return\\ -
!_accountVerificationServiceClient\\ 4
.\\4 5 
SetAccountAsVerified\\5 I
(\\I J
_emailAddress\\J W
)\\W X
;\\X Y
}]] 	
private__ 
void__ $
SendNewCodeButtonClicked__ -
(__- .
object__. 4
sender__5 ;
,__; <
RoutedEventArgs__= L
e__M N
)__N O
{`` 	
tryaa 
{bb 
GenerateNewTokencc  
(cc  !
)cc! "
;cc" #
ifee 
(ee &
AssignNewVerificationTokenee .
(ee. /
)ee/ 0
)ee0 1
{ff $
SendNewVerificationTokengg ,
(gg, -
)gg- .
;gg. /

MessageBoxhh 
.hh 
Showhh #
(hh# $

Propertieshh$ .
.hh. /
Langshh/ 4
.hh4 5
	Resourceshh5 >
.hh> ?
NewCodeSentMessagehh? Q
)hhQ R
;hhR S
}ii 
}jj 
catchkk 
(kk %
EndpointNotFoundExceptionkk ,
)kk, -
{ll 

MessageBoxmm 
.mm 
Showmm 
(mm  

Propertiesmm  *
.mm* +
Langsmm+ 0
.mm0 1
	Resourcesmm1 :
.mm: ; 
ServerConnectionLostmm; O
)mmO P
;mmP Q
}nn 
catchoo 
(oo 
TimeoutExceptionoo #
)oo# $
{pp 

MessageBoxqq 
.qq 
Showqq 
(qq  

Propertiesqq  *
.qq* +
Langsqq+ 0
.qq0 1
	Resourcesqq1 :
.qq: ;
ServerTimeoutErrorqq; M
)qqM N
;qqN O
}rr 
catchss 
(ss /
#CommunicationObjectFaultedExceptionss 6
)ss6 7
{tt 

MessageBoxuu 
.uu 
Showuu 
(uu  

Propertiesuu  *
.uu* +
Langsuu+ 0
.uu0 1
	Resourcesuu1 :
.uu: ;$
CommunicationInterrupteduu; S
)uuS T
;uuT U
}vv 
}ww 	
privateyy 
voidyy 
GenerateNewTokenyy %
(yy% &
)yy& '
{zz 	
string{{ 
newToken{{ 
={{ 
TokenManager{{ *
.{{* +
GenerateToken{{+ 8
({{8 9
){{9 :
;{{: ;
	_newToken|| 
=|| 
newToken||  
;||  !
}}} 	
private 
bool &
AssignNewVerificationToken /
(/ 0
)0 1
{
�� 	
bool
�� 9
+newVerificationTokenWasAssignedSuccessfully
�� <
=
��= >/
!_accountVerificationServiceClient
�� 1
.
��1 2&
AssignNewActivationToken
��2 J
(
��J K
_emailAddress
��K X
,
��X Y
	_newToken
��Z c
)
��c d
;
��d e
return
�� 9
+newVerificationTokenWasAssignedSuccessfully
�� >
;
��> ?
}
�� 	
private
�� 
void
�� &
SendNewVerificationToken
�� -
(
��- .
)
��. /
{
�� 	
TokenInfoDto
�� #
verificationTokenInfo
�� .
=
��/ 0
new
��1 4
TokenInfoDto
��5 A
(
��A B
)
��B C
{
�� 
Name
�� 
=
�� 
	_username
��  
,
��  !
EmailAddress
�� 
=
�� 
_emailAddress
�� ,
,
��, -
Token
�� 
=
�� 
	_newToken
�� !
,
��! "
Subject
�� 
=
�� 

Properties
�� $
.
��$ %
Langs
��% *
.
��* +
	Resources
��+ 4
.
��4 5
Welcome
��5 <
,
��< =
Body
�� 
=
�� 

Properties
�� !
.
��! "
Langs
��" '
.
��' (
	Resources
��( 1
.
��1 2
VerificationToken
��2 C
}
�� 
;
�� 
TokenManager
�� 
.
�� 
	SendToken
�� "
(
��" ##
verificationTokenInfo
��# 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� 
BackButtonClicked
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	

MainWindow
�� 
mainWindowView
�� %
=
��& '
new
��( +

MainWindow
��, 6
(
��6 7
)
��7 8
;
��8 9
mainWindowView
�� 
.
�� 
Show
�� 
(
��  
)
��  !
;
��! "
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �M
UC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\ChangeUsername.xaml.cs
	namespace

 	

MemoryGame


 
{ 
public 

partial 
class 
ChangeUsername '
:( )
Window* 0
{ 
private 
string 
_userEmailAddress (
;( )
private 
string 
_newUsername #
;# $
private 
string 
_oldUsername #
;# $
private 
RuleSet 
_ruleSet  
;  !
public 
ChangeUsername 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
Sesion 
userSession 
=  
Sesion! '
.' (
	GetSesion( 1
;1 2
_userEmailAddress 
= 
userSession  +
.+ ,
EmailAddress, 8
;8 9
_oldUsername 
= 
userSession &
.& '
Username' /
;/ 0
LabelOldUsername 
. 
Content $
=% &
_oldUsername' 3
;3 4
}   	
private"" 
void"" 
SetFormValidation"" &
(""& '
)""' (
{## 	
_ruleSet$$ 
=$$ 
new$$ 
RuleSet$$ "
($$" #
)$$# $
;$$$ %
_ruleSet%% 
.%% 
AddValidationRule%% &
(%%& '
new%%' *"
UsernameValidationRule%%+ A
(%%A B
_newUsername%%B N
)%%N O
)%%O P
;%%P Q
}&& 	
private(( 
void(( (
TextBoxNewUsername_LostFocus(( 1
(((1 2
object((2 8
sender((9 ?
,((? @
RoutedEventArgs((A P
e((Q R
)((R S
{)) 	
if** 
(** 
string** 
.** 
IsNullOrEmpty** $
(**$ %
TextBoxNewUsername**% 7
.**7 8
Text**8 <
)**< =
)**= >
{++ 
TextBoxNewUsername,, "
.,," #

Visibility,,# -
=,,. /

Visibility,,0 :
.,,: ;
	Collapsed,,; D
;,,D E
waterMarkText-- 
.-- 

Visibility-- (
=--) *

Visibility--+ 5
.--5 6
Visible--6 =
;--= >
}.. 
}// 	
private11 
void11 "
waterMarkText_GotFocus11 +
(11+ ,
object11, 2
sender113 9
,119 :
RoutedEventArgs11; J
e11K L
)11L M
{22 	
waterMarkText33 
.33 

Visibility33 $
=33% &

Visibility33' 1
.331 2
	Collapsed332 ;
;33; <
TextBoxNewUsername44 
.44 

Visibility44 )
=44* +

Visibility44, 6
.446 7
Visible447 >
;44> ?
TextBoxNewUsername55 
.55 
Focus55 $
(55$ %
)55% &
;55& '
}66 	
private88 
bool88 
UsernameIsAvailable88 (
(88( )
)88) *
{99 	'
PlayerRegistryServiceClient:: ''
playerRegistryServiceClient::( C
=::D E
new::F I'
PlayerRegistryServiceClient::J e
(::e f
)::f g
;::g h
bool;; 
usernameIsAvailable;; $
=;;% &'
playerRegistryServiceClient;;' B
.;;B C
UserNameIsAvailable;;C V
(;;V W
_newUsername;;W c
);;c d
;;;d e
return<< 
usernameIsAvailable<< &
;<<& '
}== 	
private?? 
void?? $
SaveChangesButtonClicked?? -
(??- .
object??. 4
sender??5 ;
,??; <
RoutedEventArgs??= L
e??M N
)??N O
{@@ 	
_newUsernameAA 
=AA 
TextBoxNewUsernameAA -
.AA- .
TextAA. 2
;AA2 3
SetFormValidationBB 
(BB 
)BB 
;BB  
ifCC 
(CC 
_ruleSetCC 
.CC (
AllValidationRulesHavePassedCC 5
(CC5 6
)CC6 7
)CC7 8
{DD 
tryEE 
{FF 
SetNewUsernameGG "
(GG" #
)GG# $
;GG$ %
}II 
catchJJ 
(JJ 
TimeoutExceptionJJ '
)JJ' (
{KK 

MessageBoxLL 
.LL 
ShowLL #
(LL# $

PropertiesLL$ .
.LL. /
LangsLL/ 4
.LL4 5
	ResourcesLL5 >
.LL> ?
ServerTimeoutErrorLL? Q
)LLQ R
;LLR S
}MM 
catchNN 
(NN %
EndpointNotFoundExceptionNN 0
)NN0 1
{OO 

MessageBoxPP 
.PP 
ShowPP #
(PP# $

PropertiesPP$ .
.PP. /
LangsPP/ 4
.PP4 5
	ResourcesPP5 >
.PP> ? 
ServerConnectionLostPP? S
)PPS T
;PPT U
}QQ 
catchRR 
(RR "
CommunicationExceptionRR -
)RR- .
{SS 

MessageBoxTT 
.TT 
ShowTT #
(TT# $

PropertiesTT$ .
.TT. /
LangsTT/ 4
.TT4 5
	ResourcesTT5 >
.TT> ?$
CommunicationInterruptedTT? W
)TTW X
;TTX Y
}UU 
}VV 
elseWW 
{XX 
ShowErrorMessageYY  
(YY  !
)YY! "
;YY" #
}ZZ 
}[[ 	
private]] 
void]] 
SetNewUsername]] #
(]]# $
)]]$ %
{^^ 	
if__ 
(__ 
_oldUsername__ 
.__ 
Equals__ #
(__# $
_newUsername__$ 0
)__0 1
)__1 2
{`` 

MessageBoxaa 
.aa 
Showaa 
(aa  

Propertiesaa  *
.aa* +
Langsaa+ 0
.aa0 1
	Resourcesaa1 :
.aa: ;-
!NewUsernameIsIdenticalToTheOldOneaa; \
)aa\ ]
;aa] ^
}bb 
elsecc 
{dd 
ifee 
(ee 
UsernameIsAvailableee '
(ee' (
)ee( )
)ee) *
{ff 
ifgg 
(gg *
UserNameWasChangedSuccessfullygg 6
(gg6 7
)gg7 8
)gg8 9
{hh 

MessageBoxii "
.ii" #
Showii# '
(ii' (

Propertiesii( 2
.ii2 3
Langsii3 8
.ii8 9
	Resourcesii9 B
.iiB C'
UsernameUpdatedSuccessfullyiiC ^
)ii^ _
;ii_ `
GoToMainWindowjj &
(jj& '
)jj' (
;jj( )
}kk 
elsell 
{mm 

MessageBoxnn "
.nn" #
Shownn# '
(nn' (

Propertiesnn( 2
.nn2 3
Langsnn3 8
.nn8 9
	Resourcesnn9 B
.nnB C 
UsernameUpdatedErrornnC W
)nnW X
;nnX Y
}oo 
}pp 
elseqq 
{rr 

MessageBoxss 
.ss 
Showss #
(ss# $

Propertiesss$ .
.ss. /
Langsss/ 4
.ss4 5
	Resourcesss5 >
.ss> ?
UsernameIsTakenss? N
)ssN O
;ssO P
}tt 
}uu 
}ww 	
privateyy 
voidyy 
ShowErrorMessageyy %
(yy% &
)yy& '
{zz 	
IList{{ 
<{{  
ValidationRuleResult{{ &
>{{& '"
validationResultErrors{{( >
={{? @
_ruleSet{{A I
.{{I J%
GetValidationResultErrors{{J c
({{c d
){{d e
;{{e f
if|| 
(|| "
validationResultErrors|| %
.||% &
Count||& +
>||, -
$num||. /
)||/ 0
{}} 

MessageBox~~ 
.~~ 
Show~~ 
(~~  "
validationResultErrors~~  6
[~~6 7
$num~~7 8
]~~8 9
.~~9 :
Message~~: A
)~~A B
;~~B C
} 
}
�� 	
private
�� 
bool
�� ,
UserNameWasChangedSuccessfully
�� 3
(
��3 4
)
��4 5
{
�� 	/
!AccountModifiabilityServiceClient
�� -/
!accountModifiabilityServiceClient
��. O
=
��P Q
new
�� /
!AccountModifiabilityServiceClient
�� 5
(
��5 6
)
��6 7
;
��7 8
return
�� /
!accountModifiabilityServiceClient
�� 4
.
��4 5
ChangeUsername
��5 C
(
��C D
_userEmailAddress
��D U
,
��U V
_newUsername
��W c
)
��c d
;
��d e
}
�� 	
private
�� 
void
�� 
GoToMainWindow
�� #
(
��# $
)
��$ %
{
�� 	

MainWindow
�� 

mainWindow
�� !
=
��" #
new
��$ '

MainWindow
��( 2
(
��2 3
)
��3 4
;
��4 5

mainWindow
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
BackButtonClicked
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
GoToMainWindow
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �X
QC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\CreateGame.xaml.cs
	namespace 	

MemoryGame
 
{		 
public 

partial 
class 

CreateGame #
:$ %
Window& ,
{ 
private  
ObservableCollection $
<$ %
MemoryGameService% 6
.6 7
DataTransferObjects7 J
.J K
CardDeckInfoDtoK Z
>Z [
_cardDecksInfoList\ n
;n o
private 
int 
_selectedCardDeckId '
;' (
private 
string 
	_username  
;  !
private 
int +
_numberOfPlayersDesiredForMatch 3
;3 4
private 
MemoryGameService !
.! "
DataTransferObjects" 5
.5 6
MatchDto6 >

_gameMatch? I
;I J
private 
MemoryGameService !
.! "
DataTransferObjects" 5
.5 6
CardDeckDto6 A
	_cardDeckB K
;K L
public 

CreateGame 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_cardDecksInfoList 
=  
new! $ 
ObservableCollection% 9
<9 :
MemoryGameService: K
.K L
DataTransferObjectsL _
._ `
CardDeckInfoDto` o
>o p
(p q
)q r
;r s
LoadCardDecksInfo 
( 
) 
;  
	_username 
= 
Sesion 
. 
	GetSesion (
.( )
Username) 1
;1 2
} 	
private!! 
void!! 
LoadCardDecksInfo!! &
(!!& '
)!!' (
{"" 	
try## 
{$$ 
MemoryGameService%% !
.%%! "*
CardDeckRetrieverServiceClient%%" @*
cardDeckRetrieverServiceClient%%A _
=%%` a
new&& 
MemoryGameService&& %
.&&% &*
CardDeckRetrieverServiceClient&&& D
(&&D E
)&&E F
;&&F G
MemoryGameService(( !
.((! "
DataTransferObjects((" 5
.((5 6
CardDeckInfoDto((6 E
[((E F
]((F G
cardDecksInfo((H U
=((V W*
cardDeckRetrieverServiceClient)) 2
.))2 3
GetCardDecksInfo))3 C
())C D
)))D E
;))E F
for++ 
(++ 
int++ 
index++ 
=++  
$num++! "
;++" #
index++$ )
<++* +
cardDecksInfo++, 9
.++9 :
Length++: @
;++@ A
index++B G
++++G I
)++I J
{,, 
_cardDecksInfoList-- &
.--& '
Add--' *
(--* +
cardDecksInfo--+ 8
[--8 9
index--9 >
]--> ?
)--? @
;--@ A
}.. 
CardDeckComboBox//  
.//  !
ItemsSource//! ,
=//- .
_cardDecksInfoList/// A
;//A B
CardDeckComboBox00  
.00  !
DisplayMemberPath00! 2
=003 4
$str005 C
;00C D
CardDeckComboBox11  
.11  !
SelectedValuePath11! 2
=113 4
$str115 A
;11A B
}22 
catch33 
(33 %
EndpointNotFoundException33 ,
)33, -
{44 

MessageBox55 
.55 
Show55 
(55  

Properties55  *
.55* +
Langs55+ 0
.550 1
	Resources551 :
.55: ; 
ServerConnectionLost55; O
)55O P
;55P Q
}66 
catch77 
(77 
TimeoutException77 #
)77# $
{88 

MessageBox99 
.99 
Show99 
(99  

Properties99  *
.99* +
Langs99+ 0
.990 1
	Resources991 :
.99: ;
ServerTimeoutError99; M
)99M N
;99N O
}:: 
catch;; 
(;; "
CommunicationException;; )
);;) *
{<< 

MessageBox== 
.== 
Show== 
(==  

Properties==  *
.==* +
Langs==+ 0
.==0 1
	Resources==1 :
.==: ;$
CommunicationInterrupted==; S
)==S T
;==T U
}>> 
}?? 	
publicGG 
voidGG #
CreateGameButtonClickedGG +
(GG+ ,
objectGG, 2
senderGG3 9
,GG9 :
RoutedEventArgsGG; J
routedEventArgsGGK Z
)GGZ [
{HH 	
MemoryGameServiceII 
.II 
DataTransferObjectsII 1
.II1 2
CardDeckInfoDtoII2 A
cardDeckForMatchIIB R
=IIS T
(JJ 
(JJ 
MemoryGameServiceJJ #
.JJ# $
DataTransferObjectsJJ$ 7
.JJ7 8
CardDeckInfoDtoJJ8 G
)JJG H
CardDeckComboBoxJJH X
.JJX Y
SelectedItemJJY e
)JJe f
;JJf g
varLL '
numberOfPlayersSelectedItemLL +
=LL, -
(LL. /
(LL/ 0
ComboBoxItemLL0 <
)LL< =#
ComboBoxNumberOfPlayersLL= T
.LLT U
SelectedItemLLU a
)LLa b
.LLb c
TagLLc f
;LLf g
ifNN 
(NN '
numberOfPlayersSelectedItemNN +
==NN, .
nullNN/ 3
)NN3 4
{OO 

MessageBoxPP 
.PP 
ShowPP 
(PP  

PropertiesPP  *
.PP* +
LangsPP+ 0
.PP0 1
	ResourcesPP1 :
.PP: ;2
&NumberOfPlayersForMatchWereNotSelectedPP; a
)PPa b
;PPb c
}QQ 
elseQQ 
ifQQ 
(QQ 
cardDeckForMatchQQ %
==QQ& (
nullQQ) -
)QQ- .
{RR 

MessageBoxSS 
.SS 
ShowSS 
(SS  

PropertiesSS  *
.SS* +
LangsSS+ 0
.SS0 1
	ResourcesSS1 :
.SS: ;%
NoCardDeckHasBeenSelectedSS; T
)SST U
;SSU V
}TT 
elseUU 
{VV +
_numberOfPlayersDesiredForMatchWW /
=WW0 1
Int32WW2 7
.WW7 8
ParseWW8 =
(WW= >'
numberOfPlayersSelectedItemWW> Y
.WWY Z
ToStringWWZ b
(WWb c
)WWc d
)WWd e
;WWe f
_selectedCardDeckIdXX #
=XX$ %
cardDeckForMatchXX& 6
.XX6 7

CardDeckIdXX7 A
;XXA B
tryYY 
{ZZ 
CreateNewMatch[[ "
([[" #
)[[# $
;[[$ %
GoToWaitingRoom\\ #
(\\# $
)\\$ %
;\\% &
}]] 
catch^^ 
(^^ %
EndpointNotFoundException^^ 0
)^^0 1
{__ 

MessageBox`` 
.`` 
Show`` #
(``# $

Properties``$ .
.``. /
Langs``/ 4
.``4 5
	Resources``5 >
.``> ? 
ServerConnectionLost``? S
)``S T
;``T U
}aa 
catchbb 
(bb 
TimeoutExceptionbb '
)bb' (
{cc 

MessageBoxdd 
.dd 
Showdd #
(dd# $

Propertiesdd$ .
.dd. /
Langsdd/ 4
.dd4 5
	Resourcesdd5 >
.dd> ?
ServerTimeoutErrordd? Q
)ddQ R
;ddR S
}ee 
catchff 
(ff "
CommunicationExceptionff -
)ff- .
{gg 

MessageBoxhh 
.hh 
Showhh #
(hh# $

Propertieshh$ .
.hh. /
Langshh/ 4
.hh4 5
	Resourceshh5 >
.hh> ?$
CommunicationInterruptedhh? W
)hhW X
;hhX Y
}ii 
}jj 
}kk 	
privatemm 
voidmm 
CreateNewMatchmm #
(mm# $
)mm$ %
{nn 	
LoadCardDeckoo 
(oo 
)oo 
;oo 

_gameMatchpp 
=pp 
newpp 
MemoryGameServicepp .
.pp. /
DataTransferObjectspp/ B
.ppB C
MatchDtoppC K
(ppK L
)ppL M
{qq 
MaxNumberOfPlayersrr "
=rr# $+
_numberOfPlayersDesiredForMatchrr% D
,rrD E
Hostss 
=ss 
	_usernamess  
,ss  !

HasStartedtt 
=tt 
falsett "
,tt" #
CardDeckDtouu 
=uu 
	_cardDeckuu '
}vv 
;vv 
MemoryGameServicexx 
.xx &
MatchCreationServiceClientxx 8'
_matchCreationServiceClientxx9 T
=xxU V
newyy 
MemoryGameServiceyy %
.yy% &&
MatchCreationServiceClientyy& @
(yy@ A
)yyA B
;yyB C'
_matchCreationServiceClient{{ '
.{{' (
CreateNewMatch{{( 6
({{6 7

_gameMatch{{7 A
){{A B
;{{B C
}|| 	
private~~ 
void~~ 
LoadCardDeck~~ !
(~~! "
)~~" #
{ 	
MemoryGameService
�� 
.
�� ,
CardDeckRetrieverServiceClient
�� <,
cardDeckRetrieverServiceClient
��= [
=
��\ ]
new
�� 
MemoryGameService
�� %
.
��% &,
CardDeckRetrieverServiceClient
��& D
(
��D E
)
��E F
;
��F G
	_cardDeck
�� 
=
�� ,
cardDeckRetrieverServiceClient
�� 6
.
��6 7!
GetCardDeckAndCards
��7 J
(
��J K!
_selectedCardDeckId
��K ^
)
��^ _
;
��_ `
}
�� 	
private
�� 
void
�� 
GoToWaitingRoom
�� $
(
��$ %
)
��% &
{
�� 	
WaitingRoom
�� 
waitingRoomView
�� '
=
��( )
new
��* -
WaitingRoom
��. 9
(
��9 :
)
��: ;
{
�� 
GameMatchDto
�� 
=
�� 

_gameMatch
�� )
}
�� 
;
�� 
waitingRoomView
�� 
.
�� 
Show
��  
(
��  !
)
��! "
;
��" #
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
BackButtonClicked
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
routedEventArgs
��E T
)
��T U
{
�� 	
MainMenu
�� 
mainMenuView
�� !
=
��" #
new
��$ '
MainMenu
��( 0
(
��0 1
)
��1 2
;
��2 3
mainMenuView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
��  
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �P
RC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\ExpelPlayer.xaml.cs
	namespace 	

MemoryGame
 
{		 
public 

partial 
class 
ExpelPlayer $
:% &
Window' -
{ 
public 
InstanceContext 
Context &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public  
ObservableCollection #
<# $
string$ *
>* +
Players, 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
=B C
newD G 
ObservableCollectionH \
<\ ]
string] c
>c d
(d e
)e f
;f g
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
int!! "
NumberOfPlayersInMatch!! )
{!!* +
get!!, /
;!!/ 0
set!!1 4
;!!4 5
}!!6 7
public&& 
string&& 
PlayerUsername&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
private(( 
MemoryGameService(( !
.((! "
MatchServiceClient((" 4
_matchServiceClient((5 H
;((H I
public-- 
ExpelPlayer-- 
(-- 
)-- 
{.. 	
InitializeComponent// 
(//  
)//  !
;//! "
}00 	
private22 
void22 
WindowLoaded22 !
(22! "
object22" (
sender22) /
,22/ 0
RoutedEventArgs221 @
e22A B
)22B C
{33 	
_matchServiceClient44 
=44  !
new44" %
MemoryGameService44& 7
.447 8
MatchServiceClient448 J
(44J K
Context44K R
)44R S
;44S T
try55 
{66 "
LoadUsernamesToBeVoted77 &
(77& '
)77' (
;77( )
}88 
catch99 
(99 %
EndpointNotFoundException99 ,
)99, -
{:: 

MessageBox;; 
.;; 
Show;; 
(;;  

Properties;;  *
.;;* +
Langs;;+ 0
.;;0 1
	Resources;;1 :
.;;: ; 
ServerConnectionLost;;; O
);;O P
;;;P Q
}<< 
catch== 
(== 
TimeoutException== #
)==# $
{>> 

MessageBox?? 
.?? 
Show?? 
(??  

Properties??  *
.??* +
Langs??+ 0
.??0 1
	Resources??1 :
.??: ;
ServerTimeoutError??; M
)??M N
;??N O
}@@ 
catchAA 
(AA "
CommunicationExceptionAA )
)AA) *
{BB 

MessageBoxCC 
.CC 
ShowCC 
(CC  

PropertiesCC  *
.CC* +
LangsCC+ 0
.CC0 1
	ResourcesCC1 :
.CC: ;$
CommunicationInterruptedCC; S
)CCS T
;CCT U
}DD 
}EE 	
privateGG 
voidGG "
LoadUsernamesToBeVotedGG +
(GG+ ,
)GG, -
{HH 	
IListII 
<II 
stringII 
>II #
playersInMatchUsernamesII 1
=II2 3
_matchServiceClientII4 G
.IIG H1
%GetUsernamesOfPlayersConnectedToMatchIIH m
(IIm n
	MatchHostIIn w
)IIw x
;IIx y
IListJJ 
<JJ 
stringJJ 
>JJ 
playersVotedJJ &
=JJ' (
_matchServiceClientJJ) <
.JJ< =
GetPlayersVotedJJ= L
(JJL M
	MatchHostJJM V
,JJV W
PlayerUsernameJJX f
)JJf g
;JJg h
foreachKK 
(KK 
varKK 
playerUsernameKK '
inKK( *#
playersInMatchUsernamesKK+ B
)KKB C
{LL 
ifMM 
(MM 
playerUsernameMM "
!=MM# %
PlayerUsernameMM& 4
)MM4 5
{NN 
PlayersOO 
.OO 
AddOO 
(OO  
playerUsernameOO  .
)OO. /
;OO/ 0
}PP 
}QQ 
ifRR 
(RR 
playersVotedRR 
.RR 
CountRR "
!=RR# %
$numRR& '
)RR' (
{SS 
forTT 
(TT 
intTT 
indexTT 
=TT  
$numTT! "
;TT" #
indexTT$ )
<TT* +#
playersInMatchUsernamesTT, C
.TTC D
CountTTD I
;TTI J
indexTTK P
++TTP R
)TTR S
{UU 
forVV 
(VV 
intVV 
playersVotedIndexVV .
=VV/ 0
$numVV1 2
;VV2 3
playersVotedIndexVV4 E
<VVF G
playersVotedVVH T
.VVT U
CountVVU Z
;VVZ [
playersVotedIndexVV\ m
++VVm o
)VVo p
{WW 
ifXX 
(XX #
playersInMatchUsernamesXX 3
[XX3 4
indexXX4 9
]XX9 :
.XX: ;
EqualsXX; A
(XXA B
playersVotedXXB N
[XXN O
playersVotedIndexXXO `
]XX` a
)XXa b
)XXb c
{YY 
PlayersZZ #
.ZZ# $
RemoveZZ$ *
(ZZ* +
playersVotedZZ+ 7
[ZZ7 8
playersVotedIndexZZ8 I
]ZZI J
)ZZJ K
;ZZK L
}[[ 
}\\ 
}]] 
}^^ 
ExpelPlayerDataGrid__ 
.__  
ItemsSource__  +
=__, -
Players__. 5
;__5 6
}`` 	
privatebb 
voidbb $
ExpelPlayerButtonClickedbb -
(bb- .
objectbb. 4
senderbb5 ;
,bb; <
RoutedEventArgsbb= L
ebbM N
)bbN O
{cc 	
trydd 
{ee 
VoteToExpelPlayerff !
(ff! "
)ff" #
;ff# $
}gg 
catchhh 
(hh %
EndpointNotFoundExceptionhh ,
)hh, -
{ii 

MessageBoxjj 
.jj 
Showjj 
(jj  

Propertiesjj  *
.jj* +
Langsjj+ 0
.jj0 1
	Resourcesjj1 :
.jj: ; 
ServerConnectionLostjj; O
)jjO P
;jjP Q
}kk 
catchll 
(ll 
TimeoutExceptionll #
)ll# $
{mm 

MessageBoxnn 
.nn 
Shownn 
(nn  

Propertiesnn  *
.nn* +
Langsnn+ 0
.nn0 1
	Resourcesnn1 :
.nn: ;
ServerTimeoutErrornn; M
)nnM N
;nnN O
}oo 
catchpp 
(pp "
CommunicationExceptionpp )
)pp) *
{qq 

MessageBoxrr 
.rr 
Showrr 
(rr  

Propertiesrr  *
.rr* +
Langsrr+ 0
.rr0 1
	Resourcesrr1 :
.rr: ;$
CommunicationInterruptedrr; S
)rrS T
;rrT U
}ss 
finallytt 
{uu 
thisvv 
.vv 
Closevv 
(vv 
)vv 
;vv 
}ww 
}xx 	
privatezz 
voidzz 
VoteToExpelPlayerzz &
(zz& '
)zz' (
{{{ 	
var|| 
selectedPlayer|| 
=||  
ExpelPlayerDataGrid||! 4
.||4 5
SelectedItem||5 A
;||A B
if}} 
(}} 
selectedPlayer}} 
!=}}  
null}}! %
)}}% &
{~~ 
string $
usernameOfSelectedPlayer /
=0 1
selectedPlayer2 @
.@ A
ToStringA I
(I J
)J K
;K L
ExpelVoteDto
�� 
	expelVote
�� &
=
��' (
new
��) ,
ExpelVoteDto
��- 9
(
��9 :
)
��: ;
{
�� 
Host
�� 
=
�� 
	MatchHost
�� $
,
��$ %#
UsernameOfExpelPlayer
�� )
=
��* +&
usernameOfSelectedPlayer
��, D
,
��D E#
UsernameOfVoterPlayer
�� )
=
��* +
PlayerUsername
��, :
}
�� 
;
�� !
_matchServiceClient
�� #
.
��# $
ExpelPlayer
��$ /
(
��/ 0
	expelVote
��0 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;%
SelectPlayerToBeExpeled
��; R
)
��R S
;
��S T
}
�� 
}
�� 	
private
�� 
void
�� 
BackButtonClicked
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
GameOptions
�� 
gameOptionsView
�� '
=
��( )
new
��* -
GameOptions
��. 9
(
��9 :
)
��: ;
{
�� 
	MatchHost
�� 
=
�� 
this
��  
.
��  !
	MatchHost
��! *
,
��* +$
NumberOfPlayersInMatch
�� &
=
��' (
this
��) -
.
��- .$
NumberOfPlayersInMatch
��. D
,
��D E
PlayerUsername
�� 
=
��  
this
��! %
.
��% &
PlayerUsername
��& 4
,
��4 5
Context
�� 
=
�� 
this
�� 
.
�� 
Context
�� &
}
�� 
;
�� 
gameOptionsView
�� 
.
�� 
Show
��  
(
��  !
)
��! "
;
��" #
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �'
RC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\GameOptions.xaml.cs
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
 
GameOptions

 $
:

% &
Window

' -
{ 
public 
InstanceContext 
Context &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int "
NumberOfPlayersInMatch )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
PlayerUsername $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public## 
GameOptions## 
(## 
)## 
{$$ 	
InitializeComponent%% 
(%%  
)%%  !
;%%! "
}&& 	
private(( 
void(( 
WindowLoaded(( !
(((! "
object((" (
sender(() /
,((/ 0
	EventArgs((1 :
e((; <
)((< =
{)) 	
if** 
(** "
NumberOfPlayersInMatch** &
<**' (
$num**) *
)*** +
{++ 
ExpelPlayerButton,, !
.,,! "

Visibility,," ,
=,,- .

Visibility,,/ 9
.,,9 :
	Collapsed,,: C
;,,C D
}-- 
}.. 	
private00 
void00 "
LeaveGameButtonClicked00 +
(00+ ,
object00, 2
sender003 9
,009 :
RoutedEventArgs00; J
e00K L
)00L M
{11 	
try22 
{33 
MemoryGameService44 !
.44! "
MatchServiceClient44" 4
matchServiceClient445 G
=44H I
new44J M
MemoryGameService44N _
.44_ `
MatchServiceClient44` r
(44r s
Context44s z
)44z {
;44{ |
matchServiceClient55 "
.55" #

LeaveMatch55# -
(55- .
	MatchHost55. 7
,557 8
PlayerUsername559 G
)55G H
;55H I
}66 
catch77 
(77 %
EndpointNotFoundException77 ,
)77, -
{88 

MessageBox99 
.99 
Show99 
(99  

Properties99  *
.99* +
Langs99+ 0
.990 1
	Resources991 :
.99: ; 
ServerConnectionLost99; O
)99O P
;99P Q
}:: 
catch;; 
(;; 
TimeoutException;; #
);;# $
{<< 

MessageBox== 
.== 
Show== 
(==  

Properties==  *
.==* +
Langs==+ 0
.==0 1
	Resources==1 :
.==: ;
ServerTimeoutError==; M
)==M N
;==N O
}>> 
catch?? 
(?? "
CommunicationException?? )
)??) *
{@@ 

MessageBoxAA 
.AA 
ShowAA 
(AA  

PropertiesAA  *
.AA* +
LangsAA+ 0
.AA0 1
	ResourcesAA1 :
.AA: ;$
CommunicationInterruptedAA; S
)AAS T
;AAT U
}BB 
finallyCC 
{DD 
thisEE 
.EE 
CloseEE 
(EE 
)EE 
;EE 
}FF 
}GG 	
privateII 
voidII $
ExpelPlayerButtonClickedII -
(II- .
objectII. 4
senderII5 ;
,II; <
RoutedEventArgsII= L
eIIM N
)IIN O
{JJ 	
ExpelPlayerKK 
expelPlayerViewKK '
=KK( )
newKK* -
ExpelPlayerKK. 9
(KK9 :
)KK: ;
{LL 
	MatchHostMM 
=MM 
thisMM  
.MM  !
	MatchHostMM! *
,MM* +"
NumberOfPlayersInMatchNN &
=NN' (
thisNN) -
.NN- ."
NumberOfPlayersInMatchNN. D
,NND E
PlayerUsernameOO 
=OO  
thisOO! %
.OO% &
PlayerUsernameOO& 4
,OO4 5
ContextPP 
=PP 
thisPP 
.PP 
ContextPP &
}QQ 
;QQ 
expelPlayerViewRR 
.RR 
ShowRR  
(RR  !
)RR! "
;RR" #
thisSS 
.SS 
CloseSS 
(SS 
)SS 
;SS 
}TT 	
privateVV 
voidVV 
BackButtonClickedVV &
(VV& '
objectVV' -
senderVV. 4
,VV4 5
RoutedEventArgsVV6 E
eVVF G
)VVG H
{WW 	
thisXX 
.XX 
CloseXX 
(XX 
)XX 
;XX 
}YY 	
}ZZ 
}[[ �L
OC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\JoinGame.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
JoinGame !
:" #
Window$ *
{ 
private 
MemoryGameService !
.! "'
MatchDiscoveryServiceClient" =(
_matchDiscoveryServiceClient> Z
;Z [
private 
MatchDto 
_selectedMatch '
;' (
public 
JoinGame 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "(
_matchDiscoveryServiceClient (
=) *
new+ .
MemoryGameService/ @
.@ A'
MatchDiscoveryServiceClientA \
(\ ]
)] ^
;^ _
LoadActiveMatches 
( 
) 
;  
} 	
private 
void 
LoadActiveMatches &
(& '
)' (
{ 	
try 
{ *
PopulateTableWithActiveMatches .
(. /
)/ 0
;0 1
}   
catch!! 
(!! 
TimeoutException!! #
)!!# $
{"" 

MessageBox## 
.## 
Show## 
(##  

Properties##  *
.##* +
Langs##+ 0
.##0 1
	Resources##1 :
.##: ;
ServerTimeoutError##; M
)##M N
;##N O
}$$ 
catch%% 
(%% %
EndpointNotFoundException%% ,
)%%, -
{&& 

MessageBox'' 
.'' 
Show'' 
(''  

Properties''  *
.''* +
Langs''+ 0
.''0 1
	Resources''1 :
.'': ; 
ServerConnectionLost''; O
)''O P
;''P Q
}(( 
catch)) 
()) "
CommunicationException)) )
)))) *
{** 

MessageBox++ 
.++ 
Show++ 
(++  

Properties++  *
.++* +
Langs+++ 0
.++0 1
	Resources++1 :
.++: ;$
CommunicationInterrupted++; S
)++S T
;++T U
},, 
}-- 	
private// 
void// *
PopulateTableWithActiveMatches// 3
(//3 4
)//4 5
{00 	 
ObservableCollection11  
<11  !
MatchDto11! )
>11) *
listOfActiveMatches11+ >
=11? @
new11A D 
ObservableCollection11E Y
<11Y Z
MatchDto11Z b
>11b c
(11c d
)11d e
;11e f
MatchDto22 
[22 
]22 
activeMatches22 $
=22% &(
_matchDiscoveryServiceClient22' C
.22C D
GetActiveMatches22D T
(22T U
)22U V
;22V W
for44 
(44 
int44 
indexOfActualMatch44 '
=44( )
$num44* +
;44+ ,
indexOfActualMatch44- ?
<44@ A
activeMatches44B O
.44O P
Length44P V
;44V W
indexOfActualMatch44X j
++44j l
)44l m
{55 
listOfActiveMatches66 #
.66# $
Add66$ '
(66' (
activeMatches66( 5
[665 6
indexOfActualMatch666 H
]66H I
)66I J
;66J K
}77 
GamesDataGrid99 
.99 
ItemsSource99 %
=99& '
listOfActiveMatches99( ;
;99; <
}:: 	
private<< 
void<< 
JoinButtonClicked<< &
(<<& '
object<<' -
sender<<. 4
,<<4 5
RoutedEventArgs<<6 E
e<<F G
)<<G H
{== 	
_selectedMatch>> 
=>> 
(>> 
MatchDto>> &
)>>& '
GamesDataGrid>>' 4
.>>4 5
SelectedItem>>5 A
;>>A B
try?? 
{@@ 
	JoinMatchAA 
(AA 
)AA 
;AA 
}BB 
catchCC 
(CC 
TimeoutExceptionCC #
)CC# $
{DD 

MessageBoxEE 
.EE 
ShowEE 
(EE  

PropertiesEE  *
.EE* +
LangsEE+ 0
.EE0 1
	ResourcesEE1 :
.EE: ;
ServerTimeoutErrorEE; M
)EEM N
;EEN O
}FF 
catchGG 
(GG %
EndpointNotFoundExceptionGG ,
)GG, -
{HH 

MessageBoxII 
.II 
ShowII 
(II  

PropertiesII  *
.II* +
LangsII+ 0
.II0 1
	ResourcesII1 :
.II: ; 
ServerConnectionLostII; O
)IIO P
;IIP Q
}JJ 
catchKK 
(KK "
CommunicationExceptionKK )
)KK) *
{LL 

MessageBoxMM 
.MM 
ShowMM 
(MM  

PropertiesMM  *
.MM* +
LangsMM+ 0
.MM0 1
	ResourcesMM1 :
.MM: ;$
CommunicationInterruptedMM; S
)MMS T
;MMT U
}NN 
}OO 	
privateQQ 
voidQQ 
	JoinMatchQQ 
(QQ 
)QQ  
{RR 	
ifSS 
(SS 
_selectedMatchSS 
==SS !
nullSS" &
)SS& '
{TT 

MessageBoxUU 
.UU 
ShowUU 
(UU  

PropertiesUU  *
.UU* +
LangsUU+ 0
.UU0 1
	ResourcesUU1 :
.UU: ;
NoMatchWasSelectedUU; M
)UUM N
;UUN O
}VV 
elseWW 
{XX 
tryYY 
{ZZ 
if[[ 
([[ 
PlayerCanJoinToGame[[ +
([[+ ,
)[[, -
)[[- .
{\\ 
GoToWaitingRoom]] '
(]]' (
)]]( )
;]]) *
}^^ 
else__ 
{`` 

MessageBoxaa "
.aa" #
Showaa# '
(aa' (

Propertiesaa( 2
.aa2 3
Langsaa3 8
.aa8 9
	Resourcesaa9 B
.aaB C
FullGameMessageaaC R
)aaR S
;aaS T
}bb 
}cc 
catchdd 
(dd 
FaultExceptiondd %
<dd% &

MemoryGamedd& 0
.dd0 1
MemoryGameServicedd1 B
.ddB C
FaultsddC I
.ddI J"
MatchAccessDeniedFaultddJ `
>dd` a
)dda b
{ee 

MessageBoxff 
.ff 
Showff #
(ff# $

Propertiesff$ .
.ff. /
Langsff/ 4
.ff4 5
	Resourcesff5 >
.ff> ?)
TriedToJoinToNonexistentMatchff? \
)ff\ ]
;ff] ^
}gg 
catchhh 
(hh 
TimeoutExceptionhh '
)hh' (
{ii 

MessageBoxjj 
.jj 
Showjj #
(jj# $

Propertiesjj$ .
.jj. /
Langsjj/ 4
.jj4 5
	Resourcesjj5 >
.jj> ?
ServerTimeoutErrorjj? Q
)jjQ R
;jjR S
}kk 
catchll 
(ll %
EndpointNotFoundExceptionll 0
)ll0 1
{mm 

MessageBoxnn 
.nn 
Shownn #
(nn# $

Propertiesnn$ .
.nn. /
Langsnn/ 4
.nn4 5
	Resourcesnn5 >
.nn> ? 
ServerConnectionLostnn? S
)nnS T
;nnT U
}oo 
catchpp 
(pp "
CommunicationExceptionpp -
)pp- .
{qq 

MessageBoxrr 
.rr 
Showrr #
(rr# $

Propertiesrr$ .
.rr. /
Langsrr/ 4
.rr4 5
	Resourcesrr5 >
.rr> ?$
CommunicationInterruptedrr? W
)rrW X
;rrX Y
}ss 
}tt 
}uu 	
privateww 
boolww 
PlayerCanJoinToGameww (
(ww( )
)ww) *
{xx 	
stringyy 
	matchHostyy 
=yy 
_selectedMatchyy -
.yy- .
Hostyy. 2
;yy2 3
boolzz 
canJoinToGamezz 
=zz  (
_matchDiscoveryServiceClientzz! =
.zz= >
CanJoinzz> E
(zzE F
	matchHostzzF O
)zzO P
;zzP Q
return{{ 
canJoinToGame{{  
;{{  !
}|| 	
private~~ 
void~~ 
GoToWaitingRoom~~ $
(~~$ %
)~~% &
{ 	
WaitingRoom
�� 
waitingRoomView
�� '
=
��( )
new
��* -
WaitingRoom
��. 9
(
��9 :
)
��: ;
{
�� 
GameMatchDto
�� 
=
�� 
_selectedMatch
�� -
}
�� 
;
�� 
waitingRoomView
�� 
.
�� 
Show
��  
(
��  !
)
��! "
;
��" #
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
BackButtonClicked
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
MainMenu
�� 
mainMenuView
�� !
=
��" #
new
��$ '
MainMenu
��( 0
(
��0 1
)
��1 2
;
��2 3
mainMenuView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
��  
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �[
LC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\Login.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
Login 
:  
Window! '
{ 
private 
RuleSet 
_ruleSet  
;  !
private 
string 
	_username  
,  !
	_password" +
;+ ,
private &
AccessibilityServiceClient *'
_accessibilityServiceClient+ F
;F G
public 
Login 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "'
_accessibilityServiceClient '
=( )
new* -&
AccessibilityServiceClient. H
(H I
)I J
;J K
} 	
private 
void 
GetDataFromFields &
(& '
)' (
{   	
	_username!! 
=!! 
TextBoxUsername!! '
.!!' (
Text!!( ,
;!!, -
	_password"" 
="" 
PasswordBoxPassword"" +
.""+ ,
Password"", 4
;""4 5
}## 	
private%% 
void%% 
SetFormValidation%% &
(%%& '
)%%' (
{&& 	
GetDataFromFields'' 
('' 
)'' 
;''  
_ruleSet(( 
=(( 
new(( 
RuleSet(( "
(((" #
)((# $
;(($ %
_ruleSet)) 
.)) 
AddValidationRule)) &
())& '
new))' *#
NonEmptyFieldValidation))+ B
())B C
	_username))C L
)))L M
)))M N
;))N O
_ruleSet** 
.** 
AddValidationRule** &
(**& '
new**' *#
NonEmptyFieldValidation**+ B
(**B C
	_password**C L
)**L M
)**M N
;**N O
}++ 	
private-- 
void-- 
ShowErrorMessage-- %
(--% &
)--& '
{.. 	
IList// 
<//  
ValidationRuleResult// &
>//& '"
validationResultErrors//( >
=//? @
_ruleSet//A I
.//I J%
GetValidationResultErrors//J c
(//c d
)//d e
;//e f
if00 
(00 "
validationResultErrors00 &
.00& '
Count00' ,
>00- .
$num00/ 0
)000 1
{11 

MessageBox22 
.22 
Show22 
(22  "
validationResultErrors22  6
[226 7
$num227 8
]228 9
.229 :
Message22: A
)22A B
;22B C
}33 
}44 	
private66 
void66 
LoginButtonClicked66 '
(66' (
object66( .
sender66/ 5
,665 6
RoutedEventArgs667 F
e66G H
)66H I
{77 	
SetFormValidation88 
(88 
)88 
;88  
if99 
(99 
_ruleSet99 
.99 (
AllValidationRulesHavePassed99 5
(995 6
)996 7
)997 8
{:: 
try;; 
{<< 
	LoginUser== 
(== 
)== 
;==  
}>> 
catch?? 
(?? 
FaultException?? %
<??% &
MemoryGameService??& 7
.??7 8
Faults??8 >
.??> ? 
NonExistentUserFault??? S
>??S T
)??T U
{@@ 

MessageBoxAA 
.AA 
ShowAA #
(AA# $

PropertiesAA$ .
.AA. /
LangsAA/ 4
.AA4 5
	ResourcesAA5 >
.AA> ?
UserDoesNotExistAA? O
)AAO P
;AAP Q
}BB 
catchCC 
(CC %
EndpointNotFoundExceptionCC 0
)CC0 1
{DD 

MessageBoxEE 
.EE 
ShowEE #
(EE# $

PropertiesEE$ .
.EE. /
LangsEE/ 4
.EE4 5
	ResourcesEE5 >
.EE> ? 
ServerConnectionLostEE? S
)EES T
;EET U
}FF 
catchGG 
(GG 
TimeoutExceptionGG '
)GG' (
{HH 

MessageBoxII 
.II 
ShowII #
(II# $

PropertiesII$ .
.II. /
LangsII/ 4
.II4 5
	ResourcesII5 >
.II> ?
ServerTimeoutErrorII? Q
)IIQ R
;IIR S
}JJ 
catchKK 
(KK "
CommunicationExceptionKK -
)KK- .
{LL 

MessageBoxMM 
.MM 
ShowMM #
(MM# $

PropertiesMM$ .
.MM. /
LangsMM/ 4
.MM4 5
	ResourcesMM5 >
.MM> ?$
CommunicationInterruptedMM? W
)MMW X
;MMX Y
}NN 
}OO 
elsePP 
{QQ 
ShowErrorMessageRR  
(RR  !
)RR! "
;RR" #
}SS 
}TT 	
privateVV 
stringVV 
GetUserEmailAdressVV )
(VV) *
)VV* +
{WW 	
stringXX 
usernameXX 
=XX 
TextBoxUsernameXX -
.XX- .
TextXX. 2
;XX2 3
stringYY 
emailAddressYY 
=YY  !'
_accessibilityServiceClientYY" =
.YY= >
GetUserEmailAddressYY> Q
(YYQ R
usernameYYR Z
)YYZ [
;YY[ \
returnZZ 
emailAddressZZ 
;ZZ  
}[[ 	
private]] 
void]] 
	LoginUser]] 
(]] 
)]]  
{^^ 	
if__ 
(__ 
LoginIsValid__ 
(__ 
)__ 
)__ 
{`` 
ifaa 
(aa 
EmailIsVerifiedaa #
(aa# $
)aa$ %
)aa% &
{bb 
stringcc 
emailAddresscc '
=cc( )
GetUserEmailAdresscc* <
(cc< =
)cc= >
;cc> ?
Sesiondd 
playerSesiondd '
=dd( )
Sesiondd* 0
.dd0 1
	GetSesiondd1 :
;dd: ;
playerSesionee  
.ee  !
Usernameee! )
=ee* +
	_usernameee, 5
;ee5 6
playerSesionff  
.ff  !
EmailAddressff! -
=ff. /
emailAddressff0 <
;ff< =
GoToMainMenugg  
(gg  !
)gg! "
;gg" #
}hh 
elseii 
{jj 
GoToActivationTokenkk '
(kk' (
)kk( )
;kk) *
}ll 
}mm 
elsenn 
{oo 

MessageBoxpp 
.pp 
Showpp 
(pp  

Propertiespp  *
.pp* +
Langspp+ 0
.pp0 1
	Resourcespp1 :
.pp: ;"
NonMatchingCredentialspp; Q
)ppQ R
;ppR S
}qq 
}rr 	
privatett 
booltt 
LoginIsValidtt !
(tt! "
)tt" #
{uu 	
BCryptHashGeneratorvv 
bCryptHashGeneratorvv  3
=vv4 5
newvv6 9
BCryptHashGeneratorvv: M
(vvM N
)vvN O
;vvO P
stringww 
saltww 
=ww 
GetPasswordSaltww )
(ww) *
)ww* +
;ww+ ,
stringxx 
encryptedPasswordxx $
=xx% &
bCryptHashGeneratorxx' :
.xx: ;#
GenerateEncryptedStringxx; R
(xxR S
	_passwordxxS \
,xx\ ]
saltxx^ b
)xxb c
;xxc d
boolyy 
hasAccessRightsyy  
=yy! "'
_accessibilityServiceClientyy# >
.yy> ?
HasAccessRightsyy? N
(yyN O
	_usernameyyO X
,yyX Y
encryptedPasswordyyZ k
)yyk l
;yyl m
returnzz 
hasAccessRightszz "
;zz" #
}{{ 	
private}} 
string}} 
GetPasswordSalt}} &
(}}& '
)}}' (
{~~ 	
string 
salt 
= '
_accessibilityServiceClient 5
.5 6
GetSalt6 =
(= >
	_username> G
)G H
;H I
return
�� 
salt
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
EmailIsVerified
�� $
(
��$ %
)
��% &
{
�� 	
string
�� 
username
�� 
=
�� 
TextBoxUsername
�� -
.
��- .
Text
��. 2
;
��2 3
bool
�� 
emailIsVerified
��  
=
��! ")
_accessibilityServiceClient
��# >
.
��> ?

IsVerified
��? I
(
��I J
username
��J R
)
��R S
;
��S T
return
�� 
emailIsVerified
�� "
;
��" #
}
�� 	
private
�� 
void
�� 
GoToMainMenu
�� !
(
��! "
)
��" #
{
�� 	
MainMenu
�� 
mainMenuView
�� !
=
��" #
new
��$ '
MainMenu
��( 0
(
��0 1
)
��1 2
;
��2 3
mainMenuView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
��  
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� )
RecoverPasswordLabelClicked
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
�� 	
RecoverPassword
�� 
mainWindowView
�� *
=
��+ ,
new
��- 0
RecoverPassword
��1 @
(
��@ A
)
��A B
;
��B C
mainWindowView
�� 
.
�� 
Show
�� 
(
��  
)
��  !
;
��! "
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
BackButtonClicked
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	

MainWindow
�� 
mainWindowView
�� %
=
��& '
new
��( +

MainWindow
��, 6
(
��6 7
)
��7 8
;
��8 9
mainWindowView
�� 
.
�� 
Show
�� 
(
��  
)
��  !
;
��! "
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� !
GoToActivationToken
�� (
(
��( )
)
��) *
{
�� 	
string
�� 
emailAddress
�� 
=
��  ! 
GetUserEmailAdress
��" 4
(
��4 5
)
��5 6
;
��6 7
ActivationToken
�� #
activationTokenWindow
�� 1
=
��2 3
new
��4 7
ActivationToken
��8 G
(
��G H
emailAddress
��H T
,
��T U
TextBoxUsername
��V e
.
��e f
Text
��f j
)
��j k
;
��k l#
activationTokenWindow
�� !
.
��! "
Show
��" &
(
��& '
)
��' (
;
��( )
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
OC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\MainMenu.xaml.cs
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
public 
MainMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void #
CreateGameButtonClicked ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
eL M
)M N
{ 	

CreateGame 
createGameView %
=& '
new( +

CreateGame, 6
(6 7
)7 8
;8 9
createGameView 
. 
Show 
(  
)  !
;! "
this 
. 
Close 
( 
) 
; 
} 	
private 
void !
JoinGameButtonClicked *
(* +
object+ 1
sender2 8
,8 9
RoutedEventArgs: I
eJ K
)K L
{ 	
JoinGame 
joinGameView !
=" #
new$ '
JoinGame( 0
(0 1
)1 2
;2 3
joinGameView 
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
void   #
ScoreTableButtonClicked   ,
(  , -
object  - 3
sender  4 :
,  : ;
RoutedEventArgs  < K
e  L M
)  M N
{!! 	

ScoreTable"" 
scoreTableView"" %
=""& '
new""( +

ScoreTable"", 6
(""6 7
)""7 8
;""8 9
scoreTableView## 
.## 
Show## 
(##  
)##  !
;##! "
this$$ 
.$$ 
Close$$ 
($$ 
)$$ 
;$$ 
}%% 	
private'' 
void'' '
ChangeUsernameButtonClicked'' 0
(''0 1
object''1 7
sender''8 >
,''> ?
RoutedEventArgs''@ O
e''P Q
)''Q R
{(( 	
ChangeUsername)) 
changeUsernameView)) -
=)). /
new))0 3
ChangeUsername))4 B
())B C
)))C D
;))D E
changeUsernameView** 
.** 
Show** #
(**# $
)**$ %
;**% &
this++ 
.++ 
Close++ 
(++ 
)++ 
;++ 
},, 	
}.. 
}// ��
LC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\Match.xaml.cs
	namespace 	

MemoryGame
 
. 
Views 
{ 
public 

partial 
class 
Match 
:  
Window! '
,' (
MemoryGameService) :
.: ;!
IMatchServiceCallback; P
{ 
public 
string 
[ 
] 
Players 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
NumberOfPlayers "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
public$$ 
CardDeckDto$$ 
CardDeck$$ #
{$$$ %
get$$& )
;$$) *
set$$+ .
;$$. /
}$$0 1
private%% 
InstanceContext%% 
_context%%  (
=%%) *
null%%+ /
;%%/ 0
private&& 
MatchServiceClient&& "
_matchServiceClient&&# 6
;&&6 7
private'' 
List'' 
<'' 
	ImageCard'' 
>'' 
_imageCards''  +
;''+ ,
private(( 
int(( %
_numberOfMovementsAllowed(( -
;((- .
private)) 
IList)) 
<)) 
	ImageCard)) 
>))  &
_cardsFlippedInCurrentTurn))! ;
;)); <
private** 
bool** !
_playerHasFormedAPair** *
;*** +
private++ 
bool++ 0
$_windowIsBeingClosedByTheCloseButton++ 9
;++9 :
private,, 
static,, 
readonly,, 
log4net,,  '
.,,' (
ILog,,( ,
_logger,,- 4
=,,5 6
log4net,,7 >
.,,> ?

LogManager,,? I
.,,I J
	GetLogger,,J S
(,,S T
$str,,T c
),,c d
;,,d e
public11 
Match11 
(11 
)11 
{22 	
InitializeComponent33 
(33  
)33  !
;33! "
_context44 
=44 
new44 
InstanceContext44 *
(44* +
this44+ /
)44/ 0
;440 1
_matchServiceClient55 
=55  !
new55" %
MemoryGameService55& 7
.557 8
MatchServiceClient558 J
(55J K
_context55K S
)55S T
;55T U
_imageCards66 
=66 
new66 
List66 "
<66" #
	ImageCard66# ,
>66, -
(66- .
)66. /
;66/ 0%
_numberOfMovementsAllowed77 %
=77& '
$num77( )
;77) *&
_cardsFlippedInCurrentTurn88 &
=88' (
new88) ,
List88- 1
<881 2
	ImageCard882 ;
>88; <
(88< =
)88= >
;88> ?!
_playerHasFormedAPair99 !
=99" #
false99$ )
;99) *0
$_windowIsBeingClosedByTheCloseButton:: 0
=::1 2
true::3 7
;::7 8
};; 	
private== 
void== 
DrawPlayersNames== %
(==% &
)==& '
{>> 	
UserBoxDrawer?? 
userBoxDrawer?? '
=??( )
new??* -
UserBoxDrawer??. ;
(??; <
)??< =
{@@ 
GridToBeDrawnOnAA 
=AA  !
MainGridAA" *
,AA* +
PlayersUsernamesBB  
=BB! "
PlayersBB# *
}CC 
;CC 
userBoxDrawerDD 
.DD 
DrawDD 
(DD 
)DD  
;DD  !
}EE 	
privateGG 
voidGG 
DrawGameBoardGG "
(GG" #
)GG# $
{HH 	
GameBoardDrawerII 
gameBoardDrawerII +
=II, -
newII. 1
GameBoardDrawerII2 A
(IIA B
)IIB C
{JJ 
GridToBeDrawnOnKK 
=KK  !
GameBoardGridKK" /
,KK/ 0

ImageCardsLL 
=LL 
_imageCardsLL (
,LL( )
CardDeckMM 
=MM 
CardDeckMM #
,MM# $
NumberOfColumnsNN 
=NN  !
$numNN" #
}OO 
;OO 
gameBoardDrawerPP 
.PP 
DrawPP #
(PP# $
)PP$ %
;PP% &
gameBoardDrawerQQ 
.QQ !
SetEventOnCardClickedQQ 4
(QQ4 5
GetClickedCardQQ5 C
)QQC D
;QQD E
}RR 	
privateTT 
voidTT 
GetClickedCardTT #
(TT# $
objectTT$ *
senderTT+ 1
,TT1 2
	EventArgsTT3 <
eTT= >
)TT> ?
{UU 	
	ImageCardVV 
cardClickedVV !
=VV" #
(VV$ %
(VV% &
	ImageCardVV& /
)VV/ 0
senderVV0 6
)VV6 7
;VV7 8
boolWW !
cardHasNotBeenFlippedWW &
=WW' (
cardClickedWW) 4
.WW4 5
SourceWW5 ;
!=WW< >
cardClickedWW? J
.WWJ K

FrontImageWWK U
;WWU V
boolXX #
playerStillHasMovementsXX (
=XX) *%
_numberOfMovementsAllowedXX+ D
>XXE F
$numXXG H
;XXH I
ifZZ 
(ZZ !
cardHasNotBeenFlippedZZ %
&&ZZ& (#
playerStillHasMovementsZZ) @
)ZZ@ A
{[[ 
FlipCard\\ 
(\\ 
cardClicked\\ $
)\\$ %
;\\% &
EndMovement]] 
(]] 
)]] 
;]] 
}^^ 
}__ 	
privateaa 
voidaa 
FlipCardaa 
(aa 
	ImageCardaa '
cardClickedaa( 3
)aa3 4
{bb 	
trycc 
{dd %
_numberOfMovementsAllowedee )
--ee) +
;ee+ ,
intff 
	cardIndexff 
=ff 
_imageCardsff  +
.ff+ ,
IndexOfff, 3
(ff3 4
cardClickedff4 ?
)ff? @
;ff@ A&
_cardsFlippedInCurrentTurngg *
.gg* +
Addgg+ .
(gg. /
cardClickedgg/ :
)gg: ;
;gg; <
PlayerMovementDtohh !
playerMovementDtohh" 3
=hh4 5
newhh6 9
PlayerMovementDtohh: K
(hhK L
)hhL M
{ii 
Hostjj 
=jj 
	MatchHostjj $
,jj$ %
Usernamekk 
=kk 
Sesionkk %
.kk% &
	GetSesionkk& /
.kk/ 0
Usernamekk0 8
,kk8 9
	CardIndexll 
=ll 
	cardIndexll  )
,ll) *
MovementsLeftmm !
=mm" #%
_numberOfMovementsAllowedmm$ =
,mm= >
HasFormedAPairnn "
=nn# $!
_playerHasFormedAPairnn% :
}oo 
;oo 
ifpp 
(pp %
_numberOfMovementsAllowedpp -
==pp. 0
$numpp1 2
&&pp3 5
HasFormedAPairpp6 D
(ppD E
)ppE F
)ppF G
{qq 
playerMovementDtorr %
.rr% &
HasFormedAPairrr& 4
=rr5 6
truerr7 ;
;rr; <
}ss 
_matchServiceClienttt #
.tt# $#
NotifyCardWasUncovereddtt$ ;
(tt; <
playerMovementDtott< M
)ttM N
;ttN O
}uu 
catchvv 
(vv %
EndpointNotFoundExceptionvv ,
)vv, -
{ww 

MessageBoxxx 
.xx 
Showxx 
(xx  

Propertiesxx  *
.xx* +
Langsxx+ 0
.xx0 1
	Resourcesxx1 :
.xx: ; 
ServerConnectionLostxx; O
)xxO P
;xxP Q
}yy 
catchzz 
(zz 
TimeoutExceptionzz #
)zz# $
{{{ 

MessageBox|| 
.|| 
Show|| 
(||  

Properties||  *
.||* +
Langs||+ 0
.||0 1
	Resources||1 :
.||: ;
ServerTimeoutError||; M
)||M N
;||N O
}}} 
catch~~ 
(~~ "
CommunicationException~~ )
)~~) *
{ 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;&
CommunicationInterrupted
��; S
)
��S T
;
��T U
}
�� 
}
�� 	
private
�� 
void
�� 
EndMovement
��  
(
��  !
)
��! "
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� '
_numberOfMovementsAllowed
�� -
==
��. 0
$num
��1 2
)
��2 3
{
�� 
if
�� 
(
�� 
HasFormedAPair
�� &
(
��& '
)
��' (
)
��( )
{
�� '
_numberOfMovementsAllowed
�� 1
=
��2 3
$num
��4 5
;
��5 6#
_playerHasFormedAPair
�� -
=
��. /
true
��0 4
;
��4 5
}
�� 
CardPairDto
�� 
cardPairDto
��  +
=
��, -
new
��. 1
CardPairDto
��2 =
(
��= >
)
��> ?
{
�� 
IndexOfCard1
�� $
=
��% &
_imageCards
��' 2
.
��2 3
IndexOf
��3 :
(
��: ;(
_cardsFlippedInCurrentTurn
��; U
[
��U V
$num
��V W
]
��W X
)
��X Y
,
��Y Z
IndexOfCard2
�� $
=
��% &
_imageCards
��' 2
.
��2 3
IndexOf
��3 :
(
��: ;(
_cardsFlippedInCurrentTurn
��; U
[
��U V
$num
��V W
]
��W X
)
��X Y
,
��Y Z
BothCardsAreEqual
�� )
=
��* +#
_playerHasFormedAPair
��, A
}
�� 
;
�� !
_matchServiceClient
�� '
.
��' (
EndTurn
��( /
(
��/ 0
	MatchHost
��0 9
,
��9 :
Sesion
��; A
.
��A B
	GetSesion
��B K
.
��K L
Username
��L T
,
��T U
cardPairDto
��V a
)
��a b
;
��b c#
_playerHasFormedAPair
�� )
=
��* +
false
��, 1
;
��1 2(
_cardsFlippedInCurrentTurn
�� .
.
��. /
Clear
��/ 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
)
��, -
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;"
ServerConnectionLost
��; O
)
��O P
;
��P Q
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
)
��# $
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ; 
ServerTimeoutError
��; M
)
��M N
;
��N O
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;&
CommunicationInterrupted
��; S
)
��S T
;
��T U
}
�� 
}
�� 	
private
�� 
bool
�� 
HasFormedAPair
�� #
(
��# $
)
��$ %
{
�� 	
if
�� 
(
�� (
_cardsFlippedInCurrentTurn
�� *
[
��* +
$num
��+ ,
]
��, -
.
��- .
CardId
��. 4
==
��5 7(
_cardsFlippedInCurrentTurn
��8 R
[
��R S
$num
��S T
]
��T U
.
��U V
CardId
��V \
)
��\ ]
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
void
�� "
OptionsButtonClicked
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	2
$_windowIsBeingClosedByTheCloseButton
�� 0
=
��1 2
false
��3 8
;
��8 9
GameOptions
�� 
gameOptionsView
�� '
=
��( )
new
��* -
GameOptions
��. 9
(
��9 :
)
��: ;
{
�� 
	MatchHost
�� 
=
�� 
this
��  
.
��  !
	MatchHost
��! *
,
��* +$
NumberOfPlayersInMatch
�� &
=
��' (
NumberOfPlayers
��) 8
,
��8 9
PlayerUsername
�� 
=
��  
Sesion
��! '
.
��' (
	GetSesion
��( 1
.
��1 2
Username
��2 :
,
��: ;
Context
�� 
=
�� 
this
�� 
.
�� 
_context
�� '
}
�� 
;
�� 
gameOptionsView
�� 
.
�� 
Show
��  
(
��  !
)
��! "
;
��" #
}
�� 	
private
�� 
void
�� 
WindowLoaded
�� !
(
��! "
object
��" (
sender
��) /
,
��/ 0
	EventArgs
��1 :
e
��; <
)
��< =
{
�� 	
DrawPlayersNames
�� 
(
�� 
)
�� 
;
�� 
DrawGameBoard
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
	MatchHost
�� 
.
�� 
Equals
��  
(
��  !
Sesion
��! '
.
��' (
	GetSesion
��( 1
.
��1 2
Username
��2 :
)
��: ;
)
��; <
{
�� '
_numberOfMovementsAllowed
�� )
=
��* +
$num
��, -
;
��- .
}
�� 
else
�� 
{
�� '
_numberOfMovementsAllowed
�� )
=
��* +
$num
��, -
;
��- .
}
�� 
	TurnLabel
�� 
.
�� 
Content
�� 
=
�� 

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;
TurnMessage
��; F
+
��G H
$str
��I M
+
��N O
	MatchHost
��P Y
;
��Y Z!
_matchServiceClient
�� 
.
��  

EnterMatch
��  *
(
��* +
	MatchHost
��+ 4
,
��4 5
Sesion
��6 <
.
��< =
	GetSesion
��= F
.
��F G
Username
��G O
)
��O P
;
��P Q
NumberOfPlayers
�� 
=
�� 
Players
�� %
.
��% &
Length
��& ,
;
��, -
}
�� 	
private
�� 
void
�� 
Window_Closed
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
System
��2 8
.
��8 9
	EventArgs
��9 B
e
��C D
)
��D E
{
�� 	
if
�� 
(
�� 2
$_windowIsBeingClosedByTheCloseButton
�� 4
)
��4 5
{
�� 
try
�� 
{
�� !
_matchServiceClient
�� '
.
��' (

LeaveMatch
��( 2
(
��2 3
	MatchHost
��3 <
,
��< =
Sesion
��> D
.
��D E
	GetSesion
��E N
.
��N O
Username
��O W
)
��W X
;
��X Y
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -$
communicationException
��. D
)
��D E
{
�� 
_logger
�� 
.
�� 
Fatal
�� !
(
��! "$
communicationException
��" 8
)
��8 9
;
��9 :
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
UncoverCardd
��  
(
��  !
int
��! $
	cardIndex
��% .
)
��. /
{
�� 	
_imageCards
�� 
[
�� 
	cardIndex
�� !
]
��! "
.
��" #
Source
��# )
=
��* +
_imageCards
��, 7
[
��7 8
	cardIndex
��8 A
]
��A B
.
��B C

FrontImage
��C M
;
��M N
}
�� 	
private
�� 
async
�� 
void
��  
FlipBothCardsAgain
�� -
(
��- .
CardPairDto
��. 9
cardPairDto
��: E
)
��E F
{
�� 	
await
�� 
Task
�� 
.
�� 
Delay
�� 
(
�� 
$num
�� !
)
��! "
;
��" #
_imageCards
�� 
[
�� 
cardPairDto
�� #
.
��# $
IndexOfCard1
��$ 0
]
��0 1
.
��1 2
Source
��2 8
=
��9 :
_imageCards
��; F
[
��F G
cardPairDto
��G R
.
��R S
IndexOfCard1
��S _
]
��_ `
.
��` a
	BackImage
��a j
;
��j k
_imageCards
�� 
[
�� 
cardPairDto
�� #
.
��# $
IndexOfCard2
��$ 0
]
��0 1
.
��1 2
Source
��2 8
=
��9 :
_imageCards
��; F
[
��F G
cardPairDto
��G R
.
��R S
IndexOfCard2
��S _
]
��_ `
.
��` a
	BackImage
��a j
;
��j k
}
�� 	
public
�� 
void
��  
NotifyTurnHasEnded
�� &
(
��& '
string
��' -
username
��. 6
,
��6 7
CardPairDto
��8 C
cardPairDto
��D O
)
��O P
{
�� 	
	TurnLabel
�� 
.
�� 
Content
�� 
=
�� 

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;
TurnMessage
��; F
+
��G H
$str
��I M
+
��N O
username
��P X
;
��X Y
if
�� 
(
�� 
Sesion
�� 
.
�� 
	GetSesion
��  
.
��  !
Username
��! )
.
��) *
Equals
��* 0
(
��0 1
username
��1 9
)
��9 :
)
��: ;
{
�� '
_numberOfMovementsAllowed
�� )
=
��* +
$num
��, -
;
��- .
}
�� 
if
�� 
(
�� 
!
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
��  
FlipBothCardsAgain
�� "
(
��" #
cardPairDto
��# .
)
��. /
;
��/ 0
}
�� 
}
�� 	
public
�� 
void
�� 
ShowWinners
�� 
(
��  
string
��  &
winner
��' -
)
��- .
{
�� 	

MessageBox
�� 
.
�� 
Show
�� 
(
�� 
winner
�� "
+
��# $
$str
��% (
+
��) *

Properties
��+ 5
.
��5 6
Langs
��6 ;
.
��; <
	Resources
��< E
.
��E F

WinMessage
��F P
)
��P Q
;
��Q R
}
�� 	
public
�� 
void
�� 
MatchHasEnded
�� !
(
��! "
)
��" #
{
�� 	
GoToMainMenuView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� "
NotifyPlayerWasExpel
�� (
(
��( )
string
��) /!
expelPlayerUsername
��0 C
,
��C D
int
��E H
[
��H I
]
��I J
cardsUncovered
��K Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
Sesion
�� 
.
�� 
	GetSesion
��  
.
��  !
Username
��! )
.
��) *
Equals
��* 0
(
��0 1!
expelPlayerUsername
��1 D
)
��D E
)
��E F
{
�� 
GoToMainMenuView
��  
(
��  !
)
��! "
;
��" #
}
�� 
else
�� 
{
�� 
for
�� 
(
�� 
int
�� 
index
�� 
=
��  
$num
��! "
;
��" #
index
��$ )
<
��* +
cardsUncovered
��, :
.
��: ;
Length
��; A
;
��A B
index
��C H
++
��H J
)
��J K
{
�� 
_imageCards
�� 
[
��  
cardsUncovered
��  .
[
��. /
index
��/ 4
]
��4 5
]
��5 6
.
��6 7
Source
��7 =
=
��> ?
_imageCards
��@ K
[
��K L
cardsUncovered
��L Z
[
��Z [
index
��[ `
]
��` a
]
��a b
.
��b c
	BackImage
��c l
;
��l m
}
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  !
expelPlayerUsername
��  3
+
��4 5
$str
��6 9
+
��: ;

Properties
��< F
.
��F G
Langs
��G L
.
��L M
	Resources
��M V
.
��V W
ExpelMessage
��W c
)
��c d
;
��d e
NumberOfPlayers
�� 
--
�� !
;
��! "
}
�� 
}
�� 	
public
�� 
void
�� $
NotifyPlayerLeaveMatch
�� *
(
��* +
string
��+ 1
username
��2 :
,
��: ;
int
��< ?
[
��? @
]
��@ A
cardsUncovered
��B P
)
��P Q
{
�� 	
if
�� 
(
�� 
Sesion
�� 
.
�� 
	GetSesion
��  
.
��  !
Username
��! )
.
��) *
Equals
��* 0
(
��0 1
username
��1 9
)
��9 :
)
��: ;
{
�� 
GoToMainMenuView
��  
(
��  !
)
��! "
;
��" #
}
�� 
else
�� 
{
�� 
for
�� 
(
�� 
int
�� 
index
�� 
=
��  
$num
��! "
;
��" #
index
��$ )
<
��* +
cardsUncovered
��, :
.
��: ;
Length
��; A
;
��A B
index
��C H
++
��H J
)
��J K
{
�� 
_imageCards
�� 
[
��  
cardsUncovered
��  .
[
��. /
index
��/ 4
]
��4 5
]
��5 6
.
��6 7
Source
��7 =
=
��> ?
_imageCards
��@ K
[
��K L
cardsUncovered
��L Z
[
��Z [
index
��[ `
]
��` a
]
��a b
.
��b c
	BackImage
��c l
;
��l m
}
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  
username
��  (
+
��) *
$str
��+ .
+
��/ 0

Properties
��1 ;
.
��; <
Langs
��< A
.
��A B
	Resources
��B K
.
��K L
LeaveMatchMessage
��L ]
)
��] ^
;
��^ _
NumberOfPlayers
�� 
--
�� !
;
��! "
}
�� 
}
�� 	
public
�� 
void
�� "
EndTurnOfExpelPlayer
�� (
(
��( )
string
��) / 
nextPlayerUsername
��0 B
)
��B C
{
�� 	
	TurnLabel
�� 
.
�� 
Content
�� 
=
�� 

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;
TurnMessage
��; F
+
��G H
$str
��I M
+
��N O 
nextPlayerUsername
��P b
;
��b c
if
�� 
(
�� 
Sesion
�� 
.
�� 
	GetSesion
��  
.
��  !
Username
��! )
.
��) *
Equals
��* 0
(
��0 1 
nextPlayerUsername
��1 C
)
��C D
)
��D E
{
�� '
_numberOfMovementsAllowed
�� )
=
��* +
$num
��, -
;
��- .
}
�� 
}
�� 	
private
�� 
void
�� 
GoToMainMenuView
�� %
(
��% &
)
��& '
{
�� 	2
$_windowIsBeingClosedByTheCloseButton
�� 0
=
��1 2
false
��3 8
;
��8 9
MainMenu
�� 
mainMenuView
�� !
=
��" #
new
��$ '
MainMenu
��( 0
(
��0 1
)
��1 2
;
��2 3
mainMenuView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
��  
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �R
VC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\RecoverPassword.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
RecoverPassword (
:) *
Window+ 1
{ 
private 
string 
_verificationToken )
;) *
private 
RuleSet 
_ruleSet  
;  !
private 
string 
_emailAddress $
;$ %
private 
string 
	_username  
;  !
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT m
)m n
;n o
public 
RecoverPassword 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private   
void   
SetFormValidation   &
(  & '
)  ' (
{!! 	
_ruleSet"" 
="" 
new"" 
RuleSet"" "
(""" #
)""# $
;""$ %
_ruleSet## 
.## 
AddValidationRule## &
(##& '
new##' *&
EmailAddressValidationRule##+ E
(##E F
_emailAddress##F S
)##S T
)##T U
;##U V
}$$ 	
private&& 
void&& 
ShowErrorMessage&& %
(&&% &
)&&& '
{'' 	
IList(( 
<((  
ValidationRuleResult(( &
>((& '"
validationResultErrors((( >
=((? @
_ruleSet((A I
.((I J%
GetValidationResultErrors((J c
(((c d
)((d e
;((e f
if)) 
()) "
validationResultErrors)) &
.))& '
Count))' ,
>))- .
$num))/ 0
)))0 1
{** 

MessageBox++ 
.++ 
Show++ 
(++  "
validationResultErrors++  6
[++6 7
$num++7 8
]++8 9
.++9 :
Message++: A
)++A B
;++B C
},, 
}-- 	
private// 
void// 
CancelButtonClicked// (
(//( )
object//) /
sender//0 6
,//6 7
RoutedEventArgs//8 G
e//H I
)//I J
{00 	
Login11 
	loginView11 
=11 
new11 !
Login11" '
(11' (
)11( )
;11) *
	loginView22 
.22 
Show22 
(22 
)22 
;22 
this33 
.33 
Close33 
(33 
)33 
;33 
}44 	
private66 
void66 !
SendCodeButtonClicked66 *
(66* +
object66+ 1
sender662 8
,668 9
RoutedEventArgs66: I
e66J K
)66K L
{77 	
try88 
{99 
SendCodeToUser:: 
(:: 
)::  
;::  !
};; 
catch<< 
(<< %
EndpointNotFoundException<< ,
)<<, -
{== 

MessageBox>> 
.>> 
Show>> 
(>>  

Properties>>  *
.>>* +
Langs>>+ 0
.>>0 1
	Resources>>1 :
.>>: ; 
ServerConnectionLost>>; O
)>>O P
;>>P Q
}?? 
catch@@ 
(@@ 
TimeoutException@@ #
timeoutException@@$ 4
)@@4 5
{AA 
_loggerBB 
.BB 
FatalBB 
(BB 
timeoutExceptionBB .
)BB. /
;BB/ 0

MessageBoxCC 
.CC 
ShowCC 
(CC  

PropertiesCC  *
.CC* +
LangsCC+ 0
.CC0 1
	ResourcesCC1 :
.CC: ;
ServerTimeoutErrorCC; M
)CCM N
;CCN O
}DD 
catchEE 
(EE "
CommunicationExceptionEE )"
communicationExceptionEE* @
)EE@ A
{FF 
_loggerGG 
.GG 
FatalGG 
(GG "
communicationExceptionGG 4
)GG4 5
;GG5 6

MessageBoxHH 
.HH 
ShowHH 
(HH  

PropertiesHH  *
.HH* +
LangsHH+ 0
.HH0 1
	ResourcesHH1 :
.HH: ;$
CommunicationInterruptedHH; S
)HHS T
;HHT U
}II 
}JJ 	
privateLL 
voidLL 
SendCodeToUserLL #
(LL# $
)LL$ %
{MM 	
_emailAddressNN 
=NN 
TextBoxEmailNN (
.NN( )
TextNN) -
;NN- .
SetFormValidationOO 
(OO 
)OO 
;OO  
ifPP 
(PP 
_ruleSetPP 
.PP (
AllValidationRulesHavePassedPP 5
(PP5 6
)PP6 7
)PP7 8
{QQ 
ifRR 
(RR 
EmailIsRegisteredRR %
(RR% &
)RR& '
)RR' (
{SS 
LoadUsernameTT  
(TT  !
)TT! "
;TT" #%
GenerateVerificationTokenUU -
(UU- .
)UU. /
;UU/ 0
boolVV +
newVerificationTokenWasAssignedVV 8
=VV9 :"
AssignNewRecoveryTokenVV; Q
(VVQ R
)VVR S
;VVS T
ifWW 
(WW +
newVerificationTokenWasAssignedWW 7
)WW7 8
{XX 
SendRecoveryTokenYY )
(YY) *
)YY* +
;YY+ ,

MessageBoxZZ "
.ZZ" #
ShowZZ# '
(ZZ' (

PropertiesZZ( 2
.ZZ2 3
LangsZZ3 8
.ZZ8 9
	ResourcesZZ9 B
.ZZB C%
PasswordRecoveryTokenSentZZC \
)ZZ\ ]
;ZZ] ^
GoToRestorePassword[[ +
([[+ ,
)[[, -
;[[- .
}\\ 
else]] 
{^^ 

MessageBox__ "
.__" #
Show__# '
(__' (

Properties__( 2
.__2 3
Langs__3 8
.__8 9
	Resources__9 B
.__B C%
RecoveryTokenSendingError__C \
)__\ ]
;__] ^
}`` 
}aa 
elsebb 
{cc 

MessageBoxdd 
.dd 
Showdd #
(dd# $

Propertiesdd$ .
.dd. /
Langsdd/ 4
.dd4 5
	Resourcesdd5 >
.dd> ?
NonRegisteredEmaildd? Q
)ddQ R
;ddR S
}ee 
}ff 
elsegg 
{hh 
ShowErrorMessageii  
(ii  !
)ii! "
;ii" #
}jj 
}kk 	
privatemm 
boolmm 
EmailIsRegisteredmm &
(mm& '
)mm' (
{nn 	&
AccessibilityServiceClientoo &
clientoo' -
=oo. /
newoo0 3&
AccessibilityServiceClientoo4 N
(ooN O
)ooO P
;ooP Q
returnpp 
clientpp 
.pp 
ItsRegisteredpp '
(pp' (
_emailAddresspp( 5
)pp5 6
;pp6 7
}qq 	
privatess 
voidss %
GenerateVerificationTokenss .
(ss. /
)ss/ 0
{tt 	
_verificationTokenuu 
=uu  
TokenManageruu! -
.uu- .
GenerateTokenuu. ;
(uu; <
)uu< =
;uu= >
}vv 	
privatexx 
boolxx "
AssignNewRecoveryTokenxx +
(xx+ ,
)xx, -
{yy 	,
 AccountVerificationServiceClientzz ,,
 accountVerificationServiceClientzz- M
=zzN O
new{{ ,
 AccountVerificationServiceClient{{ 4
({{4 5
){{5 6
;{{6 7
return|| ,
 accountVerificationServiceClient|| 3
.||3 4"
AssignNewRecoveryToken||4 J
(||J K
_emailAddress||K X
,||X Y
_verificationToken||Z l
)||l m
;||m n
}}} 	
private 
void 
SendRecoveryToken &
(& '
)' (
{
�� 	
TokenInfoDto
�� 
recoveryToken
�� &
=
��' (
new
��) ,
TokenInfoDto
��- 9
(
��9 :
)
��: ;
{
�� 
Name
�� 
=
�� 
	_username
��  
,
��  !
EmailAddress
�� 
=
�� 
_emailAddress
�� ,
,
��, -
Token
�� 
=
��  
_verificationToken
�� *
,
��* +
Subject
�� 
=
�� 

Properties
�� $
.
��$ %
Langs
��% *
.
��* +
	Resources
��+ 4
.
��4 5
PasswordRecovery
��5 E
,
��E F
Body
�� 
=
�� 

Properties
�� !
.
��! "
Langs
��" '
.
��' (
	Resources
��( 1
.
��1 2
RecoveryToken
��2 ?
}
�� 
;
�� 
TokenManager
�� 
.
�� 
	SendToken
�� "
(
��" #
recoveryToken
��# 0
)
��0 1
;
��1 2
}
�� 	
private
�� 
void
�� 
LoadUsername
�� !
(
��! "
)
��" #
{
�� 	(
AccessibilityServiceClient
�� &
client
��' -
=
��. /
new
��0 3(
AccessibilityServiceClient
��4 N
(
��N O
)
��O P
;
��P Q
	_username
�� 
=
�� 
client
�� 
.
�� 
GetUsername
�� *
(
��* +
_emailAddress
��+ 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� !
GoToRestorePassword
�� (
(
��( )
)
��) *
{
�� 	
RestorePassword
�� #
restorePasswordWindow
�� 1
=
��2 3
new
�� 
RestorePassword
�� #
(
��# $
_emailAddress
��$ 1
,
��1 2
	_username
��3 <
)
��< =
;
��= >#
restorePasswordWindow
�� !
.
��! "
Show
��" &
(
��& '
)
��' (
;
��( )
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �d
OC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\Register.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
Register !
:" #
Window$ *
{ 
private 
string 
	_username  
,  !
_emailAddress" /
,/ 0
_verificationToken1 C
,C D
	_passwordE N
;N O
private 
RuleSet 
_ruleSet  
;  !
private 
MemoryGameService !
.! "'
PlayerRegistryServiceClient" =(
_playerRegistryServiceClient> Z
;Z [
public 
Register 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "(
_playerRegistryServiceClient (
=) *
new 
MemoryGameService %
.% &'
PlayerRegistryServiceClient& A
(A B
)B C
;C D
}   	
private"" 
void"" 
SetFormValidation"" &
(""& '
)""' (
{## 	
_ruleSet$$ 
=$$ 
new$$ 
RuleSet$$ "
($$" #
)$$# $
;$$$ %
_ruleSet%% 
.%% 
AddValidationRule%% &
(%%& '
new%%' *"
UsernameValidationRule%%+ A
(%%A B
	_username%%B K
)%%K L
)%%L M
;%%M N
_ruleSet&& 
.&& 
AddValidationRule&& &
(&&& '
new&&' *&
EmailAddressValidationRule&&+ E
(&&E F
_emailAddress&&F S
)&&S T
)&&T U
;&&U V
_ruleSet'' 
.'' 
AddValidationRule'' &
(''& '
new''' *"
PasswordValidationRule''+ A
(''A B
	_password''B K
)''K L
)''L M
;''M N
}(( 	
private** 
void** 
ShowErrorMessage** %
(**% &
)**& '
{++ 	
IList,, 
<,,  
ValidationRuleResult,, &
>,,& '"
validationResultErrors,,( >
=,,? @
_ruleSet,,A I
.,,I J%
GetValidationResultErrors,,J c
(,,c d
),,d e
;,,e f
if-- 
(-- "
validationResultErrors-- &
.--& '
Count--' ,
>--- .
$num--/ 0
)--0 1
{.. 

MessageBox// 
.// 
Show// 
(//  "
validationResultErrors//  6
[//6 7
$num//7 8
]//8 9
.//9 :
Message//: A
)//A B
;//B C
}00 
}11 	
private33 
void33 
GetValuesFromFields33 (
(33( )
)33) *
{44 	
_emailAddress55 
=55 
TextBoxEmail55 (
.55( )
Text55) -
;55- .
	_username66 
=66 
TextBoxUsername66 '
.66' (
Text66( ,
;66, -
	_password77 
=77 
PasswordBoxPassword77 +
.77+ ,
Password77, 4
;774 5
}88 	
private:: 
void:: 
GenerateToken:: "
(::" #
)::# $
{;; 	
_verificationToken<< 
=<<  
TokenManager<<! -
.<<- .
GenerateToken<<. ;
(<<; <
)<<< =
;<<= >
}== 	
private?? 
void?? !
RegisterButtonClicked?? *
(??* +
object??+ 1
sender??2 8
,??8 9
RoutedEventArgs??: I
e??J K
)??K L
{@@ 	
GetValuesFromFieldsAA 
(AA  
)AA  !
;AA! "
SetFormValidationBB 
(BB 
)BB 
;BB  
ifCC 
(CC (
AllValidationRulesHavePassedCC ,
(CC, -
)CC- .
)CC. /
{DD 
tryEE 
{FF 
RegisterPlayerGG "
(GG" #
)GG# $
;GG$ %
}HH 
catchII 
(II 
TimeoutExceptionII '
)II' (
{JJ 

MessageBoxKK 
.KK 
ShowKK #
(KK# $

PropertiesKK$ .
.KK. /
LangsKK/ 4
.KK4 5
	ResourcesKK5 >
.KK> ?
ServerTimeoutErrorKK? Q
)KKQ R
;KKR S
}LL 
catchMM 
(MM %
EndpointNotFoundExceptionMM 0
)MM0 1
{NN 

MessageBoxOO 
.OO 
ShowOO #
(OO# $

PropertiesOO$ .
.OO. /
LangsOO/ 4
.OO4 5
	ResourcesOO5 >
.OO> ? 
ServerConnectionLostOO? S
)OOS T
;OOT U
}PP 
catchQQ 
(QQ "
CommunicationExceptionQQ -
)QQ- .
{RR 

MessageBoxSS 
.SS 
ShowSS #
(SS# $

PropertiesSS$ .
.SS. /
LangsSS/ 4
.SS4 5
	ResourcesSS5 >
.SS> ?$
CommunicationInterruptedSS? W
)SSW X
;SSX Y
}TT 
}UU 
elseVV 
{WW 
ShowErrorMessageXX  
(XX  !
)XX! "
;XX" #
}YY 
}ZZ 	
private\\ 
void\\ 
RegisterPlayer\\ #
(\\# $
)\\$ %
{]] 	
if^^ 
(^^ 
!^^ #
EmailAddressIsAvailable^^ (
(^^( )
)^^) *
)^^* +
{__ 

MessageBox`` 
.`` 
Show`` 
(``  

Properties``  *
.``* +
Langs``+ 0
.``0 1
	Resources``1 :
.``: ;
EmailAddressIsTaken``; N
)``N O
;``O P
}aa 
elsebb 
ifbb 
(bb 
!bb 
UsernameIsAvailablebb )
(bb) *
)bb* +
)bb+ ,
{cc 

MessageBoxdd 
.dd 
Showdd 
(dd  

Propertiesdd  *
.dd* +
Langsdd+ 0
.dd0 1
	Resourcesdd1 :
.dd: ;
UsernameIsTakendd; J
)ddJ K
;ddK L
}ee 
elseff 
{gg 
GenerateTokenhh 
(hh 
)hh 
;hh  
ifii 
(ii +
PlayerWasSuccessfullyRegisteredii 3
(ii3 4
)ii4 5
)ii5 6
{jj 
SendActivationTokenkk '
(kk' (
)kk( )
;kk) *%
GoToActivationTokenWindowll -
(ll- .
)ll. /
;ll/ 0
}mm 
elsenn 
{oo 

MessageBoxpp 
.pp 
Showpp #
(pp# $

Propertiespp$ .
.pp. /
Langspp/ 4
.pp4 5
	Resourcespp5 >
.pp> ?
RegistryErrorpp? L
)ppL M
;ppM N
}qq 
}rr 
}tt 	
privatevv 
boolvv (
AllValidationRulesHavePassedvv 1
(vv1 2
)vv2 3
{ww 	
returnxx 
_ruleSetxx 
.xx (
AllValidationRulesHavePassedxx 8
(xx8 9
)xx9 :
;xx: ;
}yy 	
private{{ 
void{{ 
SendActivationToken{{ (
({{( )
){{) *
{|| 	
TokenInfoDto}} !
verificationTokenInfo}} .
=}}/ 0
new}}1 4
TokenInfoDto}}5 A
(}}A B
)}}B C
{~~ 
Name 
= 
	_username  
,  !
EmailAddress
�� 
=
�� 
_emailAddress
�� ,
,
��, -
Token
�� 
=
��  
_verificationToken
�� *
,
��* +
Subject
�� 
=
�� 

Properties
�� $
.
��$ %
Langs
��% *
.
��* +
	Resources
��+ 4
.
��4 5
Welcome
��5 <
,
��< =
Body
�� 
=
�� 

Properties
�� !
.
��! "
Langs
��" '
.
��' (
	Resources
��( 1
.
��1 2
VerificationToken
��2 C
}
�� 
;
�� 
TokenManager
�� 
.
�� 
	SendToken
�� "
(
��" ##
verificationTokenInfo
��# 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� !
CancelButtonClicked
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	

MainWindow
�� 
mainWindowView
�� %
=
��& '
new
��( +

MainWindow
��, 6
(
��6 7
)
��7 8
;
��8 9
mainWindowView
�� 
.
�� 
Show
�� 
(
��  
)
��  !
;
��! "
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
bool
�� %
EmailAddressIsAvailable
�� ,
(
��, -
)
��- .
{
�� 	
bool
�� %
emailAddressIsAvailable
�� (
=
��) **
_playerRegistryServiceClient
��+ G
.
��G H%
EmailAddressIsAvailable
��H _
(
��_ `
_emailAddress
��` m
)
��m n
;
��n o
return
�� %
emailAddressIsAvailable
�� *
;
��* +
}
�� 	
private
�� 
bool
�� !
UsernameIsAvailable
�� (
(
��( )
)
��) *
{
�� 	
bool
�� !
usernameIsAvailable
�� $
=
��% &*
_playerRegistryServiceClient
��' C
.
��C D!
UserNameIsAvailable
��D W
(
��W X
	_username
��X a
)
��a b
;
��b c
return
�� !
usernameIsAvailable
�� &
;
��& '
}
�� 	
private
�� 
bool
�� -
PlayerWasSuccessfullyRegistered
�� 4
(
��4 5
)
��5 6
{
�� 	!
BCryptHashGenerator
�� 
hashGenerator
��  -
=
��. /
new
��0 3!
BCryptHashGenerator
��4 G
(
��G H
)
��H I
;
��I J
string
�� 
salt
�� 
=
�� 
hashGenerator
�� '
.
��' (
GenerateSalt
��( 4
(
��4 5
)
��5 6
;
��6 7
string
�� 
encryptedPassword
�� $
=
��% &
hashGenerator
��' 4
.
��4 5%
GenerateEncryptedString
��5 L
(
��L M
	_password
��M V
,
��V W
salt
��X \
)
��\ ]
;
��] ^
MemoryGameService
�� 
.
�� )
PlayerRegistryServiceClient
�� 9)
playerRegistryServiceClient
��: U
=
��V W
new
�� 
MemoryGameService
�� %
.
��% &)
PlayerRegistryServiceClient
��& A
(
��A B
)
��B C
;
��C D
	PlayerDto
�� 
	playerDTO
�� 
=
��  !
new
��" %
	PlayerDto
��& /
(
��/ 0
)
��0 1
{
�� 
Username
�� 
=
�� 
	_username
�� $
,
��$ %
EmailAddress
�� 
=
�� 
_emailAddress
�� ,
,
��, -
Password
�� 
=
�� 
encryptedPassword
�� ,
,
��, -
VerificationToken
�� !
=
��" # 
_verificationToken
��$ 6
}
�� 
;
�� 
bool
�� -
playerWasSuccessfullyRegistered
�� 0
=
��1 2)
playerRegistryServiceClient
��3 N
.
��N O
RegisterNewPlayer
��O `
(
��` a
	playerDTO
��a j
,
��j k
salt
��l p
)
��p q
;
��q r
return
�� -
playerWasSuccessfullyRegistered
�� 2
;
��2 3
}
�� 	
private
�� 
void
�� '
GoToActivationTokenWindow
�� .
(
��. /
)
��/ 0
{
�� 	
ActivationToken
�� #
activationTokenWindow
�� 1
=
��2 3
new
�� 
ActivationToken
�� #
(
��# $
_emailAddress
��$ 1
,
��1 2
	_username
��3 <
)
��< =
;
��= >#
activationTokenWindow
�� !
.
��! "
Show
��" &
(
��& '
)
��' (
;
��( )
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �h
VC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\RestorePassword.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
RestorePassword (
:) *
Window+ 1
{ 
private 
string 
_emailAddress $
;$ %
private 
string 
	_username  
;  !
private 
RuleSet 
_ruleSet  
;  !
private 
string 
_newPassword #
;# $
public 
RestorePassword 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public%% 
RestorePassword%% 
(%% 
string%% %
emailAddress%%& 2
,%%2 3
string%%4 :
username%%; C
)%%C D
{&& 	
InitializeComponent'' 
(''  
)''  !
;''! "
_emailAddress(( 
=(( 
emailAddress(( (
;((( )
	_username)) 
=)) 
username))  
;))  !
}** 	
private,, 
void,, 
SetFormValidation,, &
(,,& '
),,' (
{-- 	
_ruleSet.. 
=.. 
new.. 
RuleSet.. "
(.." #
)..# $
;..$ %
_ruleSet// 
.// 
AddValidationRule// &
(//& '
new//' *"
PasswordValidationRule//+ A
(//A B
_newPassword//B N
)//N O
)//O P
;//P Q
}00 	
private22 
void22 
RestoreUserPassword22 (
(22( )
)22) *
{33 	
_newPassword44 
=44 
NewPasswordBox44 )
.44) *
Password44* 2
;442 3
SetFormValidation55 
(55 
)55 
;55  
if66 
(66 
_ruleSet66 
.66 (
AllValidationRulesHavePassed66 5
(665 6
)666 7
)667 8
{77 
if88 
(88 
TokenIsCorrect88 "
(88" #
)88# $
)88$ %
{99 
if:: 
(:: 
SetNewPassword:: &
(::& '
)::' (
)::( )
{;; 

MessageBox<< "
.<<" #
Show<<# '
(<<' (

Properties<<( 2
.<<2 3
Langs<<3 8
.<<8 9
	Resources<<9 B
.<<B C
PasswordReset<<C P
)<<P Q
;<<Q R
	GoToLogin== !
(==! "
)==" #
;==# $
}>> 
else?? 
{@@ 

MessageBoxAA "
.AA" #
ShowAA# '
(AA' (

PropertiesAA( 2
.AA2 3
LangsAA3 8
.AA8 9
	ResourcesAA9 B
.AAB C!
PasswordRecoveryErrorAAC X
)AAX Y
;AAY Z
}BB 
}CC 
elseDD 
{EE 

MessageBoxFF 
.FF 
ShowFF #
(FF# $

PropertiesFF$ .
.FF. /
LangsFF/ 4
.FF4 5
	ResourcesFF5 >
.FF> ?'
NonMatchingVerificationCodeFF? Z
)FFZ [
;FF[ \
}GG 
}HH 
elseII 
{JJ 
ShowErrorMessageKK  
(KK  !
)KK! "
;KK" #
}LL 
}MM 	
privatePP 
voidPP 
ShowErrorMessagePP %
(PP% &
)PP& '
{QQ 	
IListRR 
<RR  
ValidationRuleResultRR &
>RR& '"
validationResultErrorsRR( >
=RR? @
_ruleSetRRA I
.RRI J%
GetValidationResultErrorsRRJ c
(RRc d
)RRd e
;RRe f
ifSS 
(SS "
validationResultErrorsSS &
.SS& '
CountSS' ,
>SS- .
$numSS/ 0
)SS0 1
{TT 

MessageBoxUU 
.UU 
ShowUU 
(UU  "
validationResultErrorsUU  6
[UU6 7
$numUU7 8
]UU8 9
.UU9 :
MessageUU: A
)UUA B
;UUB C
}VV 
}WW 	
privateYY 
boolYY 
TokenIsCorrectYY #
(YY# $
)YY$ %
{ZZ 	
string[[ 
token[[ 
=[[ 
TextBoxToken[[ '
.[[' (
Text[[( ,
;[[, -
if\\ 
(\\ 
token\\ 
==\\ 
$str\\ 
)\\ 
{]] 
return^^ 
false^^ 
;^^ 
}__ ,
 AccountVerificationServiceClient`` ,,
 accountVerificationServiceClient``- M
=``N O
newaa ,
 AccountVerificationServiceClientaa 4
(aa4 5
)aa5 6
;aa6 7
returnbb ,
 accountVerificationServiceClientbb 3
.bb3 4
VerifyRecoveryTokenbb4 G
(bbG H
_emailAddressbbH U
,bbU V
tokenbbW \
)bb\ ]
;bb] ^
}cc 	
privateee 
boolee 
SetNewPasswordee #
(ee# $
)ee$ %
{ff 	
IEncryptiongg 
bCryptHashGeneratorgg +
=gg, -
newgg. 1
BCryptHashGeneratorgg2 E
(ggE F
)ggF G
;ggG H
stringhh 
newPasswordhh 
=hh  
NewPasswordBoxhh! /
.hh/ 0
Passwordhh0 8
;hh8 9
ifii 
(ii 
newPasswordii 
==ii 
$strii !
)ii! "
{jj 
returnkk 
falsekk 
;kk 
}ll 
stringmm 
saltmm 
=mm 
bCryptHashGeneratormm -
.mm- .
GenerateSaltmm. :
(mm: ;
)mm; <
;mm< =
stringnn  
encryptedNewPasswordnn '
=nn( )
bCryptHashGeneratornn* =
.nn= >#
GenerateEncryptedStringnn> U
(nnU V
newPasswordnnV a
,nna b
saltnnc g
)nng h
;nnh i-
!AccountModifiabilityServiceClientoo --
!accountModifiabilityServiceClientoo. O
=ooP Q
newooR U-
!AccountModifiabilityServiceClientooV w
(oow x
)oox y
;ooy z.
"PasswordModificationCredentialsDtopp .+
passwordModificationCredentialspp/ N
=ppO P
newppQ T.
"PasswordModificationCredentialsDtoppU w
(ppw x
)ppx y
{qq 
EmailAddressrr 
=rr 
_emailAddressrr ,
,rr, -
Saltss 
=ss 
saltss 
,ss 
NewPasswordtt 
=tt  
encryptedNewPasswordtt 2
}uu 
;uu 
boolvv "
newPasswordWasAssignedvv '
=vv( )-
!accountModifiabilityServiceClientvv* K
.vvK L
SetNewPasswordvvL Z
(vvZ [+
passwordModificationCredentialsvv[ z
)vvz {
;vv{ |
returnww "
newPasswordWasAssignedww )
;ww) *
}xx 	
privatezz 
voidzz 
OkButtonClickedzz $
(zz$ %
objectzz% +
senderzz, 2
,zz2 3
RoutedEventArgszz4 C
ezzD E
)zzE F
{{{ 	
try|| 
{}} 
RestoreUserPassword~~ #
(~~# $
)~~$ %
;~~% &
} 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
)
��, -
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;"
ServerConnectionLost
��; O
)
��O P
;
��P Q
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
)
��# $
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ; 
ServerTimeoutError
��; M
)
��M N
;
��N O
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;&
CommunicationInterrupted
��; S
)
��S T
;
��T U
}
�� 
}
�� 	
private
�� 
void
�� &
SendNewCodeButtonClicked
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
�� 	
try
�� 
{
�� 
SendNewCode
�� 
(
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
)
��, -
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;"
ServerConnectionLost
��; O
)
��O P
;
��P Q
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
)
��# $
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ; 
ServerTimeoutError
��; M
)
��M N
;
��N O
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;&
CommunicationInterrupted
��; S
)
��S T
;
��T U
}
�� 
}
�� 	
private
�� 
void
�� 
SendNewCode
��  
(
��  !
)
��! "
{
�� 	
string
�� 
newToken
�� 
=
�� 
TokenManager
�� *
.
��* +
GenerateToken
��+ 8
(
��8 9
)
��9 :
;
��: ;
bool
�� -
newVerificationTokenWasAssigned
�� 0
=
��1 2
false
��3 8
;
��8 9
if
�� 
(
�� 
newToken
�� 
!=
�� 
$str
�� 
)
�� 
{
�� .
 AccountVerificationServiceClient
�� 0.
 accountVerificationServiceClient
��1 Q
=
��R S
new
�� .
 AccountVerificationServiceClient
�� 8
(
��8 9
)
��9 :
;
��: ;-
newVerificationTokenWasAssigned
�� /
=
��0 1.
 accountVerificationServiceClient
��2 R
.
��R S$
AssignNewRecoveryToken
��S i
(
��i j
_emailAddress
��j w
,
��w x
newToken��y �
)��� �
;��� �
}
�� 
if
�� 
(
�� -
newVerificationTokenWasAssigned
�� /
)
��/ 0
{
�� 
TokenInfoDto
�� #
verificationTokenInfo
�� 2
=
��3 4
new
��5 8
TokenInfoDto
��9 E
(
��E F
)
��F G
{
�� 
Name
�� 
=
�� 
	_username
�� $
,
��$ %
EmailAddress
��  
=
��! "
_emailAddress
��# 0
,
��0 1
Token
�� 
=
�� 
newToken
�� $
}
�� 
;
�� 
TokenManager
�� 
.
�� 
	SendToken
�� &
(
��& '#
verificationTokenInfo
��' <
)
��< =
;
��= >

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ; 
NewCodeSentMessage
��; M
)
��M N
;
��N O
}
�� 
}
�� 	
private
�� 
void
�� 
BackButtonClicked
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
	GoToLogin
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
	GoToLogin
�� 
(
�� 
)
��  
{
�� 	
Login
�� 
	loginView
�� 
=
�� 
new
�� !
Login
��" '
(
��' (
)
��( )
;
��) *
	loginView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
QC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\ScoreTable.xaml.cs
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
 

ScoreTable

 #
:

$ %
Window

& ,
{ 
private 
MemoryGameService !
.! "
DataTransferObjects" 5
.5 6
PlayerScoreDto6 D
[D E
]E F
_bestScoresG R
;R S
public 

ScoreTable 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "'
PopulateTableWithBestScores '
(' (
)( )
;) *
} 	
private 
void '
PopulateTableWithBestScores 0
(0 1
)1 2
{ 	
try 
{ 
LoadBestScores 
( 
)  
;  !
for 
( 
int 
indexOfActualPlayer +
=, -
$num. /
;/ 0
indexOfActualPlayer1 D
<E F
_bestScoresG R
.R S
LengthS Y
;Y Z
indexOfActualPlayer[ n
++n p
)p q
{ 
if 
( 
_bestScores "
[" #
indexOfActualPlayer# 6
]6 7
!=8 :
null; ?
)? @
{ 
ScoreDataGrid %
.% &
Items& +
.+ ,
Add, /
(/ 0
_bestScores0 ;
[; <
indexOfActualPlayer< O
]O P
)P Q
;Q R
}   
}!! 
}"" 
catch## 
(## 
TimeoutException## #
)### $
{$$ 

MessageBox%% 
.%% 
Show%% 
(%%  

Properties%%  *
.%%* +
Langs%%+ 0
.%%0 1
	Resources%%1 :
.%%: ;
ServerTimeoutError%%; M
)%%M N
;%%N O
}&& 
catch'' 
('' %
EndpointNotFoundException'' ,
)'', -
{(( 

MessageBox)) 
.)) 
Show)) 
())  

Properties))  *
.))* +
Langs))+ 0
.))0 1
	Resources))1 :
.)): ; 
ServerConnectionLost)); O
)))O P
;))P Q
}** 
catch++ 
(++ "
CommunicationException++ )
)++) *
{,, 

MessageBox-- 
.-- 
Show-- 
(--  

Properties--  *
.--* +
Langs--+ 0
.--0 1
	Resources--1 :
.--: ;$
CommunicationInterrupted--; S
)--S T
;--T U
}.. 
}// 	
private11 
void11 
LoadBestScores11 #
(11# $
)11$ %
{22 	
MemoryGameService33 
.33 
ScoreServiceClient33 0
client331 7
=338 9
new33: =
MemoryGameService33> O
.33O P
ScoreServiceClient33P b
(33b c
)33c d
;33d e
_bestScores44 
=44 
client44  
.44  !#
GetPlayersWithBestScore44! 8
(448 9
$num449 ;
)44; <
;44< =
}55 	
private77 
void77 
BackButtonClicked77 &
(77& '
object77' -
sender77. 4
,774 5
RoutedEventArgs776 E
e77F G
)77G H
{88 	
MainMenu99 
mainMenuView99 !
=99" #
new99$ '
MainMenu99( 0
(990 1
)991 2
;992 3
mainMenuView:: 
.:: 
Show:: 
(:: 
):: 
;::  
this;; 
.;; 
Close;; 
(;; 
);; 
;;; 
}<< 	
}== 
}AA �
OC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\Settings.xaml.cs
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
public 
Settings 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
void $
SaveChangesButtonClicked ,
(, -
object- 3
sender4 :
,: ;
RoutedEventArgs< K
routedEventArgsL [
)[ \
{ 	
_selectedTag 
= 
( 
( 
ComboBoxItem )
)) *%
ComboBoxLanguageSelection* C
.C D
SelectedItemD P
)P Q
.Q R
TagR U
.U V
ToStringV ^
(^ _
)_ `
;` a
try 
{   
var!! 
culture!! 
=!! 
new!! !
CultureInfo!!" -
(!!- .
_selectedTag!!. :
)!!: ;
;!!; <
Thread"" 
."" 
CurrentThread"" $
.""$ %
CurrentCulture""% 3
=""4 5
culture""6 =
;""= >
Thread## 
.## 
CurrentThread## $
.##$ %
CurrentUICulture##% 5
=##6 7
culture##8 ?
;##? @

Properties$$ 
.$$ 
Settings$$ #
.$$# $
Default$$$ +
.$$+ ,
LanguageSettings$$, <
=$$= >
_selectedTag$$? K
;$$K L

Properties%% 
.%% 
Settings%% #
.%%# $
Default%%$ +
.%%+ ,
Save%%, 0
(%%0 1
)%%1 2
;%%2 3

MessageBox&& 
.&& 
Show&& 
(&&  

Properties&&  *
.&&* +
Langs&&+ 0
.&&0 1
	Resources&&1 :
.&&: ;)
ChangeLanguageSettingsSuccess&&; X
)&&X Y
;&&Y Z
}'' 
catch(( 
((( $
CultureNotFoundException(( +
)((+ ,
{)) 

MessageBox** 
.** 
Show** 
(**  

Properties**  *
.*** +
Langs**+ 0
.**0 1
	Resources**1 :
.**: ;'
ChangeLanguageSettingsError**; V
)**V W
;**W X
}++ 
GoToMainWindow-- 
(-- 
)-- 
;-- 
}.. 	
public55 
void55 
BackButtonClicked55 %
(55% &
object55& ,
sender55- 3
,553 4
RoutedEventArgs555 D
routedEventArgs55E T
)55T U
{66 	
GoToMainWindow77 
(77 
)77 
;77 
}88 	
private:: 
void:: 
GoToMainWindow:: #
(::# $
)::$ %
{;; 	

MainWindow<< 

mainWindow<< !
=<<" #
new<<$ '

MainWindow<<( 2
(<<2 3
)<<3 4
;<<4 5

mainWindow== 
.== 
Show== 
(== 
)== 
;== 
this>> 
.>> 
Close>> 
(>> 
)>> 
;>> 
}?? 	
}@@ 
}AA �q
RC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\WaitingRoom.xaml.cs
	namespace 	

MemoryGame
 
{		 
public 

partial 
class 
WaitingRoom $
:% &
Window' -
,- .
MemoryGameService/ @
.@ A!
ILobbyServiceCallbackA V
{ 
public 
MemoryGameService  
.  !
DataTransferObjects! 4
.4 5
MatchDto5 =
GameMatchDto> J
{K L
getM P
;P Q
setR U
;U V
}W X
private  
ObservableCollection $
<$ %
string% +
>+ ,
_players- 5
;5 6
private 
InstanceContext 
_context  (
;( )
private 
MemoryGameService !
.! "
LobbyServiceClient" 4
_lobbyServiceClient5 H
;H I
private 
string 
	_username  
;  !
private 
bool 
_thisPlayerIsHost &
;& '
private 
bool 0
$_windowIsBeingClosedByTheCloseButton 9
;9 :
public 
WaitingRoom 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_context   
=   
new   
InstanceContext   *
(  * +
this  + /
)  / 0
;  0 1
_lobbyServiceClient!! 
=!!  !
new!!" %
MemoryGameService!!& 7
.!!7 8
LobbyServiceClient!!8 J
(!!J K
_context!!K S
)!!S T
;!!T U
	_username"" 
="" 
Sesion"" 
."" 
	GetSesion"" (
.""( )
Username"") 1
;""1 20
$_windowIsBeingClosedByTheCloseButton## 0
=##1 2
true##3 7
;##7 8
_players$$ 
=$$ 
new$$  
ObservableCollection$$ /
<$$/ 0
string$$0 6
>$$6 7
($$7 8
)$$8 9
;$$9 :
}%% 	
private'' 
void'' 
Window_Loaded'' "
(''" #
object''# )
sender''* 0
,''0 1
RoutedEventArgs''2 A
e''B C
)''C D
{(( 	#
DetermineIfPlayerIsHost)) #
())# $
)))$ %
;))% &
if** 
(** 
!** 
_thisPlayerIsHost** "
)**" #
{++ 

StarButton,, 
.,, 

Visibility,, %
=,,& '

Visibility,,( 2
.,,2 3
	Collapsed,,3 <
;,,< =
}-- 
try// 
{00 $
LoadActivePlayersInLobby11 (
(11( )
)11) *
;11* + 
CallJoinLobbyService22 $
(22$ %
)22% &
;22& '
}33 
catch44 
(44 
TimeoutException44 #
)44# $
{55 

MessageBox66 
.66 
Show66 
(66  

Properties66  *
.66* +
Langs66+ 0
.660 1
	Resources661 :
.66: ;
ServerTimeoutError66; M
)66M N
;66N O
}77 
catch88 
(88 %
EndpointNotFoundException88 ,
)88, -
{99 

MessageBox:: 
.:: 
Show:: 
(::  

Properties::  *
.::* +
Langs::+ 0
.::0 1
	Resources::1 :
.::: ; 
ServerConnectionLost::; O
)::O P
;::P Q
};; 
catch<< 
(<< "
CommunicationException<< )
)<<) *
{== 

MessageBox>> 
.>> 
Show>> 
(>>  

Properties>>  *
.>>* +
Langs>>+ 0
.>>0 1
	Resources>>1 :
.>>: ;$
CommunicationInterrupted>>; S
)>>S T
;>>T U
}?? 
}AA 	
privateCC 
voidCC #
DetermineIfPlayerIsHostCC ,
(CC, -
)CC- .
{DD 	
ifEE 
(EE 
	_usernameEE 
.EE 
EqualsEE  
(EE  !
GameMatchDtoEE! -
.EE- .
HostEE. 2
)EE2 3
)EE3 4
{FF 
_thisPlayerIsHostGG !
=GG" #
trueGG$ (
;GG( )
}HH 
elseII 
{JJ 
_thisPlayerIsHostKK !
=KK" #
falseKK$ )
;KK) *
}LL 
}MM 	
privateOO 
voidOO $
LoadActivePlayersInLobbyOO -
(OO- .
)OO. /
{PP 	
IListQQ 
<QQ 
stringQQ 
>QQ 
activePlayersQQ '
=QQ( )
_lobbyServiceClientQQ* =
.QQ= >#
GetActivePlayersInLobbyQQ> U
(QQU V
GameMatchDtoQQV b
.QQb c
HostQQc g
)QQg h
;QQh i
foreachRR 
(RR 
varRR 
oneActivePlayerRR '
inRR( *
activePlayersRR+ 8
)RR8 9
{SS 
_playersTT 
.TT 
AddTT 
(TT 
oneActivePlayerTT ,
)TT, -
;TT- .
}UU 
WaitingRoomDataGridVV 
.VV  
ItemsSourceVV  +
=VV, -
_playersVV. 6
;VV6 7
}WW 	
privateYY 
voidYY  
CallJoinLobbyServiceYY )
(YY) *
)YY* +
{ZZ 	
_lobbyServiceClient[[ 
.[[  
	JoinLobby[[  )
([[) *
GameMatchDto[[* 6
.[[6 7
Host[[7 ;
,[[; <
	_username[[= F
)[[F G
;[[G H
}\\ 	
publiccc 
voidcc 
LeaveButtonClickedcc &
(cc& '
objectcc' -
sendercc. 4
,cc4 5
RoutedEventArgscc6 E
routedEventArgsccF U
)ccU V
{dd 	
tryee 
{ff !
CallLeaveLobbyServicegg %
(gg% &
)gg& '
;gg' (
}hh 
catchii 
(ii 
TimeoutExceptionii #
)ii# $
{jj 

MessageBoxkk 
.kk 
Showkk 
(kk  

Propertieskk  *
.kk* +
Langskk+ 0
.kk0 1
	Resourceskk1 :
.kk: ;
ServerTimeoutErrorkk; M
)kkM N
;kkN O
}ll 
catchmm 
(mm %
EndpointNotFoundExceptionmm ,
)mm, -
{nn 

MessageBoxoo 
.oo 
Showoo 
(oo  

Propertiesoo  *
.oo* +
Langsoo+ 0
.oo0 1
	Resourcesoo1 :
.oo: ; 
ServerConnectionLostoo; O
)ooO P
;ooP Q
}pp 
catchqq 
(qq "
CommunicationExceptionqq )
)qq) *
{rr 

MessageBoxss 
.ss 
Showss 
(ss  

Propertiesss  *
.ss* +
Langsss+ 0
.ss0 1
	Resourcesss1 :
.ss: ;$
CommunicationInterruptedss; S
)ssS T
;ssT U
}tt 
finallyuu 
{vv 
ifww 
(ww 
_thisPlayerIsHostww %
)ww% &
{xx 
GoToMainMenuViewyy $
(yy$ %
)yy% &
;yy& '
}zz 
else{{ 
{|| 
GoToJoinGameView}} $
(}}$ %
)}}% &
;}}& '
}~~ 
} 
}
�� 	
private
�� 
void
�� 
GoToJoinGameView
�� %
(
��% &
)
��& '
{
�� 	2
$_windowIsBeingClosedByTheCloseButton
�� 0
=
��1 2
false
��3 8
;
��8 9
JoinGame
�� 
joinGameView
�� !
=
��" #
new
��$ '
JoinGame
��( 0
(
��0 1
)
��1 2
;
��2 3
joinGameView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
��  
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
GoToMainMenuView
�� %
(
��% &
)
��& '
{
�� 	2
$_windowIsBeingClosedByTheCloseButton
�� 0
=
��1 2
false
��3 8
;
��8 9
MainMenu
�� 
mainMenuView
�� !
=
��" #
new
��$ '
MainMenu
��( 0
(
��0 1
)
��1 2
;
��2 3
mainMenuView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
��  
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� #
CallLeaveLobbyService
�� *
(
��* +
)
��+ ,
{
�� 	!
_lobbyServiceClient
�� 
.
��  

LeaveLobby
��  *
(
��* +
GameMatchDto
��+ 7
.
��7 8
Host
��8 <
,
��< =
	_username
��> G
)
��G H
;
��H I
}
�� 	
public
�� 
void
��  
StartButtonClicked
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
routedEventArgs
��F U
)
��U V
{
�� 	
if
�� 
(
�� 
_players
�� 
.
�� 
Count
�� 
<
�� 
$num
��  !
)
��! "
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;)
InsufficientNumberOfPlayers
��; V
)
��V W
;
��W X
}
�� 
else
�� 
{
�� 
	StartGame
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
	StartGame
�� 
(
�� 
)
��  
{
�� 	
try
�� 
{
�� !
_lobbyServiceClient
�� #
.
��# $
	StartGame
��$ -
(
��- .
GameMatchDto
��. :
.
��: ;
Host
��; ?
)
��? @
;
��@ A
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
)
��# $
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ; 
ServerTimeoutError
��; M
)
��M N
;
��N O
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
)
��, -
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;"
ServerConnectionLost
��; O
)
��O P
;
��P Q
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )
)
��) *
{
�� 

MessageBox
�� 
.
�� 
Show
�� 
(
��  

Properties
��  *
.
��* +
Langs
��+ 0
.
��0 1
	Resources
��1 :
.
��: ;&
CommunicationInterrupted
��; S
)
��S T
;
��T U
}
�� 
}
�� 	
public
�� 
void
�� $
NotifyNewPlayerEntered
�� *
(
��* +
string
��+ 1
username
��2 :
)
��: ;
{
�� 	
if
�� 
(
�� 
username
�� 
!=
�� 
null
�� 
)
��  
{
�� 
_players
�� 
.
�� 
Add
�� 
(
�� 
username
�� %
)
��% &
;
��& '
}
�� 
}
�� 	
public
�� 
void
�� 
NotifyPlayerLeft
�� $
(
��$ %
string
��% +
username
��, 4
)
��4 5
{
�� 	
_players
�� 
.
�� 
Remove
�� 
(
�� 
username
�� $
)
��$ %
;
��% &
}
�� 	
public
�� 
void
�� $
TakePlayersToMatchView
�� *
(
��* +
string
��+ 1
[
��1 2
]
��2 3
playersInMatch
��4 B
)
��B C
{
�� 	2
$_windowIsBeingClosedByTheCloseButton
�� 0
=
��1 2
false
��3 8
;
��8 9
Views
�� 
.
�� 
Match
�� 
	matchView
�� !
=
��" #
new
��$ '
Views
��( -
.
��- .
Match
��. 3
(
��3 4
)
��4 5
{
�� 
Players
�� 
=
�� 
playersInMatch
�� (
,
��( )
	MatchHost
�� 
=
�� 
GameMatchDto
�� (
.
��( )
Host
��) -
,
��- .
CardDeck
�� 
=
�� 
GameMatchDto
�� '
.
��' (
CardDeckDto
��( 3
}
�� 
;
�� 
	matchView
�� 
.
�� 
Show
�� 
(
�� 
)
�� 
;
�� 
this
�� 
.
�� 
Close
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� #
TakePlayersOutOfLobby
�� )
(
��) *
)
��* +
{
�� 	
GoToJoinGameView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Window_Closed
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
	EventArgs
��2 ;
	eventArgs
��< E
)
��E F
{
�� 	
if
�� 
(
�� 2
$_windowIsBeingClosedByTheCloseButton
�� 4
)
��4 5
{
�� #
CallLeaveLobbyService
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 	
}
�� 
}�� �
DC:\Users\Adair Hernández\source\repos\memory\MemoryGame\App.xaml.cs
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *
Watch* /
=0 1
true2 6
)6 7
]7 8
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
 
App

 
:

 
Application

 *
{ 
} 
} �
QC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Views\MainWindow.xaml.cs
	namespace 	

MemoryGame
 
{ 
public		 

partial		 
class		 

MainWindow		 #
:		$ %
Window		& ,
{

 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT h
)h i
;i j
public 

MainWindow 
( 
) 
{ 	
LoadCultureInfo 
( 
) 
; 
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
LoadCultureInfo $
($ %
)% &
{ 	
try 
{ 
System 
. 
	Threading  
.  !
Thread! '
.' (
CurrentThread( 5
.5 6
CurrentUICulture6 F
=G H
newI L
CultureInfoM X
(X Y

PropertiesY c
.c d
Settingsd l
.l m
Defaultm t
.t u
LanguageSettings	u �
)
� �
;
� �
} 
catch 
( $
CultureNotFoundException +
)+ ,
{ 
_logger 
. 
Fatal 
( 
$str W
)W X
;X Y
this 
. 
Close 
( 
) 
; 
}   
}"" 	
private$$ 
void$$ &
GetRegisteredButtonClicked$$ /
($$/ 0
object$$0 6
sender$$7 =
,$$= >
RoutedEventArgs$$? N
e$$O P
)$$P Q
{%% 	
Register&& 
registerView&& !
=&&" #
new&&$ '
Register&&( 0
(&&0 1
)&&1 2
;&&2 3
registerView'' 
.'' 
Show'' 
('' 
)'' 
;''  
this(( 
.(( 
Close(( 
((( 
)(( 
;(( 
})) 	
private++ 
void++ &
ConfigurationButtonClicked++ /
(++/ 0
object++0 6
sender++7 =
,++= >
RoutedEventArgs++? N
e++O P
)++P Q
{,, 	
Settings-- 
settingsView-- !
=--" #
new--$ '
Settings--( 0
(--0 1
)--1 2
;--2 3
settingsView.. 
... 
Show.. 
(.. 
).. 
;..  
this// 
.// 
Close// 
(// 
)// 
;// 
}00 	
private22 
void22 
LoginButtonClicked22 '
(22' (
object22( .
sender22/ 5
,225 6
RoutedEventArgs227 F
e22G H
)22H I
{33 	
Login44 
	loginView44 
=44 
new44 !
Login44" '
(44' (
)44( )
;44) *
	loginView55 
.55 
Show55 
(55 
)55 
;55 
this66 
.66 
Close66 
(66 
)66 
;66 
}77 	
}88 
}99 �
SC:\Users\Adair Hernández\source\repos\memory\MemoryGame\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str %
)% &
]& '
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
$str '
)' (
]( )
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
[   
assembly   	
:  	 

	ThemeInfo   
(   &
ResourceDictionaryLocation!! 
.!! 
None!! #
,!!# $&
ResourceDictionaryLocation$$ 
.$$ 
SourceAssembly$$ -
)'' 
]'' 
[44 
assembly44 	
:44	 

AssemblyVersion44 
(44 
$str44 $
)44$ %
]44% &
[55 
assembly55 	
:55	 

AssemblyFileVersion55 
(55 
$str55 (
)55( )
]55) *