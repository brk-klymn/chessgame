tests
testProgressDoesNotRefreshMoreThanRefreshRate

	"Ensure progress presenter will not slow down the workblock by calling too many UI refresh"
	| job waitBetweenJobUpdate counter refreshRateInMs nbUpdates maxExpected |

	waitBetweenJobUpdate := 30 milliSeconds.
	refreshRateInMs := 150.
	nbUpdates := 25.
	counter := 0.
	job := SpJob
			newTitle: 'some job'
			block: [ : myjob | 1 to: nbUpdates do: [ :i | myjob value: i * 4. waitBetweenJobUpdate wait. ] ].
	presenter := SpJobPresenter on: job.
	
	[ presenter open.
	(presenter instVarNamed: 'progressBar') adapter whenRefreshedDo: [ counter := counter + 1 ].
	presenter refreshRateInMs: refreshRateInMs.
	presenter model run. ] 
	ensure: [ presenter withWindowDo: [ :w | w close ] ].
	
	maxExpected := (waitBetweenJobUpdate asMilliSeconds * nbUpdates / refreshRateInMs) + 2. "Sometimes there is one more UI cycle"
	self 
		assert: counter <= maxExpected
		description: ('Expecting max {1} UI draw cycles, got {2}!' format: { maxExpected . counter })