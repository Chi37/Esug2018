Class {
	#name : #TimeSpentOnMethodology,
	#superclass : #Object,
	#instVars : [
		'timeSpent',
		'methodology'
	],
	#category : #Sandbox
}

{ #category : #testing }
TimeSpentOnMethodology >> isFullyMetWith: aCollectionOfEfforts [
	| allTimeSpent summarization onlyConcernedEfforts |
	onlyConcernedEfforts := aCollectionOfEfforts select: [ :i | i relatedMethodology = methodology ].
	allTimeSpent := onlyConcernedEfforts collect: [ :i | i timeSpent ].
	summarization := allTimeSpent ifEmpty: [ 0 seconds ] ifNotEmpty: [ allTimeSpent sum ].
	^ summarization >= timeSpent
]

{ #category : #accessing }
TimeSpentOnMethodology >> methodology: aString [ 
	methodology := aString
]

{ #category : #accessing }
TimeSpentOnMethodology >> timeSpent: aDuration [ 
	timeSpent := aDuration
]
