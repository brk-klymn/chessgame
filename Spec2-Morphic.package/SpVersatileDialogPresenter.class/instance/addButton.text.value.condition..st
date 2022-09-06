api
addButton: id text: buttonText value: anObject condition: aCondition
	| aButton |
	aButton := self newButton label: buttonText.
	aButton action: [ aCondition value ifTrue: [ self return: anObject ] ].

	buttons at: id put: aButton.

	self presenterAt: id put: aButton