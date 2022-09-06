api
addPage: aPresenter
	"Add a page related to `aPresenter`."
	
	pagesHolder add: aPresenter.
	self selectPage: pagesHolder size