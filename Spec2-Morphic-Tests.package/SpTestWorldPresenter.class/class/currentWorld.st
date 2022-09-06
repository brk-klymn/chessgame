ui requests
currentWorld
	^ TestWorld ifNil: [ TestWorld := self newWorld ]