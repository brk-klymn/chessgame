private
versionMethod
	self method ifNotNil: [ :aMethod | self model browseVersionsFrom: aMethod ]