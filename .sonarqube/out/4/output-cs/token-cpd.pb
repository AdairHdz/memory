êF
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Components\GameBoardDrawer.cs
	namespace 	

MemoryGame
 
. 

Components 
{		 
public

 

class

 
GameBoardDrawer

  
{ 
public 
int 
NumberOfColumns "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
MemoryGameService  
.  !
DataTransferObjects! 4
.4 5
CardDeckDTO5 @
CardDeckA I
{J K
getL O
;O P
setQ T
;T U
}V W
public 
Grid 
GridToBeDrawnOn #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
IList 
< 
	ImageCard 
> 

ImageCards  *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
GameBoardDrawer 
( 
)  
{! "
}# $
public 
void 
Draw 
( 
) 
{ 	
DrawColumns 
( 
) 
; 
DrawRows 
( 
) 
; 

DrawImages 
( 
) 
; 
} 	
private 
void 
DrawColumns  
(  !
)! "
{ 	
for 
( 
int !
numberOfCurrentColumn *
=+ ,
$num- .
;. /!
numberOfCurrentColumn0 E
<F G
NumberOfColumnsH W
;W X!
numberOfCurrentColumnY n
++n p
)p q
{ 
GridToBeDrawnOn 
.  
ColumnDefinitions  1
.1 2
Add2 5
(5 6
new6 9
ColumnDefinition: J
(J K
)K L
)L M
;M N
} 
}   	
private"" 
void"" 
DrawRows"" 
("" 
)"" 
{## 	
int$$ 
numberOfCards$$ 
=$$ 
CardDeck$$  (
.$$( )
Cards$$) .
.$$. /
Count$$/ 4
;$$4 5
int%%  
numberOfColumnsDrawn%% $
=%%% &
GridToBeDrawnOn%%' 6
.%%6 7
ColumnDefinitions%%7 H
.%%H I
Count%%I N
;%%N O
int''  
numberOfRequiredRows'' $
=''% &
(''' (
int''( +
)''+ ,
Math'', 0
.''0 1
Ceiling''1 8
(''8 9
Convert''9 @
.''@ A
ToDouble''A I
(''I J
numberOfCards''J W
/''X Y 
numberOfColumnsDrawn''Z n
)''n o
)''o p
+''q r
$num''s t
;''t u
for(( 
((( 
int(( 
numberOfCurrentRow(( '
=((( )
$num((* +
;((+ ,
numberOfCurrentRow((- ?
<((@ A 
numberOfRequiredRows((B V
;((V W
numberOfCurrentRow((X j
++((j l
)((l m
{)) 
GridToBeDrawnOn** 
.**  
RowDefinitions**  .
.**. /
Add**/ 2
(**2 3
new**3 6
RowDefinition**7 D
(**D E
)**E F
)**F G
;**G H
}++ 
},, 	
private.. 
void.. 
PopulateImageCards.. '
(..' (
)..( )
{// 	
IList00 
<00 
MemoryGameService00 #
.00# $
DataTransferObjects00$ 7
.007 8
CardDto008 ?
>00? @
cards00A F
=00G H
CardDeck00I Q
.00Q R
Cards00R W
;00W X
string11 
backImageOfCards11 #
=11$ %
CardDeck11& .
.11. /
	BackImage11/ 8
;118 9
BitmapImage22 
	backImage22 !
=22" #
new22$ '
BitmapImage22( 3
(223 4
new224 7
Uri228 ;
(22; <
backImageOfCards22< L
)22L M
)22M N
;22N O
for44 
(44 
int44 
numberOfActualCard44 '
=44( )
$num44* +
;44+ ,
numberOfActualCard44- ?
<44@ A
cards44B G
.44G H
Count44H M
;44M N
numberOfActualCard44O a
++44a c
)44c d
{55 
MemoryGameService66 !
.66! "
DataTransferObjects66" 5
.665 6
CardDto666 =

actualCard66> H
=66I J
CardDeck66K S
.66S T
Cards66T Y
[66Y Z
numberOfActualCard66Z l
]66l m
;66m n
string88 "
frontImageOfActualCard88 -
=88. /

actualCard880 :
.88: ;

FrontImage88; E
;88E F
BitmapImage:: 

frontImage:: &
=::' (
new::) ,
BitmapImage::- 8
(::8 9
new::9 <
Uri::= @
(::@ A"
frontImageOfActualCard::A W
)::W X
)::X Y
;::Y Z
	ImageCard;; 
	imageCard;; #
=;;$ %
new;;& )
	ImageCard;;* 3
(;;3 4
);;4 5
{<< 

FrontImage== 
===  

frontImage==! +
,==+ ,
	BackImage>> 
=>> 
	backImage>>  )
,>>) *
Source?? 
=?? 
	backImage?? &
,??& '
CardId@@ 
=@@ 

actualCard@@ '
.@@' (
CardId@@( .
,@@. /
CardDtoAA 
=AA 

actualCardAA (
}BB 
;BB 

ImageCardsCC 
.CC 
AddCC 
(CC 
	imageCardCC (
)CC( )
;CC) *
}DD 
}FF 	
privateHH 
voidHH 

DrawImagesHH 
(HH  
)HH  !
{II 	
PopulateImageCardsJJ 
(JJ 
)JJ  
;JJ  !
intKK 
rowIndexKK 
=KK 
$numKK 
;KK 
intLL 
columnIndexLL 
=LL 
$numLL 
;LL  
intMM 
columnCountMM 
=MM 
GridToBeDrawnOnMM -
.MM- .
ColumnDefinitionsMM. ?
.MM? @
CountMM@ E
;MME F
forOO 
(OO 
intOO 
numberOfActualCardOO '
=OO( )
$numOO* +
;OO+ ,
numberOfActualCardOO- ?
<OO@ A

ImageCardsOOB L
.OOL M
CountOOM R
;OOR S
numberOfActualCardOOT f
++OOf h
)OOh i
{PP 
ifQQ 
(QQ 
columnIndexQQ 
>=QQ  "
columnCountQQ# .
)QQ. /
{RR 
columnIndexSS 
=SS  !
$numSS" #
;SS# $
rowIndexTT 
++TT 
;TT 
}UU 
GridWW 
.WW 
SetRowWW 
(WW 

ImageCardsWW &
[WW& '
numberOfActualCardWW' 9
]WW9 :
,WW: ;
rowIndexWW< D
)WWD E
;WWE F
GridXX 
.XX 
	SetColumnXX 
(XX 

ImageCardsXX )
[XX) *
numberOfActualCardXX* <
]XX< =
,XX= >
columnIndexXX? J
)XXJ K
;XXK L

ImageCardsYY 
[YY 
numberOfActualCardYY -
]YY- .
.YY. /
MarginYY/ 5
=YY6 7
newYY8 ;
	ThicknessYY< E
(YYE F
$numYYF G
)YYG H
;YYH I
GridToBeDrawnOnZZ 
.ZZ  
ChildrenZZ  (
.ZZ( )
AddZZ) ,
(ZZ, -

ImageCardsZZ- 7
[ZZ7 8
numberOfActualCardZZ8 J
]ZZJ K
)ZZK L
;ZZL M
columnIndex[[ 
++[[ 
;[[ 
}\\ 
}]] 	
public__ 
void__ !
SetEventOnCardClicked__ )
(__) *#
MouseButtonEventHandler__* A
eventHandler__B N
)__N O
{`` 	
foraa 
(aa 
intaa 
numberOfActualCardaa '
=aa( )
$numaa* +
;aa+ ,
numberOfActualCardaa- ?
<aa@ A

ImageCardsaaB L
.aaL M
CountaaM R
;aaR S
numberOfActualCardaaT f
++aaf h
)aah i
{bb 

ImageCardscc 
[cc 
numberOfActualCardcc -
]cc- .
.cc. /
	MouseDowncc/ 8
+=cc9 ;
eventHandlercc< H
;ccH I
}dd 
}ee 	
}ff 
}gg ∂
PC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Components\ImageCard.cs
	namespace 	

MemoryGame
 
. 

Components 
{ 
public 

class 
	ImageCard 
: 
Image "
{ 
public		 
int		 
CardId		 
{		 
set		 
;		  
get		! $
;		$ %
}		& '
public

 
BitmapImage

 

FrontImage

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
BitmapImage 
	BackImage $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
CardDto 
CardDto 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} œ
NC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Components\UserBox.cs
	namespace 	

MemoryGame
 
. 

Components 
{ 
public 

class 
UserBox 
: 
Grid 
{ 
public 
	TextBlock 
Username !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
void 
SetUsername 
(  
	TextBlock  )
username* 2
)2 3
{		 	
Grid

 
.

 
	SetColumn

 
(

 
username

 #
,

# $
$num

% &
)

& '
;

' (
Grid 
. 
SetRow 
( 
username  
,  !
$num" #
)# $
;$ %
this 
. 
Children 
. 
Add 
( 
username &
)& '
;' (
} 	
} 
} ﬁ
TC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Components\UserBoxDrawer.cs
	namespace 	

MemoryGame
 
. 

Components 
{ 
public 

class 
UserBoxDrawer 
{ 
public		 
Grid		 
GridToBeDrawnOn		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
string

 
[

 
]

 
PlayersUsernames

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
void 
Draw 
( 
) 
{ 	
int 
rowIndex 
= 
$num 
; 
int 
columnIndex 
= 
$num 
;  
foreach 
( 
var 
player 
in  "
PlayersUsernames# 3
)3 4
{ 
UserBox 
userBox 
=  !
new" %
UserBox& -
(- .
). /
{ 

Background 
=  
new! $
SolidColorBrush% 4
(4 5
Color5 :
.: ;
FromRgb; B
(B C
$numC F
,F G
$numH J
,J K
$numL O
)O P
)P Q
} 
; 
	TextBlock 
username "
=# $
new% (
	TextBlock) 2
(2 3
)3 4
{ 
Text 
= 
player !
,! "

Foreground 
=  
new! $
SolidColorBrush% 4
(4 5
Color5 :
.: ;
FromRgb; B
(B C
$numC F
,F G
$numH K
,K L
$numM P
)P Q
)Q R
,R S
VerticalAlignment %
=& '
VerticalAlignment( 9
.9 :
Center: @
,@ A
HorizontalAlignment '
=( )
HorizontalAlignment* =
.= >
Center> D
,D E
FontSize 
= 
$num !
,! "
TextTrimming  
=! "
TextTrimming# /
./ 0
CharacterEllipsis0 A
}   
;   
userBox"" 
."" 
SetUsername"" #
(""# $
username""$ ,
)"", -
;""- .
Grid$$ 
.$$ 
	SetColumn$$ 
($$ 
userBox$$ &
,$$& '
rowIndex$$( 0
)$$0 1
;$$1 2
Grid%% 
.%% 
SetRow%% 
(%% 
userBox%% #
,%%# $
columnIndex%%% 0
)%%0 1
;%%1 2
GridToBeDrawnOn&& 
.&&  
Children&&  (
.&&( )
Add&&) ,
(&&, -
userBox&&- 4
)&&4 5
;&&5 6
if'' 
('' 
columnIndex'' 
==''  "
$num''# $
)''$ %
{(( 
rowIndex)) 
=)) 
$num))  
;))  !
columnIndex** 
=**  !
$num**" #
;**# $
}++ 
else,, 
{-- 
columnIndex.. 
=..  !
$num.." #
;..# $
}// 
}00 
}11 	
}22 
}44 æ
cC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\NonEmptyFieldValidation.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
GenericValidations% 7
{ 
public 

class #
NonEmptyFieldValidation (
:) *
IValidationRule+ :
{ 
private 
readonly 
string 
_inputField  +
;+ ,
public #
NonEmptyFieldValidation &
(& '
string' -

inputField. 8
)8 9
{		 	
_inputField

 
=

 

inputField

 $
;

$ %
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
if 
( 

IsNotEmpty 
( 
) 
) 
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G

Properties 
. 
Langs  
.  !
	Resources! *
.* +

EmptyField+ 5
)5 6
;6 7
} 	
public 
bool 
Validate 
( 
) 
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
private 
bool 2
&DoesNotContainWhiteSpaceAtTheBeggining ;
(; <
)< =
{ 	
string 
trimInputField !
=" #
_inputField$ /
./ 0
Trim0 4
(4 5
)5 6
;6 7
if 
( 
trimInputField 
. 
Length $
!=% '
$num( )
)) *
{   
return!! 
true!! 
;!! 
}"" 
return## 
false## 
;## 
}$$ 	
private&& 
bool&& 

IsNotEmpty&& 
(&&  
)&&  !
{'' 	
int(( !
inputFieldValueLength(( %
=((& '
_inputField((( 3
.((3 4
Length((4 :
;((: ;
if)) 
()) 2
&DoesNotContainWhiteSpaceAtTheBeggining)) 5
())5 6
)))6 7
&&** !
inputFieldValueLength** (
>**) *
$num**+ ,
)**, -
{++ 
return,, 
true,, 
;,, 
}-- 
return.. 
false.. 
;.. 
}// 	
}00 
}11 ˇ
[C:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\IValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

	interface 
IValidationRule $
{ 
bool 
Validate 
( 
) 
;  
ValidationRuleResult #
GetValidationRuleResult 4
(4 5
)5 6
;6 7
} 
} »
fC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\EmailAddressValidationRule.cs
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
:, -
IValidationRule. =
{ 
private 
readonly 
string 
_emailAddress  -
;- .
public		 &
EmailAddressValidationRule		 )
(		) *
string		* 0
emailAddress		1 =
)		= >
{

 	
_emailAddress 
= 
emailAddress (
;( )
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
if 
( 
HasValidFormat 
( 
)  
&&! #1
%IsLessOrEqualsThan254CharactersLength$ I
(I J
)J K
)K L
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G

Properties 
. 
Langs  
.  !
	Resources! *
.* +!
EmailAddressIsInvalid+ @
)@ A
;A B
} 	
public 
bool 
Validate 
( 
) 
{ 	 
ValidationRuleResult   
validationRuleResult! 5
=6 7#
GetValidationRuleResult8 O
(O P
)P Q
;Q R
if 
(  
validationRuleResult #
.# $
Status$ *
==+ - 
ValidationRuleResult. B
.B C
SUCCESSC J
)J K
{ 
return 
true 
; 
} 
return 
false 
; 
}   	
private"" 
bool"" 
HasValidFormat"" #
(""# $
)""$ %
{## 	
Regex$$ 
regularExpression$$ #
=$$$ %
new$$& )
Regex$$* /
($$/ 0
$str$$0 W
)$$W X
;$$X Y
bool%% 
hasValidFormat%% 
=%%  !
regularExpression%%" 3
.%%3 4
IsMatch%%4 ;
(%%; <
_emailAddress%%< I
)%%I J
;%%J K
return&& 
hasValidFormat&& !
;&&! "
}'' 	
private)) 
bool)) 1
%IsLessOrEqualsThan254CharactersLength)) :
()): ;
))); <
{** 	
return++ 
_emailAddress++  
.++  !
Length++! '
<=++( *
$num+++ .
;++. /
},, 	
}-- 
}.. ¬*
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\PasswordValidationRule.cs
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
:( )
IValidationRule* 9
{ 
private 
readonly 
string 
	_password  )
;) *
private 
Regex 
_regularExpression (
;( )
private		 
MatchCollection		 
_matches		  (
;		( )
public "
PasswordValidationRule %
(% &
string& ,
password- 5
)5 6
{ 	
	_password 
= 
password  
;  !
} 	
private 
bool )
HasAtLeastOneSpecialCharacter 2
(2 3
)3 4
{ 	
_regularExpression 
=  
new! $
Regex% *
(* +
$str+ 1
)1 2
;2 3
_matches 
= 
_regularExpression )
.) *
Matches* 1
(1 2
	_password2 ;
); <
;< =
return 
_matches 
. 
Count !
>=" $
$num% &
;& '
} 	
private 
bool &
HasAtLeastOneCapitalLetter /
(/ 0
)0 1
{ 	
_regularExpression 
=  
new! $
Regex% *
(* +
$str+ 3
)3 4
;4 5
_matches 
= 
_regularExpression )
.) *
Matches* 1
(1 2
	_password2 ;
); <
;< =
return 
_matches 
. 
Count !
>=" $
$num% &
;& '
} 	
private 
bool )
HasAtLeastOneNumericCharacter 2
(2 3
)3 4
{ 	
_regularExpression   
=    
new  ! $
Regex  % *
(  * +
$str  + 2
)  2 3
;  3 4
_matches!! 
=!! 
_regularExpression!! )
.!!) *
Matches!!* 1
(!!1 2
	_password!!2 ;
)!!; <
;!!< =
return"" 
_matches"" 
."" 
Count"" !
>=""" $
$num""% &
;""& '
}## 	
private%% 
bool%% (
HasAtLeastOneLowercaseLetter%% 1
(%%1 2
)%%2 3
{&& 	
_regularExpression'' 
=''  
new''! $
Regex''% *
(''* +
$str''+ 3
)''3 4
;''4 5
_matches(( 
=(( 
_regularExpression(( )
.(() *
Matches((* 1
(((1 2
	_password((2 ;
)((; <
;((< =
return)) 
_matches)) 
.)) 
Count)) !
>=))" $
$num))% &
;))& '
}** 	
private,, 
bool,, +
IsBetween8And25CharactersLength,, 4
(,,4 5
),,5 6
{-- 	
return.. 
	_password.. 
... 
Length.. #
>=..$ &
$num..' (
&&..) +
	_password.., 5
...5 6
Length..6 <
<=..= ?
$num..@ B
;..B C
}// 	
public22 
bool22 
Validate22 
(22 
)22 
{33 	 
ValidationRuleResult44   
validationRuleResult44! 5
=446 7#
GetValidationRuleResult448 O
(44O P
)44P Q
;44Q R
if55 
(55  
validationRuleResult55 $
.55$ %
Status55% +
==55, . 
ValidationRuleResult55/ C
.55C D
SUCCESS55D K
)55K L
{66 
return77 
true77 
;77 
}88 
return99 
false99 
;99 
}:: 	
public<<  
ValidationRuleResult<< ##
GetValidationRuleResult<<$ ;
(<<; <
)<<< =
{== 	
if>> 
(>> )
HasAtLeastOneSpecialCharacter>> -
(>>- .
)>>. /
&&?? &
HasAtLeastOneCapitalLetter?? -
(??- .
)??. /
&&@@ (
HasAtLeastOneLowercaseLetter@@ /
(@@/ 0
)@@0 1
&&AA +
IsBetween8And25CharactersLengthAA 2
(AA2 3
)AA3 4
&&BB )
HasAtLeastOneNumericCharacterBB 0
(BB0 1
)BB1 2
)BB2 3
{CC 
returnDD 
newDD  
ValidationRuleResultDD /
(DD/ 0 
ValidationRuleResultDD0 D
.DDD E
SUCCESSDDE L
)DDL M
;DDM N
}EE 
returnGG 
newGG  
ValidationRuleResultGG +
(GG+ , 
ValidationRuleResultGG, @
.GG@ A
ERRORGGA F
,GGF G

PropertiesHH 
.HH 
LangsHH  
.HH  !
	ResourcesHH! *
.HH* +
PasswordIsInvalidHH+ <
)HH< =
;HH= >
}II 	
}JJ 
}KK Ä
bC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\UsernameValidationRule.cs
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
:( )
IValidationRule* 9
{ 
private 
readonly 
string 
	_username  )
;) *
public		 "
UsernameValidationRule		 %
(		% &
string		& ,
username		- 5
)		5 6
{

 	
	_username 
= 
username  
;  !
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
if 
( 
HasValidFormat 
( 
)  
&&! #+
IsBetween4And16CharactersLength$ C
(C D
)D E
)E F
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G

Properties 
. 
Langs  
.  !
	Resources! *
.* +
UsernameIsInvalid+ <
)< =
;= >
} 	
public 
bool 
Validate 
( 
) 
{ 	 
ValidationRuleResult   
validationRuleResult! 5
=6 7#
GetValidationRuleResult8 O
(O P
)P Q
;Q R
if 
(  
validationRuleResult $
.$ %
Status% +
==, . 
ValidationRuleResult/ C
.C D
SUCCESSD K
)K L
{ 
return 
true 
; 
} 
return 
false 
; 
}   	
private## 
bool## 
HasValidFormat## #
(### $
)##$ %
{$$ 	
Regex%% 
regularExpression%% #
=%%$ %
new%%& )
Regex%%* /
(%%/ 0
$str%%0 8
)%%8 9
;%%9 :
bool&& 
hasValidFormat&& 
=&&  !
regularExpression&&" 3
.&&3 4
IsMatch&&4 ;
(&&; <
	_username&&< E
)&&E F
;&&F G
return'' 
hasValidFormat'' !
;''! "
}(( 	
private** 
bool** +
IsBetween4And16CharactersLength** 4
(**4 5
)**5 6
{++ 	
return,, 
	_username,, 
.,, 
Length,, #
>=,,$ &
$num,,' (
&&,,) +
	_username,,, 5
.,,5 6
Length,,6 <
<=,,= ?
$num,,@ B
;,,B C
}-- 	
}.. 
}// Œ
TC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\IRuleSet.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

	interface 
IRuleSet 
{ 
void 
AddValidationRule 
( 
IValidationRule .
validationRule/ =
)= >
;> ?
bool (
AllValidationRulesHavePassed )
() *
)* +
;+ ,
List		 
<		  
ValidationRuleResult		 !
>		! "%
GetValidationResultErrors		# <
(		< =
)		= >
;		> ?
}

 
} ˆ
SC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RuleSet.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

class 
RuleSet 
{ 
public 
List 
< 
IValidationRule #
># $
ValidationRules% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
private 
readonly 
List 
<  
ValidationRuleResult 2
>2 3#
_validationResultErrors4 K
;K L
public

 
RuleSet

 
(

 
)

 
{ 	
ValidationRules 
= 
new !
List" &
<& '
IValidationRule' 6
>6 7
(7 8
)8 9
;9 :#
_validationResultErrors #
=$ %
new& )
List* .
<. / 
ValidationRuleResult/ C
>C D
(D E
)E F
;F G
} 	
public 
void 
AddValidationRule %
(% &
IValidationRule& 5
validationRule6 D
)D E
{ 	
ValidationRules 
. 
Add 
(  
validationRule  .
). /
;/ 0
} 	
private 
void #
LookForValidationErrors ,
(, -
)- .
{ 	%
ClearValidationErrorsList %
(% &
)& '
;' (
foreach 
( 
IValidationRule $
rule% )
in* ,
ValidationRules- <
)< =
{  
ValidationRuleResult $ 
validationRuleResult% 9
=: ;
rule< @
.@ A#
GetValidationRuleResultA X
(X Y
)Y Z
;Z [
if 
(  
validationRuleResult (
.( )
Status) /
==0 2 
ValidationRuleResult3 G
.G H
ERRORH M
)M N
{ #
_validationResultErrors +
.+ ,
Add, /
(/ 0 
validationRuleResult0 D
)D E
;E F
} 
} 
}   	
public"" 
bool"" (
AllValidationRulesHavePassed"" 0
(""0 1
)""1 2
{## 	#
LookForValidationErrors$$ #
($$# $
)$$$ %
;$$% &
if%% 
(%% #
_validationResultErrors%% '
.%%' (
Count%%( -
==%%. 0
$num%%1 2
)%%2 3
{&& 
return'' 
true'' 
;'' 
}(( 
return)) 
false)) 
;)) 
}** 	
public,, 
List,, 
<,,  
ValidationRuleResult,, (
>,,( )%
GetValidationResultErrors,,* C
(,,C D
),,D E
{-- 	#
LookForValidationErrors.. #
(..# $
)..$ %
;..% &
return// #
_validationResultErrors// *
;//* +
}00 	
private44 
void44 %
ClearValidationErrorsList44 .
(44. /
)44/ 0
{55 	#
_validationResultErrors66 #
.66# $
Clear66$ )
(66) *
)66* +
;66+ ,
}77 	
}88 
}99 í
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
public  
ValidationRuleResult #
(# $
)$ %
{& '
}( )
public  
ValidationRuleResult #
(# $
int$ '
status( .
). /
{ 	
Status 
= 
status 
; 
} 	
public  
ValidationRuleResult #
(# $
int$ '
status( .
,. /
string0 6
message7 >
)> ?
{ 	
Status 
= 
status 
; 
Message 
= 
message 
; 
} 	
} 
} ﬁ
RC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Utilities\TokenManager.cs
	namespace 	

MemoryGame
 
. 
	Utilities 
{ 
public 

static 
class 
TokenManager $
{ 
public 
static 
string %
GenerateVerificationToken 6
(6 7
)7 8
{ 	
MemoryGameService		 
.		  
TokenGeneratorClient		 2
client		3 9
=		: ;
new

 
MemoryGameService

 %
.

% & 
TokenGeneratorClient

& :
(

: ;
)

; <
;

< =
return 
client 
. 
GenerateToken '
(' (
$num( )
)) *
;* +
} 	
public 
static 
void !
SendVerificationToken 0
(0 1$
VerificationTokenInfoDto1 I!
verificationTokenInfoJ _
)_ `
{ 	
MemoryGameService 
.  
MailingServiceClient 2
client3 9
=: ;
new 
MemoryGameService %
.% & 
MailingServiceClient& :
(: ;
); <
;< =
client 
. !
SendVerificationToken (
(( )!
verificationTokenInfo) >
)> ?
;? @
} 	
} 
} ˇY
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ActivationToken.xaml.cs
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
;d e
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT m
)m n
;n o
public 
ActivationToken 
( 
string %
emailAddress& 2
,2 3
string4 :
username; C
)C D
{ 	
InitializeComponent 
(  
)  !
;! "-
!_accountVerificationServiceClient -
=. /
new0 3
MemoryGameService4 E
.E F,
 AccountVerificationServiceClientF f
(f g
)g h
;h i
_emailAddress 
= 
emailAddress (
;( )
	_username 
= 
username  
;  !
} 	
private 
void 
OkButtonClicked $
($ %
object% +
sender, 2
,2 3
RoutedEventArgs4 C
eD E
)E F
{ 	
try 
{ 
VerifyAccount   
(   
)   
;    
}!! 
catch"" 
("" 
TimeoutException"" #
timeoutException""$ 4
)""4 5
{## 
_logger$$ 
.$$ 
Fatal$$ 
($$ 
timeoutException$$ .
)$$. /
;$$/ 0

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
EndpointNotFoundException'' ,%
endpointNotFoundException''- F
)''F G
{(( 
_logger)) 
.)) 
Fatal)) 
()) %
endpointNotFoundException)) 7
)))7 8
;))8 9

MessageBox** 
.** 
Show** 
(**  

Properties**  *
.*** +
Langs**+ 0
.**0 1
	Resources**1 :
.**: ; 
ServerConnectionLost**; O
)**O P
;**P Q
}++ 
catch,, 
(,, "
CommunicationException,, )"
communicationException,,* @
),,@ A
{-- 
_logger.. 
... 
Fatal.. 
(.. "
communicationException.. 4
)..4 5
;..5 6

MessageBox// 
.// 
Show// 
(//  

Properties//  *
.//* +
Langs//+ 0
.//0 1
	Resources//1 :
.//: ;$
CommunicationInterrupted//; S
)//S T
;//T U
}00 
}11 	
private33 
void33 
VerifyAccount33 "
(33" #
)33# $
{44 	
if55 
(55 
TokenIsCorrect55 
(55 
)55  
)55  !
{66 
if77 
(77 *
AccountWasSuccessfullyVerified77 2
(772 3
)773 4
)774 5
{88 

MessageBox99 
.99 
Show99 #
(99# $

Properties99$ .
.99. /
Langs99/ 4
.994 5
	Resources995 >
.99> ?&
AccountVerificationSuccess99? Y
)99Y Z
;99Z [
	GoToLogin;; 
(;; 
);; 
;;;  
}<< 
else== 
{>> 

MessageBox?? 
.?? 
Show?? #
(??# $

Properties??$ .
.??. /
Langs??/ 4
.??4 5
	Resources??5 >
.??> ?$
AccountVerificationError??? W
)??W X
;??X Y
}@@ 
}AA 
elseBB 
{CC 

MessageBoxDD 
.DD 
ShowDD 
(DD  

PropertiesDD  *
.DD* +
LangsDD+ 0
.DD0 1
	ResourcesDD1 :
.DD: ;'
NonMatchingVerificationCodeDD; V
)DDV W
;DDW X
}EE 
}FF 	
privateHH 
voidHH 
	GoToLoginHH 
(HH 
)HH  
{II 	
LoginJJ 
	loginViewJJ 
=JJ 
newJJ !
LoginJJ" '
(JJ' (
)JJ( )
;JJ) *
	loginViewKK 
.KK 
ShowKK 
(KK 
)KK 
;KK 
thisLL 
.LL 
CloseLL 
(LL 
)LL 
;LL 
}MM 	
privateOO 
boolOO 
TokenIsCorrectOO #
(OO# $
)OO$ %
{PP 	
stringQQ 
tokenQQ 
=QQ 
TextBoxTokenQQ '
.QQ' (
TextQQ( ,
;QQ, -
ifRR 
(RR 
tokenRR 
==RR 
$strRR 
)RR 
{SS 
returnTT 
falseTT 
;TT 
}UU 
returnWW -
!_accountVerificationServiceClientWW 4
.WW4 5
VerifyTokenWW5 @
(WW@ A
_emailAddressWWA N
,WWN O
tokenWWP U
)WWU V
;WWV W
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
;cc" #
booldd 
newTokenWasAssigneddd (
=dd) *&
AssignNewVerificationTokendd+ E
(ddE F
)ddF G
;ddG H
ifff 
(ff 
newTokenWasAssignedff '
)ff' (
{gg $
SendNewVerificationTokenhh ,
(hh, -
)hh- .
;hh. /

MessageBoxii 
.ii 
Showii #
(ii# $

Propertiesii$ .
.ii. /
Langsii/ 4
.ii4 5
	Resourcesii5 >
.ii> ?
NewCodeSentMessageii? Q
)iiQ R
;iiR S
}jj 
}kk 
catchll 
(ll %
EndpointNotFoundExceptionll ,
)ll, -
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
ServerConnectionLostnn; O
)nnO P
;nnP Q
}oo 
catchpp 
(pp 
TimeoutExceptionpp #
)pp# $
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
.rr: ;
ServerTimeoutErrorrr; M
)rrM N
;rrN O
}ss 
catchtt 
(tt /
#CommunicationObjectFaultedExceptiontt 6
)tt6 7
{uu 

MessageBoxvv 
.vv 
Showvv 
(vv  

Propertiesvv  *
.vv* +
Langsvv+ 0
.vv0 1
	Resourcesvv1 :
.vv: ;$
CommunicationInterruptedvv; S
)vvS T
;vvT U
}ww 
}xx 	
privatezz 
voidzz 
GenerateNewTokenzz %
(zz% &
)zz& '
{{{ 	
string|| 
newToken|| 
=|| 
TokenManager|| *
.||* +%
GenerateVerificationToken||+ D
(||D E
)||E F
;||F G
	_newToken}} 
=}} 
newToken}}  
;}}  !
}~~ 	
private
ÄÄ 
bool
ÄÄ (
AssignNewVerificationToken
ÄÄ /
(
ÄÄ/ 0
)
ÄÄ0 1
{
ÅÅ 	
bool
ÇÇ 9
+newVerificationTokenWasAssignedSuccessfully
ÇÇ <
=
ÇÇ= >/
!_accountVerificationServiceClient
ÉÉ 1
.
ÉÉ1 2(
AssignNewVerificationToken
ÉÉ2 L
(
ÉÉL M
_emailAddress
ÉÉM Z
,
ÉÉZ [
	_newToken
ÉÉ\ e
)
ÉÉe f
;
ÉÉf g
return
ÖÖ 9
+newVerificationTokenWasAssignedSuccessfully
ÖÖ >
;
ÖÖ> ?
}
ÜÜ 	
private
àà 
void
àà &
SendNewVerificationToken
àà -
(
àà- .
)
àà. /
{
ââ 	&
VerificationTokenInfoDto
ää $#
verificationTokenInfo
ää% :
=
ää; <
new
ää= @&
VerificationTokenInfoDto
ääA Y
(
ääY Z
)
ääZ [
{
ãã 
Name
åå 
=
åå 
	_username
åå  
,
åå  !
EmailAddress
çç 
=
çç 
_emailAddress
çç ,
,
çç, -
VerificationToken
éé !
=
éé" #
	_newToken
éé$ -
,
éé- .
Subject
èè 
=
èè 

Properties
èè $
.
èè$ %
Langs
èè% *
.
èè* +
	Resources
èè+ 4
.
èè4 5
Welcome
èè5 <
,
èè< =
Body
êê 
=
êê 

Properties
êê !
.
êê! "
Langs
êê" '
.
êê' (
	Resources
êê( 1
.
êê1 2
VerificationToken
êê2 C
}
ëë 
;
ëë 
TokenManager
ìì 
.
ìì #
SendVerificationToken
ìì .
(
ìì. /#
verificationTokenInfo
ìì/ D
)
ììD E
;
ììE F
}
îî 	
private
ññ 
void
ññ 
BackButtonClicked
ññ &
(
ññ& '
object
ññ' -
sender
ññ. 4
,
ññ4 5
RoutedEventArgs
ññ6 E
e
ññF G
)
ññG H
{
óó 	
GoToMainWindow
òò 
(
òò 
)
òò 
;
òò 
}
ôô 	
private
õõ 
void
õõ 
GoToMainWindow
õõ #
(
õõ# $
)
õõ$ %
{
úú 	

MainWindow
ùù 
mainWindowView
ùù %
=
ùù& '
new
ùù( +

MainWindow
ùù, 6
(
ùù6 7
)
ùù7 8
;
ùù8 9
mainWindowView
ûû 
.
ûû 
Show
ûû 
(
ûû  
)
ûû  !
;
ûû! "
this
üü 
.
üü 
Close
üü 
(
üü 
)
üü 
;
üü 
}
†† 	
}
°° 
}¢¢ ∆T
UC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ChangeUsername.xaml.cs
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
;  !
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT l
)l m
;m n
public 
ChangeUsername 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
Sesion 
userSession 
=  
Sesion! '
.' (
	GetSesion( 1
;1 2
_userEmailAddress 
= 
userSession  +
.+ ,
EmailAddress, 8
;8 9
_oldUsername 
= 
userSession &
.& '
Username' /
;/ 0
LabelOldUsername 
. 
Content $
=% &
_oldUsername' 3
;3 4
} 	
private 
void 
SetFormValidation &
(& '
)' (
{   	
_ruleSet!! 
=!! 
new!! 
RuleSet!! "
(!!" #
)!!# $
;!!$ %
_ruleSet"" 
."" 
AddValidationRule"" &
(""& '
new""' *"
UsernameValidationRule""+ A
(""A B
_newUsername""B N
)""N O
)""O P
;""P Q
}## 	
private%% 
void%% (
TextBoxNewUsername_LostFocus%% 1
(%%1 2
object%%2 8
sender%%9 ?
,%%? @
RoutedEventArgs%%A P
e%%Q R
)%%R S
{&& 	
if'' 
('' 
string'' 
.'' 
IsNullOrEmpty'' $
(''$ %
TextBoxNewUsername''% 7
.''7 8
Text''8 <
)''< =
)''= >
{(( 
TextBoxNewUsername)) "
.))" #

Visibility))# -
=)). /
System))0 6
.))6 7
Windows))7 >
.))> ?

Visibility))? I
.))I J
	Collapsed))J S
;))S T
waterMarkText** 
.** 

Visibility** (
=**) *
System**+ 1
.**1 2
Windows**2 9
.**9 :

Visibility**: D
.**D E
Visible**E L
;**L M
}++ 
},, 	
private.. 
void.. "
waterMarkText_GotFocus.. +
(..+ ,
object.., 2
sender..3 9
,..9 :
RoutedEventArgs..; J
e..K L
)..L M
{// 	
waterMarkText00 
.00 

Visibility00 $
=00% &
System00' -
.00- .
Windows00. 5
.005 6

Visibility006 @
.00@ A
	Collapsed00A J
;00J K
TextBoxNewUsername11 
.11 

Visibility11 )
=11* +
System11, 2
.112 3
Windows113 :
.11: ;

Visibility11; E
.11E F
Visible11F M
;11M N
TextBoxNewUsername22 
.22 
Focus22 $
(22$ %
)22% &
;22& '
}33 	
private55 
bool55 
UsernameIsAvailable55 (
(55( )
)55) *
{66 	'
PlayerRegistryServiceClient77 ''
playerRegistryServiceClient77( C
=77D E
new77F I'
PlayerRegistryServiceClient77J e
(77e f
)77f g
;77g h
bool88 
usernameIsAvailable88 $
=88% &'
playerRegistryServiceClient88' B
.88B C
UserNameIsAvailable88C V
(88V W
_newUsername88W c
)88c d
;88d e
return99 
usernameIsAvailable99 &
;99& '
}:: 	
private<< 
void<< $
SaveChangesButtonClicked<< -
(<<- .
object<<. 4
sender<<5 ;
,<<; <
RoutedEventArgs<<= L
e<<M N
)<<N O
{== 	
_newUsername>> 
=>> 
TextBoxNewUsername>> -
.>>- .
Text>>. 2
;>>2 3
SetFormValidation?? 
(?? 
)?? 
;??  
if@@ 
(@@ 
_ruleSet@@ 
.@@ (
AllValidationRulesHavePassed@@ 5
(@@5 6
)@@6 7
)@@7 8
{AA 
tryBB 
{CC 
SetNewUsernameDD "
(DD" #
)DD# $
;DD$ %
}FF 
catchGG 
(GG 
TimeoutExceptionGG '
timeoutExceptionGG( 8
)GG8 9
{HH 
_loggerII 
.II 
FatalII !
(II! "
timeoutExceptionII" 2
)II2 3
;II3 4

MessageBoxJJ 
.JJ 
ShowJJ #
(JJ# $

PropertiesJJ$ .
.JJ. /
LangsJJ/ 4
.JJ4 5
	ResourcesJJ5 >
.JJ> ?
ServerTimeoutErrorJJ? Q
)JJQ R
;JJR S
}KK 
catchLL 
(LL %
EndpointNotFoundExceptionLL 0%
endpointNotFoundExceptionLL1 J
)LLJ K
{MM 
_loggerNN 
.NN 
FatalNN !
(NN! "%
endpointNotFoundExceptionNN" ;
)NN; <
;NN< =

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
CommunicationExceptionQQ -"
communicationExceptionQQ. D
)QQD E
{RR 
_loggerSS 
.SS 
FatalSS !
(SS! ""
communicationExceptionSS" 8
)SS8 9
;SS9 :

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
ÄÄ 	
private
ÇÇ 
bool
ÇÇ ,
UserNameWasChangedSuccessfully
ÇÇ 3
(
ÇÇ3 4
)
ÇÇ4 5
{
ÉÉ 	
MemoryGameService
ÑÑ 
.
ÑÑ /
!AccountModifiabilityServiceClient
ÑÑ ?/
!accountModifiabilityServiceClient
ÑÑ@ a
=
ÑÑb c
new
ÖÖ 
MemoryGameService
ÖÖ %
.
ÖÖ% &/
!AccountModifiabilityServiceClient
ÖÖ& G
(
ÖÖG H
)
ÖÖH I
;
ÖÖI J
return
áá /
!accountModifiabilityServiceClient
áá 4
.
áá4 5
ChangeUsername
áá5 C
(
ááC D
_userEmailAddress
ááD U
,
ááU V
_newUsername
ááW c
)
áác d
;
áád e
}
àà 	
private
ää 
void
ää 
GoToMainWindow
ää #
(
ää# $
)
ää$ %
{
ãã 	

MainWindow
åå 

mainWindow
åå !
=
åå" #
new
åå$ '

MainWindow
åå( 2
(
åå2 3
)
åå3 4
;
åå4 5

mainWindow
çç 
.
çç 
Show
çç 
(
çç 
)
çç 
;
çç 
this
éé 
.
éé 
Close
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
}
êê 
}ëë ò 
KC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Chat.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
Chat 
: 
Window  &
,& '
MemoryGameService( 9
.9 :)
ICommunicationServiceCallback: W
{ 
private 
MemoryGameService !
.! "&
CommunicationServiceClient" <
server= C
=D E
nullF J
;J K
private 
InstanceContext 
context  '
=( )
null* .
;. /
Sesion 
playerSesion 
= 
Sesion $
.$ %
	GetSesion% .
;. /
public 
Chat 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
context 
= 
new 
InstanceContext )
() *
this* .
). /
;/ 0
server 
= 
new 
MemoryGameService *
.* +&
CommunicationServiceClient+ E
(E F
contextF M
)M N
;N O
server 
. +
SubscribeToCommunicationService 2
(2 3
$str3 ;
); <
;< =
} 	
public 
void 
ReciveMessage !
(! "
string" (
username) 1
,1 2
string3 9
message: A
)A B
{ 	
string 
format 
= 
$str  
+! "
username# +
+, -
$str. 2
+3 4
message5 <
;< =
ChatBox 
. 

AppendText 
( 
format %
)% &
;& '
ChatBox 
. 
ScrollToEnd 
(  
)  !
;! "
} 	
private!! 
void!! $
SendMessageClickedButton!! -
(!!- .
object!!. 4
sender!!5 ;
,!!; <
RoutedEventArgs!!= L
e!!M N
)!!N O
{"" 	
string## 
message## 
=## !
TextBoxMessageContent## 2
.##2 3
Text##3 7
;##7 8
if$$ 
($$ 
!$$ 
string$$ 
.$$ 
IsNullOrEmpty$$ %
($$% &
message$$& -
)$$- .
)$$. /
{%% 
server&& 
.&& 
SendMessage&& "
(&&" #
playerSesion&&# /
.&&/ 0
Username&&0 8
,&&8 9
message&&: A
)&&A B
;&&B C
}'' !
TextBoxMessageContent(( !
.((! "
Clear((" '
(((' (
)((( )
;(() *
})) 	
private++ 
void++ 
EnterKeyPressed++ $
(++% &
object++& ,
sender++- 3
,++3 4
KeyEventArgs++5 A
e++B C
)++C D
{,, 	
if-- 
(-- 
e-- 
.-- 
Key-- 
==-- 
Key-- 
.-- 
Enter-- "
)--" #
{.. $
SendMessageClickedButton// (
(//( )
this//) -
,//- .
new/// 2
RoutedEventArgs//3 B
(//B C
)//C D
)//D E
;//E F
}00 
}11 	
public33 
void33 '
NotifyUserHasEnteredTheChat33 /
(33/ 0
string330 6
username337 ?
)33? @
{44 	
string55 
format55 
=55 
$str55  
+55! "
username55# +
+55, -
$str55. >
;55> ?
;55? @
Console66 
.66 
	WriteLine66 
(66 
format66 $
)66$ %
;66% &
}77 	
}88 
}99 ÿT
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\CreateGame.xaml.cs
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
CardDeckDTO6 A
	_cardDeckB K
;K L
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT h
)h i
;i j
public 

CreateGame 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_cardDecksInfoList 
=  
new! $ 
ObservableCollection% 9
<9 :
MemoryGameService: K
.K L
DataTransferObjectsL _
._ `
CardDeckInfoDto` o
>o p
(p q
)q r
;r s
LoadCardDecksInfo 
( 
) 
;  
	_username 
= 
Sesion 
. 
	GetSesion (
.( )
Username) 1
;1 2
} 	
public 
void #
CreateGameButtonClicked +
(+ ,
object, 2
sender3 9
,9 :
RoutedEventArgs; J
eK L
)L M
{ 	
MemoryGameService   
.   
DataTransferObjects   1
.  1 2
CardDeckInfoDto  2 A
cardDeckForMatch  B R
=  S T
(!! 
(!! 
MemoryGameService!! #
.!!# $
DataTransferObjects!!$ 7
.!!7 8
CardDeckInfoDto!!8 G
)!!G H
CardDeckComboBox!!H X
.!!X Y
SelectedItem!!Y e
)!!e f
;!!f g
var## '
numberOfPlayersSelectedItem## +
=##, -
(##. /
(##/ 0
ComboBoxItem##0 <
)##< =#
ComboBoxNumberOfPlayers##= T
.##T U
SelectedItem##U a
)##a b
.##b c
Tag##c f
;##f g
if%% 
(%% '
numberOfPlayersSelectedItem%% +
==%%, .
null%%/ 3
)%%3 4
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
.'': ;2
&NumberOfPlayersForMatchWereNotSelected''; a
)''a b
;''b c
}(( 
else(( 
if(( 
((( 
cardDeckForMatch(( %
==((& (
null(() -
)((- .
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
.**: ;%
NoCardDeckHasBeenSelected**; T
)**T U
;**U V
}++ 
else,, 
{-- +
_numberOfPlayersDesiredForMatch.. /
=..0 1
Int32..2 7
...7 8
Parse..8 =
(..= >'
numberOfPlayersSelectedItem..> Y
...Y Z
ToString..Z b
(..b c
)..c d
)..d e
;..e f
_selectedCardDeckId// #
=//$ %
cardDeckForMatch//& 6
.//6 7

CardDeckId//7 A
;//A B
try00 
{11 
CreateNewMatch22 "
(22" #
)22# $
;22$ %
GoToWaitingRoom33 #
(33# $
)33$ %
;33% &
}44 
catch55 
(55 %
EndpointNotFoundException55 0%
endpointNotFoundException551 J
)55J K
{66 
_logger77 
.77 
Fatal77 !
(77! "%
endpointNotFoundException77" ;
)77; <
;77< =

MessageBox88 
.88 
Show88 #
(88# $

Properties88$ .
.88. /
Langs88/ 4
.884 5
	Resources885 >
.88> ? 
ServerConnectionLost88? S
)88S T
;88T U
}99 
catch:: 
(:: 
TimeoutException:: '
timeoutException::( 8
)::8 9
{;; 
_logger<< 
.<< 
Fatal<< !
(<<! "
timeoutException<<" 2
)<<2 3
;<<3 4

MessageBox== 
.== 
Show== #
(==# $

Properties==$ .
.==. /
Langs==/ 4
.==4 5
	Resources==5 >
.==> ?
ServerTimeoutError==? Q
)==Q R
;==R S
}>> 
catch?? 
(?? "
CommunicationException?? -"
communicationException??. D
)??D E
{@@ 
_loggerAA 
.AA 
FatalAA !
(AA! ""
communicationExceptionAA" 8
)AA8 9
;AA9 :

MessageBoxBB 
.BB 
ShowBB #
(BB# $

PropertiesBB$ .
.BB. /
LangsBB/ 4
.BB4 5
	ResourcesBB5 >
.BB> ?$
CommunicationInterruptedBB? W
)BBW X
;BBX Y
}CC 
}DD 
}EE 	
privateGG 
voidGG 
CreateNewMatchGG #
(GG# $
)GG$ %
{HH 	
LoadCardDeckII 
(II 
)II 
;II 

_gameMatchJJ 
=JJ 
newJJ 
MemoryGameServiceJJ .
.JJ. /
DataTransferObjectsJJ/ B
.JJB C
MatchDtoJJC K
(JJK L
)JJL M
{KK 
MaxNumberOfPlayersLL "
=LL# $+
_numberOfPlayersDesiredForMatchLL% D
,LLD E
HostMM 
=MM 
	_usernameMM  
,MM  !

HasStartedNN 
=NN 
falseNN "
,NN" #
CardDeckDtoOO 
=OO 
	_cardDeckOO '
}PP 
;PP 
MemoryGameServiceRR 
.RR &
MatchCreationServiceClientRR 8'
_matchCreationServiceClientRR9 T
=RRU V
newSS 
MemoryGameServiceSS %
.SS% &&
MatchCreationServiceClientSS& @
(SS@ A
)SSA B
;SSB C'
_matchCreationServiceClientUU '
.UU' (
CreateNewMatchUU( 6
(UU6 7

_gameMatchUU7 A
)UUA B
;UUB C
}VV 	
privateXX 
voidXX 
LoadCardDecksInfoXX &
(XX& '
)XX' (
{YY 	
MemoryGameServiceZZ 
.ZZ *
CardDeckRetrieverServiceClientZZ <*
cardDeckRetrieverServiceClientZZ= [
=ZZ\ ]
new[[ 
MemoryGameService[[ %
.[[% &*
CardDeckRetrieverServiceClient[[& D
([[D E
)[[E F
;[[F G
MemoryGameService]] 
.]] 
DataTransferObjects]] 1
.]]1 2
CardDeckInfoDto]]2 A
[]]A B
]]]B C
cardDecksInfo]]D Q
=]]R S*
cardDeckRetrieverServiceClient^^ .
.^^. /
GetCardDecksInfo^^/ ?
(^^? @
)^^@ A
;^^A B
for`` 
(`` 
int`` 
index`` 
=`` 
$num`` 
;`` 
index`` $
<``% &
cardDecksInfo``' 4
.``4 5
Length``5 ;
;``; <
index``= B
++``B D
)``D E
{aa 
_cardDecksInfoListbb "
.bb" #
Addbb# &
(bb& '
cardDecksInfobb' 4
[bb4 5
indexbb5 :
]bb: ;
)bb; <
;bb< =
}cc 
CardDeckComboBoxdd 
.dd 
ItemsSourcedd (
=dd) *
_cardDecksInfoListdd+ =
;dd= >
CardDeckComboBoxee 
.ee 
DisplayMemberPathee .
=ee/ 0
$stree1 ?
;ee? @
CardDeckComboBoxff 
.ff 
SelectedValuePathff .
=ff/ 0
$strff1 =
;ff= >
}gg 	
privateii 
voidii 
LoadCardDeckii !
(ii! "
)ii" #
{jj 	
MemoryGameServicekk 
.kk *
CardDeckRetrieverServiceClientkk <*
cardDeckRetrieverServiceClientkk= [
=kk\ ]
newll 
MemoryGameServicell %
.ll% &*
CardDeckRetrieverServiceClientll& D
(llD E
)llE F
;llF G
	_cardDeckmm 
=mm *
cardDeckRetrieverServiceClientmm 6
.mm6 7
GetCardDeckAndCardsmm7 J
(mmJ K
_selectedCardDeckIdmmK ^
)mm^ _
;mm_ `
}nn 	
privatepp 
voidpp 
GoToWaitingRoompp $
(pp$ %
)pp% &
{qq 	
WaitingRoomrr 
waitingRoomViewrr '
=rr( )
newrr* -
WaitingRoomrr. 9
(rr9 :
)rr: ;
{ss 
GameMatchDtott 
=tt 

_gameMatchtt )
}uu 
;uu 
waitingRoomViewww 
.ww 
Showww  
(ww  !
)ww! "
;ww" #
thisxx 
.xx 
Closexx 
(xx 
)xx 
;xx 
}yy 	
public{{ 
void{{ 
BackButtonClicked{{ %
({{% &
object{{& ,
sender{{- 3
,{{3 4
RoutedEventArgs{{5 D
e{{E F
){{F G
{|| 	
MainMenu}} 
mainMenuView}} !
=}}" #
new}}$ '
MainMenu}}( 0
(}}0 1
)}}1 2
;}}2 3
mainMenuView~~ 
.~~ 
Show~~ 
(~~ 
)~~ 
;~~  
this 
. 
Close 
( 
) 
; 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ¨J
RC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ExpelPlayer.xaml.cs
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
public 
InstanceContext 
Context &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
MemoryGameService !
.! "
MatchServiceClient" 4
_matchServiceClient5 H
;H I
public  
ObservableCollection #
<# $
string$ *
>* +
players, 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
=B C
newD G 
ObservableCollectionH \
<\ ]
string] c
>c d
(d e
)e f
;f g
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int "
NumberOfPlayersInMatch )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
PlayerUsername $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ExpelPlayer 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
WindowLoaded !
(! "
object" (
sender) /
,/ 0
RoutedEventArgs1 @
eA B
)B C
{ 	
_matchServiceClient 
=  !
new" %
MemoryGameService& 7
.7 8
MatchServiceClient8 J
(J K
ContextK R
)R S
;S T
try 
{ "
LoadUsernamesToBeVoted &
(& '
)' (
;( )
}   
catch!! 
(!! %
EndpointNotFoundException!! ,
)!!, -
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
ServerConnectionLost##; O
)##O P
;##P Q
}$$ 
catch%% 
(%% 
TimeoutException%% #
)%%# $
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
ServerTimeoutError''; M
)''M N
;''N O
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
void// "
LoadUsernamesToBeVoted// +
(//+ ,
)//, -
{00 	
IList11 
<11 
string11 
>11 #
playersInMatchUsernames11 1
=112 3
_matchServiceClient114 G
.11G H1
%GetUsernamesOfPlayersConnectedToMatch11H m
(11m n
	MatchHost11n w
)11w x
;11x y
IList22 
<22 
string22 
>22 
playersVoted22 &
=22' (
_matchServiceClient22) <
.22< =
GetPlayersVoted22= L
(22L M
	MatchHost22M V
,22V W
PlayerUsername22X f
)22f g
;22g h
foreach33 
(33 
var33 
playerUsername33 '
in33( *#
playersInMatchUsernames33+ B
)33B C
{44 
if55 
(55 
playerUsername55 "
!=55# %
PlayerUsername55& 4
)554 5
{66 
players77 
.77 
Add77 
(77  
playerUsername77  .
)77. /
;77/ 0
}88 
}99 
if:: 
(:: 
playersVoted:: 
.:: 
Count:: "
!=::# %
$num::& '
)::' (
{;; 
for<< 
(<< 
int<< 
index<< 
=<<  
$num<<! "
;<<" #
index<<$ )
<<<* +#
playersInMatchUsernames<<, C
.<<C D
Count<<D I
;<<I J
index<<K P
++<<P R
)<<R S
{== 
for>> 
(>> 
int>> 
playersVotedIndex>> .
=>>/ 0
$num>>1 2
;>>2 3
playersVotedIndex>>4 E
<>>F G
playersVoted>>H T
.>>T U
Count>>U Z
;>>Z [
playersVotedIndex>>\ m
++>>m o
)>>o p
{?? 
if@@ 
(@@ #
playersInMatchUsernames@@ 3
[@@3 4
index@@4 9
]@@9 :
.@@: ;
Equals@@; A
(@@A B
playersVoted@@B N
[@@N O
playersVotedIndex@@O `
]@@` a
)@@a b
)@@b c
{AA 
playersBB #
.BB# $
RemoveBB$ *
(BB* +
playersVotedBB+ 7
[BB7 8
playersVotedIndexBB8 I
]BBI J
)BBJ K
;BBK L
}CC 
}DD 
}EE 
}FF 
ExpelPlayerDataGridGG 
.GG  
ItemsSourceGG  +
=GG, -
playersGG. 5
;GG5 6
}HH 	
privateJJ 
voidJJ $
ExpelPlayerButtonClickedJJ -
(JJ- .
objectJJ. 4
senderJJ5 ;
,JJ; <
RoutedEventArgsJJ= L
eJJM N
)JJN O
{KK 	
tryLL 
{MM 
VoteToExpelPlayerNN !
(NN! "
)NN" #
;NN# $
}OO 
catchPP 
(PP %
EndpointNotFoundExceptionPP ,
)PP, -
{QQ 

MessageBoxRR 
.RR 
ShowRR 
(RR  

PropertiesRR  *
.RR* +
LangsRR+ 0
.RR0 1
	ResourcesRR1 :
.RR: ; 
ServerConnectionLostRR; O
)RRO P
;RRP Q
}SS 
catchTT 
(TT 
TimeoutExceptionTT #
)TT# $
{UU 

MessageBoxVV 
.VV 
ShowVV 
(VV  

PropertiesVV  *
.VV* +
LangsVV+ 0
.VV0 1
	ResourcesVV1 :
.VV: ;
ServerTimeoutErrorVV; M
)VVM N
;VVN O
}WW 
catchXX 
(XX "
CommunicationExceptionXX )
)XX) *
{YY 

MessageBoxZZ 
.ZZ 
ShowZZ 
(ZZ  

PropertiesZZ  *
.ZZ* +
LangsZZ+ 0
.ZZ0 1
	ResourcesZZ1 :
.ZZ: ;$
CommunicationInterruptedZZ; S
)ZZS T
;ZZT U
}[[ 
finally\\ 
{]] 
this^^ 
.^^ 
Close^^ 
(^^ 
)^^ 
;^^ 
}__ 
}`` 	
privatebb 
voidbb 
VoteToExpelPlayerbb &
(bb& '
)bb' (
{cc 	
stringdd 
selectedPlayerdd !
=dd" #
ExpelPlayerDataGriddd$ 7
.dd7 8
SelectedItemdd8 D
.ddD E
ToStringddE M
(ddM N
)ddN O
;ddO P
ExpelVoteDtoee 
	expelVoteee "
=ee# $
newee% (
ExpelVoteDtoee) 5
(ee5 6
)ee6 7
{ff 
Hostgg 
=gg 
	MatchHostgg  
,gg  !!
UsernameOfExpelPlayerhh %
=hh& '
selectedPlayerhh( 6
,hh6 7!
UsernameOfVoterPlayerii %
=ii& '
PlayerUsernameii( 6
}jj 
;jj 
_matchServiceClientkk 
.kk  
ExpelPlayerkk  +
(kk+ ,
	expelVotekk, 5
)kk5 6
;kk6 7
}ll 	
privatenn 
voidnn 
BackButtonClickednn &
(nn& '
objectnn' -
sendernn. 4
,nn4 5
RoutedEventArgsnn6 E
ennF G
)nnG H
{oo 	
GameOptionspp 
gameOptionsViewpp '
=pp( )
newpp* -
GameOptionspp. 9
(pp9 :
)pp: ;
{qq 
	MatchHostrr 
=rr 
thisrr  
.rr  !
	MatchHostrr! *
,rr* +"
NumberOfPlayersInMatchss &
=ss' (
thisss) -
.ss- ."
NumberOfPlayersInMatchss. D
,ssD E
PlayerUsernamett 
=tt  
thistt! %
.tt% &
PlayerUsernamett& 4
,tt4 5
Contextuu 
=uu 
thisuu 
.uu 
Contextuu &
}vv 
;vv 
gameOptionsViewww 
.ww 
Showww  
(ww  !
)ww! "
;ww" #
thisxx 
.xx 
Closexx 
(xx 
)xx 
;xx 
}yy 	
}zz 
}{{ Å(
RC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\GameOptions.xaml.cs
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
public 
InstanceContext 
Context &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
MemoryGameService !
.! "
MatchServiceClient" 4
_matchServiceClient5 H
;H I
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int "
NumberOfPlayersInMatch )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
PlayerUsername $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
GameOptions 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
WindowLoaded !
(! "
object" (
sender) /
,/ 0
	EventArgs1 :
e; <
)< =
{ 	
_matchServiceClient 
=  !
new" %
MemoryGameService& 7
.7 8
MatchServiceClient8 J
(J K
ContextK R
)R S
;S T
if 
( "
NumberOfPlayersInMatch &
<' (
$num) *
)* +
{ 
ExpelPlayerButton !
.! "

Visibility" ,
=- .

Visibility/ 9
.9 :
	Collapsed: C
;C D
} 
} 	
private   
void   "
LeaveGameButtonClicked   +
(  + ,
object  , 2
sender  3 9
,  9 :
RoutedEventArgs  ; J
e  K L
)  L M
{!! 	
try"" 
{## 
_matchServiceClient$$ #
.$$# $

LeaveMatch$$$ .
($$. /
	MatchHost$$/ 8
,$$8 9
PlayerUsername$$: H
)$$H I
;$$I J
}%% 
catch&& 
(&& %
EndpointNotFoundException&& ,
)&&, -
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
ServerConnectionLost((; O
)((O P
;((P Q
})) 
catch** 
(** 
TimeoutException** #
)**# $
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
ServerTimeoutError,,; M
),,M N
;,,N O
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
}11 
finally22 
{33 
this44 
.44 
Close44 
(44 
)44 
;44 
}55 
}66 	
private88 
void88 $
ExpelPlayerButtonClicked88 -
(88- .
object88. 4
sender885 ;
,88; <
RoutedEventArgs88= L
e88M N
)88N O
{99 	
ExpelPlayer:: 
expelPlayerView:: '
=::( )
new::* -
ExpelPlayer::. 9
(::9 :
)::: ;
{;; 
	MatchHost<< 
=<< 
this<<  
.<<  !
	MatchHost<<! *
,<<* +"
NumberOfPlayersInMatch== &
===' (
this==) -
.==- ."
NumberOfPlayersInMatch==. D
,==D E
PlayerUsername>> 
=>>  
this>>! %
.>>% &
PlayerUsername>>& 4
,>>4 5
Context?? 
=?? 
this?? 
.?? 
Context?? &
}@@ 
;@@ 
expelPlayerViewAA 
.AA 
ShowAA  
(AA  !
)AA! "
;AA" #
thisBB 
.BB 
CloseBB 
(BB 
)BB 
;BB 
}CC 	
privateEE 
voidEE 
BackButtonClickedEE &
(EE& '
objectEE' -
senderEE. 4
,EE4 5
RoutedEventArgsEE6 E
eEEF G
)EEG H
{FF 	
thisGG 
.GG 
CloseGG 
(GG 
)GG 
;GG 
}HH 	
}II 
}JJ ó^
OC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\JoinGame.xaml.cs
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
;' (
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT f
)f g
;g h
public 
JoinGame 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "(
_matchDiscoveryServiceClient (
=) *
new+ .
MemoryGameService/ @
.@ A'
MatchDiscoveryServiceClientA \
(\ ]
)] ^
;^ _
LoadActiveMatches 
( 
) 
;  
} 	
private 
void 
LoadActiveMatches &
(& '
)' (
{ 	
try 
{ *
PopulateTableWithActiveMatches .
(. /
)/ 0
;0 1
} 
catch 
( 
TimeoutException #
timeoutException$ 4
)4 5
{   
_logger!! 
.!! 
Fatal!! 
(!! 
timeoutException!! .
)!!. /
;!!/ 0

MessageBox"" 
."" 
Show"" 
(""  

Properties""  *
.""* +
Langs""+ 0
.""0 1
	Resources""1 :
."": ;
ServerTimeoutError""; M
)""M N
;""N O
}## 
catch$$ 
($$ %
EndpointNotFoundException$$ ,%
endpointNotFoundException$$- F
)$$F G
{%% 
_logger&& 
.&& 
Fatal&& 
(&& %
endpointNotFoundException&& 7
)&&7 8
;&&8 9

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
CommunicationException)) )"
communicationException))* @
)))@ A
{** 
_logger++ 
.++ 
Fatal++ 
(++ "
communicationException++ 4
)++4 5
;++5 6

MessageBox,, 
.,, 
Show,, 
(,,  

Properties,,  *
.,,* +
Langs,,+ 0
.,,0 1
	Resources,,1 :
.,,: ;$
CommunicationInterrupted,,; S
),,S T
;,,T U
}-- 
}.. 	
private00 
void00 *
PopulateTableWithActiveMatches00 3
(003 4
)004 5
{11 	 
ObservableCollection22  
<22  !
MatchDto22! )
>22) *
listOfActiveMatches22+ >
=22? @
new22A D 
ObservableCollection22E Y
<22Y Z
MatchDto22Z b
>22b c
(22c d
)22d e
;22e f
MatchDto33 
[33 
]33 
activeMatches33 $
=33% &(
_matchDiscoveryServiceClient33' C
.33C D
GetActiveMatches33D T
(33T U
)33U V
;33V W
for55 
(55 
int55 
indexOfActualMatch55 '
=55( )
$num55* +
;55+ ,
indexOfActualMatch55- ?
<55@ A
activeMatches55B O
.55O P
Length55P V
;55V W
indexOfActualMatch55X j
++55j l
)55l m
{66 
listOfActiveMatches77 #
.77# $
Add77$ '
(77' (
activeMatches77( 5
[775 6
indexOfActualMatch776 H
]77H I
)77I J
;77J K
}88 
GamesDataGrid:: 
.:: 
ItemsSource:: %
=::& '
listOfActiveMatches::( ;
;::; <
};; 	
private== 
void== 
JoinButtonClicked== &
(==& '
object==' -
sender==. 4
,==4 5
RoutedEventArgs==6 E
e==F G
)==G H
{>> 	
_selectedMatch?? 
=?? 
(?? 
MatchDto?? &
)??& '
GamesDataGrid??' 4
.??4 5
SelectedItem??5 A
;??A B
try@@ 
{AA 
	JoinMatchBB 
(BB 
)BB 
;BB 
}CC 
catchDD 
(DD 
TimeoutExceptionDD #
timeoutExceptionDD$ 4
)DD4 5
{EE 
_loggerFF 
.FF 
FatalFF 
(FF 
timeoutExceptionFF .
)FF. /
;FF/ 0

MessageBoxGG 
.GG 
ShowGG 
(GG  

PropertiesGG  *
.GG* +
LangsGG+ 0
.GG0 1
	ResourcesGG1 :
.GG: ;
ServerTimeoutErrorGG; M
)GGM N
;GGN O
}HH 
catchII 
(II %
EndpointNotFoundExceptionII ,%
endpointNotFoundExceptionII- F
)IIF G
{JJ 
_loggerKK 
.KK 
FatalKK 
(KK %
endpointNotFoundExceptionKK 7
)KK7 8
;KK8 9

MessageBoxLL 
.LL 
ShowLL 
(LL  

PropertiesLL  *
.LL* +
LangsLL+ 0
.LL0 1
	ResourcesLL1 :
.LL: ; 
ServerConnectionLostLL; O
)LLO P
;LLP Q
}MM 
catchNN 
(NN "
CommunicationExceptionNN )"
communicationExceptionNN* @
)NN@ A
{OO 
_loggerPP 
.PP 
FatalPP 
(PP "
communicationExceptionPP 4
)PP4 5
;PP5 6

MessageBoxQQ 
.QQ 
ShowQQ 
(QQ  

PropertiesQQ  *
.QQ* +
LangsQQ+ 0
.QQ0 1
	ResourcesQQ1 :
.QQ: ;$
CommunicationInterruptedQQ; S
)QQS T
;QQT U
}RR 
}SS 	
privateUU 
voidUU 
	JoinMatchUU 
(UU 
)UU  
{VV 	
ifWW 
(WW 
_selectedMatchWW 
==WW !
nullWW" &
)WW& '
{XX 

MessageBoxYY 
.YY 
ShowYY 
(YY  

PropertiesYY  *
.YY* +
LangsYY+ 0
.YY0 1
	ResourcesYY1 :
.YY: ;
NoMatchWasSelectedYY; M
)YYM N
;YYN O
}ZZ 
else[[ 
{\\ 
try]] 
{^^ 
bool__ 
playerCanJoinToGame__ ,
=__- .
PlayerCanJoinToGame__/ B
(__B C
)__C D
;__D E
if`` 
(`` 
playerCanJoinToGame`` +
)``+ ,
{aa 
GoToWaitingRoombb '
(bb' (
)bb( )
;bb) *
}cc 
elsedd 
{ee 

MessageBoxff "
.ff" #
Showff# '
(ff' (

Propertiesff( 2
.ff2 3
Langsff3 8
.ff8 9
	Resourcesff9 B
.ffB C
FullGameMessageffC R
)ffR S
;ffS T
}gg 
}hh 
catchii 
(ii 
FaultExceptionii %
<ii% &

MemoryGameii& 0
.ii0 1
MemoryGameServiceii1 B
.iiB C
FaultsiiC I
.iiI J"
MatchAccessDeniedFaultiiJ `
>ii` a&
matchAccessDeniedExceptioniib |
)ii| }
{jj 
_loggerkk 
.kk 
Fatalkk !
(kk! "&
matchAccessDeniedExceptionkk" <
)kk< =
;kk= >

MessageBoxll 
.ll 
Showll #
(ll# $

Propertiesll$ .
.ll. /
Langsll/ 4
.ll4 5
	Resourcesll5 >
.ll> ?)
TriedToJoinToNonexistentMatchll? \
)ll\ ]
;ll] ^
}mm 
catchnn 
(nn 
TimeoutExceptionnn '
timeoutExceptionnn( 8
)nn8 9
{oo 
_loggerpp 
.pp 
Fatalpp !
(pp! "
timeoutExceptionpp" 2
)pp2 3
;pp3 4

MessageBoxqq 
.qq 
Showqq #
(qq# $

Propertiesqq$ .
.qq. /
Langsqq/ 4
.qq4 5
	Resourcesqq5 >
.qq> ?
ServerTimeoutErrorqq? Q
)qqQ R
;qqR S
}rr 
catchss 
(ss %
EndpointNotFoundExceptionss 0%
endpointNotFoundExceptionss1 J
)ssJ K
{tt 
_loggeruu 
.uu 
Fataluu !
(uu! "%
endpointNotFoundExceptionuu" ;
)uu; <
;uu< =

MessageBoxvv 
.vv 
Showvv #
(vv# $

Propertiesvv$ .
.vv. /
Langsvv/ 4
.vv4 5
	Resourcesvv5 >
.vv> ? 
ServerConnectionLostvv? S
)vvS T
;vvT U
}ww 
catchxx 
(xx "
CommunicationExceptionxx -"
communicationExceptionxx. D
)xxD E
{yy 
_loggerzz 
.zz 
Fatalzz !
(zz! ""
communicationExceptionzz" 8
)zz8 9
;zz9 :

MessageBox{{ 
.{{ 
Show{{ #
({{# $

Properties{{$ .
.{{. /
Langs{{/ 4
.{{4 5
	Resources{{5 >
.{{> ?$
CommunicationInterrupted{{? W
){{W X
;{{X Y
}|| 
}}} 
}~~ 	
private
ÄÄ 
bool
ÄÄ !
PlayerCanJoinToGame
ÄÄ (
(
ÄÄ( )
)
ÄÄ) *
{
ÅÅ 	
string
ÇÇ 
	matchHost
ÇÇ 
=
ÇÇ 
_selectedMatch
ÇÇ -
.
ÇÇ- .
Host
ÇÇ. 2
;
ÇÇ2 3
bool
ÉÉ 
canJoinToGame
ÉÉ 
=
ÉÉ  *
_matchDiscoveryServiceClient
ÉÉ! =
.
ÉÉ= >
CanJoin
ÉÉ> E
(
ÉÉE F
	matchHost
ÉÉF O
)
ÉÉO P
;
ÉÉP Q
return
ÑÑ 
canJoinToGame
ÑÑ  
;
ÑÑ  !
}
ÖÖ 	
private
áá 
void
áá 
GoToWaitingRoom
áá $
(
áá$ %
)
áá% &
{
àà 	
WaitingRoom
ââ 
waitingRoomView
ââ '
=
ââ( )
new
ââ* -
WaitingRoom
ââ. 9
(
ââ9 :
)
ââ: ;
{
ää 
GameMatchDto
ãã 
=
ãã 
_selectedMatch
ãã -
}
åå 
;
åå 
waitingRoomView
çç 
.
çç 
Show
çç  
(
çç  !
)
çç! "
;
çç" #
this
éé 
.
éé 
Close
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
private
ëë 
void
ëë 
BackButtonClicked
ëë &
(
ëë& '
object
ëë' -
sender
ëë. 4
,
ëë4 5
RoutedEventArgs
ëë6 E
e
ëëF G
)
ëëG H
{
íí 	
MainMenu
ìì 
mainMenuView
ìì !
=
ìì" #
new
ìì$ '
MainMenu
ìì( 0
(
ìì0 1
)
ìì1 2
;
ìì2 3
mainMenuView
îî 
.
îî 
Show
îî 
(
îî 
)
îî 
;
îî  
this
ïï 
.
ïï 
Close
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
}
óó 
}òò æa
LC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Login.xaml.cs
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
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT c
)c d
;d e
private &
AccessibilityServiceClient *'
_accessibilityServiceClient+ F
;F G
public 
Login 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "'
_accessibilityServiceClient '
=( )
new* -&
AccessibilityServiceClient. H
(H I
)I J
;J K
} 	
private 
void 
GetDataFromFields &
(& '
)' (
{ 	
	_username 
= 
TextBoxUsername '
.' (
Text( ,
;, -
	_password 
= 
PasswordBoxPassword +
.+ ,
Password, 4
;4 5
}   	
private"" 
void"" 
SetFormValidation"" &
(""& '
)""' (
{## 	
GetDataFromFields$$ 
($$ 
)$$ 
;$$  
_ruleSet%% 
=%% 
new%% 
RuleSet%% "
(%%" #
)%%# $
;%%$ %
_ruleSet&& 
.&& 
AddValidationRule&& &
(&&& '
new&&' *#
NonEmptyFieldValidation&&+ B
(&&B C
	_username&&C L
)&&L M
)&&M N
;&&N O
_ruleSet'' 
.'' 
AddValidationRule'' &
(''& '
new''' *#
NonEmptyFieldValidation''+ B
(''B C
	_password''C L
)''L M
)''M N
;''N O
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
LoginButtonClicked33 '
(33' (
object33( .
sender33/ 5
,335 6
RoutedEventArgs337 F
e33G H
)33H I
{44 	
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
{77 
try88 
{99 
	LoginUser:: 
(:: 
):: 
;::  
};; 
catch<< 
(<< %
EndpointNotFoundException<< 0
)<<0 1
{== 

MessageBox>> 
.>> 
Show>> #
(>># $

Properties>>$ .
.>>. /
Langs>>/ 4
.>>4 5
	Resources>>5 >
.>>> ? 
ServerConnectionLost>>? S
)>>S T
;>>T U
}?? 
catch@@ 
(@@ 
TimeoutException@@ '
timeoutException@@( 8
)@@8 9
{AA 
_loggerBB 
.BB 
FatalBB !
(BB! "
timeoutExceptionBB" 2
)BB2 3
;BB3 4

MessageBoxCC 
.CC 
ShowCC #
(CC# $

PropertiesCC$ .
.CC. /
LangsCC/ 4
.CC4 5
	ResourcesCC5 >
.CC> ?
ServerTimeoutErrorCC? Q
)CCQ R
;CCR S
}DD 
catchEE 
(EE 
SystemEE 
.EE 
ServiceModelEE *
.EE* +"
CommunicationExceptionEE+ A"
communicationExceptionEEB X
)EEX Y
{FF 
_loggerGG 
.GG 
FatalGG !
(GG! ""
communicationExceptionGG" 8
)GG8 9
;GG9 :

MessageBoxHH 
.HH 
ShowHH #
(HH# $

PropertiesHH$ .
.HH. /
LangsHH/ 4
.HH4 5
	ResourcesHH5 >
.HH> ?$
CommunicationInterruptedHH? W
)HHW X
;HHX Y
}II 
}JJ 
elseKK 
{LL 
ShowErrorMessageMM  
(MM  !
)MM! "
;MM" #
}NN 
}OO 	
publicRR 
stringRR 
GetUserEmailAdressRR (
(RR( )
)RR) *
{SS 	
stringUU 
usernameUU 
=UU 
TextBoxUsernameUU -
.UU- .
TextUU. 2
;UU2 3
stringVV 
emailAddressVV 
=VV  !'
_accessibilityServiceClientVV" =
.VV= >
GetUserEmailAddressVV> Q
(VVQ R
usernameVVR Z
)VVZ [
;VV[ \
returnWW 
emailAddressWW 
;WW  
}XX 	
privateZZ 
voidZZ 
	LoginUserZZ 
(ZZ 
)ZZ  
{[[ 	
if\\ 
(\\ 
LoginIsValid\\ 
(\\ 
)\\ 
)\\ 
{]] 
if^^ 
(^^ 
EmailIsVerified^^ #
(^^# $
)^^$ %
)^^% &
{__ 
string`` 
emailAddress`` '
=``( )
GetUserEmailAdress``* <
(``< =
)``= >
;``> ?
Sesionaa 
playerSesionaa '
=aa( )
Sesionaa* 0
.aa0 1
	GetSesionaa1 :
;aa: ;
playerSesionbb  
.bb  !
Usernamebb! )
=bb* +
	_usernamebb, 5
;bb5 6
playerSesioncc  
.cc  !
EmailAddresscc! -
=cc. /
emailAddresscc0 <
;cc< =
GoToMainMenudd  
(dd  !
)dd! "
;dd" #
}ee 
elseff 
{gg 
GoToActivationTokenhh '
(hh' (
)hh( )
;hh) *
}ii 
}jj 
elsekk 
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
.mm: ;"
NonMatchingCredentialsmm; Q
)mmQ R
;mmR S
}nn 
}oo 	
publicqq 
boolqq 
LoginIsValidqq  
(qq  !
)qq! "
{rr 	
BCryptHashGeneratorss 
bCryptHashGeneratorss  3
=ss4 5
newss6 9
BCryptHashGeneratorss: M
(ssM N
)ssN O
;ssO P
stringtt 
salttt 
=tt 
GetPasswordSalttt )
(tt) *
)tt* +
;tt+ ,
stringuu 
encryptedPassworduu $
=uu% &
bCryptHashGeneratoruu' :
.uu: ;#
GenerateEncryptedStringuu; R
(uuR S
	_passworduuS \
,uu\ ]
saltuu^ b
)uub c
;uuc d&
AccessibilityServiceClientvv &&
accessibilityServiceClientvv' A
=vvB C
newvvD G&
AccessibilityServiceClientvvH b
(vvb c
)vvc d
;vvd e
boolww 
hasAccessRightsww  
=ww! "&
accessibilityServiceClientww# =
.ww= >
HasAccessRightsww> M
(wwM N
	_usernamewwN W
,wwW X
encryptedPasswordwwY j
)wwj k
;wwk l
returnxx 
hasAccessRightsxx "
;xx" #
}yy 	
private{{ 
string{{ 
GetPasswordSalt{{ &
({{& '
){{' (
{|| 	
MemoryGameService}} 
.}} &
AccessibilityServiceClient}} 8&
accessibilityServiceClient}}9 S
=}}T U
new~~ 
MemoryGameService~~ %
.~~% &&
AccessibilityServiceClient~~& @
(~~@ A
)~~A B
;~~B C
string 
salt 
= &
accessibilityServiceClient 4
.4 5
GetSalt5 <
(< =
	_username= F
)F G
;G H
return
ÄÄ 
salt
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
bool
ÉÉ 
EmailIsVerified
ÉÉ #
(
ÉÉ# $
)
ÉÉ$ %
{
ÑÑ 	
string
ÖÖ 
username
ÖÖ 
=
ÖÖ 
TextBoxUsername
ÖÖ -
.
ÖÖ- .
Text
ÖÖ. 2
;
ÖÖ2 3
bool
ÜÜ 
emailIsVerified
ÜÜ  
=
ÜÜ! ")
_accessibilityServiceClient
ÜÜ# >
.
ÜÜ> ?

IsVerified
ÜÜ? I
(
ÜÜI J
username
ÜÜJ R
)
ÜÜR S
;
ÜÜS T
return
áá 
emailIsVerified
áá "
;
áá" #
}
àà 	
public
ää 
void
ää 
GoToMainMenu
ää  
(
ää  !
)
ää! "
{
ãã 	
MainMenu
åå 
mainMenuView
åå !
=
åå" #
new
åå$ '
MainMenu
åå( 0
(
åå0 1
)
åå1 2
;
åå2 3
mainMenuView
çç 
.
çç 
Show
çç 
(
çç 
)
çç 
;
çç  
this
éé 
.
éé 
Close
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
private
ëë 
void
ëë )
RecoverPasswordLabelClicked
ëë 0
(
ëë0 1
object
ëë1 7
sender
ëë8 >
,
ëë> ?
RoutedEventArgs
ëë@ O
e
ëëP Q
)
ëëQ R
{
íí 	
RecoverPassword
ìì 
mainWindowView
ìì *
=
ìì+ ,
new
ìì- 0
RecoverPassword
ìì1 @
(
ìì@ A
)
ììA B
;
ììB C
mainWindowView
îî 
.
îî 
Show
îî 
(
îî  
)
îî  !
;
îî! "
this
ïï 
.
ïï 
Close
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
private
òò 
void
òò 
BackButtonClicked
òò &
(
òò& '
object
òò' -
sender
òò. 4
,
òò4 5
RoutedEventArgs
òò6 E
e
òòF G
)
òòG H
{
ôô 	

MainWindow
öö 
mainWindowView
öö %
=
öö& '
new
öö( +

MainWindow
öö, 6
(
öö6 7
)
öö7 8
;
öö8 9
mainWindowView
õõ 
.
õõ 
Show
õõ 
(
õõ  
)
õõ  !
;
õõ! "
this
úú 
.
úú 
Close
úú 
(
úú 
)
úú 
;
úú 
}
ùù 	
private
üü 
void
üü !
GoToActivationToken
üü (
(
üü( )
)
üü) *
{
†† 	
string
°° 
emailAddress
°° 
=
°°  ! 
GetUserEmailAdress
°°" 4
(
°°4 5
)
°°5 6
;
°°6 7
ActivationToken
¢¢ #
activationTokenWindow
¢¢ 1
=
¢¢2 3
new
££ 
ActivationToken
££ #
(
££# $
emailAddress
££$ 0
,
££0 1
TextBoxUsername
££2 A
.
££A B
Text
££B F
)
££F G
;
££G H#
activationTokenWindow
§§ !
.
§§! "
Show
§§" &
(
§§& '
)
§§' (
;
§§( )
this
•• 
.
•• 
Close
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 	
}
ßß 
}®® •
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
}"" 	
private$$ 
void$$ '
ChangeUsernameButtonClicked$$ 0
($$0 1
object$$1 7
sender$$8 >
,$$> ?
RoutedEventArgs$$@ O
e$$P Q
)$$Q R
{%% 	
ChangeUsername&& 
changeUsernameView&& -
=&&. /
new&&0 3
ChangeUsername&&4 B
(&&B C
)&&C D
;&&D E
changeUsernameView'' 
.'' 
Show'' #
(''# $
)''$ %
;''% &
this(( 
.(( 
Close(( 
((( 
)(( 
;(( 
})) 	
}++ 
},, ˆ∆
LC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Match.xaml.cs
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
{ 
private 
InstanceContext 
_context  (
=) *
null+ /
;/ 0
private 
MatchServiceClient "
_matchServiceClient# 6
;6 7
public 
CardDeckDTO 
CardDeck #
{$ %
get& )
;) *
set+ .
;. /
}0 1
private 
List 
< 
	ImageCard 
> 
_imageCards  +
;+ ,
private 
int %
_numberOfMovementsAllowed -
;- .
private 
IList 
< 
	ImageCard 
>  &
_cardsFlippedInCurrentTurn! ;
;; <
private 
bool !
_playerHasFormedAPair *
;* +
public 
string 
[ 
] 
Players 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
NumberOfPlayers "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
private 
bool 0
$_windowIsBeingClosedByTheCloseButton 9
;9 :
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT c
)c d
;d e
public 
Match 
( 
) 
{   	
InitializeComponent!! 
(!!  
)!!  !
;!!! "
_context"" 
="" 
new"" 
InstanceContext"" *
(""* +
this""+ /
)""/ 0
;""0 1
_matchServiceClient## 
=##  !
new##" %
MemoryGameService##& 7
.##7 8
MatchServiceClient##8 J
(##J K
_context##K S
)##S T
;##T U
_imageCards$$ 
=$$ 
new$$ 
List$$ "
<$$" #
	ImageCard$$# ,
>$$, -
($$- .
)$$. /
;$$/ 0%
_numberOfMovementsAllowed%% %
=%%& '
$num%%( )
;%%) *&
_cardsFlippedInCurrentTurn&& &
=&&' (
new&&) ,
List&&- 1
<&&1 2
	ImageCard&&2 ;
>&&; <
(&&< =
)&&= >
;&&> ?!
_playerHasFormedAPair'' !
=''" #
false''$ )
;'') *0
$_windowIsBeingClosedByTheCloseButton(( 0
=((1 2
true((3 7
;((7 8
})) 	
private++ 
void++ 
DrawPlayersNames++ %
(++% &
)++& '
{,, 	
UserBoxDrawer-- 
userBoxDrawer-- '
=--( )
new--* -
UserBoxDrawer--. ;
(--; <
)--< =
{.. 
GridToBeDrawnOn// 
=//  !
MainGrid//" *
,//* +
PlayersUsernames00  
=00! "
Players00# *
}11 
;11 
userBoxDrawer22 
.22 
Draw22 
(22 
)22  
;22  !
}33 	
private55 
void55 
DrawGameBoard55 "
(55" #
)55# $
{66 	
GameBoardDrawer77 
gameBoardDrawer77 +
=77, -
new77. 1
GameBoardDrawer772 A
(77A B
)77B C
{88 
GridToBeDrawnOn99 
=99  !
GameBoardGrid99" /
,99/ 0

ImageCards:: 
=:: 
_imageCards:: (
,::( )
CardDeck;; 
=;; 
CardDeck;; #
,;;# $
NumberOfColumns<< 
=<<  !
$num<<" #
}== 
;== 
gameBoardDrawer>> 
.>> 
Draw>>  
(>>  !
)>>! "
;>>" #
gameBoardDrawer?? 
.?? !
SetEventOnCardClicked?? 1
(??1 2
GetClickedCard??2 @
)??@ A
;??A B
}@@ 	
privateBB 
voidBB 
GetClickedCardBB #
(BB# $
objectBB$ *
senderBB+ 1
,BB1 2
	EventArgsBB3 <
eBB= >
)BB> ?
{CC 	
	ImageCardDD 
cardClickedDD !
=DD" #
(DD$ %
(DD% &
	ImageCardDD& /
)DD/ 0
senderDD0 6
)DD6 7
;DD7 8
boolEE !
cardHasNotBeenFlippedEE &
=EE' (
cardClickedEE) 4
.EE4 5
SourceEE5 ;
!=EE< >
cardClickedEE? J
.EEJ K

FrontImageEEK U
;EEU V
boolFF #
playerStillHasMovementsFF (
=FF) *%
_numberOfMovementsAllowedFF+ D
>FFE F
$numFFG H
;FFH I
ifHH 
(HH !
cardHasNotBeenFlippedHH %
&&HH& (#
playerStillHasMovementsHH) @
)HH@ A
{II 
FlipCardJJ 
(JJ 
cardClickedJJ $
)JJ$ %
;JJ% &
EndMovementKK 
(KK 
)KK 
;KK 
}LL 
}MM 	
privateOO 
voidOO 
FlipCardOO 
(OO 
	ImageCardOO '
cardClickedOO( 3
)OO3 4
{PP 	
tryQQ 
{RR %
_numberOfMovementsAllowedSS )
--SS) +
;SS+ ,
intTT 
	cardIndexTT 
=TT 
_imageCardsTT  +
.TT+ ,
IndexOfTT, 3
(TT3 4
cardClickedTT4 ?
)TT? @
;TT@ A&
_cardsFlippedInCurrentTurnUU *
.UU* +
AddUU+ .
(UU. /
cardClickedUU/ :
)UU: ;
;UU; <
PlayerMovementDtoVV !
playerMovementDtoVV" 3
=VV4 5
newVV6 9
PlayerMovementDtoVV: K
(VVK L
)VVL M
{WW 
HostXX 
=XX 
	MatchHostXX $
,XX$ %
UsernameYY 
=YY 
SesionYY %
.YY% &
	GetSesionYY& /
.YY/ 0
UsernameYY0 8
,YY8 9
	CardIndexZZ 
=ZZ 
	cardIndexZZ  )
,ZZ) *
MovementsLeft[[ !
=[[" #%
_numberOfMovementsAllowed[[$ =
,[[= >
HasFormedAPair\\ "
=\\# $!
_playerHasFormedAPair\\% :
}]] 
;]] 
if^^ 
(^^ %
_numberOfMovementsAllowed^^ -
==^^. 0
$num^^1 2
&&^^3 5
HasFormedAPair^^6 D
(^^D E
)^^E F
)^^F G
{__ 
playerMovementDto`` %
.``% &
HasFormedAPair``& 4
=``5 6
true``7 ;
;``; <
}aa 
_matchServiceClientbb #
.bb# $#
NotifyCardWasUncovereddbb$ ;
(bb; <
playerMovementDtobb< M
)bbM N
;bbN O
}cc 
catchdd 
(dd %
EndpointNotFoundExceptiondd ,
)dd, -
{ee 

MessageBoxff 
.ff 
Showff 
(ff  

Propertiesff  *
.ff* +
Langsff+ 0
.ff0 1
	Resourcesff1 :
.ff: ; 
ServerConnectionLostff; O
)ffO P
;ffP Q
}gg 
catchhh 
(hh 
TimeoutExceptionhh #
)hh# $
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
ServerTimeoutErrorjj; M
)jjM N
;jjN O
}kk 
catchll 
(ll "
CommunicationExceptionll )
)ll) *
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
.nn: ;$
CommunicationInterruptednn; S
)nnS T
;nnT U
}oo 
}pp 	
privaterr 
voidrr 
EndMovementrr  
(rr  !
)rr! "
{ss 	
trytt 
{uu 
ifvv 
(vv %
_numberOfMovementsAllowedvv -
==vv. 0
$numvv1 2
)vv2 3
{ww 
ifxx 
(xx 
HasFormedAPairxx &
(xx& '
)xx' (
)xx( )
{yy %
_numberOfMovementsAllowedzz 1
=zz2 3
$numzz4 5
;zz5 6!
_playerHasFormedAPair{{ -
={{. /
true{{0 4
;{{4 5
}|| 
CardPairDto~~ 
cardPairDto~~  +
=~~, -
new~~. 1
CardPairDto~~2 =
(~~= >
)~~> ?
{ 
IndexOfCard1
ÄÄ $
=
ÄÄ% &
_imageCards
ÄÄ' 2
.
ÄÄ2 3
IndexOf
ÄÄ3 :
(
ÄÄ: ;(
_cardsFlippedInCurrentTurn
ÄÄ; U
[
ÄÄU V
$num
ÄÄV W
]
ÄÄW X
)
ÄÄX Y
,
ÄÄY Z
IndexOfCard2
ÅÅ $
=
ÅÅ% &
_imageCards
ÅÅ' 2
.
ÅÅ2 3
IndexOf
ÅÅ3 :
(
ÅÅ: ;(
_cardsFlippedInCurrentTurn
ÅÅ; U
[
ÅÅU V
$num
ÅÅV W
]
ÅÅW X
)
ÅÅX Y
,
ÅÅY Z
BothCardsAreEqual
ÇÇ )
=
ÇÇ* +#
_playerHasFormedAPair
ÇÇ, A
}
ÉÉ 
;
ÉÉ !
_matchServiceClient
ÑÑ '
.
ÑÑ' (
EndTurn
ÑÑ( /
(
ÑÑ/ 0
	MatchHost
ÑÑ0 9
,
ÑÑ9 :
Sesion
ÑÑ; A
.
ÑÑA B
	GetSesion
ÑÑB K
.
ÑÑK L
Username
ÑÑL T
,
ÑÑT U
cardPairDto
ÑÑV a
)
ÑÑa b
;
ÑÑb c#
_playerHasFormedAPair
ÖÖ )
=
ÖÖ* +
false
ÖÖ, 1
;
ÖÖ1 2(
_cardsFlippedInCurrentTurn
ÜÜ .
.
ÜÜ. /
Clear
ÜÜ/ 4
(
ÜÜ4 5
)
ÜÜ5 6
;
ÜÜ6 7
}
áá 
}
àà 
catch
ââ 
(
ââ '
EndpointNotFoundException
ââ ,
)
ââ, -
{
ää 

MessageBox
ãã 
.
ãã 
Show
ãã 
(
ãã  

Properties
ãã  *
.
ãã* +
Langs
ãã+ 0
.
ãã0 1
	Resources
ãã1 :
.
ãã: ;"
ServerConnectionLost
ãã; O
)
ããO P
;
ããP Q
}
åå 
catch
çç 
(
çç 
TimeoutException
çç #
)
çç# $
{
éé 

MessageBox
èè 
.
èè 
Show
èè 
(
èè  

Properties
èè  *
.
èè* +
Langs
èè+ 0
.
èè0 1
	Resources
èè1 :
.
èè: ; 
ServerTimeoutError
èè; M
)
èèM N
;
èèN O
}
êê 
catch
ëë 
(
ëë $
CommunicationException
ëë )
)
ëë) *
{
íí 

MessageBox
ìì 
.
ìì 
Show
ìì 
(
ìì  

Properties
ìì  *
.
ìì* +
Langs
ìì+ 0
.
ìì0 1
	Resources
ìì1 :
.
ìì: ;&
CommunicationInterrupted
ìì; S
)
ììS T
;
ììT U
}
îî 
}
ïï 	
private
óó 
bool
óó 
HasFormedAPair
óó #
(
óó# $
)
óó$ %
{
òò 	
if
ôô 
(
ôô (
_cardsFlippedInCurrentTurn
ôô *
[
ôô* +
$num
ôô+ ,
]
ôô, -
.
ôô- .
CardId
ôô. 4
==
ôô5 7(
_cardsFlippedInCurrentTurn
ôô8 R
[
ôôR S
$num
ôôS T
]
ôôT U
.
ôôU V
CardId
ôôV \
)
ôô\ ]
{
öö 
return
õõ 
true
õõ 
;
õõ 
}
úú 
return
ùù 
false
ùù 
;
ùù 
}
ûû 	
private
†† 
void
†† "
OptionsButtonClicked
†† )
(
††) *
object
††* 0
sender
††1 7
,
††7 8
RoutedEventArgs
††9 H
e
††I J
)
††J K
{
°° 	2
$_windowIsBeingClosedByTheCloseButton
¢¢ 0
=
¢¢1 2
false
¢¢3 8
;
¢¢8 9
GameOptions
££ 
gameOptionsView
££ '
=
££( )
new
££* -
GameOptions
££. 9
(
££9 :
)
££: ;
{
§§ 
	MatchHost
•• 
=
•• 
this
••  
.
••  !
	MatchHost
••! *
,
••* +$
NumberOfPlayersInMatch
¶¶ &
=
¶¶' (
NumberOfPlayers
¶¶) 8
,
¶¶8 9
PlayerUsername
ßß 
=
ßß  
Sesion
ßß! '
.
ßß' (
	GetSesion
ßß( 1
.
ßß1 2
Username
ßß2 :
,
ßß: ;
Context
®® 
=
®® 
this
®® 
.
®® 
_context
®® '
}
©© 
;
©© 
gameOptionsView
™™ 
.
™™ 
Show
™™  
(
™™  !
)
™™! "
;
™™" #
}
´´ 	
private
≠≠ 
void
≠≠ 
WindowLoaded
≠≠ !
(
≠≠! "
object
≠≠" (
sender
≠≠) /
,
≠≠/ 0
	EventArgs
≠≠1 :
e
≠≠; <
)
≠≠< =
{
ÆÆ 	
DrawPlayersNames
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
DrawGameBoard
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ 
if
±± 
(
±± 
	MatchHost
±± 
.
±± 
Equals
±±  
(
±±  !
Sesion
±±! '
.
±±' (
	GetSesion
±±( 1
.
±±1 2
Username
±±2 :
)
±±: ;
)
±±; <
{
≤≤ '
_numberOfMovementsAllowed
≥≥ )
=
≥≥* +
$num
≥≥, -
;
≥≥- .
}
¥¥ 
else
µµ 
{
∂∂ '
_numberOfMovementsAllowed
∑∑ )
=
∑∑* +
$num
∑∑, -
;
∑∑- .
}
∏∏ 
	TurnLabel
ππ 
.
ππ 
Content
ππ 
=
ππ 

Properties
ππ  *
.
ππ* +
Langs
ππ+ 0
.
ππ0 1
	Resources
ππ1 :
.
ππ: ;
TurnMessage
ππ; F
+
ππG H
$str
ππI M
+
ππN O
	MatchHost
ππP Y
;
ππY Z!
_matchServiceClient
∫∫ 
.
∫∫  

EnterMatch
∫∫  *
(
∫∫* +
	MatchHost
∫∫+ 4
,
∫∫4 5
Sesion
∫∫6 <
.
∫∫< =
	GetSesion
∫∫= F
.
∫∫F G
Username
∫∫G O
)
∫∫O P
;
∫∫P Q
NumberOfPlayers
ªª 
=
ªª 
Players
ªª %
.
ªª% &
Length
ªª& ,
;
ªª, -
}
ºº 	
private
ææ 
void
ææ 
Window_Closed
ææ "
(
ææ" #
object
ææ# )
sender
ææ* 0
,
ææ0 1
System
ææ2 8
.
ææ8 9
	EventArgs
ææ9 B
e
ææC D
)
ææD E
{
øø 	
if
¿¿ 
(
¿¿ 2
$_windowIsBeingClosedByTheCloseButton
¿¿ 4
)
¿¿4 5
{
¡¡ 
try
¬¬ 
{
√√ !
_matchServiceClient
ƒƒ '
.
ƒƒ' (

LeaveMatch
ƒƒ( 2
(
ƒƒ2 3
	MatchHost
ƒƒ3 <
,
ƒƒ< =
Sesion
ƒƒ> D
.
ƒƒD E
	GetSesion
ƒƒE N
.
ƒƒN O
Username
ƒƒO W
)
ƒƒW X
;
ƒƒX Y
}
≈≈ 
catch
∆∆ 
(
∆∆ $
CommunicationException
∆∆ -$
communicationException
∆∆. D
)
∆∆D E
{
«« 
_logger
»» 
.
»» 
Fatal
»» !
(
»»! "$
communicationException
»»" 8
)
»»8 9
;
»»9 :
}
…… 
}
ÀÀ 
}
ÃÃ 	
public
ŒŒ 
void
ŒŒ 
UncoverCardd
ŒŒ  
(
ŒŒ  !
int
ŒŒ! $
	cardIndex
ŒŒ% .
)
ŒŒ. /
{
œœ 	
_imageCards
–– 
[
–– 
	cardIndex
–– !
]
––! "
.
––" #
Source
––# )
=
––* +
_imageCards
––, 7
[
––7 8
	cardIndex
––8 A
]
––A B
.
––B C

FrontImage
––C M
;
––M N
}
—— 	
private
”” 
async
”” 
void
””  
FlipBothCardsAgain
”” -
(
””- .
CardPairDto
””. 9
cardPairDto
””: E
)
””E F
{
‘‘ 	
await
’’ 
Task
’’ 
.
’’ 
Delay
’’ 
(
’’ 
$num
’’ !
)
’’! "
;
’’" #
_imageCards
÷÷ 
[
÷÷ 
cardPairDto
÷÷ #
.
÷÷# $
IndexOfCard1
÷÷$ 0
]
÷÷0 1
.
÷÷1 2
Source
÷÷2 8
=
÷÷9 :
_imageCards
÷÷; F
[
÷÷F G
cardPairDto
÷÷G R
.
÷÷R S
IndexOfCard1
÷÷S _
]
÷÷_ `
.
÷÷` a
	BackImage
÷÷a j
;
÷÷j k
_imageCards
◊◊ 
[
◊◊ 
cardPairDto
◊◊ #
.
◊◊# $
IndexOfCard2
◊◊$ 0
]
◊◊0 1
.
◊◊1 2
Source
◊◊2 8
=
◊◊9 :
_imageCards
◊◊; F
[
◊◊F G
cardPairDto
◊◊G R
.
◊◊R S
IndexOfCard2
◊◊S _
]
◊◊_ `
.
◊◊` a
	BackImage
◊◊a j
;
◊◊j k
}
ÿÿ 	
public
⁄⁄ 
void
⁄⁄  
NotifyTurnHasEnded
⁄⁄ &
(
⁄⁄& '
string
⁄⁄' -
username
⁄⁄. 6
,
⁄⁄6 7
CardPairDto
⁄⁄8 C
cardPairDto
⁄⁄D O
)
⁄⁄O P
{
€€ 	
	TurnLabel
‹‹ 
.
‹‹ 
Content
‹‹ 
=
‹‹ 

Properties
‹‹  *
.
‹‹* +
Langs
‹‹+ 0
.
‹‹0 1
	Resources
‹‹1 :
.
‹‹: ;
TurnMessage
‹‹; F
+
‹‹G H
$str
‹‹I M
+
‹‹N O
username
‹‹P X
;
‹‹X Y
if
ﬁﬁ 
(
ﬁﬁ 
Sesion
ﬁﬁ 
.
ﬁﬁ 
	GetSesion
ﬁﬁ  
.
ﬁﬁ  !
Username
ﬁﬁ! )
.
ﬁﬁ) *
Equals
ﬁﬁ* 0
(
ﬁﬁ0 1
username
ﬁﬁ1 9
)
ﬁﬁ9 :
)
ﬁﬁ: ;
{
ﬂﬂ '
_numberOfMovementsAllowed
‡‡ )
=
‡‡* +
$num
‡‡, -
;
‡‡- .
}
·· 
if
„„ 
(
„„ 
!
„„ 
cardPairDto
„„ 
.
„„ 
BothCardsAreEqual
„„ -
)
„„- .
{
‰‰  
FlipBothCardsAgain
ÂÂ "
(
ÂÂ" #
cardPairDto
ÂÂ# .
)
ÂÂ. /
;
ÂÂ/ 0
}
ÊÊ 
}
ÁÁ 	
public
ÈÈ 
void
ÈÈ 
ShowWinners
ÈÈ 
(
ÈÈ  
string
ÈÈ  &
winner
ÈÈ' -
)
ÈÈ- .
{
ÍÍ 	

MessageBox
ÎÎ 
.
ÎÎ 
Show
ÎÎ 
(
ÎÎ 
winner
ÎÎ "
+
ÎÎ# $
$str
ÎÎ% (
+
ÎÎ) *

Properties
ÎÎ+ 5
.
ÎÎ5 6
Langs
ÎÎ6 ;
.
ÎÎ; <
	Resources
ÎÎ< E
.
ÎÎE F

WinMessage
ÎÎF P
)
ÎÎP Q
;
ÎÎQ R
}
ÏÏ 	
public
ÓÓ 
void
ÓÓ 
MatchHasEnded
ÓÓ !
(
ÓÓ! "
)
ÓÓ" #
{
ÔÔ 	
GoToMainMenuView
 
(
 
)
 
;
 
}
ÒÒ 	
public
ÛÛ 
void
ÛÛ "
NotifyPlayerWasExpel
ÛÛ (
(
ÛÛ( )
string
ÛÛ) /!
expelPlayerUsername
ÛÛ0 C
,
ÛÛC D
int
ÛÛE H
[
ÛÛH I
]
ÛÛI J
cardsUncovered
ÛÛK Y
)
ÛÛY Z
{
ÙÙ 	
if
ıı 
(
ıı 
Sesion
ıı 
.
ıı 
	GetSesion
ıı  
.
ıı  !
Username
ıı! )
.
ıı) *
Equals
ıı* 0
(
ıı0 1!
expelPlayerUsername
ıı1 D
)
ııD E
)
ııE F
{
ˆˆ 
GoToMainMenuView
˜˜  
(
˜˜  !
)
˜˜! "
;
˜˜" #
}
¯¯ 
else
˘˘ 
{
˙˙ 
for
˚˚ 
(
˚˚ 
int
˚˚ 
index
˚˚ 
=
˚˚  
$num
˚˚! "
;
˚˚" #
index
˚˚$ )
<
˚˚* +
cardsUncovered
˚˚, :
.
˚˚: ;
Length
˚˚; A
;
˚˚A B
index
˚˚C H
++
˚˚H J
)
˚˚J K
{
¸¸ 
_imageCards
˝˝ 
[
˝˝  
cardsUncovered
˝˝  .
[
˝˝. /
index
˝˝/ 4
]
˝˝4 5
]
˝˝5 6
.
˝˝6 7
Source
˝˝7 =
=
˝˝> ?
_imageCards
˝˝@ K
[
˝˝K L
cardsUncovered
˝˝L Z
[
˝˝Z [
index
˝˝[ `
]
˝˝` a
]
˝˝a b
.
˝˝b c
	BackImage
˝˝c l
;
˝˝l m
}
˛˛ 

MessageBox
ˇˇ 
.
ˇˇ 
Show
ˇˇ 
(
ˇˇ  !
expelPlayerUsername
ˇˇ  3
+
ˇˇ4 5
$str
ˇˇ6 9
+
ˇˇ: ;

Properties
ˇˇ< F
.
ˇˇF G
Langs
ˇˇG L
.
ˇˇL M
	Resources
ˇˇM V
.
ˇˇV W
ExpelMessage
ˇˇW c
)
ˇˇc d
;
ˇˇd e
NumberOfPlayers
ÄÄ 
--
ÄÄ !
;
ÄÄ! "
}
ÅÅ 
}
ÇÇ 	
public
ÑÑ 
void
ÑÑ $
NotifyPlayerLeaveMatch
ÑÑ *
(
ÑÑ* +
string
ÑÑ+ 1
username
ÑÑ2 :
,
ÑÑ: ;
int
ÑÑ< ?
[
ÑÑ? @
]
ÑÑ@ A
cardsUncovered
ÑÑB P
)
ÑÑP Q
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
Sesion
ÜÜ 
.
ÜÜ 
	GetSesion
ÜÜ  
.
ÜÜ  !
Username
ÜÜ! )
.
ÜÜ) *
Equals
ÜÜ* 0
(
ÜÜ0 1
username
ÜÜ1 9
)
ÜÜ9 :
)
ÜÜ: ;
{
áá 
GoToMainMenuView
àà  
(
àà  !
)
àà! "
;
àà" #
}
ââ 
else
ää 
{
ãã 
for
åå 
(
åå 
int
åå 
index
åå 
=
åå  
$num
åå! "
;
åå" #
index
åå$ )
<
åå* +
cardsUncovered
åå, :
.
åå: ;
Length
åå; A
;
ååA B
index
ååC H
++
ååH J
)
ååJ K
{
çç 
_imageCards
éé 
[
éé  
cardsUncovered
éé  .
[
éé. /
index
éé/ 4
]
éé4 5
]
éé5 6
.
éé6 7
Source
éé7 =
=
éé> ?
_imageCards
éé@ K
[
ééK L
cardsUncovered
ééL Z
[
ééZ [
index
éé[ `
]
éé` a
]
ééa b
.
ééb c
	BackImage
ééc l
;
éél m
}
èè 

MessageBox
êê 
.
êê 
Show
êê 
(
êê  
username
êê  (
+
êê) *
$str
êê+ .
+
êê/ 0

Properties
êê1 ;
.
êê; <
Langs
êê< A
.
êêA B
	Resources
êêB K
.
êêK L
LeaveMatchMessage
êêL ]
)
êê] ^
;
êê^ _
NumberOfPlayers
ëë 
--
ëë !
;
ëë! "
}
íí 
}
ìì 	
public
ïï 
void
ïï "
EndTurnOfExpelPlayer
ïï (
(
ïï( )
string
ïï) / 
nextPlayerUsername
ïï0 B
)
ïïB C
{
ññ 	
	TurnLabel
óó 
.
óó 
Content
óó 
=
óó 

Properties
óó  *
.
óó* +
Langs
óó+ 0
.
óó0 1
	Resources
óó1 :
.
óó: ;
TurnMessage
óó; F
+
óóG H
$str
óóI M
+
óóN O 
nextPlayerUsername
óóP b
;
óób c
if
ôô 
(
ôô 
Sesion
ôô 
.
ôô 
	GetSesion
ôô  
.
ôô  !
Username
ôô! )
.
ôô) *
Equals
ôô* 0
(
ôô0 1 
nextPlayerUsername
ôô1 C
)
ôôC D
)
ôôD E
{
öö '
_numberOfMovementsAllowed
õõ )
=
õõ* +
$num
õõ, -
;
õõ- .
}
úú 
}
ùù 	
private
üü 
void
üü 
GoToMainMenuView
üü %
(
üü% &
)
üü& '
{
†† 	2
$_windowIsBeingClosedByTheCloseButton
°° 0
=
°°1 2
false
°°3 8
;
°°8 9
MainMenu
¢¢ 
mainMenuView
¢¢ !
=
¢¢" #
new
¢¢$ '
MainMenu
¢¢( 0
(
¢¢0 1
)
¢¢1 2
;
¢¢2 3
mainMenuView
££ 
.
££ 
Show
££ 
(
££ 
)
££ 
;
££  
this
§§ 
.
§§ 
Close
§§ 
(
§§ 
)
§§ 
;
§§ 
}
•• 	
}
¶¶ 
}ßß †S
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\RecoverPassword.xaml.cs
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
public 
RecoverPassword 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
SetFormValidation &
(& '
)' (
{ 	
_ruleSet 
= 
new 
RuleSet "
(" #
)# $
;$ %
_ruleSet 
. 
AddValidationRule &
(& '
new' *&
EmailAddressValidationRule+ E
(E F
_emailAddressF S
)S T
)T U
;U V
}   	
private"" 
void"" 
ShowErrorMessage"" %
(""% &
)""& '
{## 	
IList$$ 
<$$  
ValidationRuleResult$$ &
>$$& '"
validationResultErrors$$( >
=$$? @
_ruleSet$$A I
.$$I J%
GetValidationResultErrors$$J c
($$c d
)$$d e
;$$e f
if%% 
(%% "
validationResultErrors%% &
.%%& '
Count%%' ,
>%%- .
$num%%/ 0
)%%0 1
{&& 

MessageBox'' 
.'' 
Show'' 
(''  "
validationResultErrors''  6
[''6 7
$num''7 8
]''8 9
.''9 :
Message'': A
)''A B
;''B C
}(( 
})) 	
private++ 
void++ 
CancelButtonClicked++ (
(++( )
object++) /
sender++0 6
,++6 7
RoutedEventArgs++8 G
e++H I
)++I J
{,, 	
Login-- 
	loginView-- 
=-- 
new-- !
Login--" '
(--' (
)--( )
;--) *
	loginView.. 
... 
Show.. 
(.. 
).. 
;.. 
this// 
.// 
Close// 
(// 
)// 
;// 
}00 	
private44 
void44 
LoadUsername44 !
(44! "
)44" #
{55 	&
AccessibilityServiceClient66 &
client66' -
=66. /
new660 3&
AccessibilityServiceClient664 N
(66N O
)66O P
;66P Q
	_username77 
=77 
client77 
.77 
GetUsername77 *
(77* +
_emailAddress77+ 8
)778 9
;779 :
}88 	
private:: 
void:: !
SendCodeButtonClicked:: *
(::* +
object::+ 1
sender::2 8
,::8 9
RoutedEventArgs::: I
e::J K
)::K L
{;; 	
try<< 
{== 
SendCodeToUser>> 
(>> 
)>>  
;>>  !
}?? 
catch@@ 
(@@ %
EndpointNotFoundException@@ ,
)@@, -
{AA 

MessageBoxBB 
.BB 
ShowBB 
(BB  

PropertiesBB  *
.BB* +
LangsBB+ 0
.BB0 1
	ResourcesBB1 :
.BB: ; 
ServerConnectionLostBB; O
)BBO P
;BBP Q
}CC 
catchDD 
(DD 
FaultExceptionDD !
<DD! "
MemoryGameServiceDD" 3
.DD3 4
FaultsDD4 :
.DD: ; 
NonExistentUserFaultDD; O
>DDO P
)DDP Q
{EE 

MessageBoxFF 
.FF 
ShowFF 
(FF  
$strFF  6
)FF6 7
;FF7 8
}GG 
catchHH 
(HH 
TimeoutExceptionHH #
timeoutExceptionHH$ 4
)HH4 5
{II 
_loggerJJ 
.JJ 
FatalJJ 
(JJ 
timeoutExceptionJJ .
)JJ. /
;JJ/ 0

MessageBoxKK 
.KK 
ShowKK 
(KK  

PropertiesKK  *
.KK* +
LangsKK+ 0
.KK0 1
	ResourcesKK1 :
.KK: ;
ServerTimeoutErrorKK; M
)KKM N
;KKN O
}LL 
catchMM 
(MM "
CommunicationExceptionMM )"
communicationExceptionMM* @
)MM@ A
{NN 
_loggerOO 
.OO 
FatalOO 
(OO "
communicationExceptionOO 4
)OO4 5
;OO5 6

MessageBoxPP 
.PP 
ShowPP 
(PP  

PropertiesPP  *
.PP* +
LangsPP+ 0
.PP0 1
	ResourcesPP1 :
.PP: ;$
CommunicationInterruptedPP; S
)PPS T
;PPT U
}QQ 
}RR 	
privateTT 
voidTT 
SendCodeToUserTT #
(TT# $
)TT$ %
{UU 	
_emailAddressVV 
=VV 
TextBoxEmailVV (
.VV( )
TextVV) -
;VV- .
SetFormValidationWW 
(WW 
)WW 
;WW  
ifXX 
(XX 
_ruleSetXX 
.XX (
AllValidationRulesHavePassedXX 5
(XX5 6
)XX6 7
)XX7 8
{YY 
ifZZ 
(ZZ 
EmailIsRegisteredZZ %
(ZZ% &
)ZZ& '
)ZZ' (
{[[ 
LoadUsername\\  
(\\  !
)\\! "
;\\" #%
GenerateVerificationToken]] -
(]]- .
)]]. /
;]]/ 0
bool^^ +
newVerificationTokenWasAssigned^^ 8
=^^9 :&
AssignNewVerificationToken^^; U
(^^U V
)^^V W
;^^W X 
SendVerificationCode__ (
(__( )
)__) *
;__* +
if`` 
(`` +
newVerificationTokenWasAssigned`` 7
)``7 8
{aa 

MessageBoxbb "
.bb" #
Showbb# '
(bb' (

Propertiesbb( 2
.bb2 3
Langsbb3 8
.bb8 9
	Resourcesbb9 B
.bbB C%
PasswordRecoveryTokenSentbbC \
)bb\ ]
;bb] ^
GoToRestorePasswordcc +
(cc+ ,
)cc, -
;cc- .
}dd 
elseee 
{ff 

MessageBoxgg "
.gg" #
Showgg# '
(gg' (

Propertiesgg( 2
.gg2 3
Langsgg3 8
.gg8 9
	Resourcesgg9 B
.ggB C%
RecoveryTokenSendingErrorggC \
)gg\ ]
;gg] ^
}hh 
}jj 
elsekk 
{ll 

MessageBoxmm 
.mm 
Showmm #
(mm# $

Propertiesmm$ .
.mm. /
Langsmm/ 4
.mm4 5
	Resourcesmm5 >
.mm> ?
NonRegisteredEmailmm? Q
)mmQ R
;mmR S
}nn 
}oo 
elsepp 
{qq 
ShowErrorMessagerr  
(rr  !
)rr! "
;rr" #
}ss 
}tt 	
privatevv 
boolvv 
EmailIsRegisteredvv &
(vv& '
)vv' (
{ww 	&
AccessibilityServiceClientxx &
clientxx' -
=xx. /
newxx0 3&
AccessibilityServiceClientxx4 N
(xxN O
)xxO P
;xxP Q
returnyy 
clientyy 
.yy 
ItsRegisteredyy '
(yy' (
_emailAddressyy( 5
)yy5 6
;yy6 7
}zz 	
private|| 
void|| %
GenerateVerificationToken|| .
(||. /
)||/ 0
{}} 	
_verificationToken~~ 
=~~  
TokenManager~~! -
.~~- .%
GenerateVerificationToken~~. G
(~~G H
)~~H I
;~~I J
} 	
private
ÅÅ 
bool
ÅÅ (
AssignNewVerificationToken
ÅÅ /
(
ÅÅ/ 0
)
ÅÅ0 1
{
ÇÇ 	.
 AccountVerificationServiceClient
ÉÉ ,.
 accountVerificationServiceClient
ÉÉ- M
=
ÉÉN O
new
ÑÑ .
 AccountVerificationServiceClient
ÑÑ 4
(
ÑÑ4 5
)
ÑÑ5 6
;
ÑÑ6 7
return
ÖÖ .
 accountVerificationServiceClient
ÖÖ 3
.
ÖÖ3 4(
AssignNewVerificationToken
ÖÖ4 N
(
ÖÖN O
_emailAddress
ÖÖO \
,
ÖÖ\ ] 
_verificationToken
ÖÖ^ p
)
ÖÖp q
;
ÖÖq r
}
ÜÜ 	
private
àà 
void
àà "
SendVerificationCode
àà )
(
àà) *
)
àà* +
{
ââ 	&
VerificationTokenInfoDto
ää $#
verificationTokenInfo
ää% :
=
ää; <
new
ää= @&
VerificationTokenInfoDto
ääA Y
(
ääY Z
)
ääZ [
{
ãã 
Name
åå 
=
åå 
	_username
åå  
,
åå  !
EmailAddress
çç 
=
çç 
_emailAddress
çç ,
,
çç, -
VerificationToken
éé !
=
éé" # 
_verificationToken
éé$ 6
}
èè 
;
èè 
TokenManager
ëë 
.
ëë #
SendVerificationToken
ëë .
(
ëë. /#
verificationTokenInfo
ëë/ D
)
ëëD E
;
ëëE F
}
íí 	
private
îî 
void
îî !
GoToRestorePassword
îî (
(
îî( )
)
îî) *
{
ïï 	
RestorePassword
ññ #
restorePasswordWindow
ññ 1
=
ññ2 3
new
óó 
RestorePassword
óó #
(
óó# $
_emailAddress
óó$ 1
,
óó1 2
	_username
óó3 <
)
óó< =
;
óó= >#
restorePasswordWindow
òò !
.
òò! "
Show
òò" &
(
òò& '
)
òò' (
;
òò( )
this
ôô 
.
ôô 
Close
ôô 
(
ôô 
)
ôô 
;
ôô 
}
öö 	
}
úú 
}ùù ¡q
OC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Register.xaml.cs
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
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT f
)f g
;g h
private 
string 
	_username  
