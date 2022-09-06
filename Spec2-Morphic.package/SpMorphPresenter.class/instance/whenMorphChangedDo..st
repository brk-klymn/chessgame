api - events
whenMorphChangedDo: aBlock 
	"Inform when morph has changed. 
	 `aBlock` has three optional arguments: 
	 - new value
	 - old value
	 - the announcement triggering this action"

	self property: #morph whenChangedDo: aBlock