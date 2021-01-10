ÚD
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
;# $
public 
IList 
< 
	ImageCard 
> 

ImageCards  *
;* +
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
int((  
numberOfRequiredRows(( $
=((% &
(((' (
int((( +
)((+ ,
Math((, 0
.((0 1
Ceiling((1 8
(((8 9
Convert((9 @
.((@ A
ToDouble((A I
(((I J
numberOfCards((J W
/((X Y 
numberOfColumnsDrawn((Z n
)((n o
)((o p
+((q r
$num((s t
;((t u
for)) 
()) 
int)) 
numberOfCurrentRow)) '
=))( )
$num))* +
;))+ ,
numberOfCurrentRow))- ?
<))@ A 
numberOfRequiredRows))B V
;))V W
numberOfCurrentRow))X j
++))j l
)))l m
{** 
GridToBeDrawnOn++ 
.++  
RowDefinitions++  .
.++. /
Add++/ 2
(++2 3
new++3 6
RowDefinition++7 D
(++D E
)++E F
)++F G
;++G H
},, 
}-- 	
private// 
void// 
PopulateImageCards// '
(//' (
)//( )
{00 	
IList11 
<11 
MemoryGameService11 #
.11# $
DataTransferObjects11$ 7
.117 8
CardDto118 ?
>11? @
cards11A F
=11G H
CardDeck11I Q
.11Q R
Cards11R W
;11W X
string22 
backImageOfCards22 #
=22$ %
CardDeck22& .
.22. /
	BackImage22/ 8
;228 9
BitmapImage33 
	backImage33 !
=33" #
new33$ '
BitmapImage33( 3
(333 4
new334 7
Uri338 ;
(33; <
backImageOfCards33< L
)33L M
)33M N
;33N O
for55 
(55 
int55 
numberOfActualCard55 '
=55( )
$num55* +
;55+ ,
numberOfActualCard55- ?
<55@ A
cards55B G
.55G H
Count55H M
;55M N
numberOfActualCard55O a
++55a c
)55c d
{66 
MemoryGameService77 !
.77! "
DataTransferObjects77" 5
.775 6
CardDto776 =

actualCard77> H
=77I J
CardDeck77K S
.77S T
Cards77T Y
[77Y Z
numberOfActualCard77Z l
]77l m
;77m n
string99 "
frontImageOfActualCard99 -
=99. /

actualCard990 :
.99: ;

FrontImage99; E
;99E F
BitmapImage;; 

frontImage;; &
=;;' (
new;;) ,
BitmapImage;;- 8
(;;8 9
new;;9 <
Uri;;= @
(;;@ A"
frontImageOfActualCard;;A W
);;W X
);;X Y
;;;Y Z
	ImageCard<< 
	imageCard<< #
=<<$ %
new<<& )
	ImageCard<<* 3
(<<3 4
)<<4 5
{== 

FrontImage>> 
=>>  

frontImage>>! +
,>>+ ,
	BackImage?? 
=?? 
	backImage??  )
,??) *
Source@@ 
=@@ 
	backImage@@ &
,@@& '
CardIdAA 
=AA 

actualCardAA '
.AA' (
CardIdAA( .
,AA. /
CardDtoBB 
=BB 

actualCardBB (
}CC 
;CC 

ImageCardsDD 
.DD 
AddDD 
(DD 
	imageCardDD (
)DD( )
;DD) *
}EE 
}GG 	
privateII 
voidII 

DrawImagesII 
(II  
)II  !
{JJ 	
PopulateImageCardsKK 
(KK 
)KK  
;KK  !
intLL 
rowIndexLL 
=LL 
$numLL 
;LL 
intMM 
columnIndexMM 
=MM 
$numMM 
;MM  
intNN 
columnCountNN 
=NN 
GridToBeDrawnOnNN -
.NN- .
ColumnDefinitionsNN. ?
.NN? @
CountNN@ E
;NNE F
forPP 
(PP 
intPP 
numberOfActualCardPP '
=PP( )
$numPP* +
;PP+ ,
numberOfActualCardPP- ?
<PP@ A

ImageCardsPPB L
.PPL M
CountPPM R
;PPR S
numberOfActualCardPPT f
++PPf h
)PPh i
{QQ 
ifRR 
(RR 
columnIndexRR 
>=RR  "
columnCountRR# .
)RR. /
{SS 
columnIndexTT 
=TT  !
$numTT" #
;TT# $
rowIndexUU 
++UU 
;UU 
}VV 
GridXX 
.XX 
SetRowXX 
(XX 

ImageCardsXX &
[XX& '
numberOfActualCardXX' 9
]XX9 :
,XX: ;
rowIndexXX< D
)XXD E
;XXE F
GridYY 
.YY 
	SetColumnYY 
(YY 

ImageCardsYY )
[YY) *
numberOfActualCardYY* <
]YY< =
,YY= >
columnIndexYY? J
)YYJ K
;YYK L

ImageCardsZZ 
[ZZ 
numberOfActualCardZZ -
]ZZ- .
.ZZ. /
MarginZZ/ 5
=ZZ6 7
newZZ8 ;
	ThicknessZZ< E
(ZZE F
$numZZF G
)ZZG H
;ZZH I
GridToBeDrawnOn\\ 
.\\  
Children\\  (
.\\( )
Add\\) ,
(\\, -

ImageCards\\- 7
[\\7 8
numberOfActualCard\\8 J
]\\J K
)\\K L
;\\L M
columnIndex]] 
++]] 
;]] 
}^^ 
}__ 	
publicaa 
voidaa !
SetEventOnCardClickedaa )
(aa) *#
MouseButtonEventHandleraa* A
eventHandleraaB N
)aaN O
{bb 	
forcc 
(cc 
intcc 
numberOfActualCardcc '
=cc( )
$numcc* +
;cc+ ,
numberOfActualCardcc- ?
<cc@ A

ImageCardsccB L
.ccL M
CountccM R
;ccR S
numberOfActualCardccT f
++ccf h
)cch i
{dd 

ImageCardsee 
[ee 
numberOfActualCardee -
]ee- .
.ee. /
	MouseDownee/ 8
+=ee9 ;
eventHandleree< H
;eeH I
}ff 
}gg 	
}hh 
}ii ∂
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
} –
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Components\PlayerInfo.cs
	namespace 	

MemoryGame
 
. 

Components 
{ 
public 

class 

PlayerInfo 
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
int 
Score 
{ 
get 
; 
set  #
;# $
}% &
} 
} œ
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
} ¿
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
;		# $
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
;