,  !
_emailAddress" /
,/ 0
_verificationToken1 C
,C D
	_passwordE N
;N O
private 
RuleSet 
_ruleSet  
;  !
private 
MemoryGameService !
.! "'
PlayerRegistryServiceClient" =(
_playerRegistryServiceClient> Z
;Z [
public 
Register 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "(
_playerRegistryServiceClient (
=) *
new 
MemoryGameService %
.% &'
PlayerRegistryServiceClient& A
(A B
)B C
;C D
} 	
private 
void 
SetFormValidation &
(& '
)' (
{   	
_ruleSet!! 
=!! 
new!! 
RuleSet!! "
(!!" #
)!!# $
;!!$ %
_ruleSet"" 
."" 
AddValidationRule"" &
(""& '
new""' *"
UsernameValidationRule""+ A
(""A B
	_username""B K
)""K L
)""L M
;""M N
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
;##U V
_ruleSet$$ 
.$$ 
AddValidationRule$$ &
($$& '
new$$' *"
PasswordValidationRule$$+ A
($$A B
	_password$$B K
)$$K L
)$$L M
;$$M N
}%% 	
private'' 
void'' 
ShowErrorMessage'' %
(''% &
)''& '
{(( 	
IList)) 
<))  
ValidationRuleResult)) &
>))& '"
validationResultErrors))( >
=))? @
_ruleSet))A I
.))I J%
GetValidationResultErrors))J c
())c d
)))d e
;))e f
if** 
(** "
validationResultErrors** &
.**& '
Count**' ,
>**- .
$num**/ 0
)**0 1
{++ 

MessageBox,, 
.,, 
Show,, 
(,,  "
validationResultErrors,,  6
[,,6 7
$num,,7 8
],,8 9
.,,9 :
Message,,: A
),,A B
;,,B C
}-- 
}.. 	
private00 
void00 
GetValuesFromFields00 (
(00( )
)00) *
{11 	
_emailAddress22 
=22 
TextBoxEmail22 (
.22( )
Text22) -
;22- .
	_username33 
=33 
TextBoxUsername33 '
.33' (
Text33( ,
;33, -
	_password44 
=44 
PasswordBoxPassword44 +
.44+ ,
Password44, 4
;444 5
}55 	
private77 
void77 
GenerateToken77 "
(77" #
)77# $
{88 	
_verificationToken99 
=99  
TokenManager99! -
.99- .%
GenerateVerificationToken99. G
(99G H
)99H I
;99I J
}:: 	
private<< 
void<< !
RegisterButtonClicked<< *
(<<* +
object<<+ 1
sender<<2 8
,<<8 9
RoutedEventArgs<<: I
e<<J K
)<<K L
{== 	
GetValuesFromFields>> 
(>>  
)>>  !
;>>! "
SetFormValidation?? 
(?? 
)?? 
;??  
if@@ 
(@@ (
AllValidationRulesHavePassed@@ ,
(@@, -
)@@- .
)@@. /
{AA 
tryBB 
{CC 
RegisterPlayerDD "
(DD" #
)DD# $
;DD$ %
}EE 
catchFF 
(FF 
TimeoutExceptionFF '
timeoutExceptionFF( 8
)FF8 9
{GG 
_loggerHH 
.HH 
FatalHH !
(HH! "
timeoutExceptionHH" 2
)HH2 3
;HH3 4

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
(KK %
EndpointNotFoundExceptionKK 0%
endpointNotFoundExceptionKK1 J
)KKJ K
{LL 
_loggerMM 
.MM 
FatalMM !
(MM! "%
endpointNotFoundExceptionMM" ;
)MM; <
;MM< =

MessageBoxNN 
.NN 
ShowNN #
(NN# $

PropertiesNN$ .
.NN. /
LangsNN/ 4
.NN4 5
	ResourcesNN5 >
.NN> ? 
ServerConnectionLostNN? S
)NNS T
;NNT U
}OO 
catchPP 
(PP "
CommunicationExceptionPP -"
communicationExceptionPP. D
)PPD E
{QQ 
_loggerRR 
.RR 
FatalRR !
(RR! ""
communicationExceptionRR" 8
)RR8 9
;RR9 :

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
{]] 	
bool^^ #
emailAddressIsAvailable^^ (
=^^) *
false^^+ 0
;^^0 1
bool__ 
usernameIsAvailable__ $
=__% &
false__' ,
;__, -
ifaa 
(aa #
EmailAddressIsAvailableaa '
(aa' (
)aa( )
)aa) *
{bb #
emailAddressIsAvailablecc '
=cc( )
truecc* .
;cc. /
}dd 
elseee 
{ff 

MessageBoxgg 
.gg 
Showgg 
(gg  

Propertiesgg  *
.gg* +
Langsgg+ 0
.gg0 1
	Resourcesgg1 :
.gg: ;
EmailAddressIsTakengg; N
)ggN O
;ggO P
}hh 
ifjj 
(jj 
UsernameIsAvailablejj #
(jj# $
)jj$ %
)jj% &
{kk 
usernameIsAvailablell #
=ll$ %
truell& *
;ll* +
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
.pp: ;
UsernameIsTakenpp; J
)ppJ K
;ppK L
}qq 
ifss 
(ss #
emailAddressIsAvailabless &
&&ss' )
usernameIsAvailabless* =
)ss= >
{tt 
GenerateTokenuu 
(uu 
)uu 
;uu  
ifvv 
(vv +
PlayerWasSuccessfullyRegisteredvv 3
(vv3 4
)vv4 5
)vv5 6
{ww !
SendVerificationTokenxx )
(xx) *
)xx* +
;xx+ ,%
GoToActivationTokenWindowyy -
(yy- .
)yy. /
;yy/ 0
}zz 
else{{ 
{|| 

MessageBox}} 
.}} 
Show}} #
(}}# $

