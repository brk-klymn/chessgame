running
setUp

	super setUp.
	worldMorph := SpTestWorldPresenter
		reset;
		currentWorld.
	worldMorph
		extent: 300 @ 400;
		borderWidth: 0;
		color: Color veryLightGray.
	application := SpNullApplication new