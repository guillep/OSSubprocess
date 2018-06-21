waiting - primitives
primitiveWaitpid: aProcessId statusPointer: statusPointer options: optionBits
	
	^ self ffiCall: #( int32 waitpid(int32 aProcessId, void* statusPointer, int optionBits) )