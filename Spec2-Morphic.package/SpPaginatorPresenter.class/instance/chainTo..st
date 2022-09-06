api
chainTo: aPresenter
	"It will 'chain' this paginator with `aPresenter`. 
	 In order to work, `aPresenter` needs to implement this methods: 
		- `selectPage:` to react to a page change.
		- `visiblePages:` to react to an amount of pages displayed change.
		- `scrollByDeltaPercent:` to react to movement while displacing."
	
	self 
		whenSelectedPageChangedDo: [ :pageNumber | aPresenter selectPage: pageNumber ];
		whenVisiblePagesChangedDo: [ :aNumber | aPresenter visiblePages: aNumber ];
		whenDraggingDo: [ :deltaPercent | aPresenter scrollByDeltaPercent: deltaPercent ]