api
displaySymbol
	"return the method selector used to get the label of the entity that is for entry completion"

	^ displaySymbol ifNil: [ #printString ]