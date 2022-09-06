initialization
connectPresenters
	selectEntity 
		action: [  |select|
			select := self selectDialog value.
			select openDialog
				okAction: [  
					self entity: select selectedItem ]]
