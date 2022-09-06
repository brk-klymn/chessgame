building
testAutoscale

	self presenter image: self imageForm.

	self presenter autoScale: false.
	self deny: self adapter hasImageAutoscaled.

	self presenter autoScale: true.
	self assert: self adapter hasImageAutoscaled.
