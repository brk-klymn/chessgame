private
usersMethod
	self method methodClass ifNotNil: [ :class | self model browseClassRefsOf: class ]