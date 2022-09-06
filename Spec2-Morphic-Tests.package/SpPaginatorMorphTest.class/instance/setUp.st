running
setUp

	super setUp.
	morph := SpPaginatorMorph new 
		color: Color white;
		hResizing: #shrinkWrap;
		yourself.
	1 to: 10 do: [ :index | 
		morph addPage: index ].
	morph openInWorld.