( )
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
}44 ª
vC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\GenericValidations\NonEmptyFieldValidation.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
GenericValidations% 7
{ 
public		 

class		 #
NonEmptyFieldValidation		 (
:		) *
IValidationRule		+ :
{

 
private 
string 
_inputField "
;" #
public #
NonEmptyFieldValidation &
(& '
string' -

inputField. 8
)8 9
{ 	
_inputField 
= 

inputField $
;$ %
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
if 
( 

IsNotEmpty 
( 
) 
) 
{ 
return 
new  
ValidationRuleResult /
(/ 0 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
;M N
} 
return 
new  
ValidationRuleResult +
(+ , 
ValidationRuleResult, @
.@ A
ERRORA F
,F G

Properties 
. 
Langs  
.  !
	Resources! *
.* +

EmptyField+ 5
)5 6
;6 7
} 	
public 
bool 
Validate 
( 
) 
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
private   
bool   2
&DoesNotContainWhiteSpaceAtTheBeggining   ;
(  ; <
)  < =
{!! 	
string"" 
trimInputField"" !
=""" #
_inputField""$ /
.""/ 0
Trim""0 4
(""4 5
)""5 6
;""6 7
if## 
(## 
trimInputField## 
.## 
Length## $
!=##% '
$num##( )
)##) *
{$$ 
return%% 
true%% 
;%% 
}&& 
return'' 
false'' 
;'' 
}(( 	
private** 
bool** 

IsNotEmpty** 
(**  
)**  !
{++ 	
int,, !
inputFieldValueLength,, %
=,,& '
_inputField,,( 3
.,,3 4
Length,,4 :
;,,: ;
if-- 
(-- 2
&DoesNotContainWhiteSpaceAtTheBeggining-- 5
(--5 6
)--6 7
&&.. !
inputFieldValueLength.. (
>..) *
$num..+ ,
).., -
{// 
return00 
true00 
;00 
}11 
return22 
false22 
;22 
}33 	
}44 
}55 ˇ
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
} ≈
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
:, -
IValidationRule. =
{ 
private 
string 
_emailAddress $
;$ %
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
}.. ç
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
} ø*
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
:( )
IValidationRule* 9
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
}KK ◊
nC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\RegistryValidation\RegistryRuleSet.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
.$ %
RegistryValidation% 7
{ 
public		 

class		 
RegistryRuleSet		  
:		! "
IRuleSet		# +
{

 
public 
List 
< 
IValidationRule #
># $
RegistryRules% 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
private 
List 
<  
ValidationRuleResult )
>) *#
_validationResultErrors+ B
;B C
public 
RegistryRuleSet 
( 
)  
{ 	
RegistryRules 
= 
new 
List  $
<$ %
IValidationRule% 4
>4 5
(5 6
)6 7
;7 8#
_validationResultErrors #
=$ %
new& )
List* .
<. / 
ValidationRuleResult/ C
>C D
(D E
)E F
;F G
} 	
public 
void 
AddValidationRule %
(% &
IValidationRule& 5
validationRule6 D
)D E
{ 	
RegistryRules 
. 
Add 
( 
validationRule ,
), -
;- .
} 	
private 
void #
LookForValidationErrors ,
(, -
)- .
{ 	%
ClearValidationErrorsList %
(% &
)& '
;' (
foreach 
( 
IValidationRule $
rule% )
in* ,
RegistryRules- :
): ;
{  
ValidationRuleResult $ 
validationRuleResult% 9
=: ;
rule< @
.@ A#
GetValidationRuleResultA X
(X Y
)Y Z
;Z [
if 
(  
validationRuleResult (
.( )
Status) /
==0 2 
ValidationRuleResult3 G
.G H
ERRORH M
)M N
{   #
_validationResultErrors!! +
.!!+ ,
Add!!, /
(!!/ 0 
validationRuleResult!!0 D
)!!D E
;!!E F
}"" 
}## 
}$$ 	
public&& 
bool&& (
AllValidationRulesHavePassed&& 0
(&&0 1
)&&1 2
{'' 	#
LookForValidationErrors(( #
(((# $
)(($ %
;((% &
if)) 
()) #
_validationResultErrors)) '
.))' (
Count))( -
==)). 0
$num))1 2
)))2 3
{** 
return++ 
true++ 
;++ 
},, 
return-- 
false-- 
;-- 
}.. 	
public00 
List00 
<00  
ValidationRuleResult00 (
>00( )%
GetValidationResultErrors00* C
(00C D
)00D E
{11 	#
LookForValidationErrors22 #
(22# $
)22$ %
;22% &
return33 #
_validationResultErrors33 *
;33* +
}44 	
private66 
void66 %
ClearValidationErrorsList66 .
(66. /
)66/ 0
{77 	#
_validationResultErrors88 #
.88# $
Clear88$ )
(88) *
)88* +
;88+ ,
}99 	
};; 
}<< ˝
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
:( )
IValidationRule* 9
{ 
private 
string 
	_username  
;  !
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
}// ∆
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
}		 Œ
TC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\IRuleSet.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public		 

	interface		 
IRuleSet		 
{

 
void 
AddValidationRule 
( 
IValidationRule .
validationRule/ =
)= >
;> ?
bool (
AllValidationRulesHavePassed )
() *
)* +
;+ ,
List 
<  
ValidationRuleResult !
>! "%
GetValidationResultErrors# <
(< =
)= >
;> ?
} 
} ‡
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
private 
List 
<  
ValidationRuleResult )
>) *#
_validationResultErrors+ B
;B C
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
}99 ®
ZC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\InputValidation\ValidationRule.cs
	namespace 	

MemoryGame
 
. 
InputValidation $
{ 
public 

abstract 
class 
ValidationRule (
{ 
	protected  
ValidationRuleResult &!
_validationRuleResult' <
;< =
public 
ValidationRule 
( 
) 
{ 	#
SetValidationRuleResult		 #
(		# $
)		$ %
;		% &
}

 	
	protected 
abstract 
void #
SetValidationRuleResult  7
(7 8
)8 9
;9 :
public 
bool 
Validate 
( 
) 
{ 	
if 
( !
_validationRuleResult %
.% &
Status& ,
==- / 
ValidationRuleResult0 D
.D E
SUCCESSE L
)L M
{ 
return 
true 
; 
} 
return 
false 
; 
} 	
public  
ValidationRuleResult ##
GetValidationRuleResult$ ;
(; <
)< =
{ 	
return !
_validationRuleResult (
;( )
} 	
} 
} í
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
} ﬁ
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
} ‚V
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
ïï 	
GoToMainWindow
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 	
private
ôô 
void
ôô 
GoToMainWindow
ôô #
(
ôô# $
)
ôô$ %
{
öö 	

MainWindow
õõ 
mainWindowView
õõ %
=
õõ& '
new
õõ( +

MainWindow
õõ, 6
(
õõ6 7
)
õõ7 8
;
õõ8 9
mainWindowView
úú 
.
úú 
Show
úú 
(
úú  
)
úú  !
;
úú! "
this
ùù 
.
ùù 
Close
ùù 
(
ùù 
)
ùù 
;
ùù 
}
ûû 	
}
üü 
}†† “T
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
{zz 	
List{{ 
<{{  
ValidationRuleResult{{ %
>{{% &"
validationResultErrors{{' =
={{> ?
_ruleSet{{@ H
.{{H I%
GetValidationResultErrors{{I b
({{b c
){{c d
;{{d e
foreach|| 
(||  
ValidationRuleResult|| ) 
validationRuleResult||* >
in}} "
validationResultErrors}} )
)}}) *
{~~ 

MessageBox 
. 
Show 
(   
validationRuleResult  4
.4 5
Message5 <
)< =
;= >
return
ÄÄ 
;
ÄÄ 
}
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
bool
ÑÑ ,
UserNameWasChangedSuccessfully
ÑÑ 3
(
ÑÑ3 4
)
ÑÑ4 5
{
ÖÖ 	
MemoryGameService
ÜÜ 
.
ÜÜ /
!AccountModifiabilityServiceClient
ÜÜ ?/
!accountModifiabilityServiceClient
ÜÜ@ a
=
ÜÜb c
new
áá 
MemoryGameService
áá %
.
áá% &/
!AccountModifiabilityServiceClient
áá& G
(
ááG H
)
ááH I
;
ááI J
return
ââ /
!accountModifiabilityServiceClient
ââ 4
.
ââ4 5
ChangeUsername
ââ5 C
(
ââC D
_userEmailAddress
ââD U
,
ââU V
_newUsername
ââW c
)
ââc d
;
ââd e
}
ää 	
private
åå 
void
åå 
GoToMainWindow
åå #
(
åå# $
)
åå$ %
{
çç 	

MainWindow
éé 

mainWindow
éé !
=
éé" #
new
éé$ '

MainWindow
éé( 2
(
éé2 3
)
éé3 4
;
éé4 5

mainWindow
èè 
.
èè 
Show
èè 
(
èè 
)
èè 
;
èè 
this
êê 
.
êê 
Close
êê 
(
êê 
)
êê 
;
êê 
}
ëë 	
}
íí 
}ìì â 
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
;55> ?
Console88 
.88 
	WriteLine88 
(88 
format88 $
)88$ %
;88% &
}99 	
}:: 
};; Æ[
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\CreateGame.xaml.cs
	namespace		 	

MemoryGame		
 
{

 
public 

partial 
class 

CreateGame #
:$ %
Window& ,
{ 
private  
ObservableCollection $
<$ %
MemoryGameService% 6
.6 7
DataTransferObjects7 J
.J K
CardDeckInfoDtoK Z
>Z [
_cardDecksInfoList\ n
;n o
private 
int 
_selectedCardDeckId '
;' (
private 
string 
	_username  
;  !
private 
int +
_numberOfPlayersDesiredForMatch 3
;3 4
private 
MemoryGameService !
.! "
DataTransferObjects" 5
.5 6
MatchDto6 >

_gameMatch? I
;I J
private 
MemoryGameService !
.! "
DataTransferObjects" 5
.5 6
CardDeckDTO6 A
	_cardDeckB K
;K L
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
$strT h
)h i
;i j
public 

CreateGame 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
_cardDecksInfoList 
=  
new! $ 
ObservableCollection% 9
<9 :
MemoryGameService: K
.K L
DataTransferObjectsL _
._ `
CardDeckInfoDto` o
>o p
(p q
)q r
;r s
LoadCardDecksInfo 
( 
) 
;  
	_username 
= 
Sesion 
. 
	GetSesion (
.( )
Username) 1
;1 2
} 	
public 
void #
CreateGameButtonClicked +
(+ ,
object, 2
sender3 9
,9 :
RoutedEventArgs; J
eK L
)L M
{   	
MemoryGameService!! 
.!! 
DataTransferObjects!! 1
.!!1 2
CardDeckInfoDto!!2 A
cardDeckForMatch!!B R
=!!S T
("" 
("" 
MemoryGameService"" #
.""# $
DataTransferObjects""$ 7
.""7 8
CardDeckInfoDto""8 G
)""G H
CardDeckComboBox""H X
.""X Y
SelectedItem""Y e
)""e f
;""f g
var$$ '
numberOfPlayersSelectedItem$$ +
=$$, -
($$. /
($$/ 0
ComboBoxItem$$0 <
)$$< =#
ComboBoxNumberOfPlayers$$= T
.$$T U
SelectedItem$$U a
)$$a b
.$$b c
Tag$$c f
;$$f g
if&& 
(&& '
numberOfPlayersSelectedItem&& +
==&&, .
null&&/ 3
)&&3 4
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
.((: ;2
&NumberOfPlayersForMatchWereNotSelected((; a
)((a b
;((b c
})) 
else)) 
if)) 
()) 
cardDeckForMatch)) %
==))& (
null))) -
)))- .
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
.++: ;%
NoCardDeckHasBeenSelected++; T
)++T U
;++U V
},, 
else-- 
{.. +
_numberOfPlayersDesiredForMatch// /
=//0 1
Int32//2 7
.//7 8
Parse//8 =
(//= >'
numberOfPlayersSelectedItem//> Y
.//Y Z
ToString//Z b
(//b c
)//c d
)//d e
;//e f
_selectedCardDeckId00 #
=00$ %
cardDeckForMatch00& 6
.006 7

CardDeckId007 A
;00A B
try11 
{22 
CreateNewMatch33 "
(33" #
)33# $
;33$ %
GoToWaitingRoom44 #
(44# $
)44$ %
;44% &
}55 
catch66 
(66 %
EndpointNotFoundException66 0%
endpointNotFoundException661 J
)66J K
{77 
_logger88 
.88 
Fatal88 !
(88! "%
endpointNotFoundException88" ;
)88; <
;88< =

MessageBox99 
.99 
Show99 #
(99# $

Properties99$ .
.99. /
Langs99/ 4
.994 5
	Resources995 >
.99> ? 
ServerConnectionLost99? S
)99S T
;99T U
}:: 
catch;; 
(;; 
TimeoutException;; '
timeoutException;;( 8
);;8 9
{<< 
_logger== 
.== 
Fatal== !
(==! "
timeoutException==" 2
)==2 3
;==3 4

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
ServerTimeoutError>>? Q
)>>Q R
;>>R S
}?? 
catch@@ 
(@@ 
FaultException@@ %
<@@% &

MemoryGame@@& 0
.@@0 1
MemoryGameService@@1 B
.@@B C
Faults@@C I
.@@I J#
CardDeckRetrievingFault@@J a
>@@a b#
cardDeckRetrievingFault@@c z
)@@z {
{AA 
_loggerBB 
.BB 
FatalBB !
(BB! "#
cardDeckRetrievingFaultBB" 9
)BB9 :
;BB: ;

MessageBoxCC 
.CC 
ShowCC #
(CC# $

PropertiesCC$ .
.CC. /
LangsCC/ 4
.CC4 5
	ResourcesCC5 >
.CC> ?#
CardDeckRetrievingErrorCC? V
)CCV W
;CCW X
}DD 
catchEE 
(EE "
CommunicationExceptionEE -"
communicationExceptionEE. D
)EED E
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
}JJ 
}KK 	
privateMM 
voidMM 
CreateNewMatchMM #
(MM# $
)MM$ %
{NN 	
LoadCardDeckOO 
(OO 
)OO 
;OO 

_gameMatchPP 
=PP 
newPP 
MemoryGameServicePP .
.PP. /
DataTransferObjectsPP/ B
.PPB C
MatchDtoPPC K
(PPK L
)PPL M
{QQ 
MaxNumberOfPlayersRR "
=RR# $+
_numberOfPlayersDesiredForMatchRR% D
,RRD E
HostSS 
=SS 
	_usernameSS  
,SS  !

HasStartedTT 
=TT 
falseTT "
,TT" #
CardDeckDtoUU 
=UU 
	_cardDeckUU '
,UU' (

TotalPairsVV 
=VV 
$numVV 
}WW 
;WW 
MemoryGameServiceYY 
.YY &
MatchCreationServiceClientYY 8'
_matchCreationServiceClientYY9 T
=YYU V
newZZ 
MemoryGameServiceZZ %
.ZZ% &&
MatchCreationServiceClientZZ& @
(ZZ@ A
)ZZA B
;ZZB C'
_matchCreationServiceClient\\ '
.\\' (
CreateNewMatch\\( 6
(\\6 7

_gameMatch\\7 A
)\\A B
;\\B C
}]] 	
private__ 
void__ 
LoadCardDecksInfo__ &
(__& '
)__' (
{`` 	
MemoryGameServiceaa 
.aa *
CardDeckRetrieverServiceClientaa <*
cardDeckRetrieverServiceClientaa= [
=aa\ ]
newbb 
MemoryGameServicebb %
.bb% &*
CardDeckRetrieverServiceClientbb& D
(bbD E
)bbE F
;bbF G
MemoryGameServicedd 
.dd 
DataTransferObjectsdd 1
.dd1 2
CardDeckInfoDtodd2 A
[ddA B
]ddB C
cardDecksInfoddD Q
=ddR S*
cardDeckRetrieverServiceClientee .
.ee. /
GetCardDecksInfoee/ ?
(ee? @
)ee@ A
;eeA B
forgg 
(gg 
intgg 
indexgg 
=gg 
$numgg 
;gg 
indexgg $
<gg% &
cardDecksInfogg' 4
.gg4 5
Lengthgg5 ;
;gg; <
indexgg= B
++ggB D
)ggD E
{hh 
_cardDecksInfoListii "
.ii" #
Addii# &
(ii& '
cardDecksInfoii' 4
[ii4 5
indexii5 :
]ii: ;
)ii; <
;ii< =
}jj 
CardDeckComboBoxkk 
.kk 
ItemsSourcekk (
=kk) *
_cardDecksInfoListkk+ =
;kk= >
CardDeckComboBoxll 
.ll 
DisplayMemberPathll .
=ll/ 0
$strll1 ?
;ll? @
CardDeckComboBoxmm 
.mm 
SelectedValuePathmm .
=mm/ 0
$strmm1 =
;mm= >
}nn 	
privatepp 
voidpp 
LoadCardDeckpp !
(pp! "
)pp" #
{qq 	
MemoryGameServicerr 
.rr *
CardDeckRetrieverServiceClientrr <*
cardDeckRetrieverServiceClientrr= [
=rr\ ]
newss 
MemoryGameServicess %
.ss% &*
CardDeckRetrieverServiceClientss& D
(ssD E
)ssE F
;ssF G
	_cardDecktt 
=tt *
cardDeckRetrieverServiceClienttt 6
.tt6 7
GetCardDeckAndCardstt7 J
(ttJ K
_selectedCardDeckIdttK ^
)tt^ _
;tt_ `
}uu 	
privateww 
voidww 
GoToWaitingRoomww $
(ww$ %
)ww% &
{xx 	
WaitingRoomyy 
waitingRoomViewyy '
=yy( )
newyy* -
WaitingRoomyy. 9
(yy9 :
)yy: ;
{zz 
GameMatchDto{{ 
={{ 

_gameMatch{{ )
}|| 
;|| 
waitingRoomView~~ 
.~~ 
Show~~  
(~~  !
)~~! "
;~~" #
this 
. 
Close 
( 
) 
; 
}
ÄÄ 	
public
ÇÇ 
void
ÇÇ 
BackButtonClicked
ÇÇ %
(
ÇÇ% &
object
ÇÇ& ,
sender
ÇÇ- 3
,
ÇÇ3 4
RoutedEventArgs
ÇÇ5 D
e
ÇÇE F
)
ÇÇF G
{
ÉÉ 	
MainMenu
ÑÑ 
mainMenuView
ÑÑ !
=
ÑÑ" #
new
ÑÑ$ '
MainMenu
ÑÑ( 0
(
ÑÑ0 1
)
ÑÑ1 2
;
ÑÑ2 3
mainMenuView
ÖÖ 
.
ÖÖ 
Show
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ  
this
ÜÜ 
.
ÜÜ 
Close
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 	
}
àà 
}ââ ¸F
RC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\ExpelPlayer.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
ExpelPlayer $
:% &
Window' -
{ 
public 
InstanceContext 
Context &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
MemoryGameService !
.! "
MatchServiceClient" 4
_matchServiceClient5 H
;H I
public  
ObservableCollection #
<# $
string$ *
>* +
players, 3
=4 5
new6 9 
ObservableCollection: N
<N O
stringO U
>U V
(V W
)W X
;X Y
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int "
NumberOfPlayersInMatch )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
PlayerUsername $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
ExpelPlayer 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
WindowLoaded !
(! "
object" (
sender) /
,/ 0
RoutedEventArgs1 @
eA B
)B C
{ 	
_matchServiceClient 
=  !
new" %
MemoryGameService& 7
.7 8
MatchServiceClient8 J
(J K
ContextK R
)R S
;S T
try 
{ "
LoadUsernamesToBeVoted &
(& '
)' (
;( )
} 
catch   
(   %
EndpointNotFoundException   ,
)  , -
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
ServerConnectionLost""; O
)""O P
;""P Q
}## 
catch$$ 
($$ 
TimeoutException$$ #
)$$# $
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
ServerTimeoutError&&; M
)&&M N
;&&N O
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
void.. "
LoadUsernamesToBeVoted.. +
(..+ ,
).., -
{// 	
IList00 
<00 
string00 
>00 #
playersInMatchUsernames00 1
=002 3
_matchServiceClient004 G
.00G H1
%GetUsernamesOfPlayersConnectedToMatch00H m
(00m n
	MatchHost00n w
)00w x
;00x y
IList11 
<11 
string11 
>11 
playersVoted11 &
=11' (
_matchServiceClient11) <
.11< =
GetPlayersVoted11= L
(11L M
	MatchHost11M V
,11V W
PlayerUsername11X f
)11f g
;11g h
foreach22 
(22 
var22 
playerUsername22 '
in22( *#
playersInMatchUsernames22+ B
)22B C
{33 
if44 
(44 
playerUsername44 "
!=44# %
PlayerUsername44& 4
)444 5
{55 
players66 
.66 
Add66 
(66  
playerUsername66  .
)66. /
;66/ 0
}77 
}88 
if99 
(99 
playersVoted99 
.99 
Count99 "
!=99# %
$num99& '
)99' (
{:: 
for;; 
(;; 
int;; 
index;; 
=;;  
$num;;! "
;;;" #
index;;$ )
<;;* +#
playersInMatchUsernames;;, C
.;;C D
Count;;D I
;;;I J
index;;K P
++;;P R
);;R S
{<< 
for== 
(== 
int== 
playersVotedIndex== .
===/ 0
$num==1 2
;==2 3
playersVotedIndex==4 E
<==F G
playersVoted==H T
.==T U
Count==U Z
;==Z [
playersVotedIndex==\ m
++==m o
)==o p
{>> 
if?? 
(?? #
playersInMatchUsernames?? 3
[??3 4
index??4 9
]??9 :
.??: ;
Equals??; A
(??A B
playersVoted??B N
[??N O
playersVotedIndex??O `
]??` a
)??a b
)??b c
{@@ 
playersAA #
.AA# $
RemoveAA$ *
(AA* +
playersVotedAA+ 7
[AA7 8
playersVotedIndexAA8 I
]AAI J
)AAJ K
;AAK L
}BB 
}CC 
}DD 
}EE 
ExpelPlayerDataGridFF 
.FF  
ItemsSourceFF  +
=FF, -
playersFF. 5
;FF5 6
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
{JJ 	
tryKK 
{LL 
VoteToExpelPlayerMM !
(MM! "
)MM" #
;MM# $
}NN 
catchOO 
(OO %
EndpointNotFoundExceptionOO ,
)OO, -
{PP 

MessageBoxQQ 
.QQ 
ShowQQ 
(QQ  

PropertiesQQ  *
.QQ* +
LangsQQ+ 0
.QQ0 1
	ResourcesQQ1 :
.QQ: ; 
ServerConnectionLostQQ; O
)QQO P
;QQP Q
}RR 
catchSS 
(SS 
TimeoutExceptionSS #
)SS# $
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
ServerTimeoutErrorUU; M
)UUM N
;UUN O
}VV 
catchWW 
(WW "
CommunicationExceptionWW )
)WW) *
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
.YY: ;$
CommunicationInterruptedYY; S
)YYS T
;YYT U
}ZZ 
finally[[ 
{\\ 
this]] 
.]] 
Close]] 
(]] 
)]] 
;]] 
}^^ 
}__ 	
privateaa 
voidaa 
VoteToExpelPlayeraa &
(aa& '
)aa' (
{bb 	
stringcc 
selectedPlayercc !
=cc" #
ExpelPlayerDataGridcc$ 7
.cc7 8
SelectedItemcc8 D
.ccD E
ToStringccE M
(ccM N
)ccN O
;ccO P
_matchServiceClientdd 
.dd  
ExpelPlayerdd  +
(dd+ ,
	MatchHostdd, 5
,dd5 6
selectedPlayerdd7 E
,ddE F
PlayerUsernameddG U
)ddU V
;ddV W
}ee 	
privategg 
voidgg 
BackButtonClickedgg &
(gg& '
objectgg' -
sendergg. 4
,gg4 5
RoutedEventArgsgg6 E
eggF G
)ggG H
{hh 	
GameOptionsii 
gameOptionsViewii '
=ii( )
newii* -
GameOptionsii. 9
(ii9 :
)ii: ;
{jj 
	MatchHostkk 
=kk 
thiskk  
.kk  !
	MatchHostkk! *
,kk* +"
NumberOfPlayersInMatchll &
=ll' (
thisll) -
.ll- ."
NumberOfPlayersInMatchll. D
,llD E
PlayerUsernamemm 
=mm  
thismm! %
.mm% &
PlayerUsernamemm& 4
,mm4 5
Contextnn 
=nn 
thisnn 
.nn 
Contextnn &
}oo 
;oo 
gameOptionsViewpp 
.pp 
Showpp  
(pp  !
)pp! "
;pp" #
thisqq 
.qq 
Closeqq 
(qq 
)qq 
;qq 
}rr 	
}ss 
}tt Å(
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
}òò Ág
LC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Login.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 
Login 
:  
Window! '
{ 
private 
RuleSet 
_ruleSet  
;  !
private 
string 
	_username  
,  !
	_password" +
;+ ,
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
$strT c
)c d
;d e
private &
AccessibilityServiceClient *'
_accessibilityServiceClient+ F
;F G
public 
Login 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "'
_accessibilityServiceClient '
=( )
new* -&
AccessibilityServiceClient. H
(H I
)I J
;J K
} 	
private 
void 
GetDataFromFields &
(& '
)' (
{ 	
	_username 
= 
TextBoxUsername '
.' (
Text( ,
;, -
	_password   
=   
PasswordBoxPassword   +
.  + ,
Password  , 4
;  4 5
}!! 	
private## 
void## 
SetFormValidation## &
(##& '
)##' (
{$$ 	
GetDataFromFields%% 
(%% 
)%% 
;%%  
_ruleSet&& 
=&& 
new&& 
RuleSet&& "
(&&" #
)&&# $
;&&$ %
_ruleSet'' 
.'' 
AddValidationRule'' &
(''& '
new''' *#
NonEmptyFieldValidation''+ B
(''B C
	_username''C L
)''L M
)''M N
;''N O
_ruleSet(( 
.(( 
AddValidationRule(( &
(((& '
new((' *#
NonEmptyFieldValidation((+ B
(((B C
	_password((C L
)((L M
)((M N
;((N O
})) 	
private++ 
void++ 
ShowErrorMessage++ %
(++% &
)++& '
{,, 	
List-- 
<--  
ValidationRuleResult-- %
>--% &"
validationResultErrors--' =
=--> ?
_ruleSet--@ H
.--H I%
GetValidationResultErrors--I b
(--b c
)--c d
;--d e
foreach.. 
(..  
ValidationRuleResult.. ) 
validationRuleResult..* >
in// "
validationResultErrors// )
)//) *
{00 

MessageBox11 
.11 
Show11 
(11   
validationRuleResult11  4
.114 5
Message115 <
)11< =
;11= >
return22 
;22 
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
(AA# $
$strAA$ :
)AA: ;
;AA; <
}BB 
catchCC 
(CC 
FaultExceptionCC %
<CC% &
MemoryGameServiceCC& 7
.CC7 8
FaultsCC8 >
.CC> ?'
DatabaseConnectionLostFaultCC? Z
>CCZ [
)CC[ \
{DD 

MessageBoxEE 
.EE 
ShowEE #
(EE# $
$strEE$ 5
)EE5 6
;EE6 7
}FF 
catchGG 
(GG %
EndpointNotFoundExceptionGG 0
)GG0 1
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
ServerConnectionLostII? S
)IIS T
;IIT U
}JJ 
catchKK 
(KK 
TimeoutExceptionKK '
timeoutExceptionKK( 8
)KK8 9
{LL 
_loggerMM 
.MM 
FatalMM !
(MM! "
timeoutExceptionMM" 2
)MM2 3
;MM3 4

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
ServerTimeoutErrorNN? Q
)NNQ R
;NNR S
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
}ZZ 	
public]] 
string]] 
GetUserEmailAdress]] (
(]]( )
)]]) *
{^^ 	
string`` 
username`` 
=`` 
TextBoxUsername`` -
.``- .
Text``. 2
;``2 3
stringaa 
emailAddressaa 
=aa  !'
_accessibilityServiceClientaa" =
.aa= >
GetUserEmailAddressaa> Q
(aaQ R
usernameaaR Z
)aaZ [
;aa[ \
returnbb 
emailAddressbb 
;bb  
}cc 	
privateee 
voidee 
	LoginUseree 
(ee 
)ee  
{ff 	
ifgg 
(gg 
LoginIsValidgg 
(gg 
)gg 
)gg 
{hh 
ifii 
(ii 
EmailIsVerifiedii #
(ii# $
)ii$ %
)ii% &
{jj 
stringkk 
emailAddresskk '
=kk( )
GetUserEmailAdresskk* <
(kk< =
)kk= >
;kk> ?
Sesionll 
playerSesionll '
=ll( )
Sesionll* 0
.ll0 1
	GetSesionll1 :
;ll: ;
playerSesionmm  
.mm  !
Usernamemm! )
=mm* +
	_usernamemm, 5
;mm5 6
playerSesionnn  
.nn  !
EmailAddressnn! -
=nn. /
emailAddressnn0 <
;nn< =
GoToMainMenuoo  
(oo  !
)oo! "
;oo" #
}pp 
elseqq 
{rr 
GoToActivationTokenss '
(ss' (
)ss( )
;ss) *
}tt 
}uu 
elsevv 
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
.xx: ;"
NonMatchingCredentialsxx; Q
)xxQ R
;xxR S
}yy 
}zz 	
public|| 
bool|| 
LoginIsValid||  
(||  !
)||! "
{}} 	
BCryptHashGenerator~~ 
bCryptHashGenerator~~  3
=~~4 5
new~~6 9
BCryptHashGenerator~~: M
(~~M N
)~~N O
;~~O P
string 
salt 
= 
GetPasswordSalt )
() *
)* +
;+ ,
string
ÄÄ 
encryptedPassword
ÄÄ $
=
ÄÄ% &!
bCryptHashGenerator
ÄÄ' :
.
ÄÄ: ;%
GenerateEncryptedString
ÄÄ; R
(
ÄÄR S
	_password
ÄÄS \
,
ÄÄ\ ]
salt
ÄÄ^ b
)
ÄÄb c
;
ÄÄc d(
AccessibilityServiceClient
ÅÅ &(
accessibilityServiceClient
ÅÅ' A
=
ÅÅB C
new
ÅÅD G(
AccessibilityServiceClient
ÅÅH b
(
ÅÅb c
)
ÅÅc d
;
ÅÅd e
bool
ÇÇ 
hasAccessRights
ÇÇ  
=
ÇÇ! "(
accessibilityServiceClient
ÇÇ# =
.
ÇÇ= >
HasAccessRights
ÇÇ> M
(
ÇÇM N
	_username
ÇÇN W
,
ÇÇW X
encryptedPassword
ÇÇY j
)
ÇÇj k
;
ÇÇk l
return
ÉÉ 
hasAccessRights
ÉÉ "
;
ÉÉ" #
}
ÑÑ 	
private
ÜÜ 
string
ÜÜ 
GetPasswordSalt
ÜÜ &
(
ÜÜ& '
)
ÜÜ' (
{
áá 	
MemoryGameService
àà 
.
àà (
AccessibilityServiceClient
àà 8(
accessibilityServiceClient
àà9 S
=
ààT U
new
ââ 
MemoryGameService
ââ %
.
ââ% &(
AccessibilityServiceClient
ââ& @
(
ââ@ A
)
ââA B
;
ââB C
string
ää 
salt
ää 
=
ää (
accessibilityServiceClient
ää 4
.
ää4 5
GetSalt
ää5 <
(
ää< =
	_username
ää= F
)
ääF G
;
ääG H
return
ãã 
salt
ãã 
;
ãã 
}
åå 	
public
éé 
bool
éé 
EmailIsVerified
éé #
(
éé# $
)
éé$ %
{
èè 	
string
êê 
username
êê 
=
êê 
TextBoxUsername
êê -
.
êê- .
Text
êê. 2
;
êê2 3
bool
ëë 
emailIsVerified
ëë  
=
ëë! ")
_accessibilityServiceClient
ëë# >
.
ëë> ?

IsVerified
ëë? I
(
ëëI J
username
ëëJ R
)
ëëR S
;
ëëS T
return
íí 
emailIsVerified
íí "
;
íí" #
}
ìì 	
public
ïï 
void
ïï 
GoToMainMenu
ïï  
(
ïï  !
)
ïï! "
{
ññ 	
MainMenu
óó 
mainMenuView
óó !
=
óó" #
new
óó$ '
MainMenu
óó( 0
(
óó0 1
)
óó1 2
;
óó2 3
mainMenuView
òò 
.
òò 
Show
òò 
(
òò 
)
òò 
;
òò  
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
öö 	
private
úú 
void
úú )
RecoverPasswordLabelClicked
úú 0
(
úú0 1
object
úú1 7
sender
úú8 >
,
úú> ?
RoutedEventArgs
úú@ O
e
úúP Q
)
úúQ R
{
ùù 	
RecoverPassword
ûû 
mainWindowView
ûû *
=
ûû+ ,
new
ûû- 0
RecoverPassword
ûû1 @
(
ûû@ A
)
ûûA B
;
ûûB C
mainWindowView
üü 
.
üü 
Show
üü 
(
üü  
)
üü  !
;
üü! "
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
°° 	
private
££ 
void
££ 
BackButtonClicked
££ &
(
££& '
object
££' -
sender
££. 4
,
££4 5
RoutedEventArgs
££6 E
e
££F G
)
££G H
{
§§ 	

MainWindow
•• 
mainWindowView
•• %
=
••& '
new
••( +

MainWindow
••, 6
(
••6 7
)
••7 8
;
••8 9
mainWindowView
¶¶ 
.
¶¶ 
Show
¶¶ 
(
¶¶  
)
¶¶  !
;
¶¶! "
this
ßß 
.
ßß 
Close
ßß 
(
ßß 
)
ßß 
;
ßß 
}
®® 	
private
™™ 
void
™™ !
GoToActivationToken
™™ (
(
™™( )
)
™™) *
{
´´ 	
string
¨¨ 
emailAddress
¨¨ 
=
¨¨  ! 
GetUserEmailAdress
¨¨" 4
(
¨¨4 5
)
¨¨5 6
;
¨¨6 7
ActivationToken
≠≠ #
activationTokenWindow
≠≠ 1
=
≠≠2 3
new
ÆÆ 
ActivationToken
ÆÆ #
(
ÆÆ# $
emailAddress
ÆÆ$ 0
,
ÆÆ0 1
TextBoxUsername
ÆÆ2 A
.
ÆÆA B
Text
ÆÆB F
)
ÆÆF G
;
ÆÆG H#
activationTokenWindow
ØØ !
.
ØØ! "
Show
ØØ" &
(
ØØ& '
)
ØØ' (
;
ØØ( )
this
∞∞ 
.
∞∞ 
Close
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ 
}
±± 	
}
≤≤ 
}≥≥ •
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
},, ª…
LC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\Match.xaml.cs
	namespace

 	

MemoryGame


 
.

 
Views

 
{ 
public 

partial 
class 
Match 
:  
Window! '
,' (
MemoryGameService) :
.: ;!
IMatchServiceCallback; P
{ 
private 
InstanceContext 
_context  (
=) *
null+ /
;/ 0
private 
MemoryGameService !
.! "
MatchServiceClient" 4
_matchServiceClient5 H
;H I
public 
MemoryGameService  
.  !
DataTransferObjects! 4
.4 5
CardDeckDTO5 @
CardDeckA I
{J K
getL O
;O P
setQ T
;T U
}V W
private 
List 
< 
	ImageCard 
> 
_imageCards  +
;+ ,
private 
int %
_numberOfMovementsAllowed -
;- .
private 
IList 
< 
	ImageCard 
>  &
_cardsFlippedInCurrentTurn! ;
;; <
private 
bool !
_playerHasFormedAPair *
;* +
public 
string 
[ 
] 
Players 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
NumberOfPlayers "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	MatchHost 
{  !
get" %
;% &
set' *
;* +
}, -
private 
bool 0
$_windowIsBeingClosedByTheCloseButton 9
;9 :
public 
Match 
( 
) 
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
_matchServiceClient!! 
=!!  !
new!!" %
MemoryGameService!!& 7
.!!7 8
MatchServiceClient!!8 J
(!!J K
_context!!K S
)!!S T
;!!T U
_imageCards"" 
="" 
new"" 
List"" "
<""" #
	ImageCard""# ,
>"", -
(""- .
)"". /
;""/ 0%
_numberOfMovementsAllowed## %
=##& '
$num##( )
;##) *&
_cardsFlippedInCurrentTurn$$ &
=$$' (
new$$) ,
List$$- 1
<$$1 2
	ImageCard$$2 ;
>$$; <
($$< =
)$$= >
;$$> ?!
_playerHasFormedAPair%% !
=%%" #
false%%$ )
;%%) *0
$_windowIsBeingClosedByTheCloseButton&& 0
=&&1 2
true&&3 7
;&&7 8
}'' 	
private)) 
void)) 
DrawPlayersNames)) %
())% &
)))& '
{** 	
UserBoxDrawer++ 
userBoxDrawer++ '
=++( )
new++* -
UserBoxDrawer++. ;
(++; <
)++< =
{,, 
GridToBeDrawnOn-- 
=--  !
MainGrid--" *
,--* +
PlayersUsernames..  
=..! "
Players..# *
}// 
;// 
userBoxDrawer00 
.00 
Draw00 
(00 
)00  
;00  !
}11 	
private33 
void33 
DrawGameBoard33 "
(33" #
)33# $
{44 	
GameBoardDrawer55 
gameBoardDrawer55 +
=55, -
new55. 1
GameBoardDrawer552 A
(55A B
)55B C
{66 
GridToBeDrawnOn77 
=77  !
GameBoardGrid77" /
,77/ 0

ImageCards88 
=88 
_imageCards88 (
,88( )
CardDeck99 
=99 
CardDeck99 #
,99# $
NumberOfColumns:: 
=::  !
$num::" #
};; 
;;; 
gameBoardDrawer<< 
.<< 
Draw<<  
(<<  !
)<<! "
;<<" #
gameBoardDrawer== 
.== !
SetEventOnCardClicked== 1
(==1 2
GetClickedCard==2 @
)==@ A
;==A B
}>> 	
private@@ 
void@@ 
GetClickedCard@@ #
(@@# $
object@@$ *
sender@@+ 1
,@@1 2
	EventArgs@@3 <
e@@= >
)@@> ?
{AA 	
	ImageCardBB 
cardClickedBB !
=BB" #
(BB$ %
(BB% &
	ImageCardBB& /
)BB/ 0
senderBB0 6
)BB6 7
;BB7 8
boolCC !
cardHasNotBeenFlippedCC &
=CC' (
cardClickedCC) 4
.CC4 5
SourceCC5 ;
!=CC< >
cardClickedCC? J
.CCJ K

FrontImageCCK U
;CCU V
boolDD #
playerStillHasMovementsDD (
=DD) *%
_numberOfMovementsAllowedDD+ D
>DDE F
$numDDG H
;DDH I
ifFF 
(FF !
cardHasNotBeenFlippedFF %
&&FF& (#
playerStillHasMovementsFF) @
)FF@ A
{GG 
FlipCardHH 
(HH 
cardClickedHH $
)HH$ %
;HH% &
EndMovementII 
(II 
)II 
;II 
}JJ 
}KK 	
privateMM 
voidMM 
FlipCardMM 
(MM 
	ImageCardMM '
cardClickedMM( 3
)MM3 4
{NN 	
tryOO 
{PP %
_numberOfMovementsAllowedQQ )
--QQ) +
;QQ+ ,
intRR 
	cardIndexRR 
=RR 
_imageCardsRR  +
.RR+ ,
IndexOfRR, 3
(RR3 4
cardClickedRR4 ?
)RR? @
;RR@ A&
_cardsFlippedInCurrentTurnSS *
.SS* +
AddSS+ .
(SS. /
cardClickedSS/ :
)SS: ;
;SS; <
PlayerMovementDtoTT !
playerMovementDtoTT" 3
=TT4 5
newTT6 9
PlayerMovementDtoTT: K
(TTK L
)TTL M
{UU 
HostVV 
=VV 
	MatchHostVV $
,VV$ %
UsernameWW 
=WW 
SesionWW %
.WW% &
	GetSesionWW& /
.WW/ 0
UsernameWW0 8
,WW8 9
	CardIndexXX 
=XX 
	cardIndexXX  )
,XX) *
MovementsLeftYY !
=YY" #%
_numberOfMovementsAllowedYY$ =
,YY= >
HasFormedAPairZZ "
=ZZ# $!
_playerHasFormedAPairZZ% :
}[[ 
;[[ 
if\\ 
(\\ %
_numberOfMovementsAllowed\\ -
==\\. 0
$num\\1 2
)\\2 3
{]] 
if^^ 
(^^ 
HasFormedAPair^^ &
(^^& '
)^^' (
)^^( )
{__ 
playerMovementDto`` )
.``) *
HasFormedAPair``* 8
=``9 :
true``; ?
;``? @
}aa 
}bb 
_matchServiceClientcc #
.cc# $#
NotifyCardWasUncovereddcc$ ;
(cc; <
playerMovementDtocc< M
)ccM N
;ccN O
}dd 
catchee 
(ee %
EndpointNotFoundExceptionee ,
)ee, -
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
ServerConnectionLostgg; O
)ggO P
;ggP Q
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
(mm "
CommunicationExceptionmm )
)mm) *
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
.oo: ;$
CommunicationInterruptedoo; S
)ooS T
;ooT U
}pp 
}qq 	
privatess 
voidss 
EndMovementss  
(ss  !
)ss! "
{tt 	
tryuu 
{vv 
ifww 
(ww %
_numberOfMovementsAllowedww -
==ww. 0
$numww1 2
)ww2 3
{xx 
ifyy 
(yy 
HasFormedAPairyy &
(yy& '
)yy' (
)yy( )
{zz %
_numberOfMovementsAllowed{{ 1
={{2 3
$num{{4 5
;{{5 6!
_playerHasFormedAPair|| -
=||. /
true||0 4
;||4 5
}}} 
CardPairDto 
cardPairDto  +
=, -
new. 1
CardPairDto2 =
(= >
)> ?
{
ÄÄ 
IndexOfCard1
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
ÅÅY Z
IndexOfCard2
ÇÇ $
=
ÇÇ% &
_imageCards
ÇÇ' 2
.
ÇÇ2 3
IndexOf
ÇÇ3 :
(
ÇÇ: ;(
_cardsFlippedInCurrentTurn
ÇÇ; U
[
ÇÇU V
$num
ÇÇV W
]
ÇÇW X
)
ÇÇX Y
,
ÇÇY Z
BothCardsAreEqual
ÉÉ )
=
ÉÉ* +#
_playerHasFormedAPair
ÉÉ, A
}
ÑÑ 
;
ÑÑ !
_matchServiceClient
ÖÖ '
.
ÖÖ' (
EndTurn
ÖÖ( /
(
ÖÖ/ 0
	MatchHost
ÖÖ0 9
,
ÖÖ9 :
Sesion
ÖÖ; A
.
ÖÖA B
	GetSesion
ÖÖB K
.
ÖÖK L
Username
ÖÖL T
,
ÖÖT U
cardPairDto
ÖÖV a
)
ÖÖa b
;
ÖÖb c#
_playerHasFormedAPair
ÜÜ )
=
ÜÜ* +
false
ÜÜ, 1
;
ÜÜ1 2(
_cardsFlippedInCurrentTurn
áá .
.
áá. /
Clear
áá/ 4
(
áá4 5
)
áá5 6
;
áá6 7
}
àà 
}
ââ 
catch
ää 
(
ää '
EndpointNotFoundException
ää ,
)
ää, -
{
ãã 

MessageBox
åå 
.
åå 
Show
åå 
(
åå  

Properties
åå  *
.
åå* +
Langs
åå+ 0
.
åå0 1
	Resources
åå1 :
.
åå: ;"
ServerConnectionLost
åå; O
)
ååO P
;
ååP Q
}
çç 
catch
éé 
(
éé 
TimeoutException
éé #
)
éé# $
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
êê: ; 
ServerTimeoutError
êê; M
)
êêM N
;
êêN O
}
ëë 
catch
íí 
(
íí $
CommunicationException
íí )
)
íí) *
{
ìì 

MessageBox
îî 
.
îî 
Show
îî 
(
îî  

Properties
îî  *
.
îî* +
Langs
îî+ 0
.
îî0 1
	Resources
îî1 :
.
îî: ;&
CommunicationInterrupted
îî; S
)
îîS T
;
îîT U
}
ïï 
}
ññ 	
private
òò 
bool
òò 
HasFormedAPair
òò #
(
òò# $
)
òò$ %
{
ôô 	
if
öö 
(
öö (
_cardsFlippedInCurrentTurn
öö *
[
öö* +
$num
öö+ ,
]
öö, -
.
öö- .
CardId
öö. 4
==
öö5 7(
_cardsFlippedInCurrentTurn
öö8 R
[
ööR S
$num
ööS T
]
ööT U
.
ööU V
CardId
ööV \
)
öö\ ]
{
õõ 
return
úú 
true
úú 
;
úú 
}
ùù 
return
ûû 
false
ûû 
;
ûû 
}
üü 	
private
°° 
void
°° "
OptionsButtonClicked
°° )
(
°°) *
object
°°* 0
sender
°°1 7
,
°°7 8
RoutedEventArgs
°°9 H
e
°°I J
)
°°J K
{
¢¢ 	2
$_windowIsBeingClosedByTheCloseButton
££ 0
=
££1 2
false
££3 8
;
££8 9
GameOptions
§§ 
gameOptionsView
§§ '
=
§§( )
new
§§* -
GameOptions
§§. 9
(
§§9 :
)
§§: ;
{
•• 
	MatchHost
¶¶ 
=
¶¶ 
this
¶¶  
.
¶¶  !
	MatchHost
¶¶! *
,
¶¶* +$
NumberOfPlayersInMatch
ßß &
=
ßß' (
NumberOfPlayers
ßß) 8
,
ßß8 9
PlayerUsername
®® 
=
®®  
Sesion
®®! '
.
®®' (
	GetSesion
®®( 1
.
®®1 2
Username
®®2 :
,
®®: ;
Context
©© 
=
©© 
this
©© 
.
©© 
_context
©© '
}
™™ 
;
™™ 
gameOptionsView
´´ 
.
´´ 
Show
´´  
(
´´  !
)
´´! "
;
´´" #
}
¨¨ 	
private
ÆÆ 
void
ÆÆ 
WindowLoaded
ÆÆ !
(
ÆÆ! "
object
ÆÆ" (
sender
ÆÆ) /
,
ÆÆ/ 0
	EventArgs
ÆÆ1 :
e
ÆÆ; <
)
ÆÆ< =
{
ØØ 	
DrawPlayersNames
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ 
DrawGameBoard
±± 
(
±± 
)
±± 
;
±± 
if
≤≤ 
(
≤≤ 
	MatchHost
≤≤ 
.
≤≤ 
Equals
≤≤  
(
≤≤  !
Sesion
≤≤! '
.
≤≤' (
	GetSesion
≤≤( 1
.
≤≤1 2
Username
≤≤2 :
)
≤≤: ;
)
≤≤; <
{
≥≥ '
_numberOfMovementsAllowed
¥¥ )
=
¥¥* +
$num
¥¥, -
;
¥¥- .
}
µµ 
else
∂∂ 
{
∑∑ '
_numberOfMovementsAllowed
∏∏ )
=
∏∏* +
$num
∏∏, -
;
∏∏- .
}
ππ 
	TurnLabel
∫∫ 
.
∫∫ 
Content
∫∫ 
=
∫∫ 

Properties
∫∫  *
.
∫∫* +
Langs
∫∫+ 0
.
∫∫0 1
	Resources
∫∫1 :
.
∫∫: ;
TurnMessage
∫∫; F
+
∫∫G H
$str
∫∫I M
+
∫∫N O
	MatchHost
∫∫P Y
;
∫∫Y Z!
_matchServiceClient
ªª 
.
ªª  

EnterMatch
ªª  *
(
ªª* +
	MatchHost
ªª+ 4
,
ªª4 5
Sesion
ªª6 <
.
ªª< =
	GetSesion
ªª= F
.
ªªF G
Username
ªªG O
)
ªªO P
;
ªªP Q
NumberOfPlayers
ºº 
=
ºº 
Players
ºº %
.
ºº% &
Length
ºº& ,
;
ºº, -
}
ΩΩ 	
private
øø 
void
øø 
Window_Closed
øø "
(
øø" #
object
øø# )
sender
øø* 0
,
øø0 1
System
øø2 8
.
øø8 9
	EventArgs
øø9 B
e
øøC D
)
øøD E
{
¿¿ 	
if
¡¡ 
(
¡¡ 2
$_windowIsBeingClosedByTheCloseButton
¡¡ 4
)
¡¡4 5
{
¬¬ 
try
√√ 
{
ƒƒ !
_matchServiceClient
≈≈ '
.
≈≈' (

LeaveMatch
≈≈( 2
(
≈≈2 3
	MatchHost
≈≈3 <
,
≈≈< =
Sesion
≈≈> D
.
≈≈D E
	GetSesion
≈≈E N
.
≈≈N O
Username
≈≈O W
)
≈≈W X
;
≈≈X Y
}
∆∆ 
catch
«« 
(
«« $
CommunicationException
«« -
)
««- .
{
»» 

MessageBox
…… 
.
…… 
Show
…… #
(
……# $
$str
……$ /
)
……/ 0
;
……0 1
}
   
}
ÃÃ 
}
ÕÕ 	
public
œœ 
void
œœ 
UncoverCardd
œœ  
(
œœ  !
int
œœ! $
	cardIndex
œœ% .
)
œœ. /
{
–– 	
_imageCards
—— 
[
—— 
	cardIndex
—— !
]
——! "
.
——" #
Source
——# )
=
——* +
_imageCards
——, 7
[
——7 8
	cardIndex
——8 A
]
——A B
.
——B C

FrontImage
——C M
;
——M N
}
““ 	
private
‘‘ 
async
‘‘ 
void
‘‘  
FlipBothCardsAgain
‘‘ -
(
‘‘- .
CardPairDto
‘‘. 9
cardPairDto
‘‘: E
)
‘‘E F
{
’’ 	
await
÷÷ 
Task
÷÷ 
.
÷÷ 
Delay
÷÷ 
(
÷÷ 
$num
÷÷ !
)
÷÷! "
;
÷÷" #
_imageCards
◊◊ 
[
◊◊ 
cardPairDto
◊◊ #
.
◊◊# $
IndexOfCard1
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
IndexOfCard1
◊◊S _
]
◊◊_ `
.
◊◊` a
	BackImage
◊◊a j
;
◊◊j k
_imageCards
ÿÿ 
[
ÿÿ 
cardPairDto
ÿÿ #
.
ÿÿ# $
IndexOfCard2
ÿÿ$ 0
]
ÿÿ0 1
.
ÿÿ1 2
Source
ÿÿ2 8
=
ÿÿ9 :
_imageCards
ÿÿ; F
[
ÿÿF G
cardPairDto
ÿÿG R
.
ÿÿR S
IndexOfCard2
ÿÿS _
]
ÿÿ_ `
.
ÿÿ` a
	BackImage
ÿÿa j
;
ÿÿj k
}
ŸŸ 	
public
€€ 
void
€€  
NotifyTurnHasEnded
€€ &
(
€€& '
string
€€' -
username
€€. 6
,
€€6 7
CardPairDto
€€8 C
cardPairDto
€€D O
)
€€O P
{
‹‹ 	
	TurnLabel
›› 
.
›› 
Content
›› 
=
›› 

Properties
››  *
.
››* +
Langs
››+ 0
.
››0 1
	Resources
››1 :
.
››: ;
TurnMessage
››; F
+
››G H
$str
››I M
+
››N O
username
››P X
;
››X Y
if
ﬂﬂ 
(
ﬂﬂ 
Sesion
ﬂﬂ 
.
ﬂﬂ 
	GetSesion
ﬂﬂ  
.
ﬂﬂ  !
Username
ﬂﬂ! )
.
ﬂﬂ) *
Equals
ﬂﬂ* 0
(
ﬂﬂ0 1
username
ﬂﬂ1 9
)
ﬂﬂ9 :
)
ﬂﬂ: ;
{
‡‡ '
_numberOfMovementsAllowed
·· )
=
··* +
$num
··, -
;
··- .
}
‚‚ 
if
‰‰ 
(
‰‰ 
cardPairDto
‰‰ 
.
‰‰ 
BothCardsAreEqual
‰‰ -
)
‰‰- .
{
ÂÂ 
	ImageCard
ÊÊ 

imageCard1
ÊÊ $
=
ÊÊ% &
_imageCards
ÊÊ' 2
[
ÊÊ2 3
cardPairDto
ÊÊ3 >
.
ÊÊ> ?
IndexOfCard1
ÊÊ? K
]
ÊÊK L
;
ÊÊL M
	ImageCard
ÁÁ 

imageCard2
ÁÁ $
=
ÁÁ% &
_imageCards
ÁÁ' 2
[
ÁÁ2 3
cardPairDto
ÁÁ3 >
.
ÁÁ> ?
IndexOfCard2
ÁÁ? K
]
ÁÁK L
;
ÁÁL M
}
ËË 
else
ÈÈ 
{
ÍÍ  
FlipBothCardsAgain
ÎÎ "
(
ÎÎ" #
cardPairDto
ÎÎ# .
)
ÎÎ. /
;
ÎÎ/ 0
}
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
void
ÔÔ 
ShowWinners
ÔÔ 
(
ÔÔ  
string
ÔÔ  &
winner
ÔÔ' -
)
ÔÔ- .
{
 	

MessageBox
ÒÒ 
.
ÒÒ 
Show
ÒÒ 
(
ÒÒ 
winner
ÒÒ "
+
ÒÒ# $
$str
ÒÒ% (
+
ÒÒ) *

Properties
ÒÒ+ 5
.
ÒÒ5 6
Langs
ÒÒ6 ;
.
ÒÒ; <
	Resources
ÒÒ< E
.
ÒÒE F

WinMessage
ÒÒF P
)
ÒÒP Q
;
ÒÒQ R
}
ÚÚ 	
public
ÙÙ 
void
ÙÙ 
MatchHasEnded
ÙÙ !
(
ÙÙ! "
)
ÙÙ" #
{
ıı 	
GoToMainMenuView
ˆˆ 
(
ˆˆ 
)
ˆˆ 
;
ˆˆ 
}
˜˜ 	
public
˘˘ 
void
˘˘ "
NotifyPlayerWasExpel
˘˘ (
(
˘˘( )
string
˘˘) /!
expelPlayerUsername
˘˘0 C
,
˘˘C D
int
˘˘E H
[
˘˘H I
]
˘˘I J
cardsUncovered
˘˘K Y
)
˘˘Y Z
{
˙˙ 	
if
˚˚ 
(
˚˚ 
Sesion
˚˚ 
.
˚˚ 
	GetSesion
˚˚  
.
˚˚  !
Username
˚˚! )
.
˚˚) *
Equals
˚˚* 0
(
˚˚0 1!
expelPlayerUsername
˚˚1 D
)
˚˚D E
)
˚˚E F
{
¸¸ 
GoToMainMenuView
˝˝  
(
˝˝  !
)
˝˝! "
;
˝˝" #
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
for
ÅÅ 
(
ÅÅ 
int
ÅÅ 
index
ÅÅ 
=
ÅÅ  
$num
ÅÅ! "
;
ÅÅ" #
index
ÅÅ$ )
<
ÅÅ* +
cardsUncovered
ÅÅ, :
.
ÅÅ: ;
Length
ÅÅ; A
;
ÅÅA B
index
ÅÅC H
++
ÅÅH J
)
ÅÅJ K
{
ÇÇ 
_imageCards
ÉÉ 
[
ÉÉ  
cardsUncovered
ÉÉ  .
[
ÉÉ. /
index
ÉÉ/ 4
]
ÉÉ4 5
]
ÉÉ5 6
.
ÉÉ6 7
Source
ÉÉ7 =
=
ÉÉ> ?
_imageCards
ÉÉ@ K
[
ÉÉK L
cardsUncovered
ÉÉL Z
[
ÉÉZ [
index
ÉÉ[ `
]
ÉÉ` a
]
ÉÉa b
.
ÉÉb c
	BackImage
ÉÉc l
;
ÉÉl m
}
ÑÑ 

MessageBox
ÖÖ 
.
ÖÖ 
Show
ÖÖ 
(
ÖÖ  !
expelPlayerUsername
ÖÖ  3
+
ÖÖ4 5
$str
ÖÖ6 9
+
ÖÖ: ;

Properties
ÖÖ< F
.
ÖÖF G
Langs
ÖÖG L
.
ÖÖL M
	Resources
ÖÖM V
.
ÖÖV W
ExpelMessage
ÖÖW c
)
ÖÖc d
;
ÖÖd e
NumberOfPlayers
ÜÜ 
--
ÜÜ !
;
ÜÜ! "
}
áá 
}
àà 	
public
ää 
void
ää $
NotifyPlayerLeaveMatch
ää *
(
ää* +
string
ää+ 1
playerUsername
ää2 @
,
ää@ A
int
ääB E
[
ääE F
]
ääF G
cardsUncovered
ääH V
)
ääV W
{
ãã 	
if
åå 
(
åå 
Sesion
åå 
.
åå 
	GetSesion
åå  
.
åå  !
Username
åå! )
.
åå) *
Equals
åå* 0
(
åå0 1
playerUsername
åå1 ?
)
åå? @
)
åå@ A
{
çç 
GoToMainMenuView
éé  
(
éé  !
)
éé! "
;
éé" #
}
èè 
else
êê 
{
ëë 
for
íí 
(
íí 
int
íí 
index
íí 
=
íí  
$num
íí! "
;
íí" #
index
íí$ )
<
íí* +
cardsUncovered
íí, :
.
íí: ;
Length
íí; A
;
ííA B
index
ííC H
++
ííH J
)
ííJ K
{
ìì 
_imageCards
îî 
[
îî  
cardsUncovered
îî  .
[
îî. /
index
îî/ 4
]
îî4 5
]
îî5 6
.
îî6 7
Source
îî7 =
=
îî> ?
_imageCards
îî@ K
[
îîK L
cardsUncovered
îîL Z
[
îîZ [
index
îî[ `
]
îî` a
]
îîa b
.
îîb c
	BackImage
îîc l
;
îîl m
}
ïï 

MessageBox
ññ 
.
ññ 
Show
ññ 
(
ññ  
playerUsername
ññ  .
+
ññ/ 0
$str
ññ1 4
+
ññ5 6

Properties
ññ7 A
.
ññA B
Langs
ññB G
.
ññG H
	Resources
ññH Q
.
ññQ R
LeaveMatchMessage
ññR c
)
ññc d
;
ññd e
NumberOfPlayers
óó 
--
óó !
;
óó! "
}
òò 
}
ôô 	
public
õõ 
void
õõ "
EndTurnOfExpelPlayer
õõ (
(
õõ( )
string
õõ) / 
nextPlayerUsername
õõ0 B
)
õõB C
{
úú 	
	TurnLabel
ùù 
.
ùù 
Content
ùù 
=
ùù 

Properties
ùù  *
.
ùù* +
Langs
ùù+ 0
.
ùù0 1
	Resources
ùù1 :
.
ùù: ;
TurnMessage
ùù; F
+
ùùG H
$str
ùùI M
+
ùùN O 
nextPlayerUsername
ùùP b
;
ùùb c
if
üü 
(
üü 
Sesion
üü 
.
üü 
	GetSesion
üü  
.
üü  !
Username
üü! )
.
üü) *
Equals
üü* 0
(
üü0 1 
nextPlayerUsername
üü1 C
)
üüC D
)
üüD E
{
†† '
_numberOfMovementsAllowed
°° )
=
°°* +
$num
°°, -
;
°°- .
}
¢¢ 
}
££ 	
private
•• 
void
•• 
GoToMainMenuView
•• %
(
••% &
)
••& '
{
¶¶ 	2
$_windowIsBeingClosedByTheCloseButton
ßß 0
=
ßß1 2
false
ßß3 8
;
ßß8 9
MainMenu
®® 
mainMenuView
®® !
=
®®" #
new
®®$ '
MainMenu
®®( 0
(
®®0 1
)
®®1 2
;
®®2 3
mainMenuView
©© 
.
©© 
Show
©© 
(
©© 
)
©© 
;
©©  
this
™™ 
.
™™ 
Close
™™ 
(
™™ 
)
™™ 
;
™™ 
}
´´ 	
}
¨¨ 
}≠≠ …U
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
{## 	
List$$ 
<$$  
ValidationRuleResult$$ %
>$$% &"
validationResultErrors$$' =
=$$> ?
_ruleSet$$@ H
.$$H I%
GetValidationResultErrors$$I b
($$b c
)$$c d
;$$d e
foreach%% 
(%%  
ValidationRuleResult%% ) 
validationRuleResult%%* >
in&& "
validationResultErrors&& )
)&&) *
{'' 

MessageBox(( 
.(( 
Show(( 
(((   
validationRuleResult((  4
.((4 5
Message((5 <
)((< =
;((= >
return)) 
;)) 
}** 
}++ 	
private-- 
void-- 
CancelButtonClicked-- (
(--( )
object--) /
sender--0 6
,--6 7
RoutedEventArgs--8 G
e--H I
)--I J
{.. 	
Login// 
	loginView// 
=// 
new// !
Login//" '
(//' (
)//( )
;//) *
	loginView00 
.00 
Show00 
(00 
)00 
;00 
this11 
.11 
Close11 
(11 
)11 
;11 
}22 	
private66 
void66 
LoadUsername66 !
(66! "
)66" #
{77 	&
AccessibilityServiceClient88 &
client88' -
=88. /
new880 3&
AccessibilityServiceClient884 N
(88N O
)88O P
;88P Q
	_username99 
=99 
client99 
.99 
GetUsername99 *
(99* +
_emailAddress99+ 8
)998 9
;999 :
}:: 	
private<< 
void<< !
SendCodeButtonClicked<< *
(<<* +
object<<+ 1
sender<<2 8
,<<8 9
RoutedEventArgs<<: I
e<<J K
)<<K L
{== 	
try>> 
{?? 
SendCodeToUser@@ 
(@@ 
)@@  
;@@  !
}AA 
catchBB 
(BB %
EndpointNotFoundExceptionBB ,
)BB, -
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
.DD: ; 
ServerConnectionLostDD; O
)DDO P
;DDP Q
}EE 
catchFF 
(FF 
FaultExceptionFF !
<FF! "
MemoryGameServiceFF" 3
.FF3 4
FaultsFF4 :
.FF: ;'
DatabaseConnectionLostFaultFF; V
>FFV W
)FFW X
{GG 
}II 
catchJJ 
(JJ 
FaultExceptionJJ !
<JJ! "
MemoryGameServiceJJ" 3
.JJ3 4
FaultsJJ4 :
.JJ: ; 
NonExistentUserFaultJJ; O
>JJO P
)JJP Q
{KK 

MessageBoxLL 
.LL 
ShowLL 
(LL  
$strLL  6
)LL6 7
;LL7 8
}MM 
catchNN 
(NN 
TimeoutExceptionNN #
timeoutExceptionNN$ 4
)NN4 5
{OO 
_loggerPP 
.PP 
FatalPP 
(PP 
timeoutExceptionPP .
)PP. /
;PP/ 0

MessageBoxQQ 
.QQ 
ShowQQ 
(QQ  

PropertiesQQ  *
.QQ* +
LangsQQ+ 0
.QQ0 1
	ResourcesQQ1 :
.QQ: ;
ServerTimeoutErrorQQ; M
)QQM N
;QQN O
}RR 
catchSS 
(SS "
CommunicationExceptionSS )"
communicationExceptionSS* @
)SS@ A
{TT 
_loggerUU 
.UU 
FatalUU 
(UU "
communicationExceptionUU 4
)UU4 5
;UU5 6

MessageBoxVV 
.VV 
ShowVV 
(VV  

PropertiesVV  *
.VV* +
LangsVV+ 0
.VV0 1
	ResourcesVV1 :
.VV: ;$
CommunicationInterruptedVV; S
)VVS T
;VVT U
}WW 
}XX 	
privateZZ 
voidZZ 
SendCodeToUserZZ #
(ZZ# $
)ZZ$ %
{[[ 	
_emailAddress\\ 
=\\ 
TextBoxEmail\\ (
.\\( )
Text\\) -
;\\- .
SetFormValidation]] 
(]] 
)]] 
;]]  
if^^ 
(^^ 
_ruleSet^^ 
.^^ (
AllValidationRulesHavePassed^^ 5
(^^5 6
)^^6 7
)^^7 8
{__ 
if`` 
(`` 
EmailIsRegistered`` %
(``% &
)``& '
)``' (
{aa 
LoadUsernamebb  
(bb  !
)bb! "
;bb" #%
GenerateVerificationTokencc -
(cc- .
)cc. /
;cc/ 0
booldd +
newVerificationTokenWasAssigneddd 8
=dd9 :&
AssignNewVerificationTokendd; U
(ddU V
)ddV W
;ddW X 
SendVerificationCodeee (
(ee( )
)ee) *
;ee* +
ifff 
(ff +
newVerificationTokenWasAssignedff 7
)ff7 8
{gg 

MessageBoxhh "
.hh" #
Showhh# '
(hh' (

Propertieshh( 2
.hh2 3
Langshh3 8
.hh8 9
	Resourceshh9 B
.hhB C%
PasswordRecoveryTokenSenthhC \
)hh\ ]
;hh] ^
GoToRestorePasswordii +
(ii+ ,
)ii, -
;ii- .
}jj 
elsekk 
{ll 

MessageBoxmm "
.mm" #
Showmm# '
(mm' (

Propertiesmm( 2
.mm2 3
Langsmm3 8
.mm8 9
	Resourcesmm9 B
.mmB C%
RecoveryTokenSendingErrormmC \
)mm\ ]
;mm] ^
}nn 
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
.ss> ?
NonRegisteredEmailss? Q
)ssQ R
;ssR S
}tt 
}uu 
elsevv 
{ww 
ShowErrorMessagexx  
(xx  !
)xx! "
;xx" #
}yy 
}zz 	
private|| 
bool|| 
EmailIsRegistered|| &
(||& '
)||' (
{}} 	&
AccessibilityServiceClient~~ &
client~~' -
=~~. /
new~~0 3&
AccessibilityServiceClient~~4 N
(~~N O
)~~O P
;~~P Q
return 
client 
. 
ItsRegistered '
(' (
_emailAddress( 5
)5 6
;6 7
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ '
GenerateVerificationToken
ÇÇ .
(
ÇÇ. /
)
ÇÇ/ 0
{
ÉÉ 	 
_verificationToken
ÑÑ 
=
ÑÑ  
TokenManager
ÑÑ! -
.
ÑÑ- .'
GenerateVerificationToken
ÑÑ. G
(
ÑÑG H
)
ÑÑH I
;
ÑÑI J
}
ÖÖ 	
private
áá 
bool
áá (
AssignNewVerificationToken
áá /
(
áá/ 0
)
áá0 1
{
àà 	.
 AccountVerificationServiceClient
ââ ,.
 accountVerificationServiceClient
ââ- M
=
ââN O
new
ää .
 AccountVerificationServiceClient
ää 4
(
ää4 5
)
ää5 6
;
ää6 7
return
ãã .
 accountVerificationServiceClient
ãã 3
.
ãã3 4(
AssignNewVerificationToken
ãã4 N
(
ããN O
_emailAddress
ããO \
,
ãã\ ] 
_verificationToken
ãã^ p
)
ããp q
;
ããq r
}
åå 	
private
éé 
void
éé "
SendVerificationCode
éé )
(
éé) *
)
éé* +
{
èè 	&
VerificationTokenInfoDto
êê $#
verificationTokenInfo
êê% :
=
êê; <
new
êê= @&
VerificationTokenInfoDto
êêA Y
(
êêY Z
)
êêZ [
{
ëë 
Name
íí 
=
íí 
	_username
íí  
,
íí  !
EmailAddress
ìì 
=
ìì 
_emailAddress
ìì ,
,
ìì, -
VerificationToken
îî !
=
îî" # 
_verificationToken
îî$ 6
}
ïï 
;
ïï 
TokenManager
óó 
.
óó #
SendVerificationToken
óó .
(
óó. /#
verificationTokenInfo
óó/ D
)
óóD E
;
óóE F
}
òò 	
private
öö 
void
öö !
GoToRestorePassword
öö (
(
öö( )
)
öö) *
{
õõ 	
RestorePassword
úú #
restorePasswordWindow
úú 1
=
úú2 3
new
ùù 
RestorePassword
ùù #
(
ùù# $
_emailAddress
ùù$ 1
,
ùù1 2
	_username
ùù3 <
)
ùù< =
;
ùù= >#
restorePasswordWindow
ûû !
.
ûû! "
Show
ûû" &
(
ûû& '
)
ûû' (
;
ûû( )
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
¢¢ 
}££ Æn
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
{(( 	
List)) 
<))  
ValidationRuleResult)) %
>))% &"
validationResultErrors))' =
=))> ?
_ruleSet))@ H
.))H I%
GetValidationResultErrors))I b
())b c
)))c d
;))d e
foreach** 
(**  
ValidationRuleResult** ) 
validationRuleResult*** >
in++ "
validationResultErrors++ )
)++) *
{,, 

MessageBox-- 
.-- 
Show-- 
(--   
validationRuleResult--  4
.--4 5
Message--5 <
)--< =
;--= >
return.. 
;.. 
}// 
}00 	
private22 
void22 
GetValuesFromFields22 (
(22( )
)22) *
{33 	
_emailAddress44 
=44 
TextBoxEmail44 (
.44( )
Text44) -
;44- .
	_username55 
=55 
TextBoxUsername55 '
.55' (
Text55( ,
;55, -
	_password66 
=66 
PasswordBoxPassword66 +
.66+ ,
Password66, 4
;664 5
}77 	
private99 
void99 
GenerateToken99 "
(99" #
)99# $
{:: 	
_verificationToken;; 
=;;  
TokenManager;;! -
.;;- .%
GenerateVerificationToken;;. G
(;;G H
);;H I
;;;I J
}<< 	
private>> 
void>> !
RegisterButtonClicked>> *
(>>* +
object>>+ 1
sender>>2 8
,>>8 9
RoutedEventArgs>>: I
e>>J K
)>>K L
{?? 	
GetValuesFromFields@@ 
(@@  
)@@  !
;@@! "
SetFormValidationAA 
(AA 
)AA 
;AA  
ifBB 
(BB (
AllValidationRulesHavePassedBB ,
(BB, -
)BB- .
)BB. /
{CC 
tryDD 
{EE 
RegisterPlayerFF "
(FF" #
)FF# $
;FF$ %
}GG 
catchHH 
(HH 
TimeoutExceptionHH '
timeoutExceptionHH( 8
)HH8 9
{II 
_loggerJJ 
.JJ 
FatalJJ !
(JJ! "
timeoutExceptionJJ" 2
)JJ2 3
;JJ3 4

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
EndpointNotFoundExceptionMM 0%
endpointNotFoundExceptionMM1 J
)MMJ K
{NN 
_loggerOO 
.OO 
FatalOO !
(OO! "%
endpointNotFoundExceptionOO" ;
)OO; <
;OO< =

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
CommunicationExceptionRR -"
communicationExceptionRR. D
)RRD E
{SS 
_loggerTT 
.TT 
FatalTT !
(TT! ""
communicationExceptionTT" 8
)TT8 9
;TT9 :

MessageBoxUU 
.UU 
ShowUU #
(UU# $

PropertiesUU$ .
.UU. /
LangsUU/ 4
.UU4 5
	ResourcesUU5 >
.UU> ?$
CommunicationInterruptedUU? W
)UUW X
;UUX Y
}VV 
}WW 
elseXX 
{YY 
ShowErrorMessageZZ  
(ZZ  !
)ZZ! "
;ZZ" #
}[[ 
}\\ 	
private^^ 
void^^ 
RegisterPlayer^^ #
(^^# $
)^^$ %
{__ 	
bool`` #
emailAddressIsAvailable`` (
=``) *
false``+ 0
;``0 1
boolaa 
usernameIsAvailableaa $
=aa% &
falseaa' ,
;aa, -
ifcc 
(cc #
EmailAddressIsAvailablecc '
(cc' (
)cc( )
)cc) *
{dd #
emailAddressIsAvailableee '
=ee( )
trueee* .
;ee. /
}ff 
elsegg 
{hh 

MessageBoxii 
.ii 
Showii 
(ii  

Propertiesii  *
.ii* +
Langsii+ 0
.ii0 1
	Resourcesii1 :
.ii: ;
EmailAddressIsTakenii; N
)iiN O
;iiO P
}jj 
ifll 
(ll 
UsernameIsAvailablell #
(ll# $
)ll$ %
)ll% &
{mm 
usernameIsAvailablenn #
=nn$ %
truenn& *
;nn* +
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
.rr: ;
UsernameIsTakenrr; J
)rrJ K
;rrK L
}ss 
ifuu 
(uu #
emailAddressIsAvailableuu &
&&uu' )
usernameIsAvailableuu* =
)uu= >
{vv 
GenerateTokenww 
(ww 
)ww 
;ww  
ifxx 
(xx +
PlayerWasSuccessfullyRegisteredxx 3
(xx3 4
)xx4 5
)xx5 6
{yy !
SendVerificationTokenzz )
(zz) *
)zz* +
;zz+ ,%
GoToActivationTokenWindow{{ -
({{- .
){{. /
;{{/ 0
}|| 
else}} 
{~~ 

MessageBox 
. 
Show #
(# $

Properties$ .
.. /
Langs/ 4
.4 5
	Resources5 >
.> ?
RegistryError? L
)L M
;M N
}
ÄÄ 
}
ÅÅ 
}
ÉÉ 	
private
ÖÖ 
bool
ÖÖ *
AllValidationRulesHavePassed
ÖÖ 1
(
ÖÖ1 2
)
ÖÖ2 3
{
ÜÜ 	
return
áá 
_ruleSet
áá 
.
áá *
AllValidationRulesHavePassed
áá 8
(
áá8 9
)
áá9 :
;
áá: ;
}
àà 	
private
ää 
void
ää #
SendVerificationToken
ää *
(
ää* +
)
ää+ ,
{
ãã 	&
VerificationTokenInfoDto
çç $#
verificationTokenInfo
çç% :
=
çç; <
new
çç= @&
VerificationTokenInfoDto
ççA Y
(
ççY Z
)
ççZ [
{
éé 
Name
èè 
=
èè 
	_username
èè  
,
èè  !
EmailAddress
êê 
=
êê 
_emailAddress
êê ,
,
êê, -
VerificationToken
ëë !
=
ëë" # 
_verificationToken
ëë$ 6
}
íí 
;
íí 
TokenManager
îî 
.
îî #
SendVerificationToken
îî .
(
îî. /#
verificationTokenInfo
îî/ D
)
îîD E
;
îîE F
}
ïï 	
private
óó 
void
óó !
CancelButtonClicked
óó (
(
óó( )
object
óó) /
sender
óó0 6
,
óó6 7
RoutedEventArgs
óó8 G
e
óóH I
)
óóI J
{
òò 	

MainWindow
ôô 
mainWindowView
ôô %
=
ôô& '
new
ôô( +

MainWindow
ôô, 6
(
ôô6 7
)
ôô7 8
;
ôô8 9
mainWindowView
öö 
.
öö 
Show
öö 
(
öö  
)
öö  !
;
öö! "
this
õõ 
.
õõ 
Close
õõ 
(
õõ 
)
õõ 
;
õõ 
}
úú 	
private
ûû 
bool
ûû %
EmailAddressIsAvailable
ûû ,
(
ûû, -
)
ûû- .
{
üü 	
bool
†† %
emailAddressIsAvailable
†† (
=
††) **
_playerRegistryServiceClient
††+ G
.
††G H%
EmailAddressIsAvailable
††H _
(
††_ `
_emailAddress
††` m
)
††m n
;
††n o
return
°° %
emailAddressIsAvailable
°° *
;
°°* +
}
¢¢ 	
private
§§ 
bool
§§ !
UsernameIsAvailable
§§ (
(
§§( )
)
§§) *
{
•• 	
bool
ßß !
usernameIsAvailable
ßß $
=
ßß% &*
_playerRegistryServiceClient
ßß' C
.
ßßC D!
UserNameIsAvailable
ßßD W
(
ßßW X
	_username
ßßX a
)
ßßa b
;
ßßb c
return
®® !
usernameIsAvailable
®® &
;
®®& '
}
©© 	
private
´´ 
bool
´´ -
PlayerWasSuccessfullyRegistered
´´ 4
(
´´4 5
)
´´5 6
{
¨¨ 	!
BCryptHashGenerator
≠≠ 
hashGenerator
≠≠  -
=
≠≠. /
new
≠≠0 3!
BCryptHashGenerator
≠≠4 G
(
≠≠G H
)
≠≠H I
;
≠≠I J
string
ÆÆ 
salt
ÆÆ 
=
ÆÆ 
hashGenerator
ÆÆ '
.
ÆÆ' (
GenerateSalt
ÆÆ( 4
(
ÆÆ4 5
)
ÆÆ5 6
;
ÆÆ6 7
string
ØØ 
encryptedPassword
ØØ $
=
ØØ% &
hashGenerator
ØØ' 4
.
ØØ4 5%
GenerateEncryptedString
ØØ5 L
(
ØØL M
	_password
ØØM V
,
ØØV W
salt
ØØX \
)
ØØ\ ]
;
ØØ] ^
MemoryGameService
∞∞ 
.
∞∞ )
PlayerRegistryServiceClient
∞∞ 9)
playerRegistryServiceClient
∞∞: U
=
∞∞V W
new
±± 
MemoryGameService
±± %
.
±±% &)
PlayerRegistryServiceClient
±±& A
(
±±A B
)
±±B C
;
±±C D
MemoryGameService
≥≥ 
.
≥≥ !
DataTransferObjects
≥≥ 1
.
≥≥1 2
	PlayerDTO
≥≥2 ;
	playerDTO
≥≥< E
=
≥≥F G
new
¥¥ 
MemoryGameService
¥¥ %
.
¥¥% &!
DataTransferObjects
¥¥& 9
.
¥¥9 :
	PlayerDTO
¥¥: C
(
¥¥C D
)
¥¥D E
{
µµ 
Username
∂∂ 
=
∂∂ 
	_username
∂∂ (
,
∂∂( )
EmailAddress
∑∑  
=
∑∑! "
_emailAddress
∑∑# 0
,
∑∑0 1
Password
∏∏ 
=
∏∏ 
encryptedPassword
∏∏ 0
,
∏∏0 1
VerificationToken
ππ %
=
ππ& ' 
_verificationToken
ππ( :
}
∫∫ 
;
∫∫ 
bool
ºº -
playerWasSuccessfullyRegistered
ºº 0
=
ºº1 2)
playerRegistryServiceClient
ºº3 N
.
ººN O
RegisterNewPlayer
ººO `
(
ºº` a
	playerDTO
ººa j
,
ººj k
salt
ººl p
)
ººp q
;
ººq r
return
ΩΩ -
playerWasSuccessfullyRegistered
ΩΩ 2
;
ΩΩ2 3
}
ææ 	
private
¿¿ 
void
¿¿ '
GoToActivationTokenWindow
¿¿ .
(
¿¿. /
)
¿¿/ 0
{
¡¡ 	
ActivationToken
¬¬ #
activationTokenWindow
¬¬ 1
=
¬¬2 3
new
√√ 
ActivationToken
√√ #
(
√√# $
_emailAddress
√√$ 1
,
√√1 2
	_username
√√3 <
)
√√< =
;
√√= >#
activationTokenWindow
ƒƒ !
.
ƒƒ! "
Show
ƒƒ" &
(
ƒƒ& '
)
ƒƒ' (
;
ƒƒ( )
this
≈≈ 
.
≈≈ 
Close
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
}
∆∆ 	
}
«« 
}»» ıq
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
.mm: ;'
DatabaseConnectionLostFaultmm; V
>mmV W
)mmW X
{nn 
}pp 
catchqq 
(qq 
FaultExceptionqq !
<qq! "
MemoryGameServiceqq" 3
.qq3 4
Faultsqq4 :
.qq: ; 
NonExistentUserFaultqq; O
>qqO P
)qqP Q
{rr 

MessageBoxss 
.ss 
Showss 
(ss  
$strss  6
)ss6 7
;ss7 8
}tt 
catchuu 
(uu 
TimeoutExceptionuu #
timeoutExceptionuu$ 4
)uu4 5
{vv 
_loggerww 
.ww 
Fatalww 
(ww 
timeoutExceptionww .
)ww. /
;ww/ 0

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
ServerTimeoutErrorxx; M
)xxM N
;xxN O
}yy 
catchzz 
(zz "
CommunicationExceptionzz )"
communicationExceptionzz* @
)zz@ A
{{{ 
_logger|| 
.|| 
Fatal|| 
(|| "
communicationException|| 4
)||4 5
;||5 6

MessageBox}} 
.}} 
Show}} 
(}}  

