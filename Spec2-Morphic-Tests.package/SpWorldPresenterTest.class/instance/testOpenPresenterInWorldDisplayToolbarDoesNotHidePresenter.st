tests
testOpenPresenterInWorldDisplayToolbarDoesNotHidePresenter
	| windowPresenter worldPanel |
	windowPresenter := application
		newPresenter: SpTestPresenterWithToolbar.
		
	(SpTestWorldPresenter presenter: windowPresenter) open.
		
	worldPanel := worldMorph submorphs first.
	self
		assert:
			(worldPanel submorphs first bounds
				intersect: worldPanel submorphs second bounds)
				= (0 @ 0 extent: 0 @ 0)
		description: 'toolbar should not intersect with presenter when opening in world'