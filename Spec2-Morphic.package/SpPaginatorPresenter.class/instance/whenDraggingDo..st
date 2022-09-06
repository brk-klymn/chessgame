api - events
whenDraggingDo: aBlock
	"Inform when selected area is being dragged (to change selected page).
	 `aBlock` has three optional arguments: 
	 - new value
	 - old value
	 - the announcement triggering this action"
	
	self property: #dragging whenChangedDo: aBlock