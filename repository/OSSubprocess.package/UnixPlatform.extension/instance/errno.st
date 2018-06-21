*OSSubprocess
errno
	
	^ self ffiCall: 'int __errno_location()'