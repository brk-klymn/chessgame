accessing
layout
	| mainLayout row |
	mainLayout := SpBoxLayout newTopToBottom.


	"if the content area is not defined, place main message next to the main icon"
	contentArea
		ifNotNil: [ mainMessage
				ifNotNil: [ mainMessagePresenter := (mainMessage isString or: [ mainMessage isText ]) ifTrue: [ self newLabel label: mainMessage ] ifFalse: [ mainMessage ].
					mainLayout add: #mainMessagePresenter ] ].

	row := SpBoxLayout newLeftToRight.

	mainIcon
		ifNotNil: [ mainIconPresenter := self newImage image: self mainIcon.
			row add: #mainIconPresenter withConstraints: [ :constraints | constraints width: self mainIcon width * 2 ] ].

	contentArea
		ifNotNil: [ contentAreaPresenter := (contentArea isString or: [ contentArea isText ]) ifTrue: [ self newLabel label: contentArea ] ifFalse: [ contentArea ].
			row add: #contentAreaPresenter ]
		ifNil: [ mainMessage
				ifNotNil: [ mainMessagePresenter := (mainMessage isString or: [ mainMessage isText ]) ifTrue: [ self newLabel label: mainMessage ] ifFalse: [ mainMessage ].
					row add: #mainMessagePresenter ] ].

	mainLayout add: row.

	row := SpBoxLayout newLeftToRight.


	moreOptionsArea
		ifNotNil: [ moreOptionsButton label: (moreOptionsVisible ifFalse: [ self moreOptionsText ] ifTrue: [ self lessOptionsText ]).
			moreOptionsButton icon: (self iconNamed: (moreOptionsVisible ifFalse: [ #arrowDown ] ifTrue: [ #arrowUp ])).

			row add: #moreOptionsButton.
			moreOptionsAreaPresenter := (moreOptionsArea isString or: [ moreOptionsArea isText ]) ifTrue: [ self newLabel label: moreOptionsArea ] ifFalse: [ moreOptionsArea ] ].
	buttons keysAndValuesDo: [ :buttonKey :aButton | row add: buttonKey ].

	mainLayout add: row.

	moreOptionsVisible ifTrue: [ mainLayout add: #moreOptionsAreaPresenter ].

	footnoteArea
		ifNotNil: [ row := SpBoxLayout newLeftToRight.
			footnoteIcon
				ifNotNil: [ footnoteIconPresenter := self newImage image: footnoteIcon.
					row add: #footnoteIconPresenter withConstraints: [ :constraints | constraints width: self footnoteIcon width * 2 ] ].

			footnoteAreaPresenter := (footnoteArea isString or: [ footnoteArea isText ]) ifTrue: [ self newLabel label: footnoteArea ] ifFalse: [ footnoteArea ].
			row add: #footnoteAreaPresenter ].
	mainLayout add: row.

	defaultButtonId ifNotNil: [ (self buttonAt: defaultButtonId) takeKeyboardFocus ].

	^ mainLayout