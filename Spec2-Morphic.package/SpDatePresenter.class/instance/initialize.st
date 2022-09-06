initialization
initialize
	super initialize.
	displayBlock := [ :object | object ifNotNil: [ object asStringOrText ] ifNil: '' ].
	self property: #displayBlock whenChangedDo: [ self date: self date ].
	self date: self defaultDate