Properties}}$ .
.}}. /
Langs}}/ 4
.}}4 5
	Resources}}5 >
.}}> ?
RegistryError}}? L
)}}L M
;}}M N
}~~ 
} 
}
ÅÅ 	
private
ÉÉ 
bool
ÉÉ *
AllValidationRulesHavePassed
ÉÉ 1
(
ÉÉ1 2
)
ÉÉ2 3
{
ÑÑ 	
return
ÖÖ 
_ruleSet
ÖÖ 
.
ÖÖ *
AllValidationRulesHavePassed
ÖÖ 8
(
ÖÖ8 9
)
ÖÖ9 :
;
ÖÖ: ;
}
ÜÜ 	
private
àà 
void
àà #
SendVerificationToken
àà *
(
àà* +
)
àà+ ,
{
ââ 	&
VerificationTokenInfoDto
ää $#
verificationTokenInfo
ää% :
=
ää; <
new
ää= @&
VerificationTokenInfoDto
ääA Y
(
ääY Z
)
ääZ [
{
ãã 
Name
åå 
=
åå 
	_username
åå  
,
åå  !
EmailAddress
çç 
=
çç 
_emailAddress
çç ,
,
çç, -
VerificationToken
éé !
=
éé" # 
_verificationToken
éé$ 6
,
éé6 7
Subject
èè 
=
èè 

Properties
èè $
.
èè$ %
Langs
èè% *
.
èè* +
	Resources
èè+ 4
.
èè4 5
Welcome
èè5 <
,
èè< =
Body
êê 
=
êê 

Properties
êê !
.
êê! "
Langs
êê" '
.
êê' (
	Resources
êê( 1
.
êê1 2
VerificationToken
êê2 C
}
ëë 
;
ëë 
TokenManager
ìì 
.
ìì #
SendVerificationToken
ìì .
(
ìì. /#
verificationTokenInfo
ìì/ D
)
ììD E
;
ììE F
}
îî 	
private
ññ 
void
ññ !
CancelButtonClicked
ññ (
(
ññ( )
object
ññ) /
sender
ññ0 6
,
ññ6 7
RoutedEventArgs
ññ8 G
e
ññH I
)
ññI J
{
óó 	

MainWindow
òò 
mainWindowView
òò %
=
òò& '
new
òò( +

MainWindow
òò, 6
(
òò6 7
)
òò7 8
;
òò8 9
mainWindowView
ôô 
.
ôô 
Show
ôô 
(
ôô  
)
ôô  !
;
ôô! "
this
öö 
.
öö 
Close
öö 
(
öö 
)
öö 
;
öö 
}
õõ 	
private
ùù 
bool
ùù %
EmailAddressIsAvailable
ùù ,
(
ùù, -
)
ùù- .
{
ûû 	
bool
üü %
emailAddressIsAvailable
üü (
=
üü) **
_playerRegistryServiceClient
üü+ G
.
üüG H%
EmailAddressIsAvailable
üüH _
(
üü_ `
_emailAddress
üü` m
)
üüm n
;
üün o
return
†† %
emailAddressIsAvailable
†† *
;
††* +
}
°° 	
private
££ 
bool
££ !
UsernameIsAvailable
££ (
(
££( )
)
££) *
{
§§ 	
bool
¶¶ !
usernameIsAvailable
¶¶ $
=
¶¶% &*
_playerRegistryServiceClient
¶¶' C
.
¶¶C D!
UserNameIsAvailable
¶¶D W
(
¶¶W X
	_username
¶¶X a
)
¶¶a b
;
¶¶b c
return
ßß !
usernameIsAvailable
ßß &
;
ßß& '
}
®® 	
private
™™ 
bool
™™ -
PlayerWasSuccessfullyRegistered
™™ 4
(
™™4 5
)
™™5 6
{
´´ 	!
BCryptHashGenerator
¨¨ 
hashGenerator
¨¨  -
=
¨¨. /
new
¨¨0 3!
BCryptHashGenerator
¨¨4 G
(
¨¨G H
)
¨¨H I
;
¨¨I J
string
≠≠ 
salt
≠≠ 
=
≠≠ 
hashGenerator
≠≠ '
.
≠≠' (
GenerateSalt
≠≠( 4
(
≠≠4 5
)
≠≠5 6
;
≠≠6 7
string
ÆÆ 
encryptedPassword
ÆÆ $
=
ÆÆ% &
hashGenerator
ÆÆ' 4
.
ÆÆ4 5%
GenerateEncryptedString
ÆÆ5 L
(
ÆÆL M
	_password
ÆÆM V
,
ÆÆV W
salt
ÆÆX \
)
ÆÆ\ ]
;
ÆÆ] ^
MemoryGameService
ØØ 
.
ØØ )
PlayerRegistryServiceClient
ØØ 9)
playerRegistryServiceClient
ØØ: U
=
ØØV W
new
∞∞ 
MemoryGameService
∞∞ %
.
∞∞% &)
PlayerRegistryServiceClient
∞∞& A
(
∞∞A B
)
∞∞B C
;
∞∞C D
MemoryGameService
≤≤ 
.
≤≤ !
DataTransferObjects
≤≤ 1
.
≤≤1 2
	PlayerDTO
