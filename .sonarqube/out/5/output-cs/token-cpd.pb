�	
NC:\Users\Adair Hernández\source\repos\memory\MemoryGameServiceHost\Program.cs
	namespace 	!
MemoryGameServiceHost
 
{ 
public 

class 
Program 
{ 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{		 	
using

 
(

 
ServiceHost

 
host

 "
=

# $
new

% (
ServiceHost

) 4
(

4 5
typeof

5 ;
(

; <
MemoryGameService

< M
.

M N
Services

N V
.

V W
MemoryGameService

W h
)

h i
)

i j
)

j k
{ 
host 
. 
Open 
( 
) 
; 
Console
.
	WriteLine
(
$str
+
DateTime
.
Now
.
ToString
(
)
)
;
Console 
. 
ReadKey 
(  
)  !
;! "
} 
} 	
} 
} �
^C:\Users\Adair Hernández\source\repos\memory\MemoryGameServiceHost\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 


( 
$str 0
)0 1
]1 2
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
$str 2
)2 3
]3 4
[
assembly
:

AssemblyCopyright
(
$str
)
]
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
]$$) *