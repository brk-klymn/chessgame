tests
testColor

	| random red green blue |
	random := Random new.
	red := random nextInteger: 255.
	green := random nextInteger: 255.
	blue := random nextInteger: 255.

	presenter redSlider value: red.
	presenter greenSlider value: green.
	presenter blueSlider value: blue.
	self assert: presenter color equals: (Color
			 r: red
			 g: green
			 b: blue
			 range: 255)