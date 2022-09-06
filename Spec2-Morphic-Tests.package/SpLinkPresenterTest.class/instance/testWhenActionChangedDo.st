tests
testWhenActionChangedDo
	| count result |
	count := 0.
	presenter
		whenActionChangedDo: [ :block | 
			count := count + 1.
			result := block ].
	presenter action: [ 'Test' ].
	self assert: result isBlock.
	self assert: result value equals: 'Test'.
	self assert: count equals: 1