api - events
whenUrlChangedDo: aBlock
	"Inform when label state has changed. 
	 `aBlock` has three optional arguments: 
	 - new value
	 - old value
	 - the announcement triggering this action"

	self property: #url whenChangedDo: aBlock