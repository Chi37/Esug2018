Class {
	#name : #EffortOnCoding,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'timeSpent',
		'relatedProject',
		'relatedMethodology'
	],
	#category : #Sandbox
}

{ #category : #accessing }
EffortOnCoding >> relatedMethodology [
	^ relatedMethodology
]

{ #category : #accessing }
EffortOnCoding >> relatedMethodology: aMethodologySymbol [ 
	relatedMethodology := aMethodologySymbol
]

{ #category : #accessing }
EffortOnCoding >> relatedProject: aString [ 
	relatedProject := aString
]

{ #category : #accessing }
EffortOnCoding >> timeSpent [
	^ timeSpent
]

{ #category : #accessing }
EffortOnCoding >> timeSpent: aDuration [ 
	timeSpent := aDuration
]

{ #category : #accessing }
EffortOnCoding >> timestamp: aDateAndTime [ 
	timestamp := aDateAndTime
]
