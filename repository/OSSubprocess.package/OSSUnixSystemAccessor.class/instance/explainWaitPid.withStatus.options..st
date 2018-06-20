errors
explainWaitPid: pid withStatus: status options: options
	"Get the string description of the error numnber aReturnValue and signal 
	and error with such a description together with aMessage string"
	| internalError | 
	internalError := self primitiveExplainWaitPid: pid withStatus: status options: options.
	self error: 'waitPID failed: ', pid asString, 
		', status: ', status asString, 
		', options: ', options asString,
		', reason: ', internalError asString