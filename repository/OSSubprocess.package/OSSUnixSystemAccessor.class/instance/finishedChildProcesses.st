accessing
finishedChildProcesses
	^ finishedChildProcesses ifNil: [ finishedChildProcesses := Dictionary new ]