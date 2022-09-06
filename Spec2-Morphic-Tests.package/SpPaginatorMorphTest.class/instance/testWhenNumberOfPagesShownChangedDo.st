tests
testWhenNumberOfPagesShownChangedDo
	| numberShown |

	morph whenNumberOfPagesShownChangedDo: [ :aNumber | numberShown := aNumber ].
	morph selectPage: 5.
	morph numberOfPagesShown: 3.

	self assert: numberShown equals: 3