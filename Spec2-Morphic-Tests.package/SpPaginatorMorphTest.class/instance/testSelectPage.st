tests
testSelectPage

	self assert: morph selectedPages equals: #(1 2).
	morph selectPage: 5.
	self assert: morph selectedPages equals: #(5 6).
	"10 is last, I cannot select 10, 11... then I select 9, 10"
	morph selectPage: 10.
	self assert: morph selectedPages equals: #(9 10)