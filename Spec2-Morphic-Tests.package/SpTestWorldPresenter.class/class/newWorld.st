instance creation
newWorld
	| hand |
	hand := HandMorph new.
	^ WorldMorph new 
		addHand: hand;
		activeHand: hand;
		yourself