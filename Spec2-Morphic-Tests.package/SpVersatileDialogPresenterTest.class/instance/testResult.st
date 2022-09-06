tests
testResult

	| dialog app |
	app := SpMockApplication new.

	dialog := SpVersatileDialogPresenter newApplication: app.
	dialog mainMessage: 'Save content' asText allBold.
	dialog addButton: #save text: 'Save' value: true.
	dialog addButton: #cancel text: 'Cancel' value: false.
	dialog mainIcon: (self iconNamed: #question).
	dialog moreOptionsArea: (dialog newCheckBox label: 'Save header').

	dialog openModal.
	dialog withWindowDo: [ :w | w title: 'Confirmation' ].
	(dialog buttons at: #save) performAction.
	dialog moreOptionsArea click.

	self assert: dialog result.
	self assert: dialog moreOptionsArea state