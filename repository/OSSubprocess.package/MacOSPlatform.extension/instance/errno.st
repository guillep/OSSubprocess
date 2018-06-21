*OSSubprocess
errno
	
	^ (ExternalAddress loadSymbol: #errno from: LibC) signedLongAt: 1