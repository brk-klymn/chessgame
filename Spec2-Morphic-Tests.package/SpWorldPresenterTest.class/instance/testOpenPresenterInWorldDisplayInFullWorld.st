tests
testOpenPresenterInWorldDisplayInFullWorld
	| buttonPresenter |
	
	buttonPresenter := (application newPresenter: SpButtonPresenter)
		label: 'test'.
	
	(SpTestWorldPresenter presenter: buttonPresenter) open.
	
	self currentWorld addMorph: worldMorph.
	
	self
		assert: worldMorph submorphs first submorphs first extent
		equals: worldMorph extent - 8 "border"