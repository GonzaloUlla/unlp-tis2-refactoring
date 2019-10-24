accessing
commission
	| commission |
	commission := self isBestSeller
		ifTrue: [ price / 50 ]
		ifFalse: [ price / 100 ].
	^ commission