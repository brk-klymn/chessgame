private
addPresenterIn: container withSpecLayout: aSpec

	self presenter ifNil: [ ^ self ].
	self 
		changed: #addPresenterIn:withSpecLayout:
		with: { container. aSpec }