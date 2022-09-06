specs
example1
	<example>
	| dialog |
	(dialog := SpVersatileDialogPresenter new)
		mainMessage: 'Confirm your choice' asText allBold;
		mainIcon: (self iconNamed: #question);
		contentArea: 'Do you want to discard your content?';
		moreOptionsArea: (dialog newCheckBox label: 'Discard permanently');
		addButton: #yes text: 'yes' value: #yes;
		addButton: #no text: 'no' value: #no;
		addButton: #cancel text: 'cancel' value: #cancel;
		footnoteIcon: (self iconNamed: #error);
		footnoteArea: 'This operation can be very dangerous.';
		openModal.
	dialog withWindowDo: [ :w | w title: 'Confirmation' ].
	dialog result traceCr.

	self inform: dialog moreOptionsArea state asString