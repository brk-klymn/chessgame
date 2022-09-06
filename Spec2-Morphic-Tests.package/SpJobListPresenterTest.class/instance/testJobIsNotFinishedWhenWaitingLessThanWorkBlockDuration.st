tests
testJobIsNotFinishedWhenWaitingLessThanWorkBlockDuration

	| progress job |

	progress := 0.
	job := SpJob
			newTitle: 'some job'
			block: [ : myjob | 1 to: 25 do: [ :i | myjob value: i*4. 60 milliSeconds wait. ] ].
	[ presenter := SpJobListPresenter new 
		pushJob: job;
		yourself. ] fork. 
	
	1 second wait.
	self deny: job currentValue asInteger equals: job max 