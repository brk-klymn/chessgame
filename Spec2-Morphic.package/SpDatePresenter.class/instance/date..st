accessing
date: aDate

	| dateString |
	date := aDate.
	dateString := self display value: date.
	self dateModel text: dateString.