Properties}}  *
.}}* +
Langs}}+ 0
.}}0 1
	Resources}}1 :
.}}: ;$
CommunicationInterrupted}}; S
)}}S T
;}}T U
}~~ 
} 	
private
ÅÅ 
void
ÅÅ &
SendNewCodeButtonClicked
ÅÅ -
(
ÅÅ- .
object
ÅÅ. 4
sender
ÅÅ5 ;
,
ÅÅ; <
RoutedEventArgs
ÅÅ= L
e
ÅÅM N
)
ÅÅN O
{
ÇÇ 	
try
ÉÉ 
{
ÑÑ 
SendNewCode
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá '
EndpointNotFoundException
áá ,
)
áá, -
{
àà 

MessageBox
ââ 
.
ââ 
Show
ââ 
(
ââ  

Properties
ââ  *
.
ââ* +
Langs
ââ+ 0
.
ââ0 1
	Resources
ââ1 :
.
ââ: ;"
ServerConnectionLost
ââ; O
)
ââO P
;
ââP Q
}
ää 
catch
ãã 
(
ãã 
FaultException
ãã !
<
ãã! "
MemoryGameService
ãã" 3
.
ãã3 4
Faults
ãã4 :
.
ãã: ;)
DatabaseConnectionLostFault
ãã; V
>
ããV W
)
ããW X
{
åå 
}
éé 
catch
èè 
(
èè 
FaultException
èè !
<
èè! "
MemoryGameService
èè" 3
.
èè3 4
Faults
èè4 :
.
èè: ;"
NonExistentUserFault
èè; O
>
èèO P
)
èèP Q
{
êê 

MessageBox
ëë 
.
ëë 
Show
ëë 
(
ëë  
$str
ëë  6
)
ëë6 7
;
ëë7 8
}
íí 
catch
ìì 
(
ìì 
TimeoutException
ìì #
timeoutException
ìì$ 4
)
ìì4 5
{
îî 
_logger
ïï 
.
ïï 
Fatal
ïï 
(
ïï 
timeoutException
ïï .
)
ïï. /
;
ïï/ 0

MessageBox
ññ 
.
ññ 
Show
ññ 
(
ññ  

Properties
ññ  *
.
ññ* +
Langs
ññ+ 0
.
ññ0 1
	Resources
ññ1 :
.
ññ: ; 
ServerTimeoutError
ññ; M
)
ññM N
;
ññN O
}
óó 
catch
òò 
(
òò $
CommunicationException
òò )$
communicationException
òò* @
)
òò@ A
{
ôô 
_logger
öö 
.
öö 
Fatal
öö 
(
öö $
communicationException
öö 4
)
öö4 5
;
öö5 6

MessageBox
õõ 
.
õõ 
Show
õõ 
(
õõ  

Properties
õõ  *
.
õõ* +
Langs
õõ+ 0
.
õõ0 1
	Resources
õõ1 :
.
õõ: ;&
CommunicationInterrupted
õõ; S
)
õõS T
;
õõT U
}
úú 
}
üü 	
private
°° 
void
°° 
SendNewCode
°°  
(
°°  !
)
°°! "
{
¢¢ 	
string
££ 
newToken
££ 
=
££ 
TokenManager
££ *
.
££* +'
GenerateVerificationToken
££+ D
(
££D E
)
££E F
;
££F G
bool
§§ -
newVerificationTokenWasAssigned
§§ 0
=
§§1 2
false
§§3 8
;
§§8 9
if
•• 
(
•• 
newToken
•• 
!=
•• 
$str
•• 
)
•• 
{
¶¶ .
 AccountVerificationServiceClient
ßß 0.
 accountVerificationServiceClient
ßß1 Q
=
ßßR S
new
®® .
 AccountVerificationServiceClient
®® 8
(
®®8 9
)
®®9 :
;
®®: ;-
newVerificationTokenWasAssigned
©© /
=
©©0 1.
 accountVerificationServiceClient
©©2 R
.
©©R S(
AssignNewVerificationToken
©©S m
(
©©m n
_emailAddress
©©n {
,
©©{ |
newToken©©} Ö
)©©Ö Ü
;©©Ü á
}
™™ 
if
¨¨ 
(
¨¨ -
newVerificationTokenWasAssigned
¨¨ /
)
¨¨/ 0
{
≠≠ &
VerificationTokenInfoDto
ÆÆ (#
verificationTokenInfo
ÆÆ) >
=
ÆÆ? @
new
ÆÆA D&
VerificationTokenInfoDto
ÆÆE ]
(
ÆÆ] ^
)
ÆÆ^ _
{
ØØ 
Name
∞∞ 
=
∞∞ 
	_username
∞∞ $
,
∞∞$ %
EmailAddress
±±  
=
±±! "
_emailAddress
±±# 0
,
±±0 1
VerificationToken
≤≤ %
=
≤≤& '
newToken
≤≤( 0
}
≥≥ 
;
≥≥ 
TokenManager
¥¥ 
.
¥¥ #
SendVerificationToken
¥¥ 2
(
¥¥2 3#
verificationTokenInfo
¥¥3 H
)
¥¥H I
;
¥¥I J

MessageBox
µµ 
.
µµ 
Show
µµ 
(
µµ  

Properties
µµ  *
.
µµ* +
Langs
µµ+ 0
.
µµ0 1
	Resources
µµ1 :
.
µµ: ; 
NewCodeSentMessage
µµ; M
)
µµM N
;
µµN O
}
∂∂ 
}
∑∑ 	
private
ªª 
void
ªª 
BackButtonClicked
ªª &
(
ªª& '
object
ªª' -
sender
ªª. 4
,
ªª4 5
RoutedEventArgs
ªª6 E
e
ªªF G
)
ªªG H
{
ºº 	
Login
ΩΩ 
	loginView
ΩΩ 
=
ΩΩ 
new
ΩΩ !
Login
ΩΩ" '
(
ΩΩ' (
)
ΩΩ( )
;
ΩΩ) *
	loginView
ææ 
.
ææ 
Show
ææ 
(
ææ 
)
ææ 
;
ææ 
this
øø 
.
øø 
Close
øø 
(
øø 
)
øø 
;
øø 
}
¿¿ 	
}
¡¡ 
}¬¬ ¯%
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
}ﬁﬁ ê
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
{ 
private 
static 
readonly 
log4net  '
.' (
ILog( ,
_logger- 4
=5 6
log4net7 >
.> ?

LogManager? I
.I J
	GetLoggerJ S
(S T
$strT a
)a b
;b c
	protected 
override 
void 
	OnStartup  )
() *
StartupEventArgs* :
e; <
)< =
{> ?
}@ A
} 
} Á
QC:\Users\Adair Hern√°ndez\source\repos\memory\MemoryGame\Views\MainWindow.xaml.cs
	namespace 	

