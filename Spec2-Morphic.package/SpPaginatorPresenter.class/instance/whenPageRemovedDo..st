api - events
whenPageRemovedDo: aBlock
	"Inform when a page has been added.
	 `aBlock` receives one argument, the page removed."

	pagesHolder whenRemovedDo: aBlock