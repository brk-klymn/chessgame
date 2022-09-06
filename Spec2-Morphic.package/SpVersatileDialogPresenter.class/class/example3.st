specs
example3
	<example>
	| dialog |
	dialog := SpVersatileDialogPresenter new
		mainMessage: 'Save content' asText allBold;
		addButton: #save text: 'Save' value: true;
		addButton: #cancel text: 'Cancel' value: false;
		mainIcon: (self iconNamed: #question);
		footnoteIcon: (self iconNamed: #error);
		footnoteArea: 'Saving may take several minutes';
		yourself.

	(dialog buttonAt: #save) icon: (self iconNamed: #smallSave).

	dialog openModal.

	dialog withWindowDo: [ :w | w title: 'Confirmation' ].
	dialog result traceCr