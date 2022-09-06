tests
testOpenPresenterInWorldRemoveExisitingMorphsInWorld
	| buttonPresenter |
	worldMorph addMorph: CircleMorph new.
	buttonPresenter := (application newPresenter: SpButtonPresenter)
		label: 'testOpenPresenterInWorldRemoveExisitingMorphsInWorld'. 
	
	(SpTestWorldPresenter presenter: buttonPresenter) open.

	self deny: (worldMorph submorphs anySatisfy: [ :morph | morph class = CircleMorph ]).
	self assert: worldMorph submorphs size equals: 1.
	self assert: worldMorph submorphs first class equals: Morph