private
implementorsMethod
	self method ifNotNil: [ :aMethod | self model browseMessagesFrom: aMethod selector ]