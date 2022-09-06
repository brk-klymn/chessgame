api
pages: aCollection
	"Set pages of paginator taken elements from `aCollection`."

	pagesHolder removeAll.
	aCollection do: [ :each | pagesHolder add: each ]