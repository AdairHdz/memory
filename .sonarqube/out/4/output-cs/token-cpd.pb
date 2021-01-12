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
} ¢
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
string 
GenerateToken *
(* +
)+ ,
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
void 
	SendToken $
($ %
TokenInfoDto% 1
	tokenInfo2 ;
); <
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
(( )
	tokenInfo) 2
)2 3
;3 4
} 	
} 
} ôP
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
;d e
public 
ActivationToken 
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
;! "-
!_accountVerificationServiceClient -
=. /
new0 3
MemoryGameService4 E
.E F,
 AccountVerificationServiceClientF f
(f g
)g h
;h i
_emailAddress 
= 
emailAddress (
;( )
	_username 
= 
username  
;  !
} 	
private 
void 
OkButtonClicked $
($ %
object% +
sender, 2
,2 3
RoutedEventArgs4 C
eD E
)E F
{ 	
try 
{ 
VerifyAccount 
( 
) 
;  
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
void// 
VerifyAccount// "
(//" #
)//# $
{00 	
if11 
(11 
TokenIsCorrect11 
(11 
)11  
)11  !
{22 
if33 
(33 *
AccountWasSuccessfullyVerified33 2
(332 3
)333 4
)334 5
{44 

MessageBox55 
.55 
Show55 #
(55# $

Properties55$ .
.55. /
Langs55/ 4
.554 5
	Resources555 >
.55> ?&
AccountVerificationSuccess55? Y
)55Y Z
;55Z [
	GoToLogin77 
(77 
)77 
;77  
}88 
else99 
{:: 

MessageBox;; 
.;; 
Show;; #
(;;# $

Properties;;$ .
.;;. /
Langs;;/ 4
.;;4 5
	Resources;;5 >
.;;> ?$
AccountVerificationError;;? W
);;W X
;;;X Y
}<< 
}== 
else>> 
{?? 

MessageBox@@ 
.@@ 
Show@@ 
(@@  

Properties@@  *
.@@* +
Langs@@+ 0
.@@0 1
	Resources@@1 :
.@@: ;'
NonMatchingVerificationCode@@; V
)@@V W
;@@W X
}AA 
}BB 	
privateDD 
voidDD 
	GoToLoginDD 
(DD 
)DD  
{EE 	
LoginFF 
	loginViewFF 
=FF 
newFF !
LoginFF" '
(FF' (
)FF( )
;FF) *
	loginViewGG 
.GG 
ShowGG 
(GG 
)GG 
;GG 
thisHH 
.HH 
CloseHH 
(HH 
)HH 
;HH 
}II 	
privateKK 
boolKK 
TokenIsCorrectKK #
(KK# $
)KK$ %
{LL 	
stringMM 
tokenMM 
=MM 
TextBoxTokenMM '
.MM' (
TextMM( ,
;MM, -
ifNN 
(NN 
tokenNN 
==NN 
$strNN 
)NN 
{OO 
returnPP 
falsePP 
;PP 
}QQ 
returnRR -
!_accountVerificationServiceClientRR 4
.RR4 5!
VerifyActivationTokenRR5 J
(RRJ K
_emailAddressRRK X
,RRX Y
tokenRRZ _
)RR_ `
;RR` a
}SS 	
privateUU 
boolUU *
AccountWasSuccessfullyVerifiedUU 3
(UU3 4
)UU4 5
{VV 	
returnWW -
!_accountVerificationServiceClientWW 4
.WW4 5 
SetAccountAsVerifiedWW5 I
(WWI J
_emailAddressWWJ W
)WWW X
;WWX Y
}XX 	
privateZZ 
voidZZ $
SendNewCodeButtonClickedZZ -
(ZZ- .
objectZZ. 4
senderZZ5 ;
,ZZ; <
RoutedEventArgsZZ= L
eZZM N
)ZZN O
{[[ 	
try\\ 
{]] 
GenerateNewToken^^  
(^^  !
)^^! "
;^^" #
if`` 
(`` &
AssignNewVerificationToken`` .
(``. /
)``/ 0
)``0 1
{aa $
SendNewVerificationTokenbb ,
(bb, -
)bb- .
;bb. /

MessageBoxcc 
.cc 
Showcc #
(cc# $

Propertiescc$ .
.cc. /
Langscc/ 4
.cc4 5
	Resourcescc5 >
.cc> ?
NewCodeSentMessagecc? Q
)ccQ R
;ccR S
}dd 
}ee 
catchff 
(ff %
EndpointNotFoundExceptionff ,
)ff, -
{gg 

MessageBoxhh 
.hh 
Showhh 
(hh  

Propertieshh  *
.hh* +
Langshh+ 0
.hh0 1
	Resourceshh1 :
.hh: ; 
ServerConnectionLosthh; O
)hhO P
;hhP Q
}ii 
catchjj 
(jj 
TimeoutExceptionjj #
)jj# $
{kk 

MessageBoxll 
.ll 
Showll 
(ll  

Propertiesll  *
.ll* +
Langsll+ 0
.ll0 1
	Resourcesll1 :
.ll: ;
ServerTimeoutErrorll; M
)llM N
;llN O
}mm 
catchnn 
(nn /
#CommunicationObjectFaultedExceptionnn 6
)nn6 7
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
.pp: ;$
CommunicationInterruptedpp; S
)ppS T
;ppT U
}qq 
}rr 	
privatett 
voidtt 
GenerateNewTokentt %
(tt% &
)tt& '
{uu 	
stringvv 
newTokenvv 
=vv 
TokenManagervv *
.vv* +
GenerateTokenvv+ 8
(vv8 9
)vv9 :
;vv: ;
	_newTokenww 
=ww 
newTokenww  
;ww  !
}xx 	
privatezz 
boolzz &
AssignNewVerificationTokenzz /
(zz/ 0
)zz0 1
{{{ 	
bool|| 7
+newVerificationTokenWasAssignedSuccessfully|| <
=||= >-
!_accountVerificationServiceClient}} 1
.}}1 2$
AssignNewActivationToken}}2 J
(}}J K
_emailAddress}}K X
,}}X Y
	_newToken}}Z c
)}}c d
;}}d e
return 7
+newVerificationTokenWasAssignedSuccessfully >
;> ?
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ &
SendNewVerificationToken
ÇÇ -
(
ÇÇ- .
)
ÇÇ. /
{
ÉÉ 	
TokenInfoDto
ÑÑ #
verificationTokenInfo
ÑÑ .
=
ÑÑ/ 0
new
ÑÑ1 4
TokenInfoDto
ÑÑ5 A
(
ÑÑA B
)
ÑÑB C
{
ÖÖ 
Name
ÜÜ 
=
ÜÜ 
	_username
ÜÜ  
,
ÜÜ  !
EmailAddress
áá 
=
áá 
_emailAddress
áá ,
,
áá, -
Token
àà 
=
àà 
	_newToken
àà !
,
àà! "
Subject
ââ 
=
ââ 

Properties
ââ $
.
ââ$ %
Langs
ââ% *
.
ââ* +
	Resources
ââ+ 4
.
ââ4 5
Welcome
ââ5 <
,
ââ< =
Body
ää 
=
ää 

Properties
ää !
.
ää! "
Langs
ää" '
.
ää' (
	Resources
ää( 1
.
ää1 2
VerificationToken
ää2 C
}
ãã 
;
ãã 
TokenManager
çç 
.
çç 
	SendToken
çç "
(
çç" ##
verificationTokenInfo
çç# 8
)
çç8 9
;
çç9 :
}
éé 	
private
êê 
void
êê 
BackButtonClicked
êê &
(
êê& '
object
êê' -
sender
êê. 4
,
êê4 5
RoutedEventArgs
êê6 E
e
êêF G
)
êêG H
{
ëë 	

MainWindow
íí 
mainWindowView
íí %
=
íí& '
new
íí( +

MainWindow
íí, 6
(
íí6 7
)
íí7 8
;
íí8 9
mainWindowView
ìì 
.
ìì 
Show
ìì 
(
ìì  
)
ìì  !
;
ìì! "
this
îî 
.
îî 
Close
îî 
(
îî 
)
îî 
;
îî 
}
ïï 	
}
ññ 
}óó ÄK
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
;  !
public 
ChangeUsername 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
Sesion 
userSession 
=  
Sesion! '
.' (
	GetSesion( 1
;1 2
_userEmailAddress 
= 
userSession  +
.+ ,
EmailAddress, 8
;8 9
_oldUsername 
= 
userSession &
.& '
Username' /
;/ 0
LabelOldUsername 
. 
Content $
=% &
_oldUsername' 3
;3 4
} 	
private 
void 
SetFormValidation &
(& '
)' (
{ 	
_ruleSet   
=   
new   
RuleSet   "
(  " #
)  # $
;  $ %
_ruleSet!! 
.!! 
AddValidationRule!! &
(!!& '
new!!' *"
UsernameValidationRule!!+ A
(!!A B
_newUsername!!B N
)!!N O
)!!O P
;!!P Q
}"" 	
private$$ 
void$$ (
TextBoxNewUsername_LostFocus$$ 1
($$1 2
object$$2 8
sender$$9 ?
,$$? @
RoutedEventArgs$$A P
e$$Q R
)$$R S
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrEmpty&& $
(&&$ %
TextBoxNewUsername&&% 7
.&&7 8
Text&&8 <
)&&< =
)&&= >
{'' 
TextBoxNewUsername(( "
.((" #

Visibility((# -
=((. /

Visibility((0 :
.((: ;
	Collapsed((; D
;((D E
waterMarkText)) 
.)) 

Visibility)) (
=))) *

Visibility))+ 5
.))5 6
Visible))6 =
;))= >
}** 
}++ 	
private-- 
void-- "
waterMarkText_GotFocus-- +
(--+ ,
object--, 2
sender--3 9
,--9 :
RoutedEventArgs--; J
e--K L
)--L M
{.. 	
waterMarkText// 
.// 

Visibility// $
=//% &

Visibility//' 1
.//1 2
	Collapsed//2 ;
;//; <
TextBoxNewUsername00 
.00 

Visibility00 )
=00* +

