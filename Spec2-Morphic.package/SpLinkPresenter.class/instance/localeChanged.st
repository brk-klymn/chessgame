localization
localeChanged

	super localeChanged.
	self forceUpdateSlot: #label
		