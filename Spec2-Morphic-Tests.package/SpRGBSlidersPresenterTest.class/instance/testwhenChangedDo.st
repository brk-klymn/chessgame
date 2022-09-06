tests
testwhenChangedDo
	| numberOfChanges |
	numberOfChanges := 0.
	presenter whenChangedDo: [ numberOfChanges := numberOfChanges + 1 ].
	presenter redSlider value: 66.
	presenter greenSlider value: 17.
	presenter blueSlider value: 200.
	self assert: numberOfChanges equals: 3