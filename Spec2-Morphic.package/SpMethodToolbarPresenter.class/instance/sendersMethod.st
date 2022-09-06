private
sendersMethod
	self method ifNotNil: [ :aMethod | self model browseSendersOfMessagesFrom: aMethod selector ]