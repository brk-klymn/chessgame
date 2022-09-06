private
setUpWorld

	self currentWorld changeProportionalLayout.
	self currentWorld submorphs do: [:e | e delete ].
 
 	(Smalltalk at: #PolymorphSystemSettings) 
		perform: #desktopColor: 
		with: self currentWorld theme backgroundColor.
 	"((Smalltalk at: #UITheme) perform: #currentSettings) perform: #windowColor: with: (Color r: 0.745 g: 0.745 b: 0.745)."
	(Smalltalk at: #TaskbarMorph) perform: #showTaskbar: with: false