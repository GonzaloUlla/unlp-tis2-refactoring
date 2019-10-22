accessing
commission
	| com |
	self isBestSeller
		ifTrue: [ com := price / 50 ]
		ifFalse: [ com := price / 100 ].
	^ com