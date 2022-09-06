initialization
initializePresenters
	preview := self instantiate: SpImagePresenter.
	sliders := self instantiate: SpRGBSlidersPresenter.
	preview image: (Form extent: 30 @ 30 depth: 32).
	preview image: self makeNewForm.
	self focusOrder add: sliders