tests
testListBox

	| dialog app listPresenter |
	app := SpMockApplication new.

	dialog := SpVersatileDialogPresenter newApplication: app.
	listPresenter := dialog newList.
	listPresenter items: #( one two three ).
	dialog contentArea: listPresenter.
	dialog
		addButton: #ok
		text: 'OK'
		value: #ok
		condition: [ listPresenter selection isEmpty not ].
	dialog addButton: #cancel text: 'Cancel' value: nil.
	dialog mainIcon: (self iconNamed: #question).

	dialog openModal.
	dialog withWindowDo: [ :w | w title: 'Confirmation' ].

	dialog contentArea selection selectIndex: 2.

	(dialog buttons at: #ok) click.

	self assert: dialog result equals: #ok.
	self assert: dialog contentArea selection selectedItem equals: #two