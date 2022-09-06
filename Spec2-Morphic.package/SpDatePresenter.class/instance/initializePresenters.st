initialization
initializePresenters

	dateModel := self newTextInput.
	chooseDateButton := self newButton.
	
	chooseDateButton
		icon: self iconMorph;
		action: [ self chooseDate ];
		extent: self iconMorph extent.