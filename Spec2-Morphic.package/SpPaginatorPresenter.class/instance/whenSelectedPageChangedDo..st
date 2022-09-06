api - events
whenSelectedPageChangedDo: aBlock
	"Inform when a page selection has been changed.
	 `aBlock` has three optional arguments: 
	 - new value
	 - old value
	 - the announcement triggering this action"

	self property: #selectedPage whenChangedDo: aBlock