≤≤2 ;
	playerDTO
≤≤< E
=
≤≤F G
new
≥≥ 
MemoryGameService
≥≥ %
.
≥≥% &!
DataTransferObjects
≥≥& 9
.
≥≥9 :
	PlayerDTO
≥≥: C
(
≥≥C D
)
≥≥D E
{
¥¥ 
Username
µµ 
=
µµ 
	_username
µµ (
,
µµ( )
EmailAddress
∂∂  
=
∂∂! "
_emailAddress
∂∂# 0
,
∂∂0 1
Password
∑∑ 
=
∑∑ 
encryptedPassword
∑∑ 0
,
∑∑0 1
VerificationToken
∏∏ %
=
∏∏& ' 
_verificationToken
∏∏( :
}
ππ 
;
ππ 
bool
ªª -
playerWasSuccessfullyRegistered
ªª 0
=
ªª1 2)
playerRegistryServiceClient
ªª3 N
.
ªªN O
RegisterNewPlayer
ªªO `
(
ªª` a
	playerDTO
ªªa j
,
ªªj k
salt
ªªl p
)
ªªp q
;
ªªq r
return
ºº -
playerWasSuccessfullyRegistered
ºº 2
;
ºº2 3
}
ΩΩ 	
private
øø 
void
øø '
GoToActivationTokenWindow
øø .
(
øø. /
)
øø/ 0
{
¿¿ 	
ActivationToken
¡¡ #
activationTokenWindow
¡¡ 1
=
¡¡2 3
new
¬¬ 
ActivationToken
¬¬ #
(
¬¬# $
_emailAddress
¬¬$ 1
,
¬¬1 2
	_username
¬¬3 <
)
¬¬< =
;
¬¬= >#
activationTokenWindow
√√ !
.
√√! "
Show
√√" &
(
√√& '
)
√√' (
;
√√( )
this
ƒƒ 
.
ƒƒ 
Close
ƒƒ 
(
ƒƒ 
)
ƒƒ 
;
ƒƒ 
}
≈≈ 	
}
∆∆ 
}«« Ωm
VC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\RestorePassword.xaml.cs
	namespace		 	

