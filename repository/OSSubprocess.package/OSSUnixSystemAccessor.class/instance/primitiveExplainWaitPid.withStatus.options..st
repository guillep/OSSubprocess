errors - primitives
primitiveExplainWaitPid: errorNumber withStatus: status options: options
	
	^ self ffiCall: #( String explain_waitpid( int errorNumber, int *status, int options) )
