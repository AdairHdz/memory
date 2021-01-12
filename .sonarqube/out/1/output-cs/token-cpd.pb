’	
NC:\Users\Adair Hern√°ndez\source\repos\memory\Utilities\BCryptHashGenerator.cs
	namespace 	
	Utilities
 
{ 
public 

class 
BCryptHashGenerator $
:% &
IEncryption' 2
{ 
public

 
string

 #
GenerateEncryptedString

 -
(

- .
string

. 4
stringToBeEncrypted

5 H
,

H I
string

J P
salt

Q U
)

U V
{ 	
string 
hashedPassword !
=" #
BCrypt$ *
.* +
Net+ .
.. /
BCrypt/ 5
.5 6
HashPassword6 B
(B C
stringToBeEncryptedC V
,V W
saltX \
)\ ]
;] ^
return 
hashedPassword !
;! "
} 	
public 
string 
GenerateSalt "
(" #
)# $
{ 	
return 
BCrypt 
. 
Net 
. 
BCrypt $
.$ %
GenerateSalt% 1
(1 2
$num2 4
)4 5
;5 6
} 	
} 
} õ
FC:\Users\Adair Hern√°ndez\source\repos\memory\Utilities\IEncryption.cs
	namespace 	
	Utilities
 
{ 
public 

	interface 
IEncryption  
{ 
string #
GenerateEncryptedString &
(& '
string' -
stringToBeEncrypted. A
,A B
stringC I
saltJ N
)N O
;O P
string 
GenerateSalt 
( 
) 
; 
} 
} ˝
RC:\Users\Adair Hern√°ndez\source\repos\memory\Utilities\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
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
$str &
)& '
]' (
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
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *