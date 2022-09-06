initialization
initialize

	super initialize.
	self whenLabelChangedDo: [ self changed: #getText ]