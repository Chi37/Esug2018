Class {
	#name : #TestSoftwareDevelopmentGoalBasedRoadmap,
	#superclass : #TestCase,
	#instVars : [
		'roadmap'
	],
	#category : #Sandbox
}

{ #category : #running }
TestSoftwareDevelopmentGoalBasedRoadmap >> createFunctionalCodingEffort [
	| effort |
	effort := EffortOnCoding new.
	effort timestamp: DateAndTime now.
	effort timeSpent: 1 hour.
	effort relatedProject: #GoalSoftware.
	effort relatedMethodology: #functional.
	^ effort
]

{ #category : #running }
TestSoftwareDevelopmentGoalBasedRoadmap >> createOopCodingEffort [
	| effort |
	effort := EffortOnCoding new.
	effort timestamp: DateAndTime now.
	effort timeSpent: 1 hour.
	effort relatedProject: #GoalSoftware.
	effort relatedMethodology: #oop.
	^ effort
]

{ #category : #running }
TestSoftwareDevelopmentGoalBasedRoadmap >> setUp [
	| goal newCriteria |
	super setUp.
	goal := SoftwareDevelopmentGoal new.
	" Should code for 20 hours "
	goal
		addCriteria:
			(TimeSpentCriteria new
				timeSpent: 20 hours;
				yourself).
	" Should code for 10 hours on OOP "
	newCriteria := TimeSpentOnMethodology new.
	newCriteria timeSpent: 10 hours.
	newCriteria methodology: #oop.
	
	goal addCriteria: newCriteria.
	roadmap := RoadMap new.
	roadmap goal: goal
]

{ #category : #running }
TestSoftwareDevelopmentGoalBasedRoadmap >> testGoalWasAchieved [
	10 timesRepeat: [
		" Each effort count as one hour "
		roadmap track: self createOopCodingEffort.
		roadmap track: self createFunctionalCodingEffort
	].
	
	self assert: roadmap goalWasAchieved
]

{ #category : #running }
TestSoftwareDevelopmentGoalBasedRoadmap >> testGoalWasNotYetAchieved [
	self deny: roadmap goalWasAchieved
]

{ #category : #running }
TestSoftwareDevelopmentGoalBasedRoadmap >> testRoadMapStartsEmpty [
	self assert: roadmap isEmpty
]

{ #category : #running }
TestSoftwareDevelopmentGoalBasedRoadmap >> testRoadMapToLearnProgrammingTracksObjectsInTime [
	roadmap track: self createFunctionalCodingEffort.
	self assert: roadmap size equals: 1
]
