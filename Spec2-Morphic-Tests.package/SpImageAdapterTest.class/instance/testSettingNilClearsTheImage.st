building
testSettingNilClearsTheImage

	self presenter image: self imageForm.
	self presenter image: nil.
	
	backendForTest assertImage: self adapter image equals: nil.
