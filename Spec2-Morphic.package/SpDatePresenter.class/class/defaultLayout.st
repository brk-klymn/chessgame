layout
defaultLayout

	^ SpBoxLayout newLeftToRight
		add: #dateModel;
		add: #chooseDateButton expand: false;
		yourself
		