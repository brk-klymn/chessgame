layout
defaultLayout

	^ SpBoxLayout newLeftToRight
		add: #browseModel;
		add: #usersModel;
		add: #sendersModel;
		add: #implementorsModel;
		add: #versionModel;
		add: #dropListModel;
		yourself