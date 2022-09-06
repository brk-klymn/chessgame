tests
testWhenSelectedPageChangedDo
	| selectedPage |

	morph whenSelectedPageChangedDo: [ :pageNumber | selectedPage := pageNumber ].
	morph selectPage: 5.

	self assert: selectedPage equals: 5	