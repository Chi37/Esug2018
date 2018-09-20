Class {
	#name : #SoftwareDevelopmentGoal,
	#superclass : #Object,
	#instVars : [
		'criterias'
	],
	#category : #Sandbox
}

{ #category : #testing }
SoftwareDevelopmentGoal >> addCriteria: aCriteria [
 criterias add: aCriteria 
]

{ #category : #accessing }
SoftwareDevelopmentGoal >> criterias [
	^ criterias 
]

{ #category : #testing }
SoftwareDevelopmentGoal >> initialize [
	super initialize .
	criterias := Set new.
]

{ #category : #testing }
SoftwareDevelopmentGoal >> isAchievedWith: aCollectionOfEfforts [
	^ self criterias allSatisfy: [ :criteria | criteria isFullyMetWith: aCollectionOfEfforts ]
]
