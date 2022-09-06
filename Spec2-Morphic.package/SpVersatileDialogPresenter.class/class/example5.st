specs
example5
	<example>
	| dialog listPresenter |
	dialog := SpVersatileDialogPresenter new.
	listPresenter := dialog newList.
	listPresenter items: #(one two three).
	dialog contentArea: listPresenter.
	dialog
		addButton: #ok
		text: 'OK'
		value: true
		condition: [ listPresenter selection isEmpty not ].
	dialog addButton: #cancel text: 'Cancel' value: false.
	dialog mainIcon: (self iconNamed: #question).

	dialog openModal.

	dialog withWindowDo: [ :w | w title: 'Confirmation' ].
	dialog result traceCr