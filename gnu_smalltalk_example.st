"_Example for the Syntax Highlighting in Kate_"
"_Author: Sascha Roitz_"
"_Date: 25-06-2014_"

Object subclass: SmalltalkExample [
| variableA variableB variableC |
<comment: 'Example-Class'>	"comment: and categroy: keywords for comments"

	SmalltalkExample class >> fromConfig: anObject 
	[<category: 'Class-API'>
		^self new variableA: anObject.
	]
	variableB: anObject 
	[<category: 'Set'>
		variableB := anObject.
	]
	variableB
	[<category: 'Get'>
		^variableB
	]
	makeSomething: anObject
	[<category: 'Intern'>
		"Comment1 for Text"
		"Comment, old Code, etc"
		"OrderedCollection new add: 42."
	
		"_Comment2 for Description and Information._"
		"_Information, Title, Description, Header_"

		"_Keywords_"
		self variableB: 'Hello World'.
		super class = nil.
		ifTrue: [ ^true ]
		ifFalse: [ ^false ].
		
		"_GNU Smalltalk - Class"
		OrderedCollection new.	"dark blue and bold"
		Dictionary new.
		FilePath stripPathFrom: ''.
		FileStream fileIn: 'ExtensionClass.st'.
 
		"_New Class_"
		MyClass new.		"light blue and bold"
		SmalltalkExample new.
		
		"_Defintion Variables._"
		| localVarA localVarB aString aChar aSymbol aNumber|	"light blue"
				
		aString := 'Stringtext'."_String allocation._" 			
		aChar 	:= $C.		"_Character allocation._"	
		aSymbol := #Symbol.	"_Symbol allocation._"		
		aNumber := 42343.	"_Number allocation._"		
		
		localVarA := aString, aString.
		localVarB := self makeSomething: nil. "allocation is navy blue"

		localVar_A size.
		
		"_Highlighting Operators/Messages_"
		2 > 1.
		2 < 1.
		2 >= 1.
		2 <= 1. 
		2 & 1.
		2 @ 1.
		"etc. +-=*<>^.@|&"
		
		"_Main methods_"	"italic"
		Class class.
		Class copy.
		Class deepCopy.
		OrderedCollection new add: 3; yourself.
	"	-> class,copy,deepCopy,halt,ifCurtailed,ifError,ifFalse,ifMatched,ifNil
		-> ifNotMatched,ifNotNil,ifTrue,method,new,shallowCopy,subclassResponsibility
		-> value,yourself"
		
		"_Closures_Defintion Variables"
		localVarA doWithIndex: 
		[:each :index | "very light blue"
			index > 1
			ifTrue:
			[	localVarB size > 20
				ifTrue: [ localVarB := '20' ]
				ifFalse: [ localVarB := localVarB, each.  ].
			].
		].
		
		^String new.
	]
	convertGermanVocals: aString
	[<category: 'code_example'>
		"_convert german vocals._"
		| aPartString aReturnString aGermanVocalDic |	
		
		aGermanVocalDic := Dictionary new.
		aGermanVocalDic at: 228 put: 'ae'.	"ä"
		aGermanVocalDic at: 246 put: 'oe'.	"ö"
		aGermanVocalDic at: 252 put: 'ue'.	"ü"
		aGermanVocalDic at: 196 put: 'Ae'.	"Ä"
		aGermanVocalDic at: 214 put: 'Oe'.	"Ö"
		aGermanVocalDic at: 220 put: 'Ue'.	"Ü"
		aGermanVocalDic at: 223 put: 'ss'.	"ß"
		aReturnString := ''.
		aString do: 
		[:each | 
			aPartString := aGermanVocalDic at: (each value) ifAbsent: [ each asString ].
			aReturnString := aReturnString, aTeilString.
		].
		^aReturnString.
	]
].

"_Braces []_"
[ "Level1"
  [ "Level2"
    [ "Level3"
      [ "Level4"
	[ "Level5"
	  [ "Level6"
	    [ "Level7 -> Color from Level1 (repeat)" ]
	  ]
	]
      ]
    ]
  ]
].
"_Braces ()_"
( "Level1"
  ( "Level2"
    ( "Level3"
      ( "Level4"
	( "Level5"
	  ( "Level6"
	    ( "Level7 -> Color from Level1 (repeat)" )
	  )
	)
      )
    )
  )
).
	 




