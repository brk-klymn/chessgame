tests
testWhenLabelChangedDo
	| count result |
	count := 0.
	presenter
		whenLabelChangedDo: [ :label | 
			count := count + 1.
			result := label ].
	presenter label: 'Test'.
	self assert: result equals: 'Test'.
	self assert: count equals: 1