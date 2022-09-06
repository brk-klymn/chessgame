transmission
inputMorphPort 

	^ self class environment 
		at: #SpMorphPort
		ifPresent: [ :aClass | aClass newPresenter: self ]
		ifAbsent: [ nil ]