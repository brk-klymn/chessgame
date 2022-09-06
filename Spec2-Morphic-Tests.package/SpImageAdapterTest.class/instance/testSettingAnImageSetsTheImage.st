building
testSettingAnImageSetsTheImage

	self presenter image: self imageForm.
	backendForTest assertImage: self adapter image equals: self imageForm.