MemoryGame		
 
{

 
public 

partial 
class 
RestorePassword (
:) *
Window+ 1
{ 
private 
string 
_emailAddress $
;$ %
private 
string 
	_username  
;  !
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT m
)m n
;n o
public 
RestorePassword 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
RestorePassword 
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
;! "
_emailAddress 
= 
emailAddress (
;( )
	_username 
= 
username  
;  !
} 	
private!! 
void!! 
RestoreUserPassword!! (
(!!( )
)!!) *
{"" 	
string## 
newPassword## 
=##  
NewPasswordBox##! /
.##/ 0
Password##0 8
;##8 9
if%% 
(%% 
newPassword%% 
==%% 
$str%% !
)%%! "
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
PasswordIsInvalid''; L
)''L M
;''M N
}(( 
else)) 
{** 
bool++ 
tokenIsCorrect++ #
=++$ %
TokenIsCorrect++& 4
(++4 5
)++5 6
;++6 7
if,, 
(,, 
tokenIsCorrect,, "
),," #
{-- 
bool.. 
newPasswordWasSet.. *
=..+ ,
SetNewPassword..- ;
(..; <
)..< =
;..= >
if// 
(// 
newPasswordWasSet// )
)//) *
{00 

MessageBox11 "
.11" #
Show11# '
(11' (

Properties11( 2
.112 3
Langs113 8
.118 9
	Resources119 B
.11B C
PasswordReset11C P
)11P Q
;11Q R
Login22 
	loginView22 '
=22( )
new22* -
Login22. 3
(223 4
)224 5
;225 6
	loginView33 !
.33! "
Show33" &
(33& '
)33' (
;33( )
this44 
.44 
Close44 "
(44" #
)44# $
;44$ %
}55 
else66 
{77 

MessageBox88 "
.88" #
Show88# '
(88' (

Properties88( 2
.882 3
Langs883 8
.888 9
	Resources889 B
.88B C!
PasswordRecoveryError88C X
)88X Y
;88Y Z
}99 
}:: 
else;; 
{<< 

MessageBox== 
.== 
Show== #
(==# $

Properties==$ .
.==. /
Langs==/ 4
.==4 5
	Resources==5 >
.==> ?'
NonMatchingVerificationCode==? Z
)==Z [
;==[ \
}>> 
}?? 
}@@ 	
privateBB 
boolBB 
TokenIsCorrectBB #
(BB# $
)BB$ %
{CC 	
stringDD 
tokenDD 
=DD 
TextBoxTokenDD '
.DD' (
TextDD( ,
;DD, -
ifEE 
(EE 
tokenEE 
==EE 
$strEE 
)EE 
{FF 
returnGG 
falseGG 
;GG 
}HH ,
 AccountVerificationServiceClientII ,,
 accountVerificationServiceClientII- M
=IIN O
newJJ ,
 AccountVerificationServiceClientJJ 4
(JJ4 5
)JJ5 6
;JJ6 7
returnKK ,
 accountVerificationServiceClientKK 3
.KK3 4
VerifyTokenKK4 ?
(KK? @
_emailAddressKK@ M
,KKM N
tokenKKO T
)KKT U
;KKU V
}LL 	
publicNN 
boolNN 
SetNewPasswordNN "
(NN" #
)NN# $
{OO 	
IEncryptionPP 
bCryptHashGeneratorPP +
=PP, -
newPP. 1
BCryptHashGeneratorPP2 E
(PPE F
)PPF G
;PPG H
stringQQ 
newPasswordQQ 
=QQ  
NewPasswordBoxQQ! /
.QQ/ 0
PasswordQQ0 8
;QQ8 9
ifRR 
(RR 
newPasswordRR 
==RR 
$strRR !
)RR! "
{SS 
returnTT 
falseTT 
;TT 
}UU 
stringVV 
saltVV 
=VV 
bCryptHashGeneratorVV -
.VV- .
GenerateSaltVV. :
(VV: ;
)VV; <
;VV< =
stringWW  
encryptedNewPasswordWW '
=WW( )
bCryptHashGeneratorWW* =
.WW= >#
GenerateEncryptedStringWW> U
(WWU V
newPasswordWWV a
,WWa b
saltWWc g
)WWg h
;WWh i-
!AccountModifiabilityServiceClientXX --
!accountModifiabilityServiceClientXX. O
=XXP Q
newXXR U-
!AccountModifiabilityServiceClientXXV w
(XXw x
)XXx y
;XXy z.
"PasswordModificationCredentialsDtoYY .+
passwordModificationCredentialsYY/ N
=YYO P
newYYQ T.
"PasswordModificationCredentialsDtoYYU w
(YYw x
)YYx y
{ZZ 
EmailAddress[[ 
=[[ 
_emailAddress[[ ,
,[[, -
Salt\\ 
=\\ 
salt\\ 
,\\ 
NewPassword]] 
=]]  
encryptedNewPassword]] 2
}^^ 
;^^ 
bool__ "
newPasswordWasAssigned__ '
=__( )-
!accountModifiabilityServiceClient__* K
.__K L
SetNewPassword__L Z
(__Z [+
passwordModificationCredentials__[ z
)__z {
;__{ |
return`` "
newPasswordWasAssigned`` )
;``) *
}aa 	
privatecc 
voidcc 
OkButtonClickedcc $
(cc$ %
objectcc% +
sendercc, 2
,cc2 3
RoutedEventArgscc4 C
eccD E
)ccE F
{dd 	
tryee 
{ff 
RestoreUserPasswordgg #
(gg# $
)gg$ %
;gg% &
}hh 
catchii 
(ii %
EndpointNotFoundExceptionii ,
)ii, -
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
ServerConnectionLostkk; O
)kkO P
;kkP Q
}ll 
catchmm 
(mm 
FaultExceptionmm !
<mm! "
MemoryGameServicemm" 3
.mm3 4
Faultsmm4 :
.mm: ; 
NonExistentUserFaultmm; O
>mmO P
)mmP Q
{nn 

MessageBoxoo 
.oo 
Showoo 
(oo  
$stroo  6
)oo6 7
;oo7 8
}pp 
catchqq 
(qq 
TimeoutExceptionqq #
timeoutExceptionqq$ 4
)qq4 5
{rr 
_loggerss 
.ss 
Fatalss 
(ss 
timeoutExceptionss .
)ss. /
;ss/ 0

MessageBoxtt 
.tt 
Showtt 
(tt  

Propertiestt  *
.tt* +
Langstt+ 0
.tt0 1
	Resourcestt1 :
.tt: ;
ServerTimeoutErrortt; M
)ttM N
;ttN O
}uu 
catchvv 
(vv "
CommunicationExceptionvv )"
communicationExceptionvv* @
)vv@ A
{ww 
_loggerxx 
.xx 
Fatalxx 
(xx "
communicationExceptionxx 4
)xx4 5
;xx5 6

MessageBoxyy 
.yy 
Showyy 
(yy  

Propertiesyy  *
.yy* +
Langsyy+ 0
.yy0 1
	Resourcesyy1 :
.yy: ;$
CommunicationInterruptedyy; S
)yyS T
;yyT U
}zz 
}{{ 	
private}} 
void}} $
SendNewCodeButtonClicked}} -
(}}- .
object}}. 4
sender}}5 ;
,}}; <
RoutedEventArgs}}= L
e}}M N
)}}N O
{~~ 	
try 
{
ÄÄ 
SendNewCode
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ '
EndpointNotFoundException
ÉÉ ,
)
ÉÉ, -
{
ÑÑ 

MessageBox
ÖÖ 
.
ÖÖ 
Show
ÖÖ 
(
ÖÖ  

Properties
ÖÖ  *
.
ÖÖ* +
Langs
ÖÖ+ 0
.
ÖÖ0 1
	Resources
ÖÖ1 :
.
ÖÖ: ;"
ServerConnectionLost
ÖÖ; O
)
ÖÖO P
;
ÖÖP Q
}
ÜÜ 
catch
áá 
(
áá 
FaultException
áá !
<
áá! "
MemoryGameService
áá" 3
.
áá3 4
Faults
áá4 :
.
áá: ;"
NonExistentUserFault
áá; O
>
ááO P
)
ááP Q
{
àà 

MessageBox
ââ 
.
ââ 
Show
ââ 
(
ââ  
$str
ââ  6
)
ââ6 7
;
ââ7 8
}
ää 
catch
ãã 
(
ãã 
TimeoutException
ãã #
timeoutException
ãã$ 4
)
ãã4 5
{
åå 
_logger
çç 
.
çç 
Fatal
çç 
(
çç 
timeoutException
çç .
)
çç. /
;
çç/ 0

MessageBox
éé 
.
éé 
Show
éé 
(
éé  

Properties
éé  *
.
éé* +
Langs
éé+ 0
.
éé0 1
	Resources
éé1 :
.
éé: ; 
ServerTimeoutError
éé; M
)
ééM N
;
ééN O
}
èè 
catch
êê 
(
êê $
CommunicationException
êê )$
communicationException
êê* @
)
êê@ A
{
ëë 
_logger
íí 
.
íí 
Fatal
íí 
(
íí $
communicationException
íí 4
)
íí4 5
;
íí5 6

MessageBox
ìì 
.
ìì 
Show
ìì 
(
ìì  

Properties
ìì  *
.
ìì* +
Langs
ìì+ 0
.
ìì0 1
	Resources
ìì1 :
.
ìì: ;&
CommunicationInterrupted
ìì; S
)
ììS T
;
ììT U
}
îî 
}
óó 	
private
ôô 
void
ôô 
SendNewCode
ôô  
(
ôô  !
)
ôô! "
{
öö 	
string
õõ 
newToken
õõ 
=
õõ 
TokenManager
õõ *
.
õõ* +'
GenerateVerificationToken
õõ+ D
(
õõD E
)
õõE F
;
õõF G
bool
úú -
newVerificationTokenWasAssigned
úú 0
=
úú1 2
false
úú3 8
;
úú8 9
if
ùù 
(
ùù 
newToken
ùù 
!=
ùù 
$str
ùù 
)
ùù 
{
ûû .
 AccountVerificationServiceClient
üü 0.
 accountVerificationServiceClient
üü1 Q
=
üüR S
new
†† .
 AccountVerificationServiceClient
†† 8
(
††8 9
)
††9 :
;
††: ;-
newVerificationTokenWasAssigned
°° /
=
°°0 1.
 accountVerificationServiceClient
°°2 R
.
°°R S(
AssignNewVerificationToken
°°S m
(
°°m n
_emailAddress
°°n {
,
°°{ |
newToken°°} Ö
)°°Ö Ü
;°°Ü á
}
¢¢ 
if
§§ 
(
§§ -
newVerificationTokenWasAssigned
§§ /
)
§§/ 0
{
•• &
VerificationTokenInfoDto
¶¶ (#
verificationTokenInfo
¶¶) >
=
¶¶? @
new
¶¶A D&
VerificationTokenInfoDto
¶¶E ]
(
¶¶] ^
)
¶¶^ _
{
ßß 
Name
®® 
=
®® 
	_username
®® $
,
®®$ %
EmailAddress
©©  
=
©©! "
_emailAddress
©©# 0
,
©©0 1
VerificationToken
™™ %
=
™™& '
newToken
™™( 0
}
´´ 
;
´´ 
TokenManager
¨¨ 
.
¨¨ #
SendVerificationToken
¨¨ 2
(
¨¨2 3#
verificationTokenInfo
¨¨3 H
)
¨¨H I
;
¨¨I J

MessageBox
≠≠ 
.
≠≠ 
Show
≠≠ 
(
≠≠  

Properties
≠≠  *
.
≠≠* +
Langs
≠≠+ 0
.
≠≠0 1
	Resources
≠≠1 :
.
≠≠: ; 
NewCodeSentMessage
≠≠; M
)
≠≠M N
;
≠≠N O
}
ÆÆ 
}
ØØ 	
private
≥≥ 
void
≥≥ 
BackButtonClicked
≥≥ &
(
≥≥& '
object
≥≥' -
sender
≥≥. 4
,
≥≥4 5
RoutedEventArgs
≥≥6 E
e
≥≥F G
)
≥≥G H
{
¥¥ 	
Login
µµ 
	loginView
µµ 
=
µµ 
new
µµ !
Login
µµ" '
(
µµ' (
)
µµ( )
;
µµ) *
	loginView
∂∂ 
.
∂∂ 
Show
∂∂ 
(
∂∂ 
)
∂∂ 
;
∂∂ 
this
∑∑ 
.
∑∑ 
Close
∑∑ 
(
∑∑ 
)
∑∑ 
;
∑∑ 
}
∏∏ 	
}
ππ 
}∫∫ ¯%
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ScoreTable.xaml.cs
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
PlayerScoreDTO6 D
[D E
]E F
_bestScoresG R
;R S
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT h
)h i
;i j
public 

ScoreTable 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "'
PopulateTableWithBestScores '
(' (
)( )
;) *
} 	
private 
void '
PopulateTableWithBestScores 0
(0 1
)1 2
{ 	
try 
{ 
LoadBestScores 
( 
)  
;  !
for 
( 
int 
indexOfActualPlayer +
=, -
$num. /
;/ 0
indexOfActualPlayer1 D
<E F
_bestScoresG R
.R S
LengthS Y
;Y Z
indexOfActualPlayer[ n
++n p
)p q
{ 
if 
( 
_bestScores "
[" #
indexOfActualPlayer# 6
]6 7
!=8 :
null; ?
)? @
{ 
ScoreDataGrid %
.% &
Items& +
.+ ,
Add, /
(/ 0
_bestScores0 ;
[; <
indexOfActualPlayer< O
]O P
)P Q
;Q R
} 
} 
}   
catch!! 
(!! 
TimeoutException!! #
timeoutException!!$ 4
)!!4 5
{"" 
_logger## 
.## 
Fatal## 
(## 
timeoutException## .
)##. /
;##/ 0

MessageBox$$ 
.$$ 
Show$$ 
($$  

Properties$$  *
.$$* +
Langs$$+ 0
.$$0 1
	Resources$$1 :
.$$: ;
ServerTimeoutError$$; M
)$$M N
;$$N O
}%% 
catch&& 
(&& %
EndpointNotFoundException&& ,%
endpointNotFoundException&&- F
)&&F G
{'' 
_logger(( 
.(( 
Fatal(( 
((( %
endpointNotFoundException(( 7
)((7 8
;((8 9

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
CommunicationException++ )"
communicationException++* @
)++@ A
{,, 
_logger-- 
.-- 
Fatal-- 
(-- "
communicationException-- 4
)--4 5
;--5 6

MessageBox.. 
... 
Show.. 
(..  

Properties..  *
...* +
Langs..+ 0
...0 1
	Resources..1 :
...: ;$
CommunicationInterrupted..; S
)..S T
;..T U
}// 
}00 	
private22 
void22 
LoadBestScores22 #
(22# $
)22$ %
{33 	
MemoryGameService44 
.44 
ScoreServiceClient44 0
client441 7
=448 9
new44: =
MemoryGameService44> O
.44O P
ScoreServiceClient44P b
(44b c
)44c d
;44d e
_bestScores55 
=55 
client55  
.55  !#
GetPlayersWithBestScore55! 8
(558 9
$num559 ;
)55; <
;55< =
}66 	
private88 
void88 
BackButtonClicked88 &
(88& '
object88' -
sender88. 4
,884 5
RoutedEventArgs886 E
e88F G
)88G H
{99 	
MainMenu:: 
mainMenuView:: !
=::" #
new::$ '
MainMenu::( 0
(::0 1
)::1 2
;::2 3
mainMenuView;; 
.;; 
Show;; 
(;; 
);; 
;;;  
this<< 
.<< 
Close<< 
(<< 
)<< 
;<< 
}== 	
}>> 
}BB •
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
}33 ƒÄ
RC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\WaitingRoom.xaml.cs
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
public 
MemoryGameService  
.  !
DataTransferObjects! 4
.4 5
MatchDto5 =
GameMatchDto> J
{K L
getM P
;P Q
setR U
;U V
}W X
private  
ObservableCollection $
<$ %
string% +
>+ ,
_players- 5
;5 6
private 
InstanceContext 
_context  (
;( )
private 
MemoryGameService !
.! "
LobbyServiceClient" 4
_lobbyServiceClient5 H
;H I
private 
string 
	_username  
;  !
private 
bool 
_thisPlayerIsHost &
;& '
private 
bool 0
$_windowIsBeingClosedByTheCloseButton 9
;9 :
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
$strT i
)i j
;j k
public 
WaitingRoom 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_context 
= 
new 
InstanceContext *
(* +
this+ /
)/ 0
;0 1
_lobbyServiceClient 
=  !
new" %
MemoryGameService& 7
.7 8
LobbyServiceClient8 J
(J K
_contextK S
)S T
;T U
	_username 
= 
Sesion 
. 
	GetSesion (
.( )
Username) 1
;1 20
$_windowIsBeingClosedByTheCloseButton 0
=1 2
true3 7
;7 8
_players 
= 
new  
ObservableCollection /
</ 0
string0 6
>6 7
(7 8
)8 9
;9 :
}   	
private"" 
void"" 
Window_Loaded"" "
(""" #
object""# )
sender""* 0
,""0 1
RoutedEventArgs""2 A
e""B C
)""C D
{## 	#
DetermineIfPlayerIsHost$$ #
($$# $
)$$$ %
;$$% &
if%% 
(%% 
!%% 
_thisPlayerIsHost%% "
)%%" #
{&& 

StarButton'' 
.'' 

Visibility'' %
=''& '
System''( .
.''. /
Windows''/ 6
.''6 7

Visibility''7 A
.''A B
	Collapsed''B K
;''K L
}(( 
try** 
{++ $
LoadActivePlayersInLobby,, (
(,,( )
),,) *
;,,* + 
CallJoinLobbyService-- $
(--$ %
)--% &
;--& '
}.. 
catch// 
(// 
TimeoutException// #
timeoutException//$ 4
)//4 5
{00 
_logger11 
.11 
Fatal11 
(11 
timeoutException11 .
)11. /
;11/ 0

MessageBox22 
.22 
Show22 
(22  

Properties22  *
.22* +
Langs22+ 0
.220 1
	Resources221 :
.22: ;
ServerTimeoutError22; M
)22M N
;22N O
}33 
catch44 
(44 %
EndpointNotFoundException44 ,%
endpointNotFoundException44- F
)44F G
{55 
_logger66 
.66 
Fatal66 
(66 %
endpointNotFoundException66 7
)667 8
;668 9

MessageBox77 
.77 
Show77 
(77  

Properties77  *
.77* +
Langs77+ 0
.770 1
	Resources771 :
.77: ; 
ServerConnectionLost77; O
)77O P
;77P Q
}88 
catch99 
(99 "
CommunicationException99 )"
communicationException99* @
)99@ A
{:: 
_logger;; 
.;; 
Fatal;; 
(;; "
communicationException;; 4
);;4 5
;;;5 6

MessageBox<< 
.<< 
Show<< 
(<<  

Properties<<  *
.<<* +
Langs<<+ 0
.<<0 1
	Resources<<1 :
.<<: ;$
CommunicationInterrupted<<; S
)<<S T
;<<T U
}== 
}?? 	
privateAA 
voidAA #
DetermineIfPlayerIsHostAA ,
(AA, -
)AA- .
{BB 	
ifCC 
(CC 
	_usernameCC 
.CC 
EqualsCC  
(CC  !
GameMatchDtoCC! -
.CC- .
HostCC. 2
)CC2 3
)CC3 4
{DD 
_thisPlayerIsHostEE !
=EE" #
trueEE$ (
;EE( )
}FF 
elseGG 
{HH 
_thisPlayerIsHostII !
=II" #
falseII$ )
;II) *
}JJ 
}KK 	
privateMM 
voidMM $
LoadActivePlayersInLobbyMM -
(MM- .
)MM. /
{NN 	
IListOO 
<OO 
stringOO 
>OO 
activePlayersOO '
=OO( )
_lobbyServiceClientOO* =
.OO= >#
GetActivePlayersInLobbyOO> U
(OOU V
GameMatchDtoOOV b
.OOb c
HostOOc g
)OOg h
;OOh i
foreachPP 
(PP 
varPP 
oneActivePlayerPP '
inPP( *
activePlayersPP+ 8
)PP8 9
{QQ 
_playersRR 
.RR 
AddRR 
(RR 
oneActivePlayerRR ,
)RR, -
;RR- .
}SS 
WaitingRoomDataGridTT 
.TT  
ItemsSourceTT  +
=TT, -
_playersTT. 6
;TT6 7
}UU 	
privateWW 
voidWW  
CallJoinLobbyServiceWW )
(WW) *
)WW* +
{XX 	
_lobbyServiceClientYY 
.YY  
	JoinLobbyYY  )
(YY) *
GameMatchDtoYY* 6
.YY6 7
HostYY7 ;
,YY; <
	_usernameYY= F
)YYF G
;YYG H
}ZZ 	
public\\ 
void\\ 
LeaveButtonClicked\\ &
(\\& '
object\\' -
sender\\. 4
,\\4 5
RoutedEventArgs\\6 E
e\\F G
)\\G H
{]] 	
try^^ 
{__ !
CallLeaveLobbyService`` %
(``% &
)``& '
;``' (
}aa 
catchbb 
(bb 
TimeoutExceptionbb #
timeoutExceptionbb$ 4
)bb4 5
{cc 
_loggerdd 
.dd 
Fataldd 
(dd 
timeoutExceptiondd .
)dd. /
;dd/ 0

MessageBoxee 
.ee 
Showee 
(ee  

Propertiesee  *
.ee* +
Langsee+ 0
.ee0 1
	Resourcesee1 :
.ee: ;
ServerTimeoutErroree; M
)eeM N
;eeN O
}ff 
catchgg 
(gg %
EndpointNotFoundExceptiongg ,%
endpointNotFoundExceptiongg- F
)ggF G
{hh 
_loggerii 
.ii 
Fatalii 
(ii %
endpointNotFoundExceptionii 7
)ii7 8
;ii8 9

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
(ll "
CommunicationExceptionll )"
communicationExceptionll* @
)ll@ A
{mm 
_loggernn 
.nn 
Fatalnn 
(nn "
communicationExceptionnn 4
)nn4 5
;nn5 6

MessageBoxoo 
.oo 
Showoo 
(oo  

Propertiesoo  *
.oo* +
Langsoo+ 0
.oo0 1
	Resourcesoo1 :
.oo: ;$
CommunicationInterruptedoo; S
)ooS T
;ooT U
}pp 
finallyqq 
{rr 
ifss 
(ss 
_thisPlayerIsHostss %
)ss% &
{tt 
GoToMainMenuViewuu $
(uu$ %
)uu% &
;uu& '
}vv 
elseww 
{xx 
GoToJoinGameViewyy $
(yy$ %
)yy% &
;yy& '
}zz 
}{{ 
}|| 	
private~~ 
void~~ 
GoToJoinGameView~~ %
(~~% &
)~~& '
{ 	2
$_windowIsBeingClosedByTheCloseButton
ÄÄ 0
=
ÄÄ1 2
false
ÄÄ3 8
;
ÄÄ8 9
JoinGame
ÅÅ 
joinGameView
ÅÅ !
=
ÅÅ" #
new
ÅÅ$ '
JoinGame
ÅÅ( 0
(
ÅÅ0 1
)
ÅÅ1 2
;
ÅÅ2 3
joinGameView
ÇÇ 
.
ÇÇ 
Show
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ  
this
ÉÉ 
.
ÉÉ 
Close
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ 
GoToMainMenuView
ÜÜ %
(
ÜÜ% &
)
ÜÜ& '
{
áá 	2
$_windowIsBeingClosedByTheCloseButton
àà 0
=
àà1 2
false
àà3 8
;
àà8 9
MainMenu
ââ 
mainMenuView
ââ !
=
ââ" #
new
ââ$ '
MainMenu
ââ( 0
(
ââ0 1
)
ââ1 2
;
ââ2 3
mainMenuView
ää 
.
ää 
Show
ää 
(
ää 
)
ää 
;
ää  
this
ãã 
.
ãã 
Close
ãã 
(
ãã 
)
ãã 
;
ãã 
}
åå 	
private
éé 
void
éé #
CallLeaveLobbyService
éé *
(
éé* +
)
éé+ ,
{
èè 	!
_lobbyServiceClient
êê 
.
êê  

LeaveLobby
êê  *
(
êê* +
GameMatchDto
êê+ 7
.
êê7 8
Host
êê8 <
,
êê< =
	_username
êê> G
)
êêG H
;
êêH I
}
ëë 	
public
ìì 
void
ìì  
StartButtonClicked
ìì &
(
ìì& '
object
ìì' -
sender
ìì. 4
,
ìì4 5
RoutedEventArgs
ìì6 E
e
ììF G
)
ììG H
{
îî 	
if
ïï 
(
ïï 
_players
ïï 
.
ïï 
Count
ïï 
<
ïï 
$num
ïï  !
)
ïï! "
{
ññ 

MessageBox
óó 
.
óó 
Show
óó 
(
óó  

Properties
óó  *
.
óó* +
Langs
óó+ 0
.
óó0 1
	Resources
óó1 :
.
óó: ;)
InsufficientNumberOfPlayers
óó; V
)
óóV W
;
óóW X
}
òò 
else
ôô 
{
öö 
	StartGame
õõ 
(
õõ 
)
õõ 
;
õõ 
}
úú 
}
ùù 	
private
üü 
void
üü 
	StartGame
üü 
(
üü 
)
üü  
{
†† 	
try
°° 
{
¢¢ !
_lobbyServiceClient
££ #
.
££# $
	StartGame
££$ -
(
££- .
GameMatchDto
££. :
.
££: ;
Host
££; ?
)
££? @
;
££@ A
}
§§ 
catch
•• 
(
•• 
TimeoutException
•• #
timeoutException
••$ 4
)
••4 5
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
timeoutException
ßß .
)
ßß. /
;
ßß/ 0

MessageBox
®® 
.
®® 
Show
®® 
(
®®  

Properties
®®  *
.
®®* +
Langs
®®+ 0
.
®®0 1
	Resources
®®1 :
.
®®: ; 
ServerTimeoutError
®®; M
)
®®M N
;
®®N O
}
©© 
catch
™™ 
(
™™ '
EndpointNotFoundException
™™ ,'
endpointNotFoundException
™™- F
)
™™F G
{
´´ 
_logger
¨¨ 
.
¨¨ 
Fatal
¨¨ 
(
¨¨ '
endpointNotFoundException
¨¨ 7
)
¨¨7 8
;
¨¨8 9

MessageBox
≠≠ 
.
≠≠ 
Show
≠≠ 
(
≠≠  

Properties
≠≠  *
.
≠≠* +
Langs
≠≠+ 0
.
≠≠0 1
	Resources
≠≠1 :
.
≠≠: ;"
ServerConnectionLost
≠≠; O
)
≠≠O P
;
≠≠P Q
}
ÆÆ 
catch
ØØ 
(
ØØ $
CommunicationException
ØØ )$
communicationException
ØØ* @
)
ØØ@ A
{
∞∞ 
_logger
±± 
.
±± 
Fatal
±± 
(
±± $
communicationException
±± 4
)
±±4 5
;
±±5 6

MessageBox
≤≤ 
.
≤≤ 
Show
≤≤ 
(
≤≤  

Properties
≤≤  *
.
≤≤* +
Langs
≤≤+ 0
.
≤≤0 1
	Resources
≤≤1 :
.
≤≤: ;&
CommunicationInterrupted
≤≤; S
)
≤≤S T
;
≤≤T U
}
≥≥ 
}
µµ 	
public
∑∑ 
void
∑∑ $
NotifyNewPlayerEntered
∑∑ *
(
∑∑* +
string
∑∑+ 1
username
∑∑2 :
)
∑∑: ;
{
∏∏ 	
if
ππ 
(
ππ 
username
ππ 
!=
ππ 
null
ππ 
)
ππ  
{
∫∫ 
_players
ªª 
.
ªª 
Add
ªª 
(
ªª 
username
ªª %
)
ªª% &
;
ªª& '
}
ºº 
}
ΩΩ 	
public
øø 
void
øø 
NotifyPlayerLeft
øø $
(
øø$ %
string
øø% +
username
øø, 4
)
øø4 5
{
¿¿ 	
_players
¡¡ 
.
¡¡ 
Remove
¡¡ 
(
¡¡ 
username
¡¡ $
)
¡¡$ %
;
¡¡% &
}
¬¬ 	
public
ƒƒ 
void
ƒƒ $
TakePlayersToMatchView
ƒƒ *
(
ƒƒ* +
string
ƒƒ+ 1
[
ƒƒ1 2
]
ƒƒ2 3
playersInMatch
ƒƒ4 B
)
ƒƒB C
{
≈≈ 	2
$_windowIsBeingClosedByTheCloseButton
∆∆ 0
=
∆∆1 2
false
∆∆3 8
;
∆∆8 9
Views
«« 
.
«« 
Match
«« 
	matchView
«« !
=
««" #
new
««$ '
Views
««( -
.
««- .
Match
««. 3
(
««3 4
)
««4 5
{
»» 
Players
…… 
=
…… 
playersInMatch
…… (
,
……( )
	MatchHost
   
=
   
GameMatchDto
   (
.
  ( )
Host
  ) -
,
  - .
CardDeck
ÀÀ 
=
ÀÀ 
GameMatchDto
ÀÀ '
.
ÀÀ' (
CardDeckDto
ÀÀ( 3
}
ÃÃ 
;
ÃÃ 
	matchView
ÕÕ 
.
ÕÕ 
Show
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ 
this
ŒŒ 
.
ŒŒ 
Close
ŒŒ 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ 
}
œœ 	
public
—— 
void
—— #
TakePlayersOutOfLobby
—— )
(
——) *
)
——* +
{
““ 	
GoToJoinGameView
”” 
(
”” 
)
”” 
;
”” 
}
‘‘ 	
private
÷÷ 
void
÷÷ 
Window_Closed
÷÷ "
(
÷÷" #
object
÷÷# )
sender
÷÷* 0
,
÷÷0 1
System
÷÷2 8
.
÷÷8 9
	EventArgs
÷÷9 B
e
÷÷C D
)
÷÷D E
{
◊◊ 	
if
ÿÿ 
(
ÿÿ 2
$_windowIsBeingClosedByTheCloseButton
ÿÿ 4
)
ÿÿ4 5
{
ŸŸ #
CallLeaveLobbyService
⁄⁄ %
(
⁄⁄% &
)
⁄⁄& '
;
⁄⁄' (
}
€€ 
}
‹‹ 	
}
›› 
}ﬁﬁ ó
DC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\App.xaml.cs
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
} ≠
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