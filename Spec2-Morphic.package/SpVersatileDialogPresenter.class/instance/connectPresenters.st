initialization
connectPresenters 

	super connectPresenters.
	
	moreOptionsButton action: [ 
		moreOptionsVisible := moreOptionsVisible not.
		self needRebuild: false.
		self build ].
	
