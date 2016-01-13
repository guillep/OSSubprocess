tests - child status
testGetChildStatusAfterFinishesSuccess
	| command | 
	
	command := OSSSpawnProcess new 
					command: '/bin/ls'.
	
	self shouldnt: [ command run ] raise: Error. 
	command childPid > 0.
	(Duration seconds: 1) wait.
	command queryExitStatus.
	self assert: command exitStatusInterpreter exitStatus equals: 0. 