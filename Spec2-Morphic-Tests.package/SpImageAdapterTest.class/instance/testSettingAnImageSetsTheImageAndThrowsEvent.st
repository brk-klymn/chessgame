building
testSettingAnImageSetsTheImageAndThrowsEvent

	| happened |
	self presenter whenImageChangeDo: [ happened := true ].
	self presenter image: self imageForm.
	
	backendForTest assertImage: self adapter image equals: self imageForm.
	self assert: happened