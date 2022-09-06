api
entity: anObject
	entity := anObject.
	anObject ifNotNil: [ self entityText text: (anObject perform: self displaySymbol) ] ifNil: [ self entityText text: '' ]