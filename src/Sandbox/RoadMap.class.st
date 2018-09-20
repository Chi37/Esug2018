Class {
	#name : #RoadMap,
	#superclass : #Object,
	#instVars : [
		'goal',
		'efforts'
	],
	#category : #Sandbox
}

{ #category : #accessing }
RoadMap >> goal: aSoftwareDevelopmentGoal [ 
	goal := aSoftwareDevelopmentGoal
]

{ #category : #testing }
RoadMap >> goalWasAchieved [
	^ goal isAchievedWith: efforts
]

{ #category : #testing }
RoadMap >> initialize [
	super initialize.
	efforts := OrderedCollection new
]

{ #category : #testing }
RoadMap >> isEmpty [
	^ efforts isEmpty.
]

{ #category : #'tracking efforts' }
RoadMap >> size [
	^ efforts size
]

{ #category : #'tracking efforts' }
RoadMap >> track: anEffort [
	efforts add: anEffort
]
