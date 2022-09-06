specs
example2
	<example>
	| dialog |
	dialog := SpVersatileDialogPresenter new
		mainMessage: 'Save content' asText allBold;
		addButton: #save text: 'Save' value: true;
		addButton: #cancel text: 'Cancel' value: false;
		mainIcon: (self iconNamed: #question);
		openModal;
		yourself.

	dialog withWindowDo: [ :w | w title: 'Confirmation' ].
	dialog result traceCr