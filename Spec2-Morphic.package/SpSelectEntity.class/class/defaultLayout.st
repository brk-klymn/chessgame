layout
defaultLayout

	^ SpBoxLayout newTopToBottom
		add: (SpBoxLayout newLeftToRight
				add: #entityText;
				add: #selectEntity expand: false;
				yourself)
			expand: false;
		yourself