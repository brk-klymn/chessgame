api
url: aString
	"Set the url to open when link is pressed. Also, it sets action (See `SpLinkPresenter>>#action:` 
	 to open an external browser to the url.
	 If there is no label selected (See `SpLinkPresenter>>#label:`, it sets it to the value 
	 of `aString`."

	self action: [ WebBrowser openOn: aString ].
	self label ifNil: [ self label: aString ]