initialize-release
host: hostnameString port: portNumberInteger page: pageString 
	
	reqURI := ZnUrl new.
	reqURI
		host: hostnameString;
		port: portNumberInteger;
		parsePath: (ReadStream on: ((pageString isNil
					or: [pageString isEmpty])
				ifTrue: ['/']
				ifFalse: [pageString]));
		scheme: #http.