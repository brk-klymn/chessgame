api - events
whenPlaceholderChanged: aBlock
	"aBlock will be performed when ghostText changed"

	self property: #placeholder whenChangedDo: aBlock