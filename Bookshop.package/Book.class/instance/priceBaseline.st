accessing
priceBaseline
	| basePrice |
	basePrice := self isBestSeller
		ifTrue: [ price * 1.1 ]
		ifFalse: [ price ].
	^ basePrice