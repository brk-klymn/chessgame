api - events
whenPageAddedDo: aBlock
	"Inform when a page has been added.
	 `aBlock` receives one argument, the new page added."

	pagesHolder whenAddedDo: aBlock