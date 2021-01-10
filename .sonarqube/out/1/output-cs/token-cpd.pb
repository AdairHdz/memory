‡
NC:\Users\Adair HernÃ¡ndez\source\repos\memory\Utilities\BCryptHashGenerator.cs
	namespace 	
	Utilities
 
{ 
public 

class 
BCryptHashGenerator $
:% &
IEncryption' 2
{ 
public 
string #
GenerateEncryptedString -
(- .
string. 4
stringToBeEncrypted5 H
,H I
stringJ P
saltQ U
)U V
{ 	
string		 
hashedPassword		 !
=		" #
BCrypt		$ *
.		* +
Net		+ .
.		. /
BCrypt		/ 5
.		5 6
HashPassword		6 B
(		B C
stringToBeEncrypted		C V
,		V W
salt		X \
)		\ ]
;		] ^
return

 
hashedPassword

 !
;

! "
} 	
public 
bool 
Match 
( 
string  
normalString! -
,- .
string/ 5
encryptedString6 E
)E F
{ 	
bool 
isMatch 
= 
BCrypt !
.! "
Net" %
.% &
BCrypt& ,
., -
Verify- 3
(3 4
normalString4 @
,@ A
encryptedStringB Q
)Q R
;R S
return 
isMatch 
; 
} 	
public 
string 
GenerateSalt "
(" #
)# $
{ 	
int 
randomNumber 
= ,
 GenerateRandomNumberBetweenRange ?
(? @
$num@ A
,A B
$numC E
)E F
;F G
return 
BCrypt 
. 
Net 
. 
BCrypt $
.$ %
GenerateSalt% 1
(1 2
randomNumber2 >
)> ?
;? @
} 	
private 
int ,
 GenerateRandomNumberBetweenRange 4
(4 5
int5 8
minimum9 @
,@ A
intB E
maximumF M
)M N
{ 	
Random !
randomNumberGenerator (
=) *
new+ .
Random/ 5
(5 6
)6 7
;7 8
int 
randomNumber 
= !
randomNumberGenerator 4
.4 5
Next5 9
(9 :
minimum: A
,A B
maximumC J
)J K
;K L
return 
randomNumber 
;  
} 	
} 
}   Û
FC:\Users\Adair HernÃ¡ndez\source\repos\memory\Utilities\IEncryption.cs
	namespace 	
	Utilities
 
{ 
public		 

	interface		 
IEncryption		  
{

 
string #
GenerateEncryptedString &
(& '
string' -
stringToBeEncrypted. A
,A B
stringC I
saltJ N
)N O
;O P
bool 
Match 
( 
string 
normalString &
,& '
string( .
encryptedString/ >
)> ?
;? @
string 
GenerateSalt 
( 
) 
; 
} 
} ý
RC:\Users\Adair HernÃ¡ndez\source\repos\memory\Utilities\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
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
$str &
)& '
]' (
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
]$$) *Ð
IC:\Users\Adair HernÃ¡ndez\source\repos\memory\Utilities\TokenGenerator.cs
	namespace 	
	Utilities
 
{ 
public 

static 
class 
TokenGenerator &
{ 
public 
static 
string 
GenerateToken *
(* +
int+ .
tokenLength/ :
): ;
{ 	
string		 
token		 
=		 
Guid		 
.		  
NewGuid		  '
(		' (
)		( )
.		) *
ToString		* 2
(		2 3
)		3 4
;		4 5
token

 
=

 
token

 
.

 
Replace

 !
(

! "
$str

" %
,

% &
$str

' )
)

) *
;

* +
token 
= 
token 
. 
	Substring #
(# $
$num$ %
,% &
tokenLength' 2
)2 3
;3 4
return 
token 
; 
} 	
} 
} 