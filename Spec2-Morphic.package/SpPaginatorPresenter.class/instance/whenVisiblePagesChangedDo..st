api - events
whenVisiblePagesChangedDo: aBlock
	"Inform when a visible pages has been changed.
	 `aBlock` has three optional arguments: 
	 - new value
	 - old value
	 - the announcement triggering this action"

	self property: #visiblePages whenChangedDo: aBlock