private
openWithLayout: aSpecLayout

	self flag: 'Is it really neeed to redefine this method in World presenter?'.
	
	self buildWithSpecLayout: aSpecLayout.
	self updateTitle