MemoryGame
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
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

MainWindow 
( 
) 
{ 	
System 
. 
	Threading 
. 
Thread #
.# $
CurrentThread$ 1
.1 2
CurrentUICulture2 B
=C D
newE H
SystemI O
.O P
GlobalizationP ]
.] ^
CultureInfo^ i
(i j

Propertiesj t
.t u
Settingsu }
.} ~
Default	~ Ö
.
Ö Ü
LanguageSettings
Ü ñ
)
ñ ó
;
ó ò
InitializeComponent 
(  
)  !
;! "
} 	
private 
void &
GetRegisteredButtonClicked /
(/ 0
object0 6
sender7 =
,= >
RoutedEventArgs? N
eO P
)P Q
{ 	
Register 
registerView !
=" #
new$ '
Register( 0
(0 1
)1 2
;2 3
registerView 
. 
Show 
( 
) 
;  
this 
. 
Close 
( 
) 
; 
} 	
private 
void &
ConfigurationButtonClicked /
(/ 0
object0 6
sender7 =
,= >
RoutedEventArgs? N
eO P
)P Q
{ 	
Settings 
settingsView !
=" #
new$ '
Settings( 0
(0 1
)1 2
;2 3
settingsView   
.   
Show   
(   
)   
;    
this!! 
.!! 
Close!! 
(!! 
)!! 
;!! 
}"" 	
private$$ 
void$$ 
LoginButtonClicked$$ '
($$' (
object$$( .
sender$$/ 5
,$$5 6
RoutedEventArgs$$7 F
e$$G H
)$$H I
{%% 	
Login&& 
	loginView&& 
=&& 
new&& !
Login&&" '
(&&' (
)&&( )
;&&) *
	loginView'' 
.'' 
Show'' 
('' 
)'' 
;'' 
this(( 
.(( 
Close(( 
((( 
)(( 
;(( 
})) 	
}** 
}++ ö
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