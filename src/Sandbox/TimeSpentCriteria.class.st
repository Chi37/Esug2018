Class {
	#name : #TimeSpentCriteria,
	#superclass : #Object,
	#instVars : [
		'timeSpent'
	],
	#category : #Sandbox
}

{ #category : #testing }
TimeSpentCriteria >> isFullyMetWith: aCollectionOfEfforts [
	| allTimeSpent summarization |
	allTimeSpent := aCollectionOfEfforts collect: [ :i | i timeSpent ].
	summarization := allTimeSpent ifEmpty: [ 0 seconds ] ifNotEmpty: [ allTimeSpent sum ].
	^ summarization >= timeSpent
]

{ #category : #accessing }
TimeSpentCriteria >> timeSpent: aDuration [ 
	timeSpent := aDuration
]
