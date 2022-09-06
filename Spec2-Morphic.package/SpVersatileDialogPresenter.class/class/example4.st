specs
example4
	<example>
	| dialog |
	dialog := SpVersatileDialogPresenter new.

	1 to: 5 do: [ :aNumber | dialog addButton: ('button' , aNumber asString) asSymbol text: aNumber printStringRoman value: aNumber ].

	dialog defaultButtonId: #button2.

	dialog openModal.

	dialog withWindowDo: [ :w | w title: 'Select number' ].
	dialog result traceCr