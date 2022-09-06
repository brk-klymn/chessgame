tests
testChangingMorphUpdatesContents
	| m1 m2 |

	m1 := Morph new color: Color red.
	m2 := Morph new color: Color green.
	self assert: presenter morph isNil.
	self openInstance.

	presenter morph: m1.
	backendForTest waitUntilUIRedrawed.
	self assert: presenter adapter widget equals: m1.
	presenter morph: m2.
	backendForTest waitUntilUIRedrawed.
	self assert: presenter adapter widget equals: m2