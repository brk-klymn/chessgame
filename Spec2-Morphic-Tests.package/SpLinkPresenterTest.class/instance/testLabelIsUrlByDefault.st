tests
testLabelIsUrlByDefault
	self assert: presenter label isNil.
	presenter url: 'Test'.
	self assert: presenter label equals: 'Test'.
	presenter label: 'Label'.
	self assert: presenter label equals: 'Label'