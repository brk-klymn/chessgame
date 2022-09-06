styling
styleSheet
	"Define the default styleSheet to use in your application. You can override this and add your 
	 own application dependent styles (and you can compose them, see `SpStyle`).
	
	```Smalltalk
	^ SpStyle defaultStyleSheet copy
	```
	"
	
	^ styleSheet ifNil: [ styleSheet := self newStyleSheet ]