Visibility00, 6
.006 7
Visible007 >
;00> ?
TextBoxNewUsername11 
.11 
Focus11 $
(11$ %
)11% &
;11& '
}22 	
private44 
bool44 
UsernameIsAvailable44 (
(44( )
)44) *
{55 	'
PlayerRegistryServiceClient66 ''
playerRegistryServiceClient66( C
=66D E
new66F I'
PlayerRegistryServiceClient66J e
(66e f
)66f g
;66g h
bool77 
usernameIsAvailable77 $
=77% &'
playerRegistryServiceClient77' B
.77B C
UserNameIsAvailable77C V
(77V W
_newUsername77W c
)77c d
;77d e
return88 
usernameIsAvailable88 &
;88& '
}99 	
private;; 
void;; $
SaveChangesButtonClicked;; -
(;;- .
object;;. 4
sender;;5 ;
,;;; <
RoutedEventArgs;;= L
e;;M N
);;N O
{<< 	
_newUsername== 
=== 
TextBoxNewUsername== -
.==- .
Text==. 2
;==2 3
SetFormValidation>> 
(>> 
)>> 
;>>  
if?? 
(?? 
_ruleSet?? 
.?? (
AllValidationRulesHavePassed?? 5
(??5 6
)??6 7
)??7 8
{@@ 
tryAA 
{BB 
SetNewUsernameCC "
(CC" #
)CC# $
;CC$ %
}EE 
catchFF 
(FF 
TimeoutExceptionFF '
)FF' (
{GG 

MessageBoxHH 
.HH 
ShowHH #
(HH# $

PropertiesHH$ .
.HH. /
LangsHH/ 4
.HH4 5
	ResourcesHH5 >
.HH> ?
ServerTimeoutErrorHH? Q
)HHQ R
;HHR S
}II 
catchJJ 
(JJ %
EndpointNotFoundExceptionJJ 0
)JJ0 1
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
ServerConnectionLostLL? S
)LLS T
;LLT U
}MM 
catchNN 
(NN "
CommunicationExceptionNN -
)NN- .
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
.PP> ?$
CommunicationInterruptedPP? W
)PPW X
;PPX Y
}QQ 
}RR 
elseSS 
{TT 
ShowErrorMessageUU  
(UU  !
)UU! "
;UU" #
}VV 
}WW 	
privateYY 
voidYY 
SetNewUsernameYY #
(YY# $
)YY$ %
{ZZ 	
if[[ 
([[ 
_oldUsername[[ 
.[[ 
Equals[[ #
([[# $
_newUsername[[$ 0
)[[0 1
)[[1 2
{\\ 

MessageBox]] 
.]] 
Show]] 
(]]  

Properties]]  *
.]]* +
Langs]]+ 0
.]]0 1
	Resources]]1 :
.]]: ;-
!NewUsernameIsIdenticalToTheOldOne]]; \
)]]\ ]
;]]] ^
}^^ 
else__ 
{`` 
ifaa 
(aa 
UsernameIsAvailableaa '
(aa' (
)aa( )
)aa) *
{bb 
ifcc 
(cc *
UserNameWasChangedSuccessfullycc 6
(cc6 7
)cc7 8
)cc8 9
{dd 

MessageBoxee "
.ee" #
Showee# '
(ee' (

Propertiesee( 2
.ee2 3
Langsee3 8
.ee8 9
	Resourcesee9 B
.eeB C'
UsernameUpdatedSuccessfullyeeC ^
)ee^ _
;ee_ `
GoToMainWindowff &
(ff& '
)ff' (
;ff( )
}gg 
elsehh 
{ii 

MessageBoxjj "
.jj" #
Showjj# '
(jj' (

Propertiesjj( 2
.jj2 3
Langsjj3 8
.jj8 9
	Resourcesjj9 B
.jjB C 
UsernameUpdatedErrorjjC W
)jjW X
;jjX Y
}kk 
}ll 
elsemm 
{nn 

MessageBoxoo 
.oo 
Showoo #
(oo# $

Propertiesoo$ .
.oo. /
Langsoo/ 4
.oo4 5
	Resourcesoo5 >
.oo> ?
UsernameIsTakenoo? N
)ooN O
;ooO P
}pp 
}qq 
}ss 	
privateuu 
voiduu 
ShowErrorMessageuu %
(uu% &
)uu& '
{vv 	
IListww 
<ww  
ValidationRuleResultww &
>ww& '"
validationResultErrorsww( >
=ww? @
_ruleSetwwA I
.wwI J%
GetValidationResultErrorswwJ c
(wwc d
)wwd e
;wwe f
ifxx 
(xx "
validationResultErrorsxx %
.xx% &
Countxx& +
>xx, -
$numxx. /
)xx/ 0
{yy 

MessageBoxzz 
.zz 
Showzz 
(zz  "
validationResultErrorszz  6
[zz6 7
$numzz7 8
]zz8 9
.zz9 :
Messagezz: A
)zzA B
;zzB C
}{{ 
}|| 	
private~~ 
bool~~ *
UserNameWasChangedSuccessfully~~ 3
(~~3 4
)~~4 5
{ 	/
!AccountModifiabilityServiceClient
ÄÄ -/
!accountModifiabilityServiceClient
ÄÄ. O
=
ÄÄP Q
new
ÅÅ /
!AccountModifiabilityServiceClient
ÅÅ 5
(
ÅÅ5 6
)
ÅÅ6 7
;
ÅÅ7 8
return
ÉÉ /
!accountModifiabilityServiceClient
ÉÉ 4
.
ÉÉ4 5
ChangeUsername
ÉÉ5 C
(
ÉÉC D
_userEmailAddress
ÉÉD U
,
ÉÉU V
_newUsername
ÉÉW c
)
ÉÉc d
;
ÉÉd e
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ 
GoToMainWindow
ÜÜ #
(
ÜÜ# $
)
ÜÜ$ %
{
áá 	

MainWindow
àà 

mainWindow
àà !
=
àà" #
new
àà$ '

MainWindow
àà( 2
(
àà2 3
)
àà3 4
;
àà4 5

mainWindow
ââ 
.
ââ 
Show
ââ 
(
ââ 
)
ââ 
;
ââ 
this
ää 
.
ää 
Close
ää 
(
ää 
)
ää 
;
ää 
}
ãã 	
}
åå 
}çç ò 
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
}99 ËW
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
;K L
public 

CreateGame 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_cardDecksInfoList 
=  
new! $ 
ObservableCollection% 9
<9 :
MemoryGameService: K
.K L
DataTransferObjectsL _
._ `
CardDeckInfoDto` o
>o p
(p q
)q r
;r s
LoadCardDecksInfo 
( 
) 
;  
	_username 
= 
Sesion 
. 
	GetSesion (
.( )
Username) 1
;1 2
} 	
private 
void 
LoadCardDecksInfo &
(& '
)' (
{ 	
try 
{   
MemoryGameService!! !
.!!! "*
CardDeckRetrieverServiceClient!!" @*
cardDeckRetrieverServiceClient!!A _
=!!` a
new"" 
MemoryGameService"" %
.""% &*
CardDeckRetrieverServiceClient""& D
(""D E
)""E F
;""F G
MemoryGameService$$ !
.$$! "
DataTransferObjects$$" 5
.$$5 6
CardDeckInfoDto$$6 E
[$$E F
]$$F G
cardDecksInfo$$H U
=$$V W*
cardDeckRetrieverServiceClient%% 2
.%%2 3
GetCardDecksInfo%%3 C
(%%C D
)%%D E
;%%E F
for'' 
('' 
int'' 
index'' 
=''  
$num''! "
;''" #
index''$ )
<''* +
cardDecksInfo'', 9
.''9 :
Length'': @
;''@ A
index''B G
++''G I
)''I J
{(( 
_cardDecksInfoList)) &
.))& '
Add))' *
())* +
cardDecksInfo))+ 8
[))8 9
index))9 >
]))> ?
)))? @
;))@ A
}** 
CardDeckComboBox++  
.++  !
ItemsSource++! ,
=++- .
_cardDecksInfoList++/ A
;++A B
CardDeckComboBox,,  
.,,  !
DisplayMemberPath,,! 2
=,,3 4
$str,,5 C
;,,C D
CardDeckComboBox--  
.--  !
SelectedValuePath--! 2
=--3 4
$str--5 A
;--A B
}.. 
catch// 
(// %
EndpointNotFoundException// ,
)//, -
{00 

MessageBox11 
.11 
Show11 
(11  

Properties11  *
.11* +
Langs11+ 0
.110 1
	Resources111 :
.11: ; 
ServerConnectionLost11; O
)11O P
;11P Q
}22 
catch33 
(33 
TimeoutException33 #
)33# $
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
ServerTimeoutError55; M
)55M N
;55N O
}66 
catch77 
(77 "
CommunicationException77 )
)77) *
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
.99: ;$
CommunicationInterrupted99; S
)99S T
;99T U
}:: 
};; 	
public== 
void== #
CreateGameButtonClicked== +
(==+ ,
object==, 2
sender==3 9
,==9 :
RoutedEventArgs==; J
e==K L
)==L M
{>> 	
MemoryGameService?? 
.?? 
DataTransferObjects?? 1
.??1 2
CardDeckInfoDto??2 A
cardDeckForMatch??B R
=??S T
(@@ 
(@@ 
MemoryGameService@@ #
.@@# $
DataTransferObjects@@$ 7
.@@7 8
CardDeckInfoDto@@8 G
)@@G H
CardDeckComboBox@@H X
.@@X Y
SelectedItem@@Y e
)@@e f
;@@f g
varBB '
numberOfPlayersSelectedItemBB +
=BB, -
(BB. /
(BB/ 0
ComboBoxItemBB0 <
)BB< =#
ComboBoxNumberOfPlayersBB= T
.BBT U
SelectedItemBBU a
)BBa b
.BBb c
TagBBc f
;BBf g
ifDD 
(DD '
numberOfPlayersSelectedItemDD +
==DD, .
nullDD/ 3
)DD3 4
{EE 

MessageBoxFF 
.FF 
ShowFF 
(FF  

PropertiesFF  *
.FF* +
LangsFF+ 0
.FF0 1
	ResourcesFF1 :
.FF: ;2
&NumberOfPlayersForMatchWereNotSelectedFF; a
)FFa b
;FFb c
}GG 
elseGG 
ifGG 
(GG 
cardDeckForMatchGG %
==GG& (
nullGG) -
)GG- .
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
.II: ;%
NoCardDeckHasBeenSelectedII; T
)IIT U
;IIU V
}JJ 
elseKK 
{LL +
_numberOfPlayersDesiredForMatchMM /
=MM0 1
Int32MM2 7
.MM7 8
ParseMM8 =
(MM= >'
numberOfPlayersSelectedItemMM> Y
.MMY Z
ToStringMMZ b
(MMb c
)MMc d
)MMd e
;MMe f
_selectedCardDeckIdNN #
=NN$ %
cardDeckForMatchNN& 6
.NN6 7

CardDeckIdNN7 A
;NNA B
tryOO 
{PP 
CreateNewMatchQQ "
(QQ" #
)QQ# $
;QQ$ %
GoToWaitingRoomRR #
(RR# $
)RR$ %
;RR% &
}SS 
catchTT 
(TT %
EndpointNotFoundExceptionTT 0
)TT0 1
{UU 

MessageBoxVV 
.VV 
ShowVV #
(VV# $

PropertiesVV$ .
.VV. /
LangsVV/ 4
.VV4 5
	ResourcesVV5 >
.VV> ? 
ServerConnectionLostVV? S
)VVS T
;VVT U
}WW 
catchXX 
(XX 
TimeoutExceptionXX '
)XX' (
{YY 

MessageBoxZZ 
.ZZ 
ShowZZ #
(ZZ# $

PropertiesZZ$ .
.ZZ. /
LangsZZ/ 4
.ZZ4 5
	ResourcesZZ5 >
.ZZ> ?
ServerTimeoutErrorZZ? Q
)ZZQ R
;ZZR S
}[[ 
catch\\ 
(\\ "
CommunicationException\\ -
)\\- .
{]] 

MessageBox^^ 
.^^ 
Show^^ #
(^^# $

Properties^^$ .
.^^. /
Langs^^/ 4
.^^4 5
	Resources^^5 >
.^^> ?$
CommunicationInterrupted^^? W
)^^W X
;^^X Y
}__ 
}`` 
}aa 	
privatecc 
voidcc 
CreateNewMatchcc #
(cc# $
)cc$ %
{dd 	
LoadCardDeckee 
(ee 
)ee 
;ee 

_gameMatchff 
=ff 
newff 
MemoryGameServiceff .
.ff. /
DataTransferObjectsff/ B
.ffB C
MatchDtoffC K
(ffK L
)ffL M
{gg 
MaxNumberOfPlayershh "
=hh# $+
_numberOfPlayersDesiredForMatchhh% D
,hhD E
Hostii 
=ii 
	_usernameii  
,ii  !

HasStartedjj 
=jj 
falsejj "
,jj" #
CardDeckDtokk 
=kk 
	_cardDeckkk '
}ll 
;ll 
MemoryGameServicenn 
.nn &
MatchCreationServiceClientnn 8'
_matchCreationServiceClientnn9 T
=nnU V
newoo 
MemoryGameServiceoo %
.oo% &&
MatchCreationServiceClientoo& @
(oo@ A
)ooA B
;ooB C'
_matchCreationServiceClientqq '
.qq' (
CreateNewMatchqq( 6
(qq6 7

_gameMatchqq7 A
)qqA B
;qqB C
}rr 	
privatett 
voidtt 
LoadCardDecktt !
(tt! "
)tt" #
{uu 	
MemoryGameServicevv 
.vv *
CardDeckRetrieverServiceClientvv <*
cardDeckRetrieverServiceClientvv= [
=vv\ ]
newww 
MemoryGameServiceww %
.ww% &*
CardDeckRetrieverServiceClientww& D
(wwD E
)wwE F
;wwF G
	_cardDeckxx 
=xx *
cardDeckRetrieverServiceClientxx 6
.xx6 7
GetCardDeckAndCardsxx7 J
(xxJ K
_selectedCardDeckIdxxK ^
)xx^ _
;xx_ `
}yy 	
private{{ 
void{{ 
GoToWaitingRoom{{ $
({{$ %
){{% &
{|| 	
WaitingRoom}} 
waitingRoomView}} '
=}}( )
new}}* -
WaitingRoom}}. 9
(}}9 :
)}}: ;
{~~ 
GameMatchDto 
= 

_gameMatch )
}
ÄÄ 
;
ÄÄ 
waitingRoomView
ÇÇ 
.
ÇÇ 
Show
ÇÇ  
(
ÇÇ  !
)
ÇÇ! "
;
ÇÇ" #
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
ÑÑ 	
public
ÜÜ 
void
ÜÜ 
BackButtonClicked
ÜÜ %
(
ÜÜ% &
object
ÜÜ& ,
sender
ÜÜ- 3
,
ÜÜ3 4
RoutedEventArgs
ÜÜ5 D
e
ÜÜE F
)
ÜÜF G
{
áá 	
MainMenu
àà 
mainMenuView
àà !
=
àà" #
new
àà$ '
MainMenu
àà( 0
(
àà0 1
)
àà1 2
;
àà2 3
mainMenuView
ââ 
.
ââ 
Show
ââ 
(
ââ 
)
ââ 
;
ââ  
this
ää 
.
ää 
Close
ää 
(
ää 
)
ää 
;
ää 
}
ãã 	
}
åå 
}çç ˘N
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
{cc 	
vardd 
selectedPlayerdd 
=dd  
ExpelPlayerDataGriddd! 4
.dd4 5
SelectedItemdd5 A
;ddA B
ifee 
(ee 
selectedPlayeree 
!=ee  
nullee! %
)ee% &
{ff 
stringgg $
usernameOfSelectedPlayergg /
=gg0 1
selectedPlayergg2 @
.gg@ A
ToStringggA I
(ggI J
)ggJ K
;ggK L
ExpelVoteDtohh 
	expelVotehh &
=hh' (
newhh) ,
ExpelVoteDtohh- 9
(hh9 :
)hh: ;
{ii 
Hostjj 
=jj 
	MatchHostjj $
,jj$ %!
UsernameOfExpelPlayerkk )
=kk* +$
usernameOfSelectedPlayerkk, D
,kkD E!
UsernameOfVoterPlayerll )
=ll* +
PlayerUsernamell, :
}mm 
;mm 
_matchServiceClientnn #
.nn# $
ExpelPlayernn$ /
(nn/ 0
	expelVotenn0 9
)nn9 :
;nn: ;
}oo 
elsepp 
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
.rr: ;#
SelectPlayerToBeExpeledrr; R
)rrR S
;rrS T
}ss 
}uu 	
privateww 
voidww 
BackButtonClickedww &
(ww& '
objectww' -
senderww. 4
,ww4 5
RoutedEventArgsww6 E
ewwF G
)wwG H
{xx 	
GameOptionsyy 
gameOptionsViewyy '
=yy( )
newyy* -
GameOptionsyy. 9
(yy9 :
)yy: ;
{zz 
	MatchHost{{ 
={{ 
this{{  
.{{  !
	MatchHost{{! *
,{{* +"
NumberOfPlayersInMatch|| &
=||' (
this||) -
.||- ."
NumberOfPlayersInMatch||. D
,||D E
PlayerUsername}} 
=}}  
this}}! %
.}}% &
PlayerUsername}}& 4
,}}4 5
Context~~ 
=~~ 
this~~ 
.~~ 
Context~~ &
} 
; 
gameOptionsView
ÄÄ 
.
ÄÄ 
Show
ÄÄ  
(
ÄÄ  !
)
ÄÄ! "
;
ÄÄ" #
this
ÅÅ 
.
ÅÅ 
Close
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
}
ÉÉ 
}ÑÑ ∫'
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
}3 4
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int "
NumberOfPlayersInMatch )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
PlayerUsername $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
GameOptions 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
WindowLoaded !
(! "
object" (
sender) /
,/ 0
	EventArgs1 :
e; <
)< =
{ 	
if 
( "
NumberOfPlayersInMatch &
<' (
$num) *
)* +
{ 
ExpelPlayerButton !
.! "

Visibility" ,
=- .

Visibility/ 9
.9 :
	Collapsed: C
;C D
} 
} 	
private 
void "
LeaveGameButtonClicked +
(+ ,
object, 2
sender3 9
,9 :
RoutedEventArgs; J
eK L
)L M
{ 	
try   
{!! 
MemoryGameService"" !
.""! "
MatchServiceClient""" 4
matchServiceClient""5 G
=""H I
new""J M
MemoryGameService""N _
.""_ `
MatchServiceClient""` r
(""r s
Context""s z
)""z {
;""{ |
matchServiceClient## "
.##" #

LeaveMatch### -
(##- .
	MatchHost##. 7
,##7 8
PlayerUsername##9 G
)##G H
;##H I
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
()) 
TimeoutException)) #
)))# $
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
.++: ;
ServerTimeoutError++; M
)++M N
;++N O
},, 
catch-- 
(-- "
CommunicationException-- )
)--) *
{.. 

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
}00 
finally11 
{22 
this33 
.33 
Close33 
(33 
)33 
;33 
}44 
}55 	
private77 
void77 $
ExpelPlayerButtonClicked77 -
(77- .
object77. 4
sender775 ;
,77; <
RoutedEventArgs77= L
e77M N
)77N O
{88 	
ExpelPlayer99 
expelPlayerView99 '
=99( )
new99* -
ExpelPlayer99. 9
(999 :
)99: ;
{:: 
	MatchHost;; 
=;; 
this;;  
.;;  !
	MatchHost;;! *
,;;* +"
NumberOfPlayersInMatch<< &
=<<' (
this<<) -
.<<- ."
NumberOfPlayersInMatch<<. D
,<<D E
PlayerUsername== 
===  
this==! %
.==% &
PlayerUsername==& 4
,==4 5
Context>> 
=>> 
this>> 
.>> 
Context>> &
}?? 
;?? 
expelPlayerView@@ 
.@@ 
Show@@  
(@@  !
)@@! "
;@@" #
thisAA 
.AA 
CloseAA 
(AA 
)AA 
;AA 
}BB 	
privateDD 
voidDD 
BackButtonClickedDD &
(DD& '
objectDD' -
senderDD. 4
,DD4 5
RoutedEventArgsDD6 E
eDDF G
)DDG H
{EE 	
thisFF 
.FF 
CloseFF 
(FF 
)FF 
;FF 
}GG 	
}HH 
}II ÂL
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
;' (
public 
JoinGame 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "(
_matchDiscoveryServiceClient (
=) *
new+ .
MemoryGameService/ @
.@ A'
MatchDiscoveryServiceClientA \
(\ ]
)] ^
;^ _
LoadActiveMatches 
( 
) 
;  
} 	
private 
void 
LoadActiveMatches &
(& '
)' (
{ 	
try 
{ *
PopulateTableWithActiveMatches .
(. /
)/ 0
;0 1
} 
catch 
( 
TimeoutException #
)# $
{ 

MessageBox   
.   
Show   
(    

Properties    *
.  * +
Langs  + 0
.  0 1
	Resources  1 :
.  : ;
ServerTimeoutError  ; M
)  M N
;  N O
}!! 
catch"" 
("" %
EndpointNotFoundException"" ,
)"", -
{## 

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
ServerConnectionLost$$; O
)$$O P
;$$P Q
}%% 
catch&& 
(&& "
CommunicationException&& )
)&&) *
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
.((: ;$
CommunicationInterrupted((; S
)((S T
;((T U
})) 
}** 	
private,, 
void,, *
PopulateTableWithActiveMatches,, 3
(,,3 4
),,4 5
{-- 	 
ObservableCollection..  
<..  !
MatchDto..! )
>..) *
listOfActiveMatches..+ >
=..? @
new..A D 
ObservableCollection..E Y
<..Y Z
MatchDto..Z b
>..b c
(..c d
)..d e
;..e f
MatchDto// 
[// 
]// 
activeMatches// $
=//% &(
_matchDiscoveryServiceClient//' C
.//C D
GetActiveMatches//D T
(//T U
)//U V
;//V W
for11 
(11 
int11 
indexOfActualMatch11 '
=11( )
$num11* +
;11+ ,
indexOfActualMatch11- ?
<11@ A
activeMatches11B O
.11O P
Length11P V
;11V W
indexOfActualMatch11X j
++11j l
)11l m
{22 
listOfActiveMatches33 #
.33# $
Add33$ '
(33' (
activeMatches33( 5
[335 6
indexOfActualMatch336 H
]33H I
)33I J
;33J K
}44 
GamesDataGrid66 
.66 
ItemsSource66 %
=66& '
listOfActiveMatches66( ;
;66; <
}77 	
private99 
void99 
JoinButtonClicked99 &
(99& '
object99' -
sender99. 4
,994 5
RoutedEventArgs996 E
e99F G
)99G H
{:: 	
_selectedMatch;; 
=;; 
(;; 
MatchDto;; &
);;& '
GamesDataGrid;;' 4
.;;4 5
SelectedItem;;5 A
;;;A B
try<< 
{== 
	JoinMatch>> 
(>> 
)>> 
;>> 
}?? 
catch@@ 
(@@ 
TimeoutException@@ #
)@@# $
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
ServerTimeoutErrorBB; M
)BBM N
;BBN O
}CC 
catchDD 
(DD %
EndpointNotFoundExceptionDD ,
)DD, -
{EE 

MessageBoxFF 
.FF 
ShowFF 
(FF  

PropertiesFF  *
.FF* +
LangsFF+ 0
.FF0 1
	ResourcesFF1 :
.FF: ; 
ServerConnectionLostFF; O
)FFO P
;FFP Q
}GG 
catchHH 
(HH "
CommunicationExceptionHH )
)HH) *
{II 

MessageBoxJJ 
.JJ 
ShowJJ 
(JJ  

PropertiesJJ  *
.JJ* +
LangsJJ+ 0
.JJ0 1
	ResourcesJJ1 :
.JJ: ;$
CommunicationInterruptedJJ; S
)JJS T
;JJT U
}KK 
}LL 	
privateNN 
voidNN 
	JoinMatchNN 
(NN 
)NN  
{OO 	
ifPP 
(PP 
_selectedMatchPP 
==PP !
nullPP" &
)PP& '
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
NoMatchWasSelectedRR; M
)RRM N
;RRN O
}SS 
elseTT 
{UU 
tryVV 
{WW 
ifXX 
(XX 
PlayerCanJoinToGameXX +
(XX+ ,
)XX, -
)XX- .
{YY 
GoToWaitingRoomZZ '
(ZZ' (
)ZZ( )
;ZZ) *
}[[ 
else\\ 
{]] 

MessageBox^^ "
.^^" #
Show^^# '
(^^' (

Properties^^( 2
.^^2 3
Langs^^3 8
.^^8 9
	Resources^^9 B
.^^B C
FullGameMessage^^C R
)^^R S
;^^S T
}__ 
}`` 
catchaa 
(aa 
FaultExceptionaa %
<aa% &

MemoryGameaa& 0
.aa0 1
MemoryGameServiceaa1 B
.aaB C
FaultsaaC I
.aaI J"
MatchAccessDeniedFaultaaJ `
>aa` a
)aaa b
{bb 

MessageBoxcc 
.cc 
Showcc #
(cc# $

Propertiescc$ .
.cc. /
Langscc/ 4
.cc4 5
	Resourcescc5 >
.cc> ?)
TriedToJoinToNonexistentMatchcc? \
)cc\ ]
;cc] ^
}dd 
catchee 
(ee 
TimeoutExceptionee '
)ee' (
{ff 

MessageBoxgg 
.gg 
Showgg #
(gg# $

Propertiesgg$ .
.gg. /
Langsgg/ 4
.gg4 5
	Resourcesgg5 >
.gg> ?
ServerTimeoutErrorgg? Q
)ggQ R
;ggR S
}hh 
catchii 
(ii %
EndpointNotFoundExceptionii 0
)ii0 1
{jj 

MessageBoxkk 
.kk 
Showkk #
(kk# $

Propertieskk$ .
.kk. /
Langskk/ 4
.kk4 5
	Resourceskk5 >
.kk> ? 
ServerConnectionLostkk? S
)kkS T
;kkT U
}ll 
catchmm 
(mm "
CommunicationExceptionmm -
)mm- .
{nn 

MessageBoxoo 
.oo 
Showoo #
(oo# $

Propertiesoo$ .
.oo. /
Langsoo/ 4
.oo4 5
	Resourcesoo5 >
.oo> ?$
CommunicationInterruptedoo? W
)ooW X
;ooX Y
}pp 
}qq 
}rr 	
privatett 
booltt 
PlayerCanJoinToGamett (
(tt( )
)tt) *
{uu 	
stringvv 
	matchHostvv 
=vv 
_selectedMatchvv -
.vv- .
Hostvv. 2
;vv2 3
boolww 
canJoinToGameww 
=ww  (
_matchDiscoveryServiceClientww! =
.ww= >
CanJoinww> E
(wwE F
	matchHostwwF O
)wwO P
;wwP Q
returnxx 
canJoinToGamexx  
;xx  !
}yy 	
private{{ 
void{{ 
GoToWaitingRoom{{ $
({{$ %
){{% &
{|| 	
WaitingRoom}} 
waitingRoomView}} '
=}}( )
new}}* -
WaitingRoom}}. 9
(}}9 :
)}}: ;
{~~ 
GameMatchDto 
= 
_selectedMatch -
}
ÄÄ 
;
ÄÄ 
waitingRoomView
ÅÅ 
.
ÅÅ 
Show
ÅÅ  
(
ÅÅ  !
)
ÅÅ! "
;
ÅÅ" #
this
ÇÇ 
.
ÇÇ 
Close
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ 
BackButtonClicked
ÖÖ &
(
ÖÖ& '
object
ÖÖ' -
sender
ÖÖ. 4
,
ÖÖ4 5
RoutedEventArgs
ÖÖ6 E
e
ÖÖF G
)
ÖÖG H
{
ÜÜ 	
MainMenu
áá 
mainMenuView
áá !
=
áá" #
new
áá$ '
MainMenu
áá( 0
(
áá0 1
)
áá1 2
;
áá2 3
mainMenuView
àà 
.
àà 
Show
àà 
(
àà 
)
àà 
;
àà  
this
ââ 
.
ââ 
Close
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
}
ãã 
}åå Â[
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
private &
AccessibilityServiceClient *'
_accessibilityServiceClient+ F
;F G
public 
Login 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "'
_accessibilityServiceClient '
=( )
new* -&
AccessibilityServiceClient. H
(H I
)I J
;J K
} 	
private 
void 
GetDataFromFields &
(& '
)' (
{ 	
	_username 
= 
TextBoxUsername '
.' (
Text( ,
;, -
	_password 
= 
PasswordBoxPassword +
.+ ,
Password, 4
;4 5
} 	
private!! 
void!! 
SetFormValidation!! &
(!!& '
)!!' (
{"" 	
GetDataFromFields## 
(## 
)## 
;##  
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
new%%' *#
NonEmptyFieldValidation%%+ B
(%%B C
	_username%%C L
)%%L M
)%%M N
;%%N O
_ruleSet&& 
.&& 
AddValidationRule&& &
(&&& '
new&&' *#
NonEmptyFieldValidation&&+ B
(&&B C
	_password&&C L
)&&L M
)&&M N
;&&N O
}'' 	
private)) 
void)) 
ShowErrorMessage)) %
())% &
)))& '
{** 	
IList++ 
<++  
ValidationRuleResult++ &
>++& '"
validationResultErrors++( >
=++? @
_ruleSet++A I
.++I J%
GetValidationResultErrors++J c
(++c d
)++d e
;++e f
if,, 
(,, "
validationResultErrors,, &
.,,& '
Count,,' ,
>,,- .
$num,,/ 0
),,0 1
{-- 

MessageBox.. 
... 
Show.. 
(..  "
validationResultErrors..  6
[..6 7
$num..7 8
]..8 9
...9 :
Message..: A
)..A B
;..B C
}// 
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
{33 	
SetFormValidation44 
(44 
)44 
;44  
if55 
(55 
_ruleSet55 
.55 (
AllValidationRulesHavePassed55 5
(555 6
)556 7
)557 8
{66 
try77 
{88 
	LoginUser99 
(99 
)99 
;99  
}:: 
catch;; 
(;; 
FaultException;; %
<;;% &
MemoryGameService;;& 7
.;;7 8
Faults;;8 >
.;;> ? 
NonExistentUserFault;;? S
>;;S T
);;T U
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
.==> ?
UserDoesNotExist==? O
)==O P
;==P Q
}>> 
catch?? 
(?? %
EndpointNotFoundException?? 0
)??0 1
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
ServerConnectionLostAA? S
)AAS T
;AAT U
}BB 
catchCC 
(CC 
TimeoutExceptionCC '
)CC' (
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
ServerTimeoutErrorEE? Q
)EEQ R
;EER S
}FF 
catchGG 
(GG "
CommunicationExceptionGG -
)GG- .
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
.II> ?$
CommunicationInterruptedII? W
)IIW X
;IIX Y
}JJ 
}KK 
elseLL 
{MM 
ShowErrorMessageNN  
(NN  !
)NN! "
;NN" #
}OO 
}PP 	
publicRR 
stringRR 
GetUserEmailAdressRR (
(RR( )
)RR) *
{SS 	
stringTT 
usernameTT 
=TT 
TextBoxUsernameTT -
.TT- .
TextTT. 2
;TT2 3
stringUU 
emailAddressUU 
=UU  !'
_accessibilityServiceClientUU" =
.UU= >
GetUserEmailAddressUU> Q
(UUQ R
usernameUUR Z
)UUZ [
;UU[ \
returnVV 
emailAddressVV 
;VV  
}WW 	
privateYY 
voidYY 
	LoginUserYY 
(YY 
)YY  
{ZZ 	
if[[ 
([[ 
LoginIsValid[[ 
([[ 
)[[ 
)[[ 
{\\ 
if]] 
(]] 
EmailIsVerified]] #
(]]# $
)]]$ %
)]]% &
{^^ 
string__ 
emailAddress__ '
=__( )
GetUserEmailAdress__* <
(__< =
)__= >
;__> ?
Sesion`` 
playerSesion`` '
=``( )
Sesion``* 0
.``0 1
	GetSesion``1 :
;``: ;
playerSesionaa  
.aa  !
Usernameaa! )
=aa* +
	_usernameaa, 5
;aa5 6
playerSesionbb  
.bb  !
EmailAddressbb! -
=bb. /
emailAddressbb0 <
;bb< =
GoToMainMenucc  
(cc  !
)cc! "
;cc" #
}dd 
elseee 
{ff 
GoToActivationTokengg '
(gg' (
)gg( )
;gg) *
}hh 
}ii 
elsejj 
{kk 

MessageBoxll 
.ll 
Showll 
(ll  

Propertiesll  *
.ll* +
Langsll+ 0
.ll0 1
	Resourcesll1 :
.ll: ;"
NonMatchingCredentialsll; Q
)llQ R
;llR S
}mm 
}nn 	
publicpp 
boolpp 
LoginIsValidpp  
(pp  !
)pp! "
{qq 	
BCryptHashGeneratorrr 
bCryptHashGeneratorrr  3
=rr4 5
newrr6 9
BCryptHashGeneratorrr: M
(rrM N
)rrN O
;rrO P
stringss 
saltss 
=ss 
GetPasswordSaltss )
(ss) *
)ss* +
;ss+ ,
stringtt 
encryptedPasswordtt $
=tt% &
bCryptHashGeneratortt' :
.tt: ;#
GenerateEncryptedStringtt; R
(ttR S
	_passwordttS \
,tt\ ]
salttt^ b
)ttb c
;ttc d
booluu 
hasAccessRightsuu  
=uu! "'
_accessibilityServiceClientuu# >
.uu> ?
HasAccessRightsuu? N
(uuN O
	_usernameuuO X
,uuX Y
encryptedPassworduuZ k
)uuk l
;uul m
returnvv 
hasAccessRightsvv "
;vv" #
}ww 	
privateyy 
stringyy 
GetPasswordSaltyy &
(yy& '
)yy' (
{zz 	
string{{ 
salt{{ 
={{ '
_accessibilityServiceClient{{ 5
.{{5 6
GetSalt{{6 =
({{= >
	_username{{> G
){{G H
;{{H I
return|| 
salt|| 
;|| 
}}} 	
public 
bool 
EmailIsVerified #
(# $
)$ %
{
ÄÄ 	
string
ÅÅ 
username
ÅÅ 
=
ÅÅ 
TextBoxUsername
ÅÅ -
.
ÅÅ- .
Text
ÅÅ. 2
;
ÅÅ2 3
bool
ÇÇ 
emailIsVerified
ÇÇ  
=
ÇÇ! ")
_accessibilityServiceClient
ÇÇ# >
.
ÇÇ> ?

IsVerified
ÇÇ? I
(
ÇÇI J
username
ÇÇJ R
)
ÇÇR S
;
ÇÇS T
return
ÉÉ 
emailIsVerified
ÉÉ "
;
ÉÉ" #
}
ÑÑ 	
public
ÜÜ 
void
ÜÜ 
GoToMainMenu
ÜÜ  
(
ÜÜ  !
)
ÜÜ! "
{
áá 	
MainMenu
àà 
mainMenuView
àà !
=
àà" #
new
àà$ '
MainMenu
àà( 0
(
àà0 1
)
àà1 2
;
àà2 3
mainMenuView
ââ 
.
ââ 
Show
ââ 
(
ââ 
)
ââ 
;
ââ  
this
ää 
.
ää 
Close
ää 
(
ää 
)
ää 
;
ää 
}
ãã 	
private
çç 
void
çç )
RecoverPasswordLabelClicked
çç 0
(
çç0 1
object
çç1 7
sender
çç8 >
,
çç> ?
RoutedEventArgs
çç@ O
e
ççP Q
)
ççQ R
{
éé 	
RecoverPassword
èè 
mainWindowView
èè *
=
èè+ ,
new
èè- 0
RecoverPassword
èè1 @
(
èè@ A
)
èèA B
;
èèB C
mainWindowView
êê 
.
êê 
Show
êê 
(
êê  
)
êê  !
;
êê! "
this
ëë 
.
ëë 
Close
ëë 
(
ëë 
)
ëë 
;
ëë 
}
íí 	
private
îî 
void
îî 
BackButtonClicked
îî &
(
îî& '
object
îî' -
sender
îî. 4
,
îî4 5
RoutedEventArgs
îî6 E
e
îîF G
)
îîG H
{
ïï 	

MainWindow
ññ 
mainWindowView
ññ %
=
ññ& '
new
ññ( +

MainWindow
ññ, 6
(
ññ6 7
)
ññ7 8
;
ññ8 9
mainWindowView
óó 
.
óó 
Show
óó 
(
óó  
)
óó  !
;
óó! "
this
òò 
.
òò 
Close
òò 
(
òò 
)
òò 
;
òò 
}
ôô 	
private
õõ 
void
õõ !
GoToActivationToken
õõ (
(
õõ( )
)
õõ) *
{
úú 	
string
ùù 
emailAddress
ùù 
=
ùù  ! 
GetUserEmailAdress
ùù" 4
(
ùù4 5
)
ùù5 6
;
ùù6 7
ActivationToken
ûû #
activationTokenWindow
ûû 1
=
ûû2 3
new
ûû4 7
ActivationToken
ûû8 G
(
ûûG H
emailAddress
ûûH T
,
ûûT U
TextBoxUsername
ûûV e
.
ûûe f
Text
ûûf j
)
ûûj k
;
ûûk l#
activationTokenWindow
üü !
.
üü! "
Show
üü" &
(
üü& '
)
üü' (
;
üü( )
this
†† 
.
†† 
Close
†† 
(
†† 
)
†† 
;
†† 
}
°° 	
}
¢¢ 
}££ •
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
{ 
public 
string 
[ 
] 
Players 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
NumberOfPlayers "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
private 
InstanceContext 
_context  (
=) *
null+ /
;/ 0
private 
MatchServiceClient "
_matchServiceClient# 6
;6 7
public 
CardDeckDTO 
CardDeck #
{$ %
get& )
;) *
set+ .
;. /
}0 1
private 
List 
< 
	ImageCard 
> 
_imageCards  +
;+ ,
private 
int %
_numberOfMovementsAllowed -
;- .
private 
IList 
< 
	ImageCard 
>  &
_cardsFlippedInCurrentTurn! ;
;; <
private 
bool !
_playerHasFormedAPair *
;* +
private 
bool 0
$_windowIsBeingClosedByTheCloseButton 9
;9 :
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT c
)c d
;d e
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
gameBoardDrawer>> 
.>> 
Draw>> #
(>># $
)>>$ %
;>>% &
gameBoardDrawer?? 
.?? !
SetEventOnCardClicked?? 4
(??4 5
GetClickedCard??5 C
)??C D
;??D E
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
   
}
ÀÀ 	
public
ÕÕ 
void
ÕÕ 
UncoverCardd
ÕÕ  
(
ÕÕ  !
int
ÕÕ! $
	cardIndex
ÕÕ% .
)
ÕÕ. /
{
ŒŒ 	
_imageCards
œœ 
[
œœ 
	cardIndex
œœ !
]
œœ! "
.
œœ" #
Source
œœ# )
=
œœ* +
_imageCards
œœ, 7
[
œœ7 8
	cardIndex
œœ8 A
]
œœA B
.
œœB C

FrontImage
œœC M
;
œœM N
}
–– 	
private
““ 
async
““ 
void
““  
FlipBothCardsAgain
““ -
(
““- .
CardPairDto
““. 9
cardPairDto
““: E
)
““E F
{
”” 	
await
‘‘ 
Task
‘‘ 
.
‘‘ 
Delay
‘‘ 
(
‘‘ 
$num
‘‘ !
)
‘‘! "
;
‘‘" #
_imageCards
’’ 
[
’’ 
cardPairDto
’’ #
.
’’# $
IndexOfCard1
’’$ 0
]
’’0 1
.
’’1 2
Source
’’2 8
=
’’9 :
_imageCards
’’; F
[
’’F G
cardPairDto
’’G R
.
’’R S
IndexOfCard1
’’S _
]
’’_ `
.
’’` a
	BackImage
’’a j
;
’’j k
_imageCards
÷÷ 
[
÷÷ 
cardPairDto
÷÷ #
.
÷÷# $
IndexOfCard2
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
IndexOfCard2
÷÷S _
]
÷÷_ `
.
÷÷` a
	BackImage
÷÷a j
;
÷÷j k
}
◊◊ 	
public
ŸŸ 
void
ŸŸ  
NotifyTurnHasEnded
ŸŸ &
(
ŸŸ& '
string
ŸŸ' -
username
ŸŸ. 6
,
ŸŸ6 7
CardPairDto
ŸŸ8 C
cardPairDto
ŸŸD O
)
ŸŸO P
{
⁄⁄ 	
	TurnLabel
€€ 
.
€€ 
Content
€€ 
=
€€ 

Properties
€€  *
.
€€* +
Langs
€€+ 0
.
€€0 1
	Resources
€€1 :
.
€€: ;
TurnMessage
€€; F
+
€€G H
$str
€€I M
+
€€N O
username
€€P X
;
€€X Y
if
›› 
(
›› 
Sesion
›› 
.
›› 
	GetSesion
››  
.
››  !
Username
››! )
.
››) *
Equals
››* 0
(
››0 1
username
››1 9
)
››9 :
)
››: ;
{
ﬁﬁ '
_numberOfMovementsAllowed
ﬂﬂ )
=
ﬂﬂ* +
$num
ﬂﬂ, -
;
ﬂﬂ- .
}
‡‡ 
if
‚‚ 
(
‚‚ 
!
‚‚ 
cardPairDto
‚‚ 
.
‚‚ 
BothCardsAreEqual
‚‚ -
)
‚‚- .
{
„„  
FlipBothCardsAgain
‰‰ "
(
‰‰" #
cardPairDto
‰‰# .
)
‰‰. /
;
‰‰/ 0
}
ÂÂ 
}
ÊÊ 	
public
ËË 
void
ËË 
ShowWinners
ËË 
(
ËË  
string
ËË  &
winner
ËË' -
)
ËË- .
{
ÈÈ 	

MessageBox
ÍÍ 
.
ÍÍ 
Show
ÍÍ 
(
ÍÍ 
winner
ÍÍ "
+
ÍÍ# $
$str
ÍÍ% (
+
ÍÍ) *

Properties
ÍÍ+ 5
.
ÍÍ5 6
Langs
ÍÍ6 ;
.
ÍÍ; <
	Resources
ÍÍ< E
.
ÍÍE F

WinMessage
ÍÍF P
)
ÍÍP Q
;
ÍÍQ R
}
ÎÎ 	
public
ÌÌ 
void
ÌÌ 
MatchHasEnded
ÌÌ !
(
ÌÌ! "
)
ÌÌ" #
{
ÓÓ 	
GoToMainMenuView
ÔÔ 
(
ÔÔ 
)
ÔÔ 
;
ÔÔ 
}
 	
public
ÚÚ 
void
ÚÚ "
NotifyPlayerWasExpel
ÚÚ (
(
ÚÚ( )
string
ÚÚ) /!
expelPlayerUsername
ÚÚ0 C
,
ÚÚC D
int
ÚÚE H
[
ÚÚH I
]
ÚÚI J
cardsUncovered
ÚÚK Y
)
ÚÚY Z
{
ÛÛ 	
if
ÙÙ 
(
ÙÙ 
Sesion
ÙÙ 
.
ÙÙ 
	GetSesion
ÙÙ  
.
ÙÙ  !
Username
ÙÙ! )
.
ÙÙ) *
Equals
ÙÙ* 0
(
ÙÙ0 1!
expelPlayerUsername
ÙÙ1 D
)
ÙÙD E
)
ÙÙE F
{
ıı 
GoToMainMenuView
ˆˆ  
(
ˆˆ  !
)
ˆˆ! "
;
ˆˆ" #
}
˜˜ 
else
¯¯ 
{
˘˘ 
for
˙˙ 
(
˙˙ 
int
˙˙ 
index
˙˙ 
=
˙˙  
$num
˙˙! "
;
˙˙" #
index
˙˙$ )
<
˙˙* +
cardsUncovered
˙˙, :
.
˙˙: ;
Length
˙˙; A
;
˙˙A B
index
˙˙C H
++
˙˙H J
)
˙˙J K
{
˚˚ 
_imageCards
¸¸ 
[
¸¸  
cardsUncovered
¸¸  .
[
¸¸. /
index
¸¸/ 4
]
¸¸4 5
]
¸¸5 6
.
¸¸6 7
Source
¸¸7 =
=
¸¸> ?
_imageCards
¸¸@ K
[
¸¸K L
cardsUncovered
¸¸L Z
[
¸¸Z [
index
¸¸[ `
]
¸¸` a
]
¸¸a b
.
¸¸b c
	BackImage
¸¸c l
;
¸¸l m
}
˝˝ 

MessageBox
˛˛ 
.
˛˛ 
Show
˛˛ 
(
˛˛  !
expelPlayerUsername
˛˛  3
+
˛˛4 5
$str
˛˛6 9
+
˛˛: ;

Properties
˛˛< F
.
˛˛F G
Langs
˛˛G L
.
˛˛L M
	Resources
˛˛M V
.
˛˛V W
ExpelMessage
˛˛W c
)
˛˛c d
;
˛˛d e
NumberOfPlayers
ˇˇ 
--
ˇˇ !
;
ˇˇ! "
}
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ $
NotifyPlayerLeaveMatch
ÉÉ *
(
ÉÉ* +
string
ÉÉ+ 1
username
ÉÉ2 :
,
ÉÉ: ;
int
ÉÉ< ?
[
ÉÉ? @
]
ÉÉ@ A
cardsUncovered
ÉÉB P
)
ÉÉP Q
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
Sesion
ÖÖ 
.
ÖÖ 
	GetSesion
ÖÖ  
.
ÖÖ  !
Username
ÖÖ! )
.
ÖÖ) *
Equals
ÖÖ* 0
(
ÖÖ0 1
username
ÖÖ1 9
)
ÖÖ9 :
)
ÖÖ: ;
{
ÜÜ 
GoToMainMenuView
áá  
(
áá  !
)
áá! "
;
áá" #
}
àà 
else
ââ 
{
ää 
for
ãã 
(
ãã 
int
ãã 
index
ãã 
=
ãã  
$num
ãã! "
;
ãã" #
index
ãã$ )
<
ãã* +
cardsUncovered
ãã, :
.
ãã: ;
Length
ãã; A
;
ããA B
index
ããC H
++
ããH J
)
ããJ K
{
åå 
_imageCards
çç 
[
çç  
cardsUncovered
çç  .
[
çç. /
index
çç/ 4
]
çç4 5
]
çç5 6
.
çç6 7
Source
çç7 =
=
çç> ?
_imageCards
çç@ K
[
ççK L
cardsUncovered
ççL Z
[
ççZ [
index
çç[ `
]
çç` a
]
çça b
.
ççb c
	BackImage
ççc l
;
ççl m
}
éé 

MessageBox
èè 
.
èè 
Show
èè 
(
èè  
username
èè  (
+
èè) *
$str
èè+ .
+
èè/ 0

Properties
èè1 ;
.
èè; <
Langs
èè< A
.
èèA B
	Resources
èèB K
.
èèK L
LeaveMatchMessage
èèL ]
)
èè] ^
;
èè^ _
NumberOfPlayers
êê 
--
êê !
;
êê! "
}
ëë 
}
íí 	
public
îî 
void
îî "
EndTurnOfExpelPlayer
îî (
(
îî( )
string
îî) / 
nextPlayerUsername
îî0 B
)
îîB C
{
ïï 	
	TurnLabel
ññ 
.
ññ 
Content
ññ 
=
ññ 

Properties
ññ  *
.
ññ* +
Langs
ññ+ 0
.
ññ0 1
	Resources
ññ1 :
.
ññ: ;
TurnMessage
ññ; F
+
ññG H
$str
ññI M
+
ññN O 
nextPlayerUsername
ññP b
;
ññb c
if
òò 
(
òò 
Sesion
òò 
.
òò 
	GetSesion
òò  
.
òò  !
Username
òò! )
.
òò) *
Equals
òò* 0
(
òò0 1 
nextPlayerUsername
òò1 C
)
òòC D
)
òòD E
{
ôô '
_numberOfMovementsAllowed
öö )
=
öö* +
$num
öö, -
;
öö- .
}
õõ 
}
úú 	
private
ûû 
void
ûû 
GoToMainMenuView
ûû %
(
ûû% &
)
ûû& '
{
üü 	2
$_windowIsBeingClosedByTheCloseButton
†† 0
=
††1 2
false
††3 8
;
††8 9
MainMenu
°° 
mainMenuView
°° !
=
°°" #
new
°°$ '
MainMenu
°°( 0
(
°°0 1
)
°°1 2
;
°°2 3
mainMenuView
¢¢ 
.
¢¢ 
Show
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢  
this
££ 
.
££ 
Close
££ 
(
££ 
)
££ 
;
££ 
}
§§ 	
}
•• 
}¶¶  R
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
private22 
void22 !
SendCodeButtonClicked22 *
(22* +
object22+ 1
sender222 8
,228 9
RoutedEventArgs22: I
e22J K
)22K L
{33 	
try44 
{55 
SendCodeToUser66 
(66 
)66  
;66  !
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
(<< 
TimeoutException<< #
timeoutException<<$ 4
)<<4 5
{== 
_logger>> 
.>> 
Fatal>> 
(>> 
timeoutException>> .
)>>. /
;>>/ 0

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
CommunicationExceptionAA )"
communicationExceptionAA* @
)AA@ A
{BB 
_loggerCC 
.CC 
FatalCC 
(CC "
communicationExceptionCC 4
)CC4 5
;CC5 6

MessageBoxDD 
.DD 
ShowDD 
(DD  

PropertiesDD  *
.DD* +
LangsDD+ 0
.DD0 1
	ResourcesDD1 :
.DD: ;$
CommunicationInterruptedDD; S
)DDS T
;DDT U
}EE 
}FF 	
privateHH 
voidHH 
SendCodeToUserHH #
(HH# $
)HH$ %
{II 	
_emailAddressJJ 
=JJ 
TextBoxEmailJJ (
.JJ( )
TextJJ) -
;JJ- .
SetFormValidationKK 
(KK 
)KK 
;KK  
ifLL 
(LL 
_ruleSetLL 
.LL (
AllValidationRulesHavePassedLL 5
(LL5 6
)LL6 7
)LL7 8
{MM 
ifNN 
(NN 
EmailIsRegisteredNN %
(NN% &
)NN& '
)NN' (
{OO 
LoadUsernamePP  
(PP  !
)PP! "
;PP" #%
GenerateVerificationTokenQQ -
(QQ- .
)QQ. /
;QQ/ 0
boolRR +
newVerificationTokenWasAssignedRR 8
=RR9 :"
AssignNewRecoveryTokenRR; Q
(RRQ R
)RRR S
;RRS T
ifSS 
(SS +
newVerificationTokenWasAssignedSS 7
)SS7 8
{TT 
SendRecoveryTokenUU )
(UU) *
)UU* +
;UU+ ,

MessageBoxVV "
.VV" #
ShowVV# '
(VV' (

PropertiesVV( 2
.VV2 3
LangsVV3 8
.VV8 9
	ResourcesVV9 B
.VVB C%
PasswordRecoveryTokenSentVVC \
)VV\ ]
;VV] ^
GoToRestorePasswordWW +
(WW+ ,
)WW, -
;WW- .
}XX 
elseYY 
{ZZ 

MessageBox[[ "
.[[" #
Show[[# '
([[' (

Properties[[( 2
.[[2 3
Langs[[3 8
.[[8 9
	Resources[[9 B
.[[B C%
RecoveryTokenSendingError[[C \
)[[\ ]
;[[] ^
}\\ 
}]] 
else^^ 
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
NonRegisteredEmail``? Q
)``Q R
;``R S
}aa 
}bb 
elsecc 
{dd 
ShowErrorMessageee  
(ee  !
)ee! "
;ee" #
}ff 
}gg 	
privateii 
boolii 
EmailIsRegisteredii &
(ii& '
)ii' (
{jj 	&
AccessibilityServiceClientkk &
clientkk' -
=kk. /
newkk0 3&
AccessibilityServiceClientkk4 N
(kkN O
)kkO P
;kkP Q
returnll 
clientll 
.ll 
ItsRegisteredll '
(ll' (
_emailAddressll( 5
)ll5 6
;ll6 7
}mm 	
privateoo 
voidoo %
GenerateVerificationTokenoo .
(oo. /
)oo/ 0
{pp 	
_verificationTokenqq 
=qq  
TokenManagerqq! -
.qq- .
GenerateTokenqq. ;
(qq; <
)qq< =
;qq= >
}rr 	
privatett 
booltt "
AssignNewRecoveryTokentt +
(tt+ ,
)tt, -
{uu 	,
 AccountVerificationServiceClientvv ,,
 accountVerificationServiceClientvv- M
=vvN O
newww ,
 AccountVerificationServiceClientww 4
(ww4 5
)ww5 6
;ww6 7
returnxx ,
 accountVerificationServiceClientxx 3
.xx3 4"
AssignNewRecoveryTokenxx4 J
(xxJ K
_emailAddressxxK X
,xxX Y
_verificationTokenxxZ l
)xxl m
;xxm n
}yy 	
private{{ 
void{{ 
SendRecoveryToken{{ &
({{& '
){{' (
{|| 	
TokenInfoDto}} 
recoveryToken}} &
=}}' (
new}}) ,
TokenInfoDto}}- 9
(}}9 :
)}}: ;
{~~ 
Name 
= 
	_username  
,  !
EmailAddress
ÄÄ 
=
ÄÄ 
_emailAddress
ÄÄ ,
,
ÄÄ, -
Token
ÅÅ 
=
ÅÅ  
_verificationToken
ÅÅ *
,
ÅÅ* +
Subject
ÇÇ 
=
ÇÇ 

Properties
ÇÇ $
.
ÇÇ$ %
Langs
ÇÇ% *
.
ÇÇ* +
	Resources
ÇÇ+ 4
.
ÇÇ4 5
PasswordRecovery
ÇÇ5 E
,
ÇÇE F
Body
ÉÉ 
=
ÉÉ 

Properties
ÉÉ !
.
ÉÉ! "
Langs
ÉÉ" '
.
ÉÉ' (
	Resources
ÉÉ( 1
.
ÉÉ1 2
RecoveryToken
ÉÉ2 ?
}
ÑÑ 
;
ÑÑ 
TokenManager
ÖÖ 
.
ÖÖ 
	SendToken
ÖÖ "
(
ÖÖ" #
recoveryToken
ÖÖ# 0
)
ÖÖ0 1
;
ÖÖ1 2
}
ÜÜ 	
private
ââ 
void
ââ 
LoadUsername
ââ !
(
ââ! "
)
ââ" #
{
ää 	(
AccessibilityServiceClient
ãã &
client
ãã' -
=
ãã. /
new
ãã0 3(
AccessibilityServiceClient
ãã4 N
(
ããN O
)
ããO P
;
ããP Q
	_username
åå 
=
åå 
client
åå 
.
åå 
GetUsername
åå *
(
åå* +
_emailAddress
åå+ 8
)
åå8 9
;
åå9 :
}
çç 	
private
êê 
void
êê !
GoToRestorePassword
êê (
(
êê( )
)
êê) *
{
ëë 	
RestorePassword
íí #
restorePasswordWindow
íí 1
=
íí2 3
new
ìì 
RestorePassword
ìì #
(
ìì# $
_emailAddress
ìì$ 1
,
ìì1 2
	_username
ìì3 <
)
ìì< =
;
ìì= >#
restorePasswordWindow
îî !
.
îî! "
Show
îî" &
(
îî& '
)
îî' (
;
îî( )
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
òò 
}ôô Òc
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
public 
Register 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "(
_playerRegistryServiceClient (
=) *
new 
MemoryGameService %
.% &'
PlayerRegistryServiceClient& A
(A B
)B C
;C D
} 	
private 
void 
SetFormValidation &
(& '
)' (
{ 	
_ruleSet   
=   
new   
RuleSet   "
(  " #
)  # $
;  $ %
_ruleSet!! 
.!! 
AddValidationRule!! &
(!!& '
new!!' *"
UsernameValidationRule!!+ A
(!!A B
	_username!!B K
)!!K L
)!!L M
;!!M N
_ruleSet"" 
."" 
AddValidationRule"" &
(""& '
new""' *&
EmailAddressValidationRule""+ E
(""E F
_emailAddress""F S
)""S T
)""T U
;""U V
_ruleSet## 
.## 
AddValidationRule## &
(##& '
new##' *"
PasswordValidationRule##+ A
(##A B
	_password##B K
)##K L
)##L M
;##M N
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
GetValuesFromFields// (
(//( )
)//) *
{00 	
_emailAddress11 
=11 
TextBoxEmail11 (
.11( )
Text11) -
;11- .
	_username22 
=22 
TextBoxUsername22 '
.22' (
Text22( ,
;22, -
	_password33 
=33 
PasswordBoxPassword33 +
.33+ ,
Password33, 4
;334 5
}44 	
private66 
void66 
GenerateToken66 "
(66" #
)66# $
{77 	
_verificationToken88 
=88  
TokenManager88! -
.88- .
GenerateToken88. ;
(88; <
)88< =
;88= >
}99 	
private;; 
void;; !
RegisterButtonClicked;; *
(;;* +
object;;+ 1
sender;;2 8
,;;8 9
RoutedEventArgs;;: I
e;;J K
);;K L
{<< 	
GetValuesFromFields== 
(==  
)==  !
;==! "
SetFormValidation>> 
(>> 
)>> 
;>>  
if?? 
(?? (
AllValidationRulesHavePassed?? ,
(??, -
)??- .
)??. /
{@@ 
tryAA 
{BB 
RegisterPlayerCC "
(CC" #
)CC# $
;CC$ %
}DD 
catchEE 
(EE 
TimeoutExceptionEE '
)EE' (
{FF 

MessageBoxGG 
.GG 
ShowGG #
(GG# $

PropertiesGG$ .
.GG. /
LangsGG/ 4
.GG4 5
	ResourcesGG5 >
.GG> ?
ServerTimeoutErrorGG? Q
)GGQ R
;GGR S
}HH 
catchII 
(II %
EndpointNotFoundExceptionII 0
)II0 1
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
ServerConnectionLostKK? S
)KKS T
;KKT U
}LL 
catchMM 
(MM "
CommunicationExceptionMM -
)MM- .
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
.OO> ?$
CommunicationInterruptedOO? W
)OOW X
;OOX Y
}PP 
}QQ 
elseRR 
{SS 
ShowErrorMessageTT  
(TT  !
)TT! "
;TT" #
}UU 
}VV 	
privateXX 
voidXX 
RegisterPlayerXX #
(XX# $
)XX$ %
{YY 	
ifZZ 
(ZZ 
!ZZ #
EmailAddressIsAvailableZZ (
(ZZ( )
)ZZ) *
)ZZ* +
{[[ 

MessageBox\\ 
.\\ 
Show\\ 
(\\  

Properties\\  *
.\\* +
Langs\\+ 0
.\\0 1
	Resources\\1 :
.\\: ;
EmailAddressIsTaken\\; N
)\\N O
;\\O P
}]] 
else^^ 
if^^ 
(^^ 
!^^ 
UsernameIsAvailable^^ )
(^^) *
)^^* +
)^^+ ,
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
.``: ;
UsernameIsTaken``; J
)``J K
;``K L
}aa 
elsebb 
{cc 
GenerateTokendd 
(dd 
)dd 
;dd  
ifee 
(ee +
PlayerWasSuccessfullyRegisteredee 3
(ee3 4
)ee4 5
)ee5 6
{ff 
SendActivationTokengg '
(gg' (
)gg( )
;gg) *%
GoToActivationTokenWindowhh -
(hh- .
)hh. /
;hh/ 0
}ii 
elsejj 
{kk 

MessageBoxll 
.ll 
Showll #
(ll# $

Propertiesll$ .
.ll. /
Langsll/ 4
.ll4 5
	Resourcesll5 >
.ll> ?
RegistryErrorll? L
)llL M
;llM N
}mm 
}nn 
}pp 	
privaterr 
boolrr (
AllValidationRulesHavePassedrr 1
(rr1 2
)rr2 3
{ss 	
returntt 
_ruleSettt 
.tt (
AllValidationRulesHavePassedtt 8
(tt8 9
)tt9 :
;tt: ;
}uu 	
privateww 
voidww 
SendActivationTokenww (
(ww( )
)ww) *
{xx 	
TokenInfoDtoyy !
verificationTokenInfoyy .
=yy/ 0
newyy1 4
TokenInfoDtoyy5 A
(yyA B
)yyB C
{zz 
Name{{ 
={{ 
	_username{{  
,{{  !
EmailAddress|| 
=|| 
_emailAddress|| ,
,||, -
Token}} 
=}} 
_verificationToken}} *
,}}* +
Subject~~ 
=~~ 

Properties~~ $
.~~$ %
Langs~~% *
.~~* +
	Resources~~+ 4
.~~4 5
Welcome~~5 <
,~~< =
Body 
= 

Properties !
.! "
Langs" '
.' (
	Resources( 1
.1 2
VerificationToken2 C
}
ÄÄ 
;
ÄÄ 
TokenManager
ÇÇ 
.
ÇÇ 
	SendToken
ÇÇ "
(
ÇÇ" ##
verificationTokenInfo
ÇÇ# 8
)
ÇÇ8 9
;
ÇÇ9 :
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ !
CancelButtonClicked
ÖÖ (
(
ÖÖ( )
object
ÖÖ) /
sender
ÖÖ0 6
,
ÖÖ6 7
RoutedEventArgs
ÖÖ8 G
e
ÖÖH I
)
ÖÖI J
{
ÜÜ 	

MainWindow
áá 
mainWindowView
áá %
=
áá& '
new
áá( +

MainWindow
áá, 6
(
áá6 7
)
áá7 8
;
áá8 9
mainWindowView
àà 
.
àà 
Show
àà 
(
àà  
)
àà  !
;
àà! "
this
ââ 
.
ââ 
Close
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
private
åå 
bool
åå %
EmailAddressIsAvailable
åå ,
(
åå, -
)
åå- .
{
çç 	
bool
éé %
emailAddressIsAvailable
éé (
=
éé) **
_playerRegistryServiceClient
éé+ G
.
ééG H%
EmailAddressIsAvailable
ééH _
(
éé_ `
_emailAddress
éé` m
)
éém n
;
één o
return
èè %
emailAddressIsAvailable
èè *
;
èè* +
}
êê 	
private
íí 
bool
íí !
UsernameIsAvailable
íí (
(
íí( )
)
íí) *
{
ìì 	
bool
ïï !
usernameIsAvailable
ïï $
=
ïï% &*
_playerRegistryServiceClient
ïï' C
.
ïïC D!
UserNameIsAvailable
ïïD W
(
ïïW X
	_username
ïïX a
)
ïïa b
;
ïïb c
return
ññ !
usernameIsAvailable
ññ &
;
ññ& '
}
óó 	
private
ôô 
bool
ôô -
PlayerWasSuccessfullyRegistered
ôô 4
(
ôô4 5
)
ôô5 6
{
öö 	!
BCryptHashGenerator
õõ 
hashGenerator
õõ  -
=
õõ. /
new
õõ0 3!
BCryptHashGenerator
õõ4 G
(
õõG H
)
õõH I
;
õõI J
string
úú 
salt
úú 
=
úú 
hashGenerator
úú '
.
úú' (
GenerateSalt
úú( 4
(
úú4 5
)
úú5 6
;
úú6 7
string
ùù 
encryptedPassword
ùù $
=
ùù% &
hashGenerator
ùù' 4
.
ùù4 5%
GenerateEncryptedString
ùù5 L
(
ùùL M
	_password
ùùM V
,
ùùV W
salt
ùùX \
)
ùù\ ]
;
ùù] ^
MemoryGameService
ûû 
.
ûû )
PlayerRegistryServiceClient
ûû 9)
playerRegistryServiceClient
ûû: U
=
ûûV W
new
üü 
MemoryGameService
üü %
.
üü% &)
PlayerRegistryServiceClient
üü& A
(
üüA B
)
üüB C
;
üüC D
	PlayerDTO
°° 
	playerDTO
°° 
=
°°  !
new
°°" %
	PlayerDTO
°°& /
(
°°/ 0
)
°°0 1
{
¢¢ 
Username
££ 
=
££ 
	_username
££ $
,
££$ %
EmailAddress
§§ 
=
§§ 
_emailAddress
§§ ,
,
§§, -
Password
•• 
=
•• 
encryptedPassword
•• ,
,
••, -
VerificationToken
¶¶ !
=
¶¶" # 
_verificationToken
¶¶$ 6
}
ßß 
;
ßß 
bool
©© -
playerWasSuccessfullyRegistered
©© 0
=
©©1 2)
playerRegistryServiceClient
©©3 N
.
©©N O
RegisterNewPlayer
©©O `
(
©©` a
	playerDTO
©©a j
,
©©j k
salt
©©l p
)
©©p q
;
©©q r
return
™™ -
playerWasSuccessfullyRegistered
™™ 2
;
™™2 3
}
´´ 	
private
≠≠ 
void
≠≠ '
GoToActivationTokenWindow
≠≠ .
(
≠≠. /
)
≠≠/ 0
{
ÆÆ 	
ActivationToken
ØØ #
activationTokenWindow
ØØ 1
=
ØØ2 3
new
∞∞ 
ActivationToken
∞∞ #
(
∞∞# $
_emailAddress
∞∞$ 1
,
∞∞1 2
	_username
∞∞3 <
)
∞∞< =
;
∞∞= >#
activationTokenWindow
±± !
.
±±! "
Show
±±" &
(
±±& '
)
±±' (
;
±±( )
this
≤≤ 
.
≤≤ 
Close
≤≤ 
(
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 	
}
¥¥ 
}µµ ù\
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
;  !
public 
RestorePassword 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
public 
RestorePassword 
( 
string %
emailAddress& 2
,2 3
string4 :
username; C
)C D
{ 	
InitializeComponent 
(  
)  !
;! "
_emailAddress 
= 
emailAddress (
;( )
	_username 
= 
username  
;  !
} 	
private   
void   
RestoreUserPassword   (
(  ( )
)  ) *
{!! 	
string"" 
newPassword"" 
=""  
NewPasswordBox""! /
.""/ 0
Password""0 8
;""8 9
if$$ 
($$ 
newPassword$$ 
==$$ 
$str$$ !
)$$! "
{%% 

MessageBox&& 
.&& 
Show&& 
(&&  

Properties&&  *
.&&* +
Langs&&+ 0
.&&0 1
	Resources&&1 :
.&&: ;
PasswordIsInvalid&&; L
)&&L M
;&&M N
}'' 
else(( 
{)) 
if** 
(** 
TokenIsCorrect** "
(**" #
)**# $
)**$ %
{++ 
if,, 
(,, 
SetNewPassword,, &
(,,& '
),,' (
),,( )
{-- 

MessageBox.. "
..." #
Show..# '
(..' (

Properties..( 2
...2 3
Langs..3 8
...8 9
	Resources..9 B
...B C
PasswordReset..C P
)..P Q
;..Q R
	GoToLogin// !
(//! "
)//" #
;//# $
}00 
else11 
{22 

MessageBox33 "
.33" #
Show33# '
(33' (

Properties33( 2
.332 3
Langs333 8
.338 9
	Resources339 B
.33B C!
PasswordRecoveryError33C X
)33X Y
;33Y Z
}44 
}55 
else66 
{77 

MessageBox88 
.88 
Show88 #
(88# $

Properties88$ .
.88. /
Langs88/ 4
.884 5
	Resources885 >
.88> ?'
NonMatchingVerificationCode88? Z
)88Z [
;88[ \
}99 
}:: 
};; 	
private== 
bool== 
TokenIsCorrect== #
(==# $
)==$ %
{>> 	
string?? 
token?? 
=?? 
TextBoxToken?? '
.??' (
Text??( ,
;??, -
if@@ 
(@@ 
token@@ 
==@@ 
$str@@ 
)@@ 
{AA 
returnBB 
falseBB 
;BB 
}CC ,
 AccountVerificationServiceClientDD ,,
 accountVerificationServiceClientDD- M
=DDN O
newEE ,
 AccountVerificationServiceClientEE 4
(EE4 5
)EE5 6
;EE6 7
returnFF ,
 accountVerificationServiceClientFF 3
.FF3 4
VerifyRecoveryTokenFF4 G
(FFG H
_emailAddressFFH U
,FFU V
tokenFFW \
)FF\ ]
;FF] ^
}GG 	
publicII 
boolII 
SetNewPasswordII "
(II" #
)II# $
{JJ 	
IEncryptionKK 
bCryptHashGeneratorKK +
=KK, -
newKK. 1
BCryptHashGeneratorKK2 E
(KKE F
)KKF G
;KKG H
stringLL 
newPasswordLL 
=LL  
NewPasswordBoxLL! /
.LL/ 0
PasswordLL0 8
;LL8 9
ifMM 
(MM 
newPasswordMM 
==MM 
$strMM !
)MM! "
{NN 
returnOO 
falseOO 
;OO 
}PP 
stringQQ 
saltQQ 
=QQ 
bCryptHashGeneratorQQ -
.QQ- .
GenerateSaltQQ. :
(QQ: ;
)QQ; <
;QQ< =
stringRR  
encryptedNewPasswordRR '
=RR( )
bCryptHashGeneratorRR* =
.RR= >#
GenerateEncryptedStringRR> U
(RRU V
newPasswordRRV a
,RRa b
saltRRc g
)RRg h
;RRh i-
!AccountModifiabilityServiceClientSS --
!accountModifiabilityServiceClientSS. O
=SSP Q
newSSR U-
!AccountModifiabilityServiceClientSSV w
(SSw x
)SSx y
;SSy z.
"PasswordModificationCredentialsDtoTT .+
passwordModificationCredentialsTT/ N
=TTO P
newTTQ T.
"PasswordModificationCredentialsDtoTTU w
(TTw x
)TTx y
{UU 
EmailAddressVV 
=VV 
_emailAddressVV ,
,VV, -
SaltWW 
=WW 
saltWW 
,WW 
NewPasswordXX 
=XX  
encryptedNewPasswordXX 2
}YY 
;YY 
boolZZ "
newPasswordWasAssignedZZ '
=ZZ( )-
!accountModifiabilityServiceClientZZ* K
.ZZK L
SetNewPasswordZZL Z
(ZZZ [+
passwordModificationCredentialsZZ[ z
)ZZz {
;ZZ{ |
return[[ "
newPasswordWasAssigned[[ )
;[[) *
}\\ 	
private^^ 
void^^ 
OkButtonClicked^^ $
(^^$ %
object^^% +
sender^^, 2
,^^2 3
RoutedEventArgs^^4 C
e^^D E
)^^E F
{__ 	
try`` 
{aa 
RestoreUserPasswordbb #
(bb# $
)bb$ %
;bb% &
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
voidrr $
SendNewCodeButtonClickedrr -
(rr- .
objectrr. 4
senderrr5 ;
,rr; <
RoutedEventArgsrr= L
errM N
)rrN O
{ss 	
trytt 
{uu 
SendNewCodevv 
(vv 
)vv 
;vv 
}ww 
catchxx 
(xx %
EndpointNotFoundExceptionxx ,
)xx, -
{yy 

MessageBoxzz 
.zz 
Showzz 
(zz  

Propertieszz  *
.zz* +
Langszz+ 0
.zz0 1
	Resourceszz1 :
.zz: ; 
ServerConnectionLostzz; O
)zzO P
;zzP Q
}{{ 
catch|| 
(|| 
TimeoutException|| #
)||# $
{}} 

MessageBox~~ 
.~~ 
Show~~ 
(~~  

Properties~~  *
.~~* +
Langs~~+ 0
.~~0 1
	Resources~~1 :
.~~: ;
ServerTimeoutError~~; M
)~~M N
;~~N O
} 
catch
ÄÄ 
(
ÄÄ $
CommunicationException
ÄÄ )
)
ÄÄ) *
{
ÅÅ 

MessageBox
ÇÇ 
.
ÇÇ 
Show
ÇÇ 
(
ÇÇ  

Properties
ÇÇ  *
.
ÇÇ* +
Langs
ÇÇ+ 0
.
ÇÇ0 1
	Resources
ÇÇ1 :
.
ÇÇ: ;&
CommunicationInterrupted
ÇÇ; S
)
ÇÇS T
;
ÇÇT U
}
ÉÉ 
}
ÜÜ 	
private
àà 
void
àà 
SendNewCode
àà  
(
àà  !
)
àà! "
{
ââ 	
string
ää 
newToken
ää 
=
ää 
TokenManager
ää *
.
ää* +
GenerateToken
ää+ 8
(
ää8 9
)
ää9 :
;
ää: ;
bool
ãã -
newVerificationTokenWasAssigned
ãã 0
=
ãã1 2
false
ãã3 8
;
ãã8 9
if
åå 
(
åå 
newToken
åå 
!=
åå 
$str
åå 
)
åå 
{
çç .
 AccountVerificationServiceClient
éé 0.
 accountVerificationServiceClient
éé1 Q
=
ééR S
new
èè .
 AccountVerificationServiceClient
èè 8
(
èè8 9
)
èè9 :
;
èè: ;-
newVerificationTokenWasAssigned
êê /
=
êê0 1.
 accountVerificationServiceClient
êê2 R
.
êêR S$
AssignNewRecoveryToken
êêS i
(
êêi j
_emailAddress
êêj w
,
êêw x
newTokenêêy Å
)êêÅ Ç
;êêÇ É
}
ëë 
if
ìì 
(
ìì -
newVerificationTokenWasAssigned
ìì /
)
ìì/ 0
{
îî 
TokenInfoDto
ïï #
verificationTokenInfo
ïï 2
=
ïï3 4
new
ïï5 8
TokenInfoDto
ïï9 E
(
ïïE F
)
ïïF G
{
ññ 
Name
óó 
=
óó 
	_username
óó $
,
óó$ %
EmailAddress
òò  
=
òò! "
_emailAddress
òò# 0
,
òò0 1
Token
ôô 
=
ôô 
newToken
ôô $
}
öö 
;
öö 
TokenManager
õõ 
.
õõ 
	SendToken
õõ &
(
õõ& '#
verificationTokenInfo
õõ' <
)
õõ< =
;
õõ= >

MessageBox
úú 
.
úú 
Show
úú 
(
úú  

Properties
úú  *
.
úú* +
Langs
úú+ 0
.
úú0 1
	Resources
úú1 :
.
úú: ; 
NewCodeSentMessage
úú; M
)
úúM N
;
úúN O
}
ùù 
}
ûû 	
private
†† 
void
†† 
BackButtonClicked
†† &
(
††& '
object
††' -
sender
††. 4
,
††4 5
RoutedEventArgs
††6 E
e
††F G
)
††G H
{
°° 	
	GoToLogin
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 	
private
•• 
void
•• 
	GoToLogin
•• 
(
•• 
)
••  
{
¶¶ 	
Login
ßß 
	loginView
ßß 
=
ßß 
new
ßß !
Login
ßß" '
(
ßß' (
)
ßß( )
;
ßß) *
	loginView
®® 
.
®® 
Show
®® 
(
®® 
)
®® 
;
®® 
this
©© 
.
©© 
Close
©© 
(
©© 
)
©© 
;
©© 
}
™™ 	
}
´´ 
}¨¨ ¿
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
;R S
public 

ScoreTable 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "'
PopulateTableWithBestScores '
(' (
)( )
;) *
} 	
private 
void '
PopulateTableWithBestScores 0
(0 1
)1 2
{ 	
try 
{ 
LoadBestScores 
( 
)  
;  !
for 
( 
int 
indexOfActualPlayer +
=, -
$num. /
;/ 0
indexOfActualPlayer1 D
<E F
_bestScoresG R
.R S
LengthS Y
;Y Z
indexOfActualPlayer[ n
++n p
)p q
{ 
if 
( 
_bestScores "
[" #
indexOfActualPlayer# 6
]6 7
!=8 :
null; ?
)? @
{ 
ScoreDataGrid %
.% &
Items& +
.+ ,
Add, /
(/ 0
_bestScores0 ;
[; <
indexOfActualPlayer< O
]O P
)P Q
;Q R
} 
} 
} 
catch   
(   
TimeoutException   #
)  # $
{!! 

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
EndpointNotFoundException$$ ,
)$$, -
{%% 

MessageBox&& 
.&& 
Show&& 
(&&  

Properties&&  *
.&&* +
Langs&&+ 0
.&&0 1
	Resources&&1 :
.&&: ; 
ServerConnectionLost&&; O
)&&O P
;&&P Q
}'' 
catch(( 
((( "
CommunicationException(( )
)(() *
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
.**: ;$
CommunicationInterrupted**; S
)**S T
;**T U
}++ 
},, 	
private.. 
void.. 
LoadBestScores.. #
(..# $
)..$ %
{// 	
MemoryGameService00 
.00 
ScoreServiceClient00 0
client001 7
=008 9
new00: =
MemoryGameService00> O
.00O P
ScoreServiceClient00P b
(00b c
)00c d
;00d e
_bestScores11 
=11 
client11  
.11  !#
GetPlayersWithBestScore11! 8
(118 9
$num119 ;
)11; <
;11< =
}22 	
private44 
void44 
BackButtonClicked44 &
(44& '
object44' -
sender44. 4
,444 5
RoutedEventArgs446 E
e44F G
)44G H
{55 	
MainMenu66 
mainMenuView66 !
=66" #
new66$ '
MainMenu66( 0
(660 1
)661 2
;662 3
mainMenuView77 
.77 
Show77 
(77 
)77 
;77  
this88 
.88 
Close88 
(88 
)88 
;88 
}99 	
}:: 
}>> •
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
}33 ›p
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
;9 :
public 
WaitingRoom 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_context 
= 
new 
InstanceContext *
(* +
this+ /
)/ 0
;0 1
_lobbyServiceClient 
=  !
new" %
MemoryGameService& 7
.7 8
LobbyServiceClient8 J
(J K
_contextK S
)S T
;T U
	_username 
= 
Sesion 
. 
	GetSesion (
.( )
Username) 1
;1 20
$_windowIsBeingClosedByTheCloseButton 0
=1 2
true3 7
;7 8
_players 
= 
new  
ObservableCollection /
</ 0
string0 6
>6 7
(7 8
)8 9
;9 :
} 	
private!! 
void!! 
Window_Loaded!! "
(!!" #
object!!# )
sender!!* 0
,!!0 1
RoutedEventArgs!!2 A
e!!B C
)!!C D
{"" 	#
DetermineIfPlayerIsHost## #
(### $
)##$ %
;##% &
if$$ 
($$ 
!$$ 
_thisPlayerIsHost$$ "
)$$" #
{%% 

StarButton&& 
.&& 

Visibility&& %
=&&& '

Visibility&&( 2
.&&2 3
	Collapsed&&3 <
;&&< =
}'' 
try)) 
{** $
LoadActivePlayersInLobby++ (
(++( )
)++) *
;++* + 
CallJoinLobbyService,, $
(,,$ %
),,% &
;,,& '
}-- 
catch.. 
(.. 
TimeoutException.. #
)..# $
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
.00: ;
ServerTimeoutError00; M
)00M N
;00N O
}11 
catch22 
(22 %
EndpointNotFoundException22 ,
)22, -
{33 

MessageBox44 
.44 
Show44 
(44  

Properties44  *
.44* +
Langs44+ 0
.440 1
	Resources441 :
.44: ; 
ServerConnectionLost44; O
)44O P
;44P Q
}55 
catch66 
(66 "
CommunicationException66 )
)66) *
{77 

MessageBox88 
.88 
Show88 
(88  

Properties88  *
.88* +
Langs88+ 0
.880 1
	Resources881 :
.88: ;$
CommunicationInterrupted88; S
)88S T
;88T U
}99 
};; 	
private== 
void== #
DetermineIfPlayerIsHost== ,
(==, -
)==- .
{>> 	
if?? 
(?? 
	_username?? 
.?? 
Equals??  
(??  !
GameMatchDto??! -
.??- .
Host??. 2
)??2 3
)??3 4
{@@ 
_thisPlayerIsHostAA !
=AA" #
trueAA$ (
;AA( )
}BB 
elseCC 
{DD 
_thisPlayerIsHostEE !
=EE" #
falseEE$ )
;EE) *
}FF 
}GG 	
privateII 
voidII $
LoadActivePlayersInLobbyII -
(II- .
)II. /
{JJ 	
IListKK 
<KK 
stringKK 
>KK 
activePlayersKK '
=KK( )
_lobbyServiceClientKK* =
.KK= >#
GetActivePlayersInLobbyKK> U
(KKU V
GameMatchDtoKKV b
.KKb c
HostKKc g
)KKg h
;KKh i
foreachLL 
(LL 
varLL 
oneActivePlayerLL '
inLL( *
activePlayersLL+ 8
)LL8 9
{MM 
_playersNN 
.NN 
AddNN 
(NN 
oneActivePlayerNN ,
)NN, -
;NN- .
}OO 
WaitingRoomDataGridPP 
.PP  
ItemsSourcePP  +
=PP, -
_playersPP. 6
;PP6 7
}QQ 	
privateSS 
voidSS  
CallJoinLobbyServiceSS )
(SS) *
)SS* +
{TT 	
_lobbyServiceClientUU 
.UU  
	JoinLobbyUU  )
(UU) *
GameMatchDtoUU* 6
.UU6 7
HostUU7 ;
,UU; <
	_usernameUU= F
)UUF G
;UUG H
}VV 	
publicXX 
voidXX 
LeaveButtonClickedXX &
(XX& '
objectXX' -
senderXX. 4
,XX4 5
RoutedEventArgsXX6 E
eXXF G
)XXG H
{YY 	
tryZZ 
{[[ !
CallLeaveLobbyService\\ %
(\\% &
)\\& '
;\\' (
}]] 
catch^^ 
(^^ 
TimeoutException^^ #
)^^# $
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
ServerTimeoutError``; M
)``M N
;``N O
}aa 
catchbb 
(bb %
EndpointNotFoundExceptionbb ,
)bb, -
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
.dd: ; 
ServerConnectionLostdd; O
)ddO P
;ddP Q
}ee 
catchff 
(ff "
CommunicationExceptionff )
)ff) *
{gg 

MessageBoxhh 
.hh 
Showhh 
(hh  

Propertieshh  *
.hh* +
Langshh+ 0
.hh0 1
	Resourceshh1 :
.hh: ;$
CommunicationInterruptedhh; S
)hhS T
;hhT U
}ii 
finallyjj 
{kk 
ifll 
(ll 
_thisPlayerIsHostll %
)ll% &
{mm 
GoToMainMenuViewnn $
(nn$ %
)nn% &
;nn& '
}oo 
elsepp 
{qq 
GoToJoinGameViewrr $
(rr$ %
)rr% &
;rr& '
}ss 
}tt 
}uu 	
privateww 
voidww 
GoToJoinGameViewww %
(ww% &
)ww& '
{xx 	0
$_windowIsBeingClosedByTheCloseButtonyy 0
=yy1 2
falseyy3 8
;yy8 9
JoinGamezz 
joinGameViewzz !
=zz" #
newzz$ '
JoinGamezz( 0
(zz0 1
)zz1 2
;zz2 3
joinGameView{{ 
.{{ 
Show{{ 
({{ 
){{ 
;{{  
this|| 
.|| 
Close|| 
(|| 
)|| 
;|| 
}}} 	
private 
void 
GoToMainMenuView %
(% &
)& '
{
ÄÄ 	2
$_windowIsBeingClosedByTheCloseButton
ÅÅ 0
=
ÅÅ1 2
false
ÅÅ3 8
;
ÅÅ8 9
MainMenu
ÇÇ 
mainMenuView
ÇÇ !
=
ÇÇ" #
new
ÇÇ$ '
MainMenu
ÇÇ( 0
(
ÇÇ0 1
)
ÇÇ1 2
;
ÇÇ2 3
mainMenuView
ÉÉ 
.
ÉÉ 
Show
ÉÉ 
(
ÉÉ 
)
ÉÉ 
;
ÉÉ  
this
ÑÑ 
.
ÑÑ 
Close
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
}
ÖÖ 	
private
áá 
void
áá #
CallLeaveLobbyService
áá *
(
áá* +
)
áá+ ,
{
àà 	!
_lobbyServiceClient
ââ 
.
ââ  

LeaveLobby
ââ  *
(
ââ* +
GameMatchDto
ââ+ 7
.
ââ7 8
Host
ââ8 <
,
ââ< =
	_username
ââ> G
)
ââG H
;
ââH I
}
ää 	
public
åå 
void
åå  
StartButtonClicked
åå &
(
åå& '
object
åå' -
sender
åå. 4
,
åå4 5
RoutedEventArgs
åå6 E
e
ååF G
)
ååG H
{
çç 	
if
éé 
(
éé 
_players
éé 
.
éé 
Count
éé 
<
éé 
$num
éé  !
)
éé! "
{
èè 

MessageBox
êê 
.
êê 
Show
êê 
(
êê  

Properties
êê  *
.
êê* +
Langs
êê+ 0
.
êê0 1
	Resources
êê1 :
.
êê: ;)
InsufficientNumberOfPlayers
êê; V
)
êêV W
;
êêW X
}
ëë 
else
íí 
{
ìì 
	StartGame
îî 
(
îî 
)
îî 
;
îî 
}
ïï 
}
ññ 	
private
òò 
void
òò 
	StartGame
òò 
(
òò 
)
òò  
{
ôô 	
try
öö 
{
õõ !
_lobbyServiceClient
úú #
.
úú# $
	StartGame
úú$ -
(
úú- .
GameMatchDto
úú. :
.
úú: ;
Host
úú; ?
)
úú? @
;
úú@ A
}
ùù 
catch
ûû 
(
ûû 
TimeoutException
ûû #
)
ûû# $
{
üü 

MessageBox
†† 
.
†† 
Show
†† 
(
††  

Properties
††  *
.
††* +
Langs
††+ 0
.
††0 1
	Resources
††1 :
.
††: ; 
ServerTimeoutError
††; M
)
††M N
;
††N O
}
°° 
catch
¢¢ 
(
¢¢ '
EndpointNotFoundException
¢¢ ,
)
¢¢, -
{
££ 

MessageBox
§§ 
.
§§ 
Show
§§ 
(
§§  

Properties
§§  *
.
§§* +
Langs
§§+ 0
.
§§0 1
	Resources
§§1 :
.
§§: ;"
ServerConnectionLost
§§; O
)
§§O P
;
§§P Q
}
•• 
catch
¶¶ 
(
¶¶ $
CommunicationException
¶¶ )
)
¶¶) *
{
ßß 

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
®®: ;&
CommunicationInterrupted
®®; S
)
®®S T
;
®®T U
}
©© 
}
´´ 	
public
≠≠ 
void
≠≠ $
NotifyNewPlayerEntered
≠≠ *
(
≠≠* +
string
≠≠+ 1
username
≠≠2 :
)
≠≠: ;
{
ÆÆ 	
if
ØØ 
(
ØØ 
username
ØØ 
!=
ØØ 
null
ØØ 
)
ØØ  
{
∞∞ 
_players
±± 
.
±± 
Add
±± 
(
±± 
username
±± %
)
±±% &
;
±±& '
}
≤≤ 
}
≥≥ 	
public
µµ 
void
µµ 
NotifyPlayerLeft
µµ $
(
µµ$ %
string
µµ% +
username
µµ, 4
)
µµ4 5
{
∂∂ 	
_players
∑∑ 
.
∑∑ 
Remove
∑∑ 
(
∑∑ 
username
∑∑ $
)
∑∑$ %
;
∑∑% &
}
∏∏ 	
public
∫∫ 
void
∫∫ $
TakePlayersToMatchView
∫∫ *
(
∫∫* +
string
∫∫+ 1
[
∫∫1 2
]
∫∫2 3
playersInMatch
∫∫4 B
)
∫∫B C
{
ªª 	2
$_windowIsBeingClosedByTheCloseButton
ºº 0
=
ºº1 2
false
ºº3 8
;
ºº8 9
Views
ΩΩ 
.
ΩΩ 
Match
ΩΩ 
	matchView
ΩΩ !
=
ΩΩ" #
new
ΩΩ$ '
Views
ΩΩ( -
.
ΩΩ- .
Match
ΩΩ. 3
(
ΩΩ3 4
)
ΩΩ4 5
{
ææ 
Players
øø 
=
øø 
playersInMatch
øø (
,
øø( )
	MatchHost
¿¿ 
=
¿¿ 
GameMatchDto
¿¿ (
.
¿¿( )
Host
¿¿) -
,
¿¿- .
CardDeck
¡¡ 
=
¡¡ 
GameMatchDto
¡¡ '
.
¡¡' (
CardDeckDto
¡¡( 3
}
¬¬ 
;
¬¬ 
	matchView
√√ 
.
√√ 
Show
√√ 
(
√√ 
)
√√ 
;
√√ 
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
≈≈ 	
public
«« 
void
«« #
TakePlayersOutOfLobby
«« )
(
««) *
)
««* +
{
»» 	
GoToJoinGameView
…… 
(
…… 
)
…… 
;
…… 
}
   	
private
ÃÃ 
void
ÃÃ 
Window_Closed
ÃÃ "
(
ÃÃ" #
object
ÃÃ# )
sender
ÃÃ* 0
,
ÃÃ0 1
System
ÃÃ2 8
.
ÃÃ8 9
	EventArgs
ÃÃ9 B
e
ÃÃC D
)
ÃÃD E
{
ÕÕ 	
if
ŒŒ 
(
ŒŒ 2
$_windowIsBeingClosedByTheCloseButton
ŒŒ 4
)
ŒŒ4 5
{
œœ #
CallLeaveLobbyService
–– %
(
––% &
)
––& '
;
––' (
}
—— 
}
““ 	
}
”” 
}‘‘ ó
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
} €
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\MainWindow.xaml.cs
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
public 

MainWindow 
( 
) 
{ 	
LoadCultureInfo 
( 
) 
; 
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
LoadCultureInfo $
($ %
)% &
{ 	
try 
{ 
System 
. 
	Threading  
.  !
Thread! '
.' (
CurrentThread( 5
.5 6
CurrentUICulture6 F
=G H
newI L
CultureInfoM X
(X Y

PropertiesY c
.c d
Settingsd l
.l m
Defaultm t
.t u
LanguageSettings	u Ö
)
Ö Ü
;
Ü á
} 
catch 
( $
CultureNotFoundException +
)+ ,
{ 
_logger 
. 
Fatal 
( 
$str W
)W X
;X Y
this 
. 
Close 
( 
) 
; 
} 
} 	
private   
void   &
GetRegisteredButtonClicked   /
(  / 0
object  0 6
sender  7 =
,  = >
RoutedEventArgs  ? N
e  O P
)  P Q
{!! 	
Register"" 
registerView"" !
=""" #
new""$ '
Register""( 0
(""0 1
)""1 2
;""2 3
registerView## 
.## 
Show## 
(## 
)## 
;##  
this$$ 
.$$ 
Close$$ 
($$ 
)$$ 
;$$ 
}%% 	
private'' 
void'' &
ConfigurationButtonClicked'' /
(''/ 0
object''0 6
sender''7 =
,''= >
RoutedEventArgs''? N
e''O P
)''P Q
{(( 	
Settings)) 
settingsView)) !
=))" #
new))$ '
Settings))( 0
())0 1
)))1 2
;))2 3
settingsView** 
.** 
Show** 
(** 
)** 
;**  
this++ 
.++ 
Close++ 
(++ 
)++ 
;++ 
},, 	
private.. 
void.. 
LoginButtonClicked.. '
(..' (
object..( .
sender../ 5
,..5 6
RoutedEventArgs..7 F
e..G H
)..H I
{// 	
Login00 
	loginView00 
=00 
new00 !
Login00" '
(00' (
)00( )
;00) *
	loginView11 
.11 
Show11 
(11 
)11 
;11 
this22 
.22 
Close22 
(22 
)22 
;22 
}33 	
}44 
}55 ö
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