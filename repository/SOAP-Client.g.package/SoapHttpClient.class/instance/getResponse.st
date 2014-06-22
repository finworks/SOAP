actions-hooks
getResponse
	| request response |
	request := ZnRequest 
				readFrom: (AnsiReadStream on: headerString asByteArray).
	request entity inspect.
	"Zinc 2.4"
	"response := ZnClient new
		request: request;
		beOneShot;
		logToTranscript;
		execute;
		response."
	"Zinc 1.1"
	response := ZnClient executeOneShot: request on: (ZnNetworkingUtils socketStreamToUrl: request uri).
	
	^response entity string