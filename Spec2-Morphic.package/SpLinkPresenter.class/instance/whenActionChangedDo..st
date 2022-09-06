api - events
whenActionChangedDo: aBlock
	"Inform when action has changed. 
	 `aBlock` has three optional arguments: 
	 - new value
	 - old value
	 - the announcement triggering this action"

	self property: #action whenChangedDo